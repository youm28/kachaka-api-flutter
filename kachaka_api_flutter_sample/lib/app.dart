import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/constants/settings.dart';
import 'package:kachaka_api_flutter_sample/model/connection_options.dart';
import 'package:kachaka_api_flutter_sample/screens/home.dart';
import 'package:kachaka_api_flutter_sample/service/robot_connection_service.dart';
import 'package:kachaka_api_flutter_sample/service/server_communication_service.dart';

class KachakaApiSampleApp extends HookConsumerWidget {
  const KachakaApiSampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      // アプリ起動時に2つの接続を確立する
      Future.microtask(() {
        // 1. Kachakaロボット本体に接続して地図や場所を取得
        ref
            .read(robotConnectionServiceProvider)
            .connect(ConnectionOptions(ipAddress, port));

        // 2. PCサーバーに接続して命令を送受信できるようにする
        ref.read(serverCommunicationServiceProvider).connect();
      });

      // アプリ終了時に両方の接続を破棄する
      return () {
        ref.read(robotConnectionServiceProvider).dispose();
        ref.read(serverCommunicationServiceProvider).disconnect();
      };
    }, const []);

    return MaterialApp(
      title: 'Kachaka Api Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
