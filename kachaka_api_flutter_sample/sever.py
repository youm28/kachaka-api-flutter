import asyncio
import json
from collections import deque
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from Control import Control
import kachaka_api
import threading
import time
from concurrent.futures import ThreadPoolExecutor
import csv
import os
from datetime import datetime
#カチャカのIPアドレス(研究室) 10.40.5.108
#カチャカのIPアドレス(H509) 10.40.42.28
KACHAKA_IP = "10.40.42.28"
app = FastAPI()
kachaka_client: kachaka_api.KachakaApiClient = None

# =================================================================
# ★★★ METRICS & LOGGING SETUP (ユーザー別集計に対応) ★★★
# =================================================================
log_lock = threading.Lock()
current_time_str = datetime.now().strftime('%Y%m%d_%H%M%S')
LOG_FILENAME = f"experiment_metrics_{current_time_str}.csv"

class MetricsTracker:
    def __init__(self):
        # 時間計測用
        self.t_start_selection = time.time()
        self.t_dest_selected = None
        self.t_start_move = None

        # サーボ集計用
        self.servo_active_presses = {} # {user_id_axis: start_time}
        self.current_phase = "IDLE"    # "IDLE" or "MOVING"
        
        # ユーザー別に集計バッファを分離
        self.servo_stats = {
            "IDLE": {
                "user_1": {"count": 0, "duration": 0.0},
                "user_2": {"count": 0, "duration": 0.0}
            },
            "MOVING": {
                "user_1": {"count": 0, "duration": 0.0},
                "user_2": {"count": 0, "duration": 0.0}
            }
        }

    def reset_selection_timer(self):
        self.t_start_selection = time.time()
        self.t_dest_selected = None

    def mark_dest_selected(self):
        self.t_dest_selected = time.time()
        duration = self.t_dest_selected - self.t_start_selection
        return round(duration, 3)

    def mark_route_selected(self):
        if self.t_dest_selected is None: return 0, 0
        now = time.time()
        route_time = now - self.t_dest_selected
        total_time = now - self.t_start_selection
        return round(route_time, 3), round(total_time, 3)

    def start_travel(self):
        self.t_start_move = time.time()
        self.switch_phase("MOVING")

    def end_travel(self):
        if self.t_start_move is None: return 0
        duration = time.time() - self.t_start_move
        self.t_start_move = None
        self.switch_phase("IDLE") 
        self.reset_selection_timer()
        return round(duration, 3)

    def switch_phase(self, new_phase):
        """フェーズ切り替え時に、前のフェーズの集計をユーザーごとにログ出力"""
        if self.current_phase == new_phase: return

        # 前のフェーズのデータ
        phase_data = self.servo_stats[self.current_phase]
        
        # ユーザーごとにログを出力
        for user_id in ["user_1", "user_2"]:
            stats = phase_data.get(user_id)
            if stats:
                log_event(
                    user_id, # User_IDカラムに記録
                    f"SERVO_SUMMARY_{self.current_phase}", 
                    str(stats["count"]), 
                    str(round(stats["duration"], 3))
                )
                print(f"📊 Summary ({self.current_phase}) [{user_id}]: {stats['count']} clicks, {stats['duration']:.2f} sec")
                
                # リセット
                stats["count"] = 0
                stats["duration"] = 0.0

        self.current_phase = new_phase

    def record_servo_input(self, user_id, axis, command):
        """サーボ入力の開始と終了を検知して集計（ユーザー別）"""
        if user_id not in ["user_1", "user_2"]: return # 想定外のユーザーは無視

        key = f"{user_id}_{axis}"
        now = time.time()
        
        # 対象ユーザーの統計辞書を取得
        stats = self.servo_stats[self.current_phase][user_id]

        if command in ["increase", "decrease"]:
            # 押し込み開始
            if key not in self.servo_active_presses:
                self.servo_active_presses[key] = now
                stats["count"] += 1
        
        elif command == "stop":
            # 押し込み終了
            start_time = self.servo_active_presses.pop(key, None)
            if start_time:
                duration = now - start_time
                stats["duration"] += duration

metrics = MetricsTracker()

