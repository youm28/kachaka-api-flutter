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
    // サーバーから受信した状態を監視
    final robotStatus = ref.watch(robotStatusProvider);
    final cooperationMessage = ref.watch(cooperationMessageProvider);
    final isRobotBusy = robotStatus == 'moving';

    // ロボット本体から取得した情報を監視
    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));
    final robotPose =
        ref.watch(robotStoreProvider.select((value) => value.pose));
    final mapTransformState = useState(MapTransformState.init());

    void sendRequest(Location targetLocation) {
      if (robotPose == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("ロボットの現在位置が不明です。")),
        );
        return;
      }
      ref
          .read(serverCommunicationServiceProvider)
          .sendDestinationRequest(targetLocation, robotPose);
    }

    // 利用可能な場所のリスト
    final availableLocations = locations
        .where((l) => l.type != LocationType.LOCATION_TYPE_SHELF_HOME)
        .toList();

    // 操作エリア全体
    final Widget questionArea = Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "どこに行きますか？",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              height: 80,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: robotStatus == 'moving'
                    ? Colors.orange.shade100
                    : robotStatus == 'error'
                        ? Colors.red.shade100
                        : Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: robotStatus == 'moving'
                      ? Colors.orange.shade300
                      : robotStatus == 'error'
                          ? Colors.red.shade300
                          : Colors.blue.shade200,
                  width: 2,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                cooperationMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: robotStatus == 'moving'
                      ? Colors.orange.shade900
                      : robotStatus == 'error'
                          ? Colors.red.shade900
                          : Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "目的地",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: availableLocations.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final location = availableLocations[index];
                  return ElevatedButton(
                    onPressed: isRobotBusy ? null : () => sendRequest(location),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      disabledBackgroundColor: Colors.grey.shade400,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 3,
                    ),
                    child: Text(
                      location.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
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
                                    sendRequest(e);
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

  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  // ★ START: このメソッドを全面的に書き換え               ★
  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  PinModel _locationPin(Location location, Function() onTap) {
    // これが地図上に表示されるウィジェット（目的地名のラベル）
    final pinLabel = Container(
      // ★ ラベルの余白をさらに小さくする
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // 角丸を少し調整
        boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 3, offset: Offset(0, 1))
        ],
        border: Border.all(color: Colors.black12, width: 1),
      ),
      // ラベルの文字
      child: Text(
        location.name,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 10, // ★ 文字サイズをさらに小さくする
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    // ★ 小さくなったサイズに合わせて再概算
    const double estimatedHeight = 18; // (padding 4*2) + (fontSize 10)
    final double estimatedWidth =
        location.name.length * 10.0 + 16.0; // (文字数 * 文字幅) + (padding 8*2)

    return PinModel(
      pose: location.pose,
      pinCenterOffset: Offset(
        estimatedHeight / 2,
        estimatedWidth / 2,
      ),
      onTap: onTap,
      child: RotatedBox(
        quarterTurns: 1,
        child: pinLabel,
      ),
    );
  }
  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  // ★ END: このメソッドを全面的に書き換え                 ★
  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
}
