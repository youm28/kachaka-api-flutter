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
    // 状態を監視
    final robotStatus = ref.watch(robotStatusProvider);
    final cooperationMessage = ref.watch(cooperationMessageProvider);
    final showConfirmationButtons = ref.watch(showConfirmationButtonsProvider);

    // ★ ロボットが移動中、または滞在中の場合は選択を受け付けない
    final isRobotBusy = robotStatus == 'moving' || robotStatus == 'waiting';

    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));
    final robotPose =
        ref.watch(robotStoreProvider.select((value) => value.pose));
    final mapTransformState = useState(MapTransformState.init());

    // 目的地リストをサーバーに送信 (充電ドックを除外)
    final availableLocations = locations
        .where((l) =>
            l.type != LocationType.LOCATION_TYPE_SHELF_HOME &&
            !l.name.contains("充電")) // ★ 充電ドックを除外
        .toList();

    useEffect(() {
      if (availableLocations.isNotEmpty) {
        Future.delayed(const Duration(seconds: 1), () {
          ref
              .read(serverCommunicationServiceProvider)
              .sendAllLocations(availableLocations);
        });
      }
      return null;
    }, [availableLocations.length]);

    void sendInterest(Location targetLocation) {
      // ★ ロボットが動作中の場合は選択を受け付けない
      if (isRobotBusy) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("ロボットが動作中です。完了までお待ちください。")));
        return;
      }

      if (robotPose == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("ロボットの現在位置が不明です。")));
        return;
      }
      ref
          .read(serverCommunicationServiceProvider)
          .sendInterestSelection(targetLocation, robotPose);
    }

    // ★ 同意ボタンを作成するウィジェット
    Widget buildConfirmationButtons() {
      final confirmationOptions = ['はい。', 'もちろん。', '賛成です。', 'その計画で行きましょう。'];
      final serverCommService = ref.read(serverCommunicationServiceProvider);
      return ListView.separated(
        itemCount: confirmationOptions.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () => serverCommService.sendPlanConfirmation(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade600,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(confirmationOptions[index],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          );
        },
      );
    }

    // ★ 7つの目的地ボタンを表示
    Widget buildInterestButtons() {
      return ListView.separated(
        itemCount: availableLocations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final location = availableLocations[index];
          return ElevatedButton(
            onPressed: isRobotBusy || showConfirmationButtons
                ? null
                : () => sendInterest(location),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade600,
              disabledBackgroundColor: Colors.grey.shade400,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(location.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          );
        },
      );
    }

    final Widget questionArea = Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: showConfirmationButtons
                    ? Colors.green.shade50
                    : (isRobotBusy // ★ robotStatus == 'moving' から isRobotBusy に変更
                        ? Colors.orange.shade100
                        : Colors.blue.shade50),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: showConfirmationButtons
                        ? Colors.green.shade300
                        : (isRobotBusy // ★ robotStatus == 'moving' から isRobotBusy に変更
                            ? Colors.orange.shade300
                            : Colors.blue.shade200),
                    width: 2),
              ),
              alignment: Alignment.center,
              child: Text(
                cooperationMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: showConfirmationButtons
                        ? Colors.green.shade900
                        : (isRobotBusy // ★ robotStatus == 'moving' から isRobotBusy に変更
                            ? Colors.orange.shade900
                            : Colors.blue.shade900),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              showConfirmationButtons ? "以下の計画に同意しますか?" : "どこに興味がありますか?",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: showConfirmationButtons
                  ? buildConfirmationButtons()
                  : buildInterestButtons(),
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
                        child:
                            const Center(child: CircularProgressIndicator())))
                : AspectRatio(
                    aspectRatio: 1.0,
                    child: MapWidget(
                      mapInfo: mapInfo,
                      pins: [
                        ...locations
                            .where((l) =>
                                l.type !=
                                    LocationType.LOCATION_TYPE_SHELF_HOME &&
                                !l.name.contains("充電")) // ★ 地図上のピンからも充電ドックを除外
                            .map((e) => _locationPin(e, () {
                                  if (!isRobotBusy &&
                                      !showConfirmationButtons) {
                                    sendInterest(e);
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
    // (このメソッドに変更はありません)
    final pinLabel = Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 3, offset: Offset(0, 1))
        ],
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Text(location.name,
          style: const TextStyle(
              color: Colors.black87,
              fontSize: 10,
              fontWeight: FontWeight.bold)),
    );
    const double estimatedHeight = 18;
    final double estimatedWidth = location.name.length * 10.0 + 16.0;
    return PinModel(
      pose: location.pose,
      pinCenterOffset: Offset(estimatedHeight / 2, estimatedWidth / 2),
      onTap: onTap,
      child: RotatedBox(quarterTurns: 1, child: pinLabel),
    );
  }
}
