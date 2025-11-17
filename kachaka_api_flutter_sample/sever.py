import asyncio
import json
from collections import deque
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from Control import Control
import kachaka_api
import threading
import time
from concurrent.futures import ThreadPoolExecutor
import math

KACHAKA_IP = "10.40.5.41"
app = FastAPI()
kachaka_client: kachaka_api.KachakaApiClient = None

# =================================================================
# Section 1: Kachaka ロボット制御関連のコード
# =================================================================
kachaka_command_queue = deque()
kachaka_clients = set()
kachaka_lock = threading.Lock()
executor = ThreadPoolExecutor(max_workers=1)

# 状態管理変数
user_assignments = {}
destination_requests = {}  # user_1の目的地選択を保持
route_selection = None      # user_2の経路選択を保持

# ★ 現在地と移動中フラグ（変更）
current_location_name = "充電ドック"   # 最終到着した場所を現在地とする（初期は充電ドック）
current_moving_location = None         # 現在移動中のロケーションデータ（辞書）または None
is_executing_move = False              # 移動タスクが実行中か（キュー処理上のフラグ）

# ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
# ★ 経路定義: 現在地 → 目的地への複数ルートパターン      ★
# ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

# 各目的地への経路パターンを定義
# start_location → destination への経路
ROUTE_PATTERNS = {
    # 充電ドック → 目的地1
    ("充電ドック", "1"): {
        "upper": ["a"],           # 経由地1つ
        "middle": ["b"],
        "lower": ["c"]
    },
    # 充電ドック → 目的地2
    ("充電ドック", "2"): {
        "upper": ["a", "d"],      # 経由地2つ
        "middle": ["b"],
        "lower": ["c", "e"]
    },
    # 充電ドック → 目的地3
    ("充電ドック", "3"): {
        "upper": ["a"],
        "middle": ["b", "d"],
        "lower": ["c"]
    },
    # 充電ドック → 目的地4
    ("充電ドック", "4"): {
        "upper": ["a", "d"],
        "middle": ["b", "e"],
        "lower": ["c"]
    },
    # 充電ドック → 目的地5
    ("充電ドック", "5"): {
        "upper": ["a"],
        "middle": ["b"],
        "lower": ["c", "d", "e"]  # 経由地3つ
    },
    
    # ★ 目的地1 → 他の目的地への経路も定義可能
    ("1", "2"): {
        "upper": ["d"],
        "middle": [],             # 直接移動
        "lower": ["e"]
    },
    ("1", "3"): {
        "upper": ["a"],
        "middle": ["b"],
        "lower": ["c"]
    },
    # ... 必要に応じて追加
}

# デフォルトルート (定義がない場合)
DEFAULT_ROUTE = {
    "upper": [],
    "middle": [],
    "lower": []
}

# ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


def get_current_location_name(kachaka_client):
    """直近に到着した目的地を現在地として返す（重い距離計算は行わない）。"""
    try:
        # 重いロジックを廃止し、最後に成功した到着地点を現在地として扱う
        global current_location_name
        return current_location_name or "充電ドック"
    except Exception as e:
        print(f"🔥 [Error] get_current_location_name: {e}")
        return "充電ドック"


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
    print(f"📤 [Broadcast] Sent to {len(kachaka_clients)} clients: {status_data}")


# ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
# ★ 修正版: 実際のロケーションデータを使用               ★
# ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
async def process_destination_and_route():
    """user_1の目的地とuser_2の経路選択を処理"""
    global destination_requests, route_selection, kachaka_client
    
    if "user_1" not in destination_requests or route_selection is None:
        return
    
    print("✅ [Decision] Both selections received. Building route.")
    
    # 現在地を取得
    current_location = get_current_location_name(kachaka_client)
    
    # 目的地を取得
    final_destination = destination_requests["user_1"]["location"]
    destination_name = final_destination["name"]
    
    print(f"📍 [Start] Current location: {current_location}")
    print(f"🎯 [Goal] Destination: {destination_name}")
    print(f"🛤️ [Route] Selected: {route_selection}")
    
    # 経路パターンを取得
    route_key = (current_location, destination_name)
    route_pattern = ROUTE_PATTERNS.get(route_key, DEFAULT_ROUTE)
    waypoint_names = route_pattern.get(route_selection, [])
    
    if not waypoint_names:
        print(f"⚠️ [Warning] No waypoints for this route. Direct move.")
    
    try:
        locations = kachaka_client.get_locations()
        location_dict = {loc.name: loc for loc in locations}
        
        # 経由地リストを作成
        waypoints = []
        for wp_name in waypoint_names:
            if wp_name not in location_dict:
                print(f"🔥 [Error] Waypoint '{wp_name}' not found!")
                await send_status_to_all_clients({
                    "type": "kachaka_status",
                    "status": "error",
                    "message": f"経由地点 '{wp_name}' が見つかりません"
                })
                destination_requests.clear()
                route_selection = None
                return
            
            loc = location_dict[wp_name]
            waypoints.append({
                "id": loc.id,
                "name": loc.name,
                "pose": {
                    "x": loc.pose.x,
                    "y": loc.pose.y,
                    "theta": loc.pose.theta
                }
            })
        
        # 移動メッセージを作成
        if waypoints:
            waypoint_text = " → ".join([wp["name"] for wp in waypoints])
            message = f"{waypoint_text} を経由して {destination_name} へ向かいます！"
        else:
            message = f"{destination_name} へ直接向かいます！"
        
        print(f"📝 [Plan] {message}")
        
        await send_status_to_all_clients({
            "type": "STARTING_MOVE",
            "message": message
        })
        
        await asyncio.sleep(1)
        
        # キューに追加
        with kachaka_lock:
            for waypoint in waypoints:
                kachaka_command_queue.append(waypoint)
            kachaka_command_queue.append(final_destination)
        
        print(f"✅ [Queue] Added {len(waypoints)} waypoints + 1 destination")
        
        # 状態をリセット
        destination_requests.clear()
        route_selection = None
        
    except Exception as e:
        print(f"🔥 [Error] Failed to process route: {e}")
        await send_status_to_all_clients({
            "type": "kachaka_status",
            "status": "error",
            "message": f"ルート処理エラー: {str(e)}"
        })
        destination_requests.clear()
        route_selection = None


def kachaka_move_sync(location_id, location_name):
    global kachaka_client
    try:
        print(f"🤖 [Kachaka Thread] Starting move to {location_name} ({location_id})")
        result = kachaka_client.move_to_location(location_id).get()
        print(f"✅ [Kachaka Thread] Move result: {result}")
        return result.success
    except Exception as e:
        print(f"🔥 [Kachaka Thread] Move failed: {e}")
        return False


async def process_kachaka_queue():
    # 変更: 実行中フラグと到着地更新を追加
    global kachaka_client, current_location_name, current_moving_location, is_executing_move
    current_move_future = None
    idle_start_time = None
    while True:
        try:
            if not kachaka_client:
                await asyncio.sleep(1); continue
            is_busy = kachaka_client.is_command_running()
            # 移動タスクが完了した場合の処理
            if current_move_future and current_move_future.done():
                result = current_move_future.result()
                status = "idle" if result else "error"
                message = "Move failed" if not result else ""
                # ★ 到着が成功したら現在地を更新
                if result and current_moving_location:
                    current_location_name = current_moving_location.get("name", current_location_name)
                # 完了後フラグを戻す
                current_moving_location = None
                is_executing_move = False
                await send_status_to_all_clients({"type": "kachaka_status", "status": status, "message": message})
                current_move_future = None
                idle_start_time = time.time() if result else None

            wait_period_complete = idle_start_time is None or (time.time() - idle_start_time >= 5.0)
            if not current_move_future and not is_busy and wait_period_complete:
                idle_start_time = None
                with kachaka_lock:
                    if kachaka_command_queue:
                        location_data = kachaka_command_queue.popleft()
                        # ★ 移動開始前に実行フラグと現在移動先を設定
                        current_moving_location = location_data
                        is_executing_move = True
                        await send_status_to_all_clients({"type": "kachaka_status", "status": "moving", "destination": location_data["name"]})
                        loop = asyncio.get_event_loop()
                        current_move_future = loop.run_in_executor(executor, kachaka_move_sync, location_data["id"], location_data["name"])
        except Exception as e:
            print(f"🔥 Error in process_kachaka_queue: {e}")
            current_move_future = None; idle_start_time = None
            current_moving_location = None
            is_executing_move = False
            await asyncio.sleep(5)
        await asyncio.sleep(0.5)


