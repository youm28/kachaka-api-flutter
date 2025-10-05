import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// PCサーバーのIPアドレスとポート
// ★★★ ご自身のPCのIPアドレスに変更してください ★★★
const String _serverIp = "10.40.5.45";
const int _serverPort = 8000;

// サーバーから受け取るロボットの状態を管理するProvider
final robotStatusProvider = StateProvider<String>((ref) => 'idle');
final queuedMessageProvider = StateProvider<String>((ref) => '');

// ServerCommunicationServiceのインスタンスを提供するProvider
final serverCommunicationServiceProvider =
    Provider((ref) => ServerCommunicationService(ref));

class ServerCommunicationService {
  final Ref _ref;
  WebSocketChannel? _channel;

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
          final data = jsonDecode(message);
          final type = data['type'] as String?;

          // サーバーからはロボットの状態更新のみ受け取る
          if (type == 'kachaka_status') {
            final status = data['status'] as String?;
            if (status != null) {
              _ref.read(robotStatusProvider.notifier).state = status;
              debugPrint('ロボットステータス更新: $status'); // デバッグログ追加

              if (status == 'queued') {
                final queueLength = data['queue_length'] ?? 0;
                _ref.read(queuedMessageProvider.notifier).state =
                    'リクエストは順番待ちです (残り$queueLength件)';
              } else if (status == 'moving') {
                final destination = data['destination'] ?? '目的地';
                _ref.read(queuedMessageProvider.notifier).state =
                    '「$destination」へ移動中です...';
              } else if (status == 'idle') {
                _ref.read(queuedMessageProvider.notifier).state = '';
                debugPrint('ロボットがidle状態になりました - ボタンが再度有効になります');
              } else if (status == 'error') {
                _ref.read(queuedMessageProvider.notifier).state =
                    'エラーが発生しました。再試行してください。';
                debugPrint('ロボットがerror状態になりました - ボタンが再度有効になります');
                // エラー状態でもボタンを有効にするため、5秒後にidleに戻す
                Future.delayed(const Duration(seconds: 5), () {
                  _ref.read(robotStatusProvider.notifier).state = 'idle';
                  _ref.read(queuedMessageProvider.notifier).state = '';
                });
              } else {
                _ref.read(queuedMessageProvider.notifier).state = '';
              }
            }
          }
        },
        onDone: () {
          debugPrint('PCサーバーとの接続が切れました。');
          _ref.read(robotStatusProvider.notifier).state = 'disconnected';
        },
        onError: (error) {
          debugPrint('PCサーバー接続エラー: $error');
          _ref.read(robotStatusProvider.notifier).state = 'error';
        },
      );
    } catch (e) {
      debugPrint("PCサーバーへの接続に失敗しました: $e");
    }
  }

  // 移動命令をPCサーバーに送信する
  void sendMoveCommand(String locationId, String locationName) {
    if (_channel == null || _channel!.closeCode != null) {
      debugPrint('PCサーバーに接続されていません。');
      return;
    }
    final command = {
      "action": "MOVE",
      "location_id": locationId,
      "location_name": locationName,
    };
    _channel!.sink.add(jsonEncode(command));
    debugPrint('PCサーバーへ移動命令を送信しました: $command');
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
