import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'server_communication_service.dart'; // userIdProviderのためにインポート

const String _serverIp = "10.40.42.10";
// PCサーバーのIPアドレス
const int _serverPort = 8000;

final servoServiceProvider = Provider((ref) => ServoService(ref));

class ServoService {
  final Ref _ref;
  WebSocketChannel? _channel;

  ServoService(this._ref);

  void connect() {
    if (_channel != null && _channel!.closeCode == null) return;
    try {
      final uri = Uri.parse('ws://$_serverIp:$_serverPort/ws/servo');
      _channel = WebSocketChannel.connect(uri);
      debugPrint('Servoサーバーに接続しました');
    } catch (e) {
      debugPrint("Servo接続エラー: $e");
    }
  }

  // キーボードイベントを処理する関数
  // axis: 'horizontal' or 'vertical'
  // isPositive: trueなら増加(右/上), falseなら減少(左/下)
  // isPressed: trueなら開始, falseなら停止
  void handleKeyInput(
      {required String axis,
      required bool isPositive,
      required bool isPressed}) {
    final userId = _ref.read(userIdProvider);
    if (userId == null || _channel == null) return;

    String command;
    if (!isPressed) {
      command = "stop";
    } else {
      command = isPositive ? "increase" : "decrease";
    }

    final data = {"user_id": userId, "axis": axis, "command": command};

    _channel!.sink.add(jsonEncode(data));
  }

  void disconnect() {
    _channel?.sink.close();
  }
}
