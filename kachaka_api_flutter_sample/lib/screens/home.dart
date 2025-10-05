import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/service/server_communication_service.dart';
import 'package:kachaka_api_flutter_sample/stores/location/location_store.dart';
import 'package:kachaka_api_flutter_sample/stores/map/map_store.dart';
import 'package:kachaka_api_flutter_sample/stores/robot/robot_store.dart';
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
    // movingの場合もボタンを有効にする（筋トレボタンのみ）
    final isRobotBusy = robotStatus != 'idle' &&
        robotStatus != 'error' &&
        robotStatus != 'moving';

    // 右ボタンはmoving中は無効化
    final isRightButtonDisabled = robotStatus == 'moving';

    // デバッグログ追加
    debugPrint(
        '現在のロボットステータス: $robotStatus, ボタン無効: $isRobotBusy, 右ボタン無効: $isRightButtonDisabled');

    // Kachakaロボット本体から取得した地図と場所の情報を監視
    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));
    final robotPose = ref.watch(robotStoreProvider
        .select((value) => value.pose)); // robotPose → pose に修正
    final mapTransformState = useState(MapTransformState.init());

    // 現在地に基づいて次の目的地を決定する関数
    String getNextDestination() {
      if (robotPose == null || locations.isEmpty) return '右へ';

      // ロボットの現在位置
      final currentX = robotPose.x;
      final currentY = robotPose.y;

      // 各場所との距離を計算して最も近い場所を特定
      Location? nearestLocation;
      double minDistance = double.infinity;

      for (final location in locations) {
        final dx = currentX - location.pose.x;
        final dy = currentY - location.pose.y;
        final distance = dx * dx + dy * dy; // 平方根は不要（比較のため）

        if (distance < minDistance) {
          minDistance = distance;
          nearestLocation = location;
        }
      }

      // 現在地に応じて次の目的地を決定（内部処理用）
      if (nearestLocation == null) return '右へ';

      switch (nearestLocation.name) {
        case '筋トレ':
          return 'ゴルフ'; // 内部的にはゴルフを返す
        case 'ゴルフ':
          return '丸橋'; // 内部的には丸橋を返す
        case '丸橋':
          return '充電ドック'; // 内部的には充電ドックを返す
        case '充電ドック':
          return '筋トレ'; // 内部的には筋トレを返す
        default:
          return '右へ';
      }
    }

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

    // 右ボタンの処理
    void handleRightButtonPress() {
      final nextDestination = getNextDestination();
      sendMoveCommandByName(nextDestination);
    }

    // 下のボタン用に目的地名を取得
    final nextDestination = getNextDestination();

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
            if (robotStatus == 'moving' || robotStatus == 'queued')
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
            else if (robotStatus == 'error')
              Container(
                height: 50, // メッセージエリアの高さを固定
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(queuedMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red.shade800,
                        fontWeight: FontWeight.bold)),
              )
            else
              const SizedBox(height: 50), // 待機中の場合は同じ高さの空白を確保
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed:
                    isRightButtonDisabled ? null : handleRightButtonPress,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('右へ')), // 固定で「右へ」を表示
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed:
                    isRobotBusy ? null : handleRightButtonPress, // 右ボタンと同じ処理
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text(nextDestination)), // 目的地の名前を表示
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
