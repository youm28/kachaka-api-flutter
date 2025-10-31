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

// ★ UIの状態を管理する新しいProvider
final showConfirmationButtonsProvider = StateProvider<bool>((ref) => false);

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

        switch (type) {
          case 'user_assigned':
            _ref.read(userIdProvider.notifier).state = data['user_id'];
            _ref.read(cooperationMessageProvider.notifier).state = 'どこに行きますか？';
            break;

          // ★ 新しいメッセージタイプを処理
          case 'PROPOSE_PLAN':
            // ★ この処理を削除 (確認ステップをスキップ)
            break;
          case 'STARTING_MOVE':
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            _ref.read(showConfirmationButtonsProvider.notifier).state = false;
            break;
          case 'WAITING_FOR_CONFIRMATION':
          case 'WAITING_FOR_OPPONENT':
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            break;

          case 'kachaka_status':
            final status = data['status'] as String?;
            _ref.read(robotStatusProvider.notifier).state = status ?? 'idle';
            if (status == 'idle' || status == 'error') {
              _ref.read(showConfirmationButtonsProvider.notifier).state = false;
              _ref.read(cooperationMessageProvider.notifier).state =
                  'あなたの興味のある場所はどこですか？';
            } else if (status == 'moving') {
              _ref.read(cooperationMessageProvider.notifier).state =
                  "'${data['destination']}'へ移動中です...";
            }
            break;

          case 'user_disconnected':
            _ref.read(showConfirmationButtonsProvider.notifier).state = false;
            _ref.read(cooperationMessageProvider.notifier).state =
                data['message'];
            break;
        }
      }, onDone: () {
        _ref.read(robotStatusProvider.notifier).state = 'disconnected';
        _ref.read(cooperationMessageProvider.notifier).state =
            'サーバーとの接続が切れました。';
        _ref.read(showConfirmationButtonsProvider.notifier).state = false;
      }, onError: (error) {
        _ref.read(robotStatusProvider.notifier).state = 'error';
        _ref.read(cooperationMessageProvider.notifier).state = 'サーバーとの接続エラー。';
        _ref.read(showConfirmationButtonsProvider.notifier).state = false;
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

  // ★ この関数は使わなくなったが、互換性のため残しておく
  void sendPlanConfirmation() {
    if (_channel == null || _channel!.closeCode != null) return;
    final command = {"action": "CONFIRM_PLAN"};
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ計画の同意を送信しました。');
  }

  void sendInterestSelection(Location location, Pose robotPose) {
    if (_channel == null || _channel!.closeCode != null) return;
    final command = {
      "action": "SELECT_INTEREST",
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
    debugPrint('PCサーバーへ興味のある場所を送信しました: ${location.name}');
  }

  // 全ての目的地情報をサーバーに送信
  void sendAllLocations(List<Location> locations) {
    if (_channel == null || _channel!.closeCode != null) return;
    final locationsData = locations
        .map((loc) => {
              "id": loc.id,
              "name": loc.name,
              "pose": {
                "x": loc.pose.x,
                "y": loc.pose.y,
                "theta": loc.pose.theta
              }
            })
        .toList();

    final command = {
      "action": "SEND_ALL_LOCATIONS",
      "locations": locationsData
    };
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ全目的地情報を送信しました: ${locations.length}件');
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
