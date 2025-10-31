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

KACHAKA_IP = "10.40.5.97"
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
user_selections = {}  # ユーザーの選択を保存
proposed_route = []  # 提案されたルート
plan_confirmations = set()
user_assignments = {}  # ★ この行を追加: WebSocketとユーザーIDのマッピング

# 固定の巡回ルート (順番が重要) - 充電ドックを削除
FIXED_ROUTE_ORDER = ["リビング", "ダイニング", "丸橋", "ゴルフ", "筋トレ", "さかもと"]

# 全目的地の情報を保持するマップ (location_nameをキーとする)
all_locations_map = {}

async def send_status_to_all_clients(message: dict):
    """全てのKachakaクライアントにステータスメッセージを送信"""
    disconnected_clients = set()
    for client in kachaka_clients:
        try:
            await client.send_json(message)
        except Exception as e:
            print(f"⚠️ [Send] Failed to send to client: {e}")
            disconnected_clients.add(client)
    
    # 切断されたクライアントを削除
    for client in disconnected_clients:
        kachaka_clients.discard(client)
        user_assignments.pop(client, None)

def kachaka_move_sync(location_id: str, location_name: str) -> bool:
    """同期的にKachakaロボットを移動させる関数"""
    global kachaka_client
    try:
        print(f"🚀 [Move] Starting move to '{location_name}' (ID: {location_id})")
        result = kachaka_client.move_to_location(location_id)
        
        # 移動完了を待機
        while kachaka_client.is_command_running():
            time.sleep(0.5)
        
        print(f"✅ [Move] Successfully arrived at '{location_name}'")
        return True
    except Exception as e:
        print(f"🔥 [Move] Failed to move to '{location_name}': {e}")
        return False

async def process_user_selections():
    """ユーザーの選択を元に巡回プランを作成"""
    global user_selections, proposed_route, plan_confirmations, all_locations_map

    if len(user_selections) < 2:
        print(f"⚠️ [Selection] Only {len(user_selections)} selection(s) received. Waiting for both users.")
        return

    print("✅ [Decision] Two selections received. Creating route plan.")
    
    # 両ユーザーが選択した全ての目的地を取得（合計最大4つ）
    all_selected_locations = set()
    for user_id in ["user_1", "user_2"]:
        locations_list = user_selections[user_id]["locations"]
        for loc_data in locations_list:
            all_selected_locations.add(loc_data["name"])
            all_locations_map[loc_data["name"]] = loc_data
            print(f"  - {user_id}: {loc_data['name']}")
    
    print(f"📍 [Selection] All selected locations: {all_selected_locations}")
    
    # 固定ルート順に従って、全目的地のリストを作成
    route_with_duration = []
    for location_name in FIXED_ROUTE_ORDER:
        location_data = all_locations_map.get(location_name)
        
        if location_data:
            # 誰か1人でも選んだ場所は10秒滞在
            if location_name in all_selected_locations:
                duration = 10
                print(f"  ✓ {location_name}: 10秒滞在 (選択済み)")
            else:
                duration = 0
                print(f"  ○ {location_name}: 通過のみ")
            
            route_with_duration.append({
                "location": location_data,
                "duration": duration
            })
        else:
            print(f"⚠️ [Warning] Location '{location_name}' not found in map data")
    
    proposed_route = route_with_duration
    
    # ルート詳細を作成
    route_description = " → ".join([
        f"{item['location']['name']}({item['duration']}秒)" if item['duration'] > 0 
        else f"{item['location']['name']}(通過)"
        for item in proposed_route
    ])
    
    print(f"📢 [Route] Starting route: {route_description}")
    print(f"📢 [Route] Total stops: {len(proposed_route)}")
    
    await send_status_to_all_clients({
        "type": "STARTING_MOVE",
        "message": f"巡回を開始します"
    })
    await asyncio.sleep(1)
    
    # ルート全体をキューに追加
    with kachaka_lock:
        for item in proposed_route:
            kachaka_command_queue.append({
                "id": item["location"]["id"],
                "name": item["location"]["name"],
                "duration": item["duration"]
            })
            print(f"  → キューに追加: {item['location']['name']} ({item['duration']}秒)")
    
    print(f"📋 [Queue] Total items in queue: {len(kachaka_command_queue)}")
    
    user_selections.clear()
    plan_confirmations.clear()
    proposed_route.clear()

