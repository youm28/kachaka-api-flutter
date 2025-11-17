import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const String _serverIp = "10.40.5.34";
const int _serverPort = 8000;

final userIdProvider = StateProvider<String?>((ref) => null);
final cooperationMessageProvider =
    StateProvider<String>((ref) => 'サーバーに接続中...');
final robotStatusProvider = StateProvider<String>((ref) => 'idle');

// ★ UIモードを管理 ("destination" or "route")
final uiModeProvider = StateProvider<String>((ref) => 'destination');

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

            // ★ user_2の場合は経路選択モードに
            if (data['user_id'] == 'user_2') {
              _ref.read(uiModeProvider.notifier).state = 'route';
            }
            break;

          case 'WAITING_FOR_ROUTE':
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            // ★ user_2のみ経路選択モードに切り替え
            if (userId == 'user_2') {
              _ref.read(uiModeProvider.notifier).state = 'route';
            }
            break;

          case 'STARTING_MOVE':
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            _ref.read(uiModeProvider.notifier).state = 'waiting';
            break;

          case 'kachaka_status':
            final status = data['status'] as String?;
            _ref.read(robotStatusProvider.notifier).state = status ?? 'idle';
            if (status == 'idle' || status == 'error') {
              // ★ 完了後、user_1は目的地選択、user_2は経路選択に戻る
              _ref.read(uiModeProvider.notifier).state =
                  userId == 'user_1' ? 'destination' : 'route';
              _ref.read(cooperationMessageProvider.notifier).state =
                  userId == 'user_1' ? 'どこに行きますか？' : '経路を選択してください';
            } else if (status == 'moving') {
              _ref.read(cooperationMessageProvider.notifier).state =
                  "'${data['destination']}'へ移動中です...";
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

  // ★ 経路選択を送信する新しいメソッド
  void sendRouteSelection(String route) {
    if (_channel == null || _channel!.closeCode != null) return;
    final command = {
      "action": "SELECT_ROUTE",
      "route": route // "upper", "middle", "lower"
    };
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ経路選択を送信しました: $route');
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
