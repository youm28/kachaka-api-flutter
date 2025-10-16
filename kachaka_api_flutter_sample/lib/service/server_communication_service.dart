import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// PCサーバーのIPアドレスとポート
// ★★★ ご自身のPCのIPアドレスに変更してください ★★★
const String _serverIp = "10.40.5.34";
const int _serverPort = 8000;

// 状態管理Provider
// サーバーから割り当てられた自身のユーザーID
final userIdProvider = StateProvider<String?>((ref) => null);
// 協調タスクの進行状況メッセージ
final cooperationMessageProvider =
    StateProvider<String>((ref) => 'サーバーに接続中...');

// 従来のロボット状態
final robotStatusProvider = StateProvider<String>((ref) => 'idle');

// ServerCommunicationServiceのインスタンスを提供するProvider
final serverCommunicationServiceProvider =
    Provider((ref) => ServerCommunicationService(ref));

class ServerCommunicationService {
  final Ref _ref;
  WebSocketChannel? _channel;
  static const int _userCounter = 0; // ★ ユーザーカウンター

  ServerCommunicationService(this._ref);

  void connect() {
    if (_channel != null && _channel!.closeCode == null) {
      debugPrint('PCサーバーに既に接続されています。');
      return;
    }
    try {
      final uri = Uri.parse('ws://$_serverIp:$_serverPort/ws/kachaka');
      _channel = WebSocketChannel.connect(uri);
      debugPrint('PCサーバーに接続しました: $uri');

      _channel!.stream.listen(
        (message) {
          debugPrint('サーバーから受信したメッセージ: $message');

          final data = jsonDecode(message);
          final type = data['type'] as String?;

          switch (type) {
            case 'user_assigned': // ★ サーバーからのユーザーID割り当てを受信
              final assignedUserId = data['user_id'] as String?;
              if (assignedUserId != null) {
                _ref.read(userIdProvider.notifier).state = assignedUserId;
                debugPrint('サーバーから割り当てられたユーザーID: $assignedUserId');
                _ref.read(cooperationMessageProvider.notifier).state =
                    '接続完了！あなたは $assignedUserId です。2人の目的地を選択してください';
              }
              break;

            case 'kachaka_status':
              final status = data['status'] as String?;
              if (status != null) {
                _ref.read(robotStatusProvider.notifier).state = status;
                debugPrint('ロボットステータス更新: $status');

                if (status == 'waiting') {
                  final message = data['message'] ?? '入力待ちです';
                  _ref.read(cooperationMessageProvider.notifier).state =
                      message;
                } else if (status == 'processing') {
                  final message = data['message'] ?? '処理中...';
                  _ref.read(cooperationMessageProvider.notifier).state =
                      message;
                } else if (status == 'moving') {
                  final destination = data['destination'] ?? '目的地';
                  _ref.read(cooperationMessageProvider.notifier).state =
                      '「$destination」へ移動中です...';
                } else if (status == 'idle') {
                  _ref.read(cooperationMessageProvider.notifier).state =
                      'どこに行きますか？'; // ★ メッセージを変更
                } else if (status == 'error') {
                  _ref.read(cooperationMessageProvider.notifier).state =
                      'どこに行きますか？'; // ★ メッセージを変更
                }
              }
              break;

            case 'waiting_for_opponent': // ★ 相手待ち状態
              final message = data['message'] ?? '相手の選択を待っています...';
              _ref.read(cooperationMessageProvider.notifier).state = message;
              break;

            case 'decision_made': // ★ ルート決定通知
              final message = data['message'] ?? 'ルートが決定しました';
              _ref.read(cooperationMessageProvider.notifier).state = message;
              break;

            default:
              debugPrint('未知のメッセージタイプ: $type');
          }
        },
        onDone: () {
          debugPrint('PCサーバーとの接続が切れました。');
          _ref.read(robotStatusProvider.notifier).state = 'disconnected';
          _ref.read(cooperationMessageProvider.notifier).state =
              'サーバーとの接続が切れました。';
        },
        onError: (error) {
          debugPrint('PCサーバー接続エラー: $error');
          _ref.read(robotStatusProvider.notifier).state = 'error';
          _ref.read(cooperationMessageProvider.notifier).state = 'サーバーとの接続エラー。';
        },
      );
    } catch (e) {
      debugPrint("PCサーバーへの接続に失敗しました: $e");
    }
  }

  // ★ 目的地リクエストを送信するメソッド - アクション名を変更
  void sendDestinationRequest(Location location, Pose robotPose) {
    if (_channel == null || _channel!.closeCode != null) {
      debugPrint('PCサーバーに接続されていません。');
      return;
    }

    final userId = _ref.read(userIdProvider);
    if (userId == null) {
      debugPrint('ユーザーIDが割り当てられていません。');
      return;
    }

    final command = {
      "action": "REQUEST_DESTINATION", // ★ MOVE → REQUEST_DESTINATION に変更
      "location": {
        // ★ locationオブジェクトとして送信
        "id": location.id,
        "name": location.name,
        "pose": {
          "x": location.pose.x,
          "y": location.pose.y,
          "theta": location.pose.theta,
        }
      },
      "robot_pose": {
        // ★ robot_poseも送信
        "x": robotPose.x,
        "y": robotPose.y,
        "theta": robotPose.theta,
      }
    };

    _channel!.sink.add(jsonEncode(command));
    debugPrint(
        'PCサーバーへ目的地リクエストを送信しました: ${location.name}, user: $userId, command: $command');
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