async def process_destination_requests():
    """2つの目的地を巡る最短ルートを計算し、プランを提案する"""
    global destination_requests, proposed_plan, plan_confirmations

    if len(destination_requests) < 2:
        return

    print("✅ [Decision] Two requests received. Calculating shortest overall route.")
    
    # --- 必要な情報を抽出 ---
    user1_req = destination_requests["user_1"]
    user2_req = destination_requests["user_2"]
    
    loc_A_data = user1_req["location"]
    loc_B_data = user2_req["location"]
    
    pose_robot = user1_req["robot_pose"]
    pose_A = loc_A_data["pose"]
    pose_B = loc_B_data["pose"]
    
    # --- 3点間の距離を計算 ---
    # math.distは2点間のユークリッド距離を計算する
    dist_robot_to_A = math.dist([pose_robot["x"], pose_robot["y"]], [pose_A["x"], pose_A["y"]])
    dist_robot_to_B = math.dist([pose_robot["x"], pose_robot["y"]], [pose_B["x"], pose_B["y"]])
    dist_A_to_B = math.dist([pose_A["x"], pose_A["y"]], [pose_B["x"], pose_B["y"]])
    
    # --- 2つのルートの総移動距離を計算 ---
    # ルート1: 現在地 → A → B
    total_dist_route1 = dist_robot_to_A + dist_A_to_B
    
    # ルート2: 現在地 → B → A
    total_dist_route2 = dist_robot_to_B + dist_A_to_B # dist_A_to_B と dist_B_to_A は同じ
    
    print(f"📏 [RouteCalc] Route 1 (-> {loc_A_data['name']} -> {loc_B_data['name']}): {total_dist_route1:.2f}m")
    print(f"📏 [RouteCalc] Route 2 (-> {loc_B_data['name']} -> {loc_A_data['name']}): {total_dist_route2:.2f}m")
    
    # --- 総移動距離が短いルートを選択 ---
    if total_dist_route1 <= total_dist_route2:
        first = loc_A_data
        second = loc_B_data
        print(f"🏆 [Decision] Route 1 is shorter.")
    else:
        first = loc_B_data
        second = loc_A_data
        print(f"🏆 [Decision] Route 2 is shorter.")

    # 提案を作成して保持し、同意状態をリセット
    proposed_plan["first"] = first
    proposed_plan["second"] = second
    plan_confirmations.clear()
    
    # 全クライアントにプランを提案
    proposal_message = f"先に「{first['name']}」へ向かうのが最短ルートです。この順番で行きましょう！"
    await send_status_to_all_clients({
        "type": "PROPOSE_PLAN",
        "message": proposal_message,
    })
    print(f"📢 [Proposal] Sent: {proposal_message}")

async def process_kachaka_queue():
    global kachaka_client
    current_move_future = None
    idle_start_time = None
    current_location_duration = None
    location_arrival_time = None
    current_location_name = None
    
    print("🎯 [Queue] Kachaka queue processor started and waiting for commands...")
    
    while True:
        try:
            if not kachaka_client:
                await asyncio.sleep(1)
                continue
            
            is_busy = kachaka_client.is_command_running()
            
            # キューの状態をチェック (デバッグ用)
            with kachaka_lock:
                queue_size = len(kachaka_command_queue)
            
            if queue_size > 0 and current_move_future is None and not is_busy:
                print(f"📋 [Queue] {queue_size} items waiting in queue")
            
            # 移動完了チェック
            if current_move_future and current_move_future.done():
                result = current_move_future.result()
                
                if result:
                    # 移動成功
                    if current_location_duration > 0:
                        # 滞在時間がある場合
                        location_arrival_time = time.time()
                        print(f"✅ [Arrival] Arrived at {current_location_name}. Staying for {current_location_duration} seconds.")
                        await send_status_to_all_clients({
                            "type": "kachaka_status",
                            "status": "waiting",
                            "message": f"{current_location_name}で{current_location_duration}秒滞在中..."
                        })
                    else:
                        # 滞在時間が0の場合は即座に次へ
                        print(f"✅ [Arrival] Arrived at {current_location_name}. Passing through immediately.")
                        location_arrival_time = None
                        current_location_duration = None
                        current_location_name = None
                        idle_start_time = time.time()
                else:
                    # 移動失敗
                    await send_status_to_all_clients({
                        "type": "kachaka_status",
                        "status": "error",
                        "message": f"{current_location_name}への移動に失敗しました"
                    })
                    location_arrival_time = None
                    current_location_duration = None
                    current_location_name = None
                
                current_move_future = None
            
            # 滞在時間の経過チェック
            if location_arrival_time and current_location_duration:
                elapsed = time.time() - location_arrival_time
                if elapsed >= current_location_duration:
                    print(f"⏰ [Duration] Stay period completed at {current_location_name}.")
                    location_arrival_time = None
                    current_location_duration = None
                    current_location_name = None
                    idle_start_time = time.time()
            
            # 次の目的地への移動開始
            wait_period_complete = idle_start_time is None or (time.time() - idle_start_time >= 3.0)
            
            if not current_move_future and not is_busy and wait_period_complete and not location_arrival_time:
                idle_start_time = None
                
                with kachaka_lock:
                    if kachaka_command_queue:
                        location_item = kachaka_command_queue.popleft()
                        current_location_duration = location_item.get("duration", 0)
                        current_location_name = location_item["name"]
                        
                        print(f"🚀 [Queue] Starting move to: {current_location_name}")
                        
                        await send_status_to_all_clients({
                            "type": "kachaka_status",
                            "status": "moving",
                            "destination": current_location_name
                        })
                        
                        loop = asyncio.get_event_loop()
                        current_move_future = loop.run_in_executor(
                            executor,
                            kachaka_move_sync,
                            location_item["id"],
                            current_location_name
                        )
                    else:
                        # キューが空になったらアイドル状態に
                        if queue_size == 0:  # 前回チェック時に空だった場合のみ通知
                            await send_status_to_all_clients({
                                "type": "kachaka_status",
                                "status": "idle",
                                "message": "巡回が完了しました"
                            })
        
        except Exception as e:
            print(f"🔥 Error in process_kachaka_queue: {e}")
            import traceback
            traceback.print_exc()
            current_move_future = None
            idle_start_time = None
            location_arrival_time = None
            current_location_duration = None
            current_location_name = None
            await asyncio.sleep(5)
        
        await asyncio.sleep(0.5)