@app.websocket("/ws/kachaka")
async def websocket_kachaka_endpoint(websocket: WebSocket):
    await websocket.accept()
    kachaka_clients.add(websocket)
    user_id = None

    with kachaka_lock:
        if "user_1" not in user_assignments.values(): 
            user_id = "user_1"
        elif "user_2" not in user_assignments.values(): 
            user_id = "user_2"
        else: 
            user_id = "spectator"
        user_assignments[websocket] = user_id
    
    print(f"✅ [Connect] Client connected as {user_id}. Total: {len(kachaka_clients)}")
    
    # ユーザーごとに異なる初期メッセージ
    initial_message = "どこに行きますか？" if user_id == "user_1" else "経路を選択してください"
    await websocket.send_json({
        "type": "user_assigned", 
        "user_id": user_id,
        "message": initial_message
    })

    try:
        while True:
            data = await websocket.receive_json()
            print(f"📨 [Receive] From {user_id}: {data}")
            action = data.get("action")

            # user_1の目的地選択を処理
            if action == "REQUEST_DESTINATION" and user_id == "user_1":
                # ★ 移動中または既にリクエストがある場合は受け付けない
                if is_executing_move or destination_requests:
                    await websocket.send_json({
                        "type": "ERROR",
                        "message": "現在移動中のため目的地を選択できません。"
                    })
                    continue

                destination_requests["user_1"] = {
                    "location": data.get("location"),
                    "robot_pose": data.get("robot_pose")
                }
                print(f"📝 [User1] Selected destination: {data['location']['name']}")
                
                # user_2に通知
                await send_status_to_all_clients({
                    "type": "WAITING_FOR_ROUTE",
                    "message": f"目的地「{data['location']['name']}」が選択されました",
                    "for_user": "user_2"
                })
                
                # user_1には待機メッセージ
                await websocket.send_json({
                    "type": "WAITING_FOR_ROUTE",
                    "message": "経路選択を待っています..."
                })

            # user_2の経路選択を処理
            elif action == "SELECT_ROUTE" and user_id == "user_2":
                # ★ 移動中は受け付けない / user_1の選択がない場合もエラー
                if is_executing_move:
                    await websocket.send_json({
                        "type": "ERROR",
                        "message": "現在移動中のため経路を選択できません。"
                    })
                    continue
                if "user_1" not in destination_requests:
                    await websocket.send_json({
                        "type": "ERROR",
                        "message": "目的地が未選択です。先にユーザー1が目的地を選んでください。"
                    })
                    continue

                global route_selection
                route_selection = data.get("route")  # "upper", "middle", "lower"
                print(f"🛤️ [User2] Selected route: {route_selection}")
                
                await process_destination_and_route()

    except WebSocketDisconnect:
        disconnected_user_id = user_assignments.pop(websocket, None)
        kachaka_clients.discard(websocket)
        if disconnected_user_id:
            destination_requests.clear()
            route_selection = None
            print(f"🧹 [Cleanup] All states cleared due to disconnect from {disconnected_user_id}.")
            await send_status_to_all_clients({
                "type": "user_disconnected",
                "message": "ユーザーが切断したため、リセットされました。"
            })
        print(f"❌ [Disconnect] Client disconnected. Remaining: {len(kachaka_clients)}")

