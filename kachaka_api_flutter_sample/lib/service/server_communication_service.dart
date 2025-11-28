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
final currentLocationProvider = StateProvider<String>((ref) => '充電ドック');
final uiModeProvider = StateProvider<String>((ref) => 'destination');
final isSystemReadyProvider = StateProvider<bool>((ref) => false);
final destinationSelectorProvider = StateProvider<String>((ref) => 'user_1');

// ★★★ 追加: ルートプレビュー用のProvider ★★★
final routeOptionsProvider = StateProvider<Map<String, dynamic>>((ref) => {});
final targetDestinationProvider = StateProvider<String?>((ref) => null);

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
            if (data['destination_selector'] != null) {
              _ref.read(destinationSelectorProvider.notifier).state =
                  data['destination_selector'];
            }
            break;

          case 'connection_status':
            final isReady = data['ready'] as bool;
            _ref.read(isSystemReadyProvider.notifier).state = isReady;
            if (data['destination_selector'] != null) {
              _ref.read(destinationSelectorProvider.notifier).state =
                  data['destination_selector'];
            }

            if (!isReady) {
              final currentMsg = _ref.read(cooperationMessageProvider);
              if (!currentMsg.contains("向かいます")) {
                _ref.read(cooperationMessageProvider.notifier).state =
                    "パートナーの接続を待っています...";
              }
            } else {
              _updateIdleMessage();
            }
            break;

          case 'WAITING_FOR_ROUTE':
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];

            // ★★★ 追加: ルート情報と目的地の保存 ★★★
            if (data['route_options'] != null) {
              _ref.read(routeOptionsProvider.notifier).state =
                  Map<String, dynamic>.from(data['route_options']);
            }
            if (data['target_destination'] != null) {
              _ref.read(targetDestinationProvider.notifier).state =
                  data['target_destination'];
            }

            final selector = _ref.read(destinationSelectorProvider);
            if (userId == selector) {
              _ref.read(uiModeProvider.notifier).state = 'waiting';
              _ref.read(cooperationMessageProvider.notifier).state =
                  "ユーザ２が経路を選択しています";
            } else {
              _ref.read(uiModeProvider.notifier).state = 'route';
            }
            break;

          case 'STARTING_MOVE':
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
            if (data['destination_selector'] != null) {
              _ref.read(destinationSelectorProvider.notifier).state =
                  data['destination_selector'];
            }

            if (status == 'idle' || status == 'error') {
              _ref.read(uiModeProvider.notifier).state = 'destination';
              // クリア
              _ref.read(routeOptionsProvider.notifier).state = {};
              _ref.read(targetDestinationProvider.notifier).state = null;

              _updateIdleMessage();
            } else if (status == 'moving') {
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

  void _updateIdleMessage() {
    final userId = _ref.read(userIdProvider);
    final selector = _ref.read(destinationSelectorProvider);

    if (!_ref.read(isSystemReadyProvider)) return;

    if (userId == selector) {
      _ref.read(cooperationMessageProvider.notifier).state = "どこに行きますか？";
    } else {
      _ref.read(cooperationMessageProvider.notifier).state =
          "パートナーが目的地を選ぶのを待っています...";
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
