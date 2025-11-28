import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const String _serverIp = "10.40.5.34"; // PCサーバーのIPアドレス
const int _serverPort = 8000;

final userIdProvider = StateProvider<String?>((ref) => null);
final cooperationMessageProvider =
    StateProvider<String>((ref) => 'サーバーに接続中...');
final robotStatusProvider = StateProvider<String>((ref) => 'idle');

// 現在地を管理するProvider
final currentLocationProvider = StateProvider<String>((ref) => '充電ドック');

final uiModeProvider = StateProvider<String>((ref) => 'destination');

// 2人が揃っているかどうかのフラグ
final isSystemReadyProvider = StateProvider<bool>((ref) => false);

final serverCommunicationServiceProvider =
    Provider((ref) => ServerCommunicationService(ref));

class ServerCommunicationService {
  final Ref _ref;
  WebSocketChannel? _channel;
  ServerCommunicationService(this._ref);

  void connect() {
    if (_channel != null && _channel!.closeCode == null) return;
    try {
      final uri = Uri.parse('ws://$_serverIp:$_serverPort/ws/kachaka');
      _channel = WebSocketChannel.connect(uri);
      debugPrint('PCサーバーに接続しました: $uri');

      _channel!.stream.listen((message) {
        final data = jsonDecode(message);
        final type = data['type'] as String?;
        final userId = _ref.read(userIdProvider);

        switch (type) {
          case 'user_assigned':
            _ref.read(userIdProvider.notifier).state = data['user_id'];
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'] ?? 'どこに行きますか？';

            if (data['current_location'] != null) {
              _ref.read(currentLocationProvider.notifier).state =
                  data['current_location'];
            }
            break;

          case 'connection_status':
            final isReady = data['ready'] as bool;
            _ref.read(isSystemReadyProvider.notifier).state = isReady;

            // 揃っていない時のメッセージ更新
            if (!isReady) {
              final currentMsg = _ref.read(cooperationMessageProvider);
              // 移動中などの重要なメッセージでなければ待機メッセージを出す
              if (!currentMsg.contains("向かいます")) {
                _ref.read(cooperationMessageProvider.notifier).state =
                    "パートナーの接続を待っています...";
              }
            } else {
              // 揃ったときにメッセージを戻す（User1向け）
              final currentId = _ref.read(userIdProvider);
              if (currentId == 'user_1') {
                final currentMsg = _ref.read(cooperationMessageProvider);
                if (currentMsg.contains("パートナーの接続")) {
                  _ref.read(cooperationMessageProvider.notifier).state =
                      "どこに行きますか？";
                }
              }
            }
            break;

          case 'WAITING_FOR_ROUTE':
            // デフォルトのメッセージをセット
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];

            if (userId == 'user_2') {
              _ref.read(uiModeProvider.notifier).state = 'route';
            } else if (userId == 'user_1') {
              _ref.read(uiModeProvider.notifier).state = 'waiting';
              // ★★★ 修正: User 1 には「ユーザ２が経路を選択しています」と表示 ★★★
              _ref.read(cooperationMessageProvider.notifier).state =
                  "ユーザ２が経路を選択しています";
            }
            break;

          case 'STARTING_MOVE':
            // ★★★ 修正: 移動開始時は「選択された目的地へ向かいます」と表示 ★★★
            _ref.read(cooperationMessageProvider.notifier).state =
                "選択された目的地へ向かいます";
            _ref.read(uiModeProvider.notifier).state = 'waiting';
            break;

          case 'kachaka_status':
            final status = data['status'] as String?;
            _ref.read(robotStatusProvider.notifier).state = status ?? 'idle';

            if (data['current_location'] != null) {
              _ref.read(currentLocationProvider.notifier).state =
                  data['current_location'];
            }

            if (status == 'idle' || status == 'error') {
              _ref.read(uiModeProvider.notifier).state = 'destination';

              _ref.read(cooperationMessageProvider.notifier).state =
                  userId == 'user_1'
                      ? 'どこに行きますか？'
                      : 'User 1 が目的地を選ぶのを待っています...';
            } else if (status == 'moving') {
              // ★★★ 修正: 移動中は「選択された目的地へ向かいます」と表示 ★★★
              _ref.read(cooperationMessageProvider.notifier).state =
                  "選択された目的地へ向かいます";
            }
            break;

          case 'user_disconnected':
            _ref.read(uiModeProvider.notifier).state = 'destination';
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            break;
        }
      }, onDone: () {
        _ref.read(robotStatusProvider.notifier).state = 'disconnected';
        _ref.read(cooperationMessageProvider.notifier).state =
            'サーバーとの接続が切れました。';
      }, onError: (error) {
        _ref.read(robotStatusProvider.notifier).state = 'error';
        _ref.read(cooperationMessageProvider.notifier).state = 'サーバーとの接続エラー。';
      });
    } catch (e) {
      debugPrint("PCサーバーへの接続に失敗しました: $e");
    }
  }

  void sendDestinationRequest(Location location, Pose robotPose) {
    if (_channel == null || _channel!.closeCode != null) return;
    final command = {
      "action": "REQUEST_DESTINATION",
      "location": {
        "id": location.id,
        "name": location.name,
        "pose": {
          "x": location.pose.x,
          "y": location.pose.y,
          "theta": location.pose.theta
        }
      },
      "robot_pose": {
        "x": robotPose.x,
        "y": robotPose.y,
        "theta": robotPose.theta
      }
    };
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ目的地リクエストを送信しました: ${location.name}');
  }

  void sendRouteSelection(String route) {
    if (_channel == null || _channel!.closeCode != null) return;
    final command = {"action": "SELECT_ROUTE", "route": route};
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ経路選択を送信しました: $route');
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