@app.websocket("/ws/kachaka")
async def websocket_kachaka_endpoint(websocket: WebSocket):
    await websocket.accept()
    kachaka_clients.add(websocket)
    user_id = None

    with kachaka_lock:
        if "user_1" not in user_assignments.values(): user_id = "user_1"
        elif "user_2" not in user_assignments.values(): user_id = "user_2"
        else: user_id = "spectator"
        user_assignments[websocket] = user_id
    print(f"✅ [Connect] Client connected as {user_id}. Total: {len(kachaka_clients)}")
    await websocket.send_json({"type": "user_assigned", "user_id": user_id})

    try:
        while True:
            data = await websocket.receive_json()
            print(f"📨 [Receive] From {user_id}: {data}")
            action = data.get("action")

            if action == "SELECT_INTEREST":
                if user_id in ["user_1", "user_2"]:
                    user_selections[user_id] = {
                        "locations": data.get("locations", []),
                        "robot_pose": data.get("robot_pose")
                    }
                    location_names = [loc["name"] for loc in data.get("locations", [])]
                    print(f"📝 [Selection] Saved for {user_id}: {', '.join(location_names)}")
                    
                    # 選択された目的地をall_locations_mapに追加
                    for loc_data in data.get("locations", []):
                        all_locations_map[loc_data["name"]] = loc_data
                    
                    if len(user_selections) == 2:
                        await process_user_selections()
                    else:
                        await send_status_to_all_clients({
                            "type": "WAITING_FOR_OPPONENT",
                            "message": "相手の選択を待っています…"
                        })
            
            # 全ての目的地情報を受信して保存
            elif action == "SEND_ALL_LOCATIONS":
                locations_data = data.get("locations", [])
                for loc in locations_data:
                    all_locations_map[loc["name"]] = loc
                print(f"📥 [Locations] Received {len(locations_data)} locations from {user_id}")

    except WebSocketDisconnect:
        disconnected_user_id = user_assignments.pop(websocket, None)
        kachaka_clients.discard(websocket)
        if disconnected_user_id:
            user_selections.clear()
            plan_confirmations.clear()
            proposed_route.clear()
            print(f"🧹 [Cleanup] All states cleared due to disconnect from {disconnected_user_id}.")
            await send_status_to_all_clients({
                "type": "user_disconnected",
                "message": f"ユーザーが切断したため、リセットされました。"
            })
        print(f"❌ [Disconnect] Client disconnected. Remaining: {len(kachaka_clients)}")

# (Section 2: Servo と Section 3: Server Startup は変更ありません)
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
            await kachaka_client.get_robot_version()
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
        robot_version = await kachaka_client.get_robot_version()
        print(f"✅ Connected to Kachaka robot! Version: {robot_version}")
    except Exception as e:
        print(f"🔥 FAILED to connect to Kachaka robot: {e}")
        kachaka_client = None
        asyncio.create_task(retry_kachaka_connection())

    # ★ Kachakaキュー処理タスクを必ず起動
    asyncio.create_task(process_kachaka_queue())
    print("✅ Kachaka queue processor started.")
    print("✅ Server is ready.")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)