def init_log_file():
    if not os.path.exists(LOG_FILENAME):
        with open(LOG_FILENAME, 'w', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow([
                "Timestamp", "User_ID", "Action_Type", 
                "Value_1", "Value_2", 
                "Current_Selector", "Robot_Location"
            ])

def log_event(user_id, action_type, val1="", val2=""):
    try:
        timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')
        with log_lock:
            with open(LOG_FILENAME, 'a', newline='', encoding='utf-8') as f:
                writer = csv.writer(f)
                writer.writerow([
                    timestamp, user_id, action_type, val1, val2,
                    current_destination_selector, current_location_name
                ])
    except Exception as e:
        print(f"🔥 Log Error: {e}")

init_log_file()

# =================================================================
# Section 1: Kachaka ロボット制御関連 (変更なし)
# =================================================================
kachaka_command_queue = deque()
kachaka_clients = set()
kachaka_lock = threading.Lock()
executor = ThreadPoolExecutor(max_workers=1)

user_assignments = {}
destination_requests = {}
route_selection = None
current_location_name = "充電ドック" 
current_moving_location = None
current_destination_selector = "user_1" 

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
    ("5", "3"): {"route_left": ["a", "d"], "route_center": ["c"], "route_right": ["e"]},
    ("5", "4"): {"route_left": ["a", "d"], "route_center": ["b"], "route_right": ["e", "c"]},
    ("5", "6"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e"]},
    ("6", "1"): {"route_left": ["a"], "route_center": ["b"], "route_right": ["e", "c", "d"]},
    ("6", "2"): {"route_left": ["a", "d"], "route_center": ["b", "4"], "route_right": ["e", "c"]},
    ("6", "3"): {"route_left": ["a", "d", "c"], "route_center": ["e", "c"], "route_right": ["e"]},
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

async def broadcast_connection_status():
    is_user1_present = "user_1" in user_assignments.values()
    is_user2_present = "user_2" in user_assignments.values()
    is_ready = is_user1_present and is_user2_present

    message = {
        "type": "connection_status",
        "ready": is_ready,
        "user1": is_user1_present,
        "user2": is_user2_present,
        "destination_selector": current_destination_selector 
    }
    await send_status_to_all_clients(message)

async def process_destination_and_route():
    global destination_requests, route_selection, kachaka_client
    
    if current_destination_selector not in destination_requests:
        return
    if route_selection is None:
        return
    
    current_location = current_location_name 
    final_destination = destination_requests[current_destination_selector]["location"]
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
        for wp_name in waypoint_names:
            if wp_name in location_dict:
                loc = location_dict[wp_name]
                waypoints.append({"id": loc.id, "name": loc.name})
            else:
                print(f"⚠️ Waypoint '{wp_name}' not found. Skipping.")
        
        if destination_name in location_dict:
             dest_loc = location_dict[destination_name]
             final_dest_data = {"id": dest_loc.id, "name": dest_loc.name}
        else:
             print(f"🔥 Destination '{destination_name}' not found!")
             destination_requests.clear(); route_selection = None; return

        if waypoints:
            waypoint_text = " → ".join([wp["name"] for wp in waypoints])
            message = f"{waypoint_text} を経由して {destination_name} へ向かいます！"
        else:
            message = f"{destination_name} へ直接向かいます！"
        
        # ★ METRICS: 移動開始
        metrics.start_travel()
        
        log_event("SYSTEM", "START_MOVING", f"To: {destination_name}", f"Route: {route_selection}")

        await send_status_to_all_clients({"type": "STARTING_MOVE", "message": message})
        await asyncio.sleep(1)
        
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

def kachaka_move_sync(location_id, location_name):
    global kachaka_client
    try:
        print(f"🤖 [Move] Trying to go to '{location_name}'...")
        timeout = 0
        while kachaka_client.is_command_running():
            time.sleep(0.5)
            timeout += 1
            if timeout > 10: break

        kachaka_client.move_to_location(location_id)
        time.sleep(1) 
        while kachaka_client.is_command_running():
            time.sleep(0.5)
            
        print(f"✅ [Move] Finished command for '{location_name}'.")
        return True 

    except Exception as e:
        print(f"🔥 [Move] Exception: {e}")
        return True 

async def process_kachaka_queue():
    global kachaka_client, current_location_name, current_moving_location, current_destination_selector
    current_move_future = None

    while True:
        try:
            if not kachaka_client:
                await asyncio.sleep(1); continue
            
            if current_move_future and current_move_future.done():
                if current_moving_location:
                    old_loc = current_location_name
                    new_loc = current_moving_location.get("name")
                    current_location_name = new_loc
                    print(f"📍 [Update] Location changed: '{old_loc}' -> '{new_loc}'")
                
                current_moving_location = None
                
                if not kachaka_command_queue:
                    travel_time = metrics.end_travel()
                    log_event("SYSTEM", "TIME_TRAVEL", str(travel_time), f"To: {current_location_name}")

                swap_triggers = ["1", "2", "3", "4", "5", "6"]
                
                if current_location_name in swap_triggers:
                    prev_selector = current_destination_selector
                    current_destination_selector = "user_2" if current_destination_selector == "user_1" else "user_1"
                    print(f"🔄 [Role Swap] Arrived at {current_location_name}.")
                    log_event("SYSTEM", "ROLE_SWAP", f"At: {current_location_name}", f"{prev_selector}->{current_destination_selector}")
                else:
                    log_event("SYSTEM", "WAYPOINT_ARRIVED", f"At: {current_location_name}", "")

                await send_status_to_all_clients({
                    "type": "kachaka_status", 
                    "status": "idle", 
                    "message": "",
                    "current_location": current_location_name,
                    "destination_selector": current_destination_selector
                })
                current_move_future = None

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
    
    metrics.reset_selection_timer()
    log_event(user_id, "CONNECT", "Kachaka WS", "")

    init_msg = ""
    if user_id == current_destination_selector:
        init_msg = "どこに行きますか？"
    else:
        init_msg = "パートナーが目的地を選ぶのを待っています..."

    await websocket.send_json({
        "type": "user_assigned", 
        "user_id": user_id,
        "message": init_msg,
        "current_location": current_location_name,
        "destination_selector": current_destination_selector 
    })

    await broadcast_connection_status()

    try:
        while True:
            data = await websocket.receive_json()
            print(f"📨 [{user_id}] Received: {data}")
            action = data.get("action")

            if action == "REQUEST_DESTINATION":
                if user_id != current_destination_selector:
                     await websocket.send_json({"type": "ERROR", "message": "現在あなたのターンではありません。"})
                     continue

                partner_id = "user_2" if user_id == "user_1" else "user_1"
                if partner_id not in user_assignments.values():
                     await websocket.send_json({"type": "ERROR", "message": "パートナーがいません。"})
                     continue
                if current_moving_location or destination_requests:
                    await websocket.send_json({"type": "ERROR", "message": "処理中です。"})
                    continue
                
                dest_name = data.get("location")["name"]
                
                # ★ METRICS: 目的地選択時間
                dest_time = metrics.mark_dest_selected()
                log_event(user_id, "TIME_DEST_SELECT", str(dest_time), dest_name)
                
                destination_requests[user_id] = {"location": data.get("location")}
                route_key = (current_location_name, dest_name)
                available_routes = ROUTE_PATTERNS.get(route_key, DEFAULT_ROUTE)

                await send_status_to_all_clients({
                    "type": "WAITING_FOR_ROUTE", 
                    "message": f"目的地「{dest_name}」選択済", 
                    "for_user": partner_id,
                    "route_options": available_routes,
                    "target_destination": dest_name 
                })
                await websocket.send_json({"type": "WAITING_FOR_ROUTE", "message": "パートナーの経路選択を待っています..."})

            elif action == "SELECT_ROUTE":
                if user_id == current_destination_selector:
                    await websocket.send_json({"type": "ERROR", "message": "あなたは目的地選択担当です。"})
                    continue
                if current_moving_location:
                    await websocket.send_json({"type": "ERROR", "message": "移動中です。"})
                    continue
                if current_destination_selector not in destination_requests:
                    await websocket.send_json({"type": "ERROR", "message": "先に目的地を選んでください。"})
                    continue
                
                route_selection = data.get("route")
                
                # ★ METRICS: 経路選択時間 & 合計選択時間
                route_time, total_time = metrics.mark_route_selected()
                log_event(user_id, "TIME_ROUTE_SELECT", str(route_time), route_selection)
                log_event("SYSTEM", "TIME_TOTAL_SELECT", str(total_time), "")

                await process_destination_and_route()

    except WebSocketDisconnect:
        u_id = user_assignments.pop(websocket, None)
        kachaka_clients.discard(websocket)
        if u_id:
            destination_requests.clear(); route_selection = None
            log_event(u_id, "DISCONNECT", "Kachaka WS", "")
            await send_status_to_all_clients({"type": "user_disconnected", "message": "リセットされました"})
            await broadcast_connection_status()

# =================================================================
# Section 2: Servo Motor Control
# =================================================================

servoHorizontalRight = Control(physical_id=5, name="HRight Servo")
servoVerticalRight = Control(physical_id=7, name="VRight Servo")
servoHorizontalLeft = Control(physical_id=13, name="HLeft Servo")
servoVerticalLeft = Control(physical_id=9, name="VLeft Servo")

USER_SERVO_MAP = {
    "user_1": {"horizontal": servoHorizontalRight, "vertical": servoVerticalRight},
    "user_2": {"horizontal": servoHorizontalLeft, "vertical": servoVerticalLeft}
}

current_angles = {5: 0, 7: 0, 13: 0, 9: 0}
movement_states = {5: "stop", 7: "stop", 13: "stop", 9: "stop"}
servo_lock = threading.Lock()

def move_servo(physical_id, servo_instance, angle):
    with servo_lock:
        if servo_instance:
            angle = max(-40, min(angle, 40))
            servo_instance.move(angle)
            current_angles[physical_id] = angle

def servo_thread_loop():
    while True:
        try:
            with servo_lock:
                states = dict(movement_states)
            for physical_id, direction in states.items():
                if direction == "stop": continue
                target_servo = None
                if physical_id == 7: target_servo = servoHorizontalRight
                elif physical_id == 5: target_servo = servoVerticalRight
                elif physical_id == 9: target_servo = servoHorizontalLeft
                elif physical_id == 13: target_servo = servoVerticalLeft
                
                if target_servo:
                    current_angle = current_angles.get(physical_id, 0)
                    step = 0.4
                    is_vertical = (physical_id == 7 or physical_id == 9)
                    if direction == "increase":
                        if is_vertical: current_angle -= step
                        else: current_angle += step
                    elif direction == "decrease":
                        if is_vertical: current_angle += step
                        else: current_angle -= step
                    move_servo(physical_id, target_servo, current_angle)
        except Exception as e:
            print(f"Servo Loop Error: {e}")
        time.sleep(0.01)

@app.websocket("/ws/servo")
async def websocket_servo_endpoint(websocket: WebSocket):
    await websocket.accept()
    print("✅ Servo Client Connected")
    try:
        while True:
            data = await websocket.receive_json()
            user_id = data.get("user_id")
            axis = data.get("axis") 
            command = data.get("command") 

            # ★ METRICS: サーボ操作の集計 (逐一ログは停止)
            metrics.record_servo_input(user_id, axis, command)
            # log_event(user_id, "SERVO_INPUT", axis, command) 

            if user_id not in USER_SERVO_MAP: continue
            target_servos = USER_SERVO_MAP[user_id]
            target_servo = target_servos.get(axis)
            if target_servo:
                p_id = target_servo.physical_id
                with servo_lock:
                    movement_states[p_id] = command
            
    except WebSocketDisconnect:
        print("❌ Servo Client Disconnected")
    except Exception as e:
        print(f"Servo WS Error: {e}")

@app.on_event("startup")
async def startup_event():
    global kachaka_client
    print("🚀 Server Starting (Metrics Mode)...")
    try:
        initial_servos = [(5, servoHorizontalRight), (7, servoVerticalRight), (13, servoHorizontalLeft), (9, servoVerticalLeft)]
        for p_id, servo in initial_servos: move_servo(p_id, servo, 0)
        time.sleep(0.5)
    except Exception as e:
        print(f"⚠️ Servo Init Error: {e}")
        
    threading.Thread(target=servo_thread_loop, daemon=True).start()
    try:
        kachaka_client = kachaka_api.KachakaApiClient(f"{KACHAKA_IP}:26400")
        print(f"✅ Connected to Kachaka! Ver: {kachaka_client.get_robot_version()}")
    except Exception as e:
        print(f"🔥 Kachaka connect failed: {e}")
    
    asyncio.create_task(process_kachaka_queue())
    print("✅ Server Ready")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)