# (他のセクションは変更なし)
# =================================================================
# Section 2: Servo Motor Control (変更なし)
# =================================================================
servoRight = Control(physical_id=7, name="Right Servo")
servoLeft = Control(physical_id=5, name="Left Servo")
APP_ID_TO_SERVO_INSTANCE = {1: servoRight, 2: servoLeft}
MIN_ANGLE, MAX_ANGLE, STEP, UPDATE_INTERVAL = -60, 60, 1.0, 0.01
current_angles = {1: 0, 2: 0}
movement_states = {}
servo_lock = threading.Lock()

def move_servo_by_app_id(app_id, angle):
    with servo_lock:
        servo_instance = APP_ID_TO_SERVO_INSTANCE.get(app_id)
        if servo_instance:
            target_angle = max(MIN_ANGLE, min(angle, MAX_ANGLE))
            servo_instance.move(target_angle)
            current_angles[app_id] = target_angle

def servo_thread_loop():
    print("🔩 [Servo] Starting servo control thread...")
    while True:
        try:
            with servo_lock:
                states_copy = dict(movement_states)
            for app_id, direction in states_copy.items():
                if direction != "stop":
                    angle = current_angles.get(app_id, 0)
                    if direction == "right": angle -= STEP
                    elif direction == "left": angle += STEP
                    move_servo_by_app_id(app_id, angle)
        except Exception as e:
            print(f"🔥 [Servo] Error in servo_thread_loop: {e}")
        time.sleep(UPDATE_INTERVAL)

@app.websocket("/ws/servo")
async def websocket_servo_endpoint(websocket: WebSocket):
    await websocket.accept()
    client_app_id = None
    try:
        while True:
            data = await websocket.receive_json()
            command = data.get("command")
            app_id = data.get("app_id")
            if app_id not in APP_ID_TO_SERVO_INSTANCE: continue
            client_app_id = app_id
            with servo_lock:
                if command and command.startswith("start_"):
                    movement_states[app_id] = command.split("_")[1]
                elif command == "stop":
                    movement_states[app_id] = "stop"
    except WebSocketDisconnect:
        print(f"❌ [Servo] Web client disconnected (App ID: {client_app_id}).")
    finally:
        if client_app_id:
            with servo_lock:
                movement_states[client_app_id] = "stop"

# =================================================================
# Section 3: Server Startup
# =================================================================
async def retry_kachaka_connection():
    global kachaka_client
    while kachaka_client is None:
        try:
            print(f"🔄 Retrying connection to Kachaka robot at {KACHAKA_IP}...")
            kachaka_client = kachaka_api.KachakaApiClient(f"{KACHAKA_IP}:26400")
            # ★ awaitを削除 (同期メソッド)
            robot_version = kachaka_client.get_robot_version()
            print("✅ Reconnected to Kachaka robot!")
            break
        except Exception as e:
            print(f"🔥 Retry failed: {e}")
            await asyncio.sleep(10)

@app.on_event("startup")
async def startup_event():
    global kachaka_client
    print("🚀 Starting unified server...")

    # サーボ初期化
    try:
        move_servo_by_app_id(1, 0)
        move_servo_by_app_id(2, 0)
    except Exception as e:
        print(f"🔥 [Servo] Failed to initialize servos: {e}")
    servo_thread = threading.Thread(target=servo_thread_loop, daemon=True)
    servo_thread.start()

    # Kachaka接続
    try:
        kachaka_client = kachaka_api.KachakaApiClient(f"{KACHAKA_IP}:26400")
        # ★ awaitを削除 (同期メソッド)
        robot_version = kachaka_client.get_robot_version()
        print(f"✅ Connected to Kachaka robot! Version: {robot_version}")
    except Exception as e:
        print(f"🔥 FAILED to connect to Kachaka robot: {e}")
        kachaka_client = None
        asyncio.create_task(retry_kachaka_connection())

    # Kachakaタスクを開始
    asyncio.create_task(process_kachaka_queue())
    print("✅ Server is ready.")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)