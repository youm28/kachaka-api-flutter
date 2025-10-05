import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/service/server_communication_service.dart';
import 'package:kachaka_api_flutter_sample/stores/location/location_store.dart';
import 'package:kachaka_api_flutter_sample/stores/map/map_store.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:kachaka_api_flutter_sample/widgets/map_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // PCサーバーから受信したロボットの状態を監視
    final robotStatus = ref.watch(robotStatusProvider);
    final queuedMessage = ref.watch(queuedMessageProvider);
    // errorの場合もボタンを有効にするように修正
    final isRobotBusy = robotStatus != 'idle' && robotStatus != 'error';

    // デバッグログ追加
    debugPrint('現在のロボットステータス: $robotStatus, ボタン無効: $isRobotBusy');

    // Kachakaロボット本体から取得した地図と場所の情報を監視
    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));
    final mapTransformState = useState(MapTransformState.init());

    // 場所名を指定して「PCサーバーに」移動命令を送る関数
    void sendMoveCommandByName(String name) {
      final targetLocation = locations.cast<Location?>().firstWhere(
            (loc) => loc?.name == name,
            orElse: () => null,
          );
      if (targetLocation != null) {
        ref
            .read(serverCommunicationServiceProvider)
            .sendMoveCommand(targetLocation.id, targetLocation.name);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("場所「$name」が見つかりませんでした。")),
        );
      }
    }

    final Widget questionArea = Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("どこに行きますか？",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(height: 24),
            // ロボットが待機中でない場合にメッセージを表示
            if (isRobotBusy)
              Container(
                height: 50, // メッセージエリアの高さを固定
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(queuedMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange.shade800,
                        fontWeight: FontWeight.bold)),
              )
            else
              const SizedBox(height: 50), // 待機中の場合は同じ高さの空白を確保
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed:
                    isRobotBusy ? null : () => sendMoveCommandByName('右'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text("右")),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed:
                    isRobotBusy ? null : () => sendMoveCommandByName('筋トレ'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text("筋トレ")),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: mapInfo == null
                ? AspectRatio(
                    aspectRatio: 1.0,
                    child: Container(
                      color: const Color(0xFFF8F1F8),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  )
                : AspectRatio(
                    aspectRatio: 1.0,
                    child: MapWidget(
                      mapInfo: mapInfo,
                      pins: [
                        ...locations
                            .where((l) =>
                                l.type != LocationType.LOCATION_TYPE_SHELF_HOME)
                            .map((e) => _locationPin(e, () {
                                  if (!isRobotBusy) {
                                    sendMoveCommandByName(e.name);
                                  }
                                })),
                      ],
                      mapTransformState: mapTransformState,
                    ),
                  ),
          ),
          questionArea,
        ],
      ),
    );
  }

  PinModel _locationPin(Location location, Function() onTap) {
    return PinModel(
      pose: location.pose,
      pinCenterOffset: const Offset(18, 3),
      onTap: onTap,
      child: Image.asset(
        switch (location.type) {
          LocationType.LOCATION_TYPE_CHARGER => "assets/icons/charger.png",
          LocationType.LOCATION_TYPE_SHELF_HOME =>
            "assets/icons/shelf-home.png",
          _ => "assets/icons/location.png",
        },
        width: 36,
        height: 42,
      ),
    );
  }
}
