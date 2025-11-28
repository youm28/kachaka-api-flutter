import asyncio
import json
from collections import deque
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from Control import Control
import kachaka_api
import threading
import time
from concurrent.futures import ThreadPoolExecutor

KACHAKA_IP = "10.40.5.108"
app = FastAPI()
kachaka_client: kachaka_api.KachakaApiClient = None

# =================================================================
# Section 1: Kachaka ロボット制御関連
# =================================================================
kachaka_command_queue = deque()
kachaka_clients = set()
kachaka_lock = threading.Lock()
executor = ThreadPoolExecutor(max_workers=1)

# 状態管理変数
user_assignments = {}
destination_requests = {}
route_selection = None

# ★ 現在地管理（メモリのみで管理）
# 起動時は「充電ドック」。以降は移動命令を出すたびに更新される。
current_location_name = "充電ドック" 
current_moving_location = None

# 経路定義
ROUTE_PATTERNS = {
    ("充電ドック", "1"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e", "c", "d"]},
    ("充電ドック", "2"): {"route_left": ["a", "d"], "route_center": ["b", "d"], "route_right": ["e", "c"]},
    ("充電ドック", "3"): {"route_left": ["a", "d", "c"], "route_center": ["b", "c"], "route_right": ["e"]},
    ("充電ドック", "4"): {"route_left": ["a", "d"], "route_center": ["b"], "route_right": ["e", "c", "d"]},
    ("充電ドック", "5"): {"route_left": [], "route_center": ["b"], "route_right": ["e"]},
    ("充電ドック", "6"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e"]},
    ("1", "2"): {"route_left": ["d"], "route_center": ["b", "c"], "route_right": ["a", "e", "c"]},
    ("1", "3"): {"route_left": ["a", "e"], "route_center": ["b", "c"], "route_right": ["d", "c"]},
    ("1", "4"): {"route_left": ["a", "b"], "route_center": ["d"], "route_right": ["d", "c", "b"]},
    ("1", "5"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["d", "c", "e"]},
    ("1", "6"): {"route_left": ["a"], "route_center": ["d", "b"], "route_right": ["d", "c", "e"]},
    ("2", "1"): {"route_left": ["c", "e", "a"], "route_center": ["c", "b", "a"], "route_right": ["d"]},
    ("2", "3"): {"route_left": ["d", "a", "e"], "route_center": ["b", "e"], "route_right": ["c"]},
    ("2", "4"): {"route_left": ["d", "a", "b"], "route_center": ["d"], "route_right": ["c", "b"]},
    ("2", "5"): {"route_left": ["d", "a"], "route_center": ["b"], "route_right": ["c", "e"]},
    ("2", "6"): {"route_left": ["d", "a"], "route_center": ["b"], "route_right": ["c", "e"]},
    ("3", "1"): {"route_left": ["e", "a"], "route_center": ["c", "b", "d"], "route_right": ["c", "d"]},
    ("3", "2"): {"route_left": ["e", "a", "d"], "route_center": ["b", "d"], "route_right": ["c"]},
    ("3", "4"): {"route_left": ["e", "a", "d"], "route_center": ["c", "b"], "route_right": ["c", "d"]},
    ("3", "5"): {"route_left": ["e"], "route_center": ["c", "b"], "route_right": ["c", "d", "a"]},
    ("3", "6"): {"route_left": ["e", "a"], "route_center": ["e"], "route_right": ["c", "b"]},
    ("4", "1"): {"route_left": ["a"], "route_center": ["b", "a"], "route_right": ["d", "c", "e"]},
    ("4", "2"): {"route_left": ["d", "a", "e", "c"], "route_center": ["b", "c"], "route_right": ["c"]},
    ("4", "3"): {"route_left": ["a", "e"], "route_center": ["b", "c"], "route_right": ["c"]},
    ("4", "5"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["c", "e"]},
    ("4", "6"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["c", "e"]},
    ("5", "1"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e", "c", "d"]},
    ("5", "2"): {"route_left": ["a", "d"], "route_center": ["b", "d"], "route_right": ["e", "c"]},
    ("5", "3"): {"route_left": ["a", "d", "c"], "route_center": ["c"], "route_right": ["e"]},
    ("5", "4"): {"route_left": ["a", "d"], "route_center": ["b"], "route_right": ["e", "c"]},
    ("5", "6"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e"]},
    ("6", "1"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e", "c", "d"]},
    ("6", "2"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e", "c"]},
    ("6", "3"): {"route_left": ["a"], "route_center": ["e", "c"], "route_right": ["e"]},
    ("6", "4"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["c"]},
    ("6", "5"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e"]},
}
DEFAULT_ROUTE = {"route_left": [], "route_center": [], "route_right": []}

async def send_status_to_all_clients(status_data):
    if not kachaka_clients: return
    disconnected_clients = []
    for client in list(kachaka_clients):
        try:
            await client.send_json(status_data)
        except Exception:
            disconnected_clients.append(client)
    for client in disconnected_clients:
        kachaka_clients.discard(client)

async def process_destination_and_route():
    global destination_requests, route_selection, kachaka_client
    
    if "user_1" not in destination_requests:
        return
    if route_selection is None:
        return
    
    current_location = current_location_name # メモリから取得
    final_destination = destination_requests["user_1"]["location"]
    destination_name = final_destination["name"]
    
    print(f"🧐 [Plan] START: '{current_location}' -> GOAL: '{destination_name}' (Via: {route_selection})")
    
    route_key = (current_location, destination_name)
    route_pattern = ROUTE_PATTERNS.get(route_key, DEFAULT_ROUTE)
    waypoint_names = route_pattern.get(route_selection, [])
    
    try:
        if not kachaka_client: return

        locations = kachaka_client.get_locations()
        location_dict = {loc.name: loc for loc in locations}
        
        waypoints = []
        # 経由地を作成
        for wp_name in waypoint_names:
            if wp_name in location_dict:
                loc = location_dict[wp_name]
                waypoints.append({"id": loc.id, "name": loc.name})
            else:
                print(f"⚠️ Waypoint '{wp_name}' not found. Skipping.")
        
        # 最終目的地を作成
        if destination_name in location_dict:
             dest_loc = location_dict[destination_name]
             final_dest_data = {"id": dest_loc.id, "name": dest_loc.name}
        else:
             print(f"🔥 Destination '{destination_name}' not found!")
             destination_requests.clear(); route_selection = None; return

        # メッセージ送信
        if waypoints:
            waypoint_text = " → ".join([wp["name"] for wp in waypoints])
            message = f"{waypoint_text} を経由して {destination_name} へ向かいます！"
        else:
            message = f"{destination_name} へ直接向かいます！"
        
        await send_status_to_all_clients({"type": "STARTING_MOVE", "message": message})
        await asyncio.sleep(1)
        
        # キューに追加
        with kachaka_lock:
            for waypoint in waypoints:
                kachaka_command_queue.append(waypoint)
            kachaka_command_queue.append(final_dest_data)
        
        destination_requests.clear()
        route_selection = None
        
    except Exception as e:
        print(f"🔥 Process Error: {e}")
        destination_requests.clear()
        route_selection = None

# ★ シンプル化した移動関数
def kachaka_move_sync(location_id, location_name):
    global kachaka_client
    try:
        print(f"🤖 [Move] Trying to go to '{location_name}'...")
        
        # 1. 前のコマンドが終わるのを確実に待つ (Error 10001対策)
        timeout = 0
        while kachaka_client.is_command_running():
            time.sleep(0.5)
            timeout += 1
            if timeout > 10: # 5秒待っても終わらなければ強制実行
                print("⚠️ Force starting new command...")
                break

        # 2. コマンド送信
        kachaka_client.move_to_location(location_id)
        
        # 3. 移動完了まで待機 (この間、アプリは移動中表示)
        time.sleep(1) # コマンド受付待ち
        while kachaka_client.is_command_running():
            time.sleep(0.5)
            
        print(f"✅ [Move] Finished command for '{location_name}'.")
        return True # 何があっても「処理完了」とする

    except Exception as e:
        print(f"🔥 [Move] Exception: {e}")
        return True # エラーでもキューを進めるためにTrueを返す

async def process_kachaka_queue():
    global kachaka_client, current_location_name, current_moving_location
    current_move_future = None

    while True:
        try:
            if not kachaka_client:
                await asyncio.sleep(1); continue
            
            # --- 移動完了後の処理 ---
            if current_move_future and current_move_future.done():
                # 結果に関わらず、メモリ上の現在地を更新する
                if current_moving_location:
                    old_loc = current_location_name
                    new_loc = current_moving_location.get("name")
                    current_location_name = new_loc
                    print(f"📍 [Update] Location changed: '{old_loc}' -> '{new_loc}'")
                
                current_moving_location = None
                
                # クライアントへ通知
                await send_status_to_all_clients({
                    "type": "kachaka_status", 
                    "status": "idle", 
                    "message": "",
                    "current_location": current_location_name
                })
                current_move_future = None

            # --- 次のコマンド実行 ---
            if not current_move_future and not kachaka_client.is_command_running():
                with kachaka_lock:
                    if kachaka_command_queue:
                        location_data = kachaka_command_queue.popleft()
                        current_moving_location = location_data
                        
                        await send_status_to_all_clients({"type": "kachaka_status", "status": "moving", "destination": location_data["name"]})
                        
                        loop = asyncio.get_event_loop()
                        current_move_future = loop.run_in_executor(executor, kachaka_move_sync, location_data["id"], location_data["name"])

        except Exception as e:
            print(f"🔥 Queue Error: {e}")
            await asyncio.sleep(5)
        await asyncio.sleep(0.5)

@app.websocket("/ws/kachaka")
async def websocket_kachaka_endpoint(websocket: WebSocket):
    global route_selection 
    await websocket.accept()
    kachaka_clients.add(websocket)
    user_id = None

    with kachaka_lock:
        if "user_1" not in user_assignments.values(): user_id = "user_1"
        elif "user_2" not in user_assignments.values(): user_id = "user_2"
        else: user_id = "spectator"
        user_assignments[websocket] = user_id
    
    print(f"✅ [Connect] {user_id}. Sending Location: {current_location_name}")
    
    await websocket.send_json({
        "type": "user_assigned", 
        "user_id": user_id,
        "message": "どこに行きますか？" if user_id == "user_1" else "経路を選択してください",
        "current_location": current_location_name
    })

    try:
        while True:
            data = await websocket.receive_json()
            print(f"📨 [{user_id}] Received: {data}")
            action = data.get("action")

            if action == "REQUEST_DESTINATION" and user_id == "user_1":
                if current_moving_location or destination_requests:
                    await websocket.send_json({"type": "ERROR", "message": "処理中です。"})
                    continue
                destination_requests["user_1"] = {"location": data.get("location")}
                await send_status_to_all_clients({"type": "WAITING_FOR_ROUTE", "message": f"目的地「{data['location']['name']}」選択済", "for_user": "user_2"})
                await websocket.send_json({"type": "WAITING_FOR_ROUTE", "message": "経路選択を待っています..."})

            elif action == "SELECT_ROUTE" and user_id == "user_2":
                if current_moving_location:
                    await websocket.send_json({"type": "ERROR", "message": "移動中です。"})
                    continue
                if "user_1" not in destination_requests:
                    await websocket.send_json({"type": "ERROR", "message": "先に目的地を選んでください。"})
                    continue
                route_selection = data.get("route")
                await process_destination_and_route()

    except WebSocketDisconnect:
        u_id = user_assignments.pop(websocket, None)
        kachaka_clients.discard(websocket)
        if u_id:
            destination_requests.clear(); route_selection = None
            print(f"❌ [Disconnect] {u_id}")
            await send_status_to_all_clients({"type": "user_disconnected", "message": "リセットされました"})

# =================================================================
# Section 2: Servo Motor Control
# =================================================================
servoRight = Control(physical_id=7, name="Right Servo")
servoLeft = Control(physical_id=5, name="Left Servo")
APP_ID_TO_SERVO_INSTANCE = {1: servoRight, 2: servoLeft}
current_angles = {1: 0, 2: 0}
movement_states = {}
servo_lock = threading.Lock()

def move_servo_by_app_id(app_id, angle):
    with servo_lock:
        servo = APP_ID_TO_SERVO_INSTANCE.get(app_id)
        if servo:
            angle = max(-60, min(angle, 60))
            servo.move(angle)
            current_angles[app_id] = angle

def servo_thread_loop():
    while True:
        try:
            with servo_lock:
                states = dict(movement_states)
            for app_id, direction in states.items():
                if direction != "stop":
                    angle = current_angles.get(app_id, 0)
                    angle += 1.0 if direction == "left" else -1.0
                    move_servo_by_app_id(app_id, angle)
        except Exception: pass
        time.sleep(0.01)

@app.websocket("/ws/servo")
async def websocket_servo_endpoint(websocket: WebSocket):
    await websocket.accept()
    client_app_id = None
    try:
        while True:
            data = await websocket.receive_json()
            command = data.get("command")
            app_id = data.get("app_id")
            if app_id in APP_ID_TO_SERVO_INSTANCE:
                client_app_id = app_id
                with servo_lock:
                    if command.startswith("start_"): movement_states[app_id] = command.split("_")[1]
                    elif command == "stop": movement_states[app_id] = "stop"
    except WebSocketDisconnect: pass
    finally:
        if client_app_id:
            with servo_lock: movement_states[client_app_id] = "stop"

# =================================================================
# Section 3: Server Startup
# =================================================================
async def retry_kachaka_connection():
    global kachaka_client
    while kachaka_client is None:
        try:
            kachaka_client = kachaka_api.KachakaApiClient(f"{KACHAKA_IP}:26400")
            print("✅ Reconnected to Kachaka!")
            break
        except Exception: await asyncio.sleep(10)

@app.on_event("startup")
async def startup_event():
    global kachaka_client
    print("🚀 Server Starting (Simplified Mode)...")
    threading.Thread(target=servo_thread_loop, daemon=True).start()
    try:
        kachaka_client = kachaka_api.KachakaApiClient(f"{KACHAKA_IP}:26400")
        print(f"✅ Connected to Kachaka! Ver: {kachaka_client.get_robot_version()}")
    except Exception as e:
        print(f"🔥 Kachaka connect failed: {e}")
        asyncio.create_task(retry_kachaka_connection())
    
    asyncio.create_task(process_kachaka_queue())
    print("✅ Server Ready")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)