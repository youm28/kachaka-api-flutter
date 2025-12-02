import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // キーボード操作用
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/service/server_communication_service.dart';
import 'package:kachaka_api_flutter_sample/service/servo_service.dart'; // Servo用インポート
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
    // ★ 追加: 初回ビルド時にServoサーバーへも接続
    useEffect(() {
      ref.read(servoServiceProvider).connect();
      return null;
    }, []);

    final robotStatus = ref.watch(robotStatusProvider);
    final cooperationMessage = ref.watch(cooperationMessageProvider);
    final uiMode = ref.watch(uiModeProvider);
    final userId = ref.watch(userIdProvider);
    final isRobotBusy = robotStatus == 'moving';

    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));
    final robotPose =
        ref.watch(robotStoreProvider.select((value) => value.pose));
    final mapTransformState = useState(MapTransformState.init());

    final currentLocation = ref.watch(currentLocationProvider);
    final isSystemReady = ref.watch(isSystemReadyProvider);
    final destinationSelector = ref.watch(destinationSelectorProvider);

    final routeOptions = ref.watch(routeOptionsProvider);
    final targetDestination = ref.watch(targetDestinationProvider);
    final selectedPreviewRoute = useState<String?>(null);

    const allowedStartLocations = ['充電ドック', '1', '2', '3', '4', '5', '6'];
    final isAtValidStartLocation =
        allowedStartLocations.contains(currentLocation);

    // ★ 追加: キーボード入力ハンドラ (矢印キー・左右反転)
    void handleKeyEvent(KeyEvent event) {
      if (userId == null) return;

      // キー押し込み(Down)と離した(Up)のみ処理
      if (event is! KeyDownEvent && event is! KeyUpEvent) return;

      final isPressed = event is KeyDownEvent;
      final servoService = ref.read(servoServiceProvider);

      // 矢印キーの割り当て (左右反転設定)
      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        // 右キー -> 逆方向 (Negative/Decrease) へ
        debugPrint("➡️ Arrow Right (Pressed: $isPressed) -> Sending Negative");
        servoService.handleKeyInput(
            axis: 'horizontal', isPositive: false, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        // 左キー -> 逆方向 (Positive/Increase) へ
        debugPrint("⬅️ Arrow Left (Pressed: $isPressed) -> Sending Positive");
        servoService.handleKeyInput(
            axis: 'horizontal', isPositive: true, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        // 上キー -> 正方向 (Positive/Increase)
        debugPrint("⬆️ Arrow Up (Pressed: $isPressed)");
        servoService.handleKeyInput(
            axis: 'vertical', isPositive: true, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        // 下キー -> 負方向 (Negative/Decrease)
        debugPrint("⬇️ Arrow Down (Pressed: $isPressed)");
        servoService.handleKeyInput(
            axis: 'vertical', isPositive: false, isPressed: isPressed);
      }
    }

    // プレビューパスの生成
    List<Pose>? previewPath;
    if (selectedPreviewRoute.value != null && robotPose != null) {
      final path = [robotPose];
      final waypointsNames =
          routeOptions[selectedPreviewRoute.value] as List<dynamic>? ?? [];
      for (var name in waypointsNames) {
        final loc = locations.firstWhere((l) => l.name == name,
            orElse: () => Location());
        if (loc.name.isNotEmpty) {
          path.add(loc.pose);
        }
      }
      if (targetDestination != null) {
        final destLoc = locations.firstWhere((l) => l.name == targetDestination,
            orElse: () => Location());
        if (destLoc.name.isNotEmpty) {
          path.add(destLoc.pose);
        }
      }
      previewPath = path;
    }

    void sendRequest(Location targetLocation) {
      if (robotPose == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("ロボットの現在位置が不明です。")));
        return;
      }
      ref
          .read(serverCommunicationServiceProvider)
          .sendDestinationRequest(targetLocation, robotPose);
    }

    final availableDestinations = locations.where((l) {
      final restrictedNames = ['充電ドック', 'a', 'b', 'c', 'd', 'e'];
      return !restrictedNames.contains(l.name) &&
          l.name != currentLocation &&
          l.type != LocationType.LOCATION_TYPE_SHELF_HOME;
    }).toList();

    availableDestinations.sort((a, b) {
      final ai = int.tryParse(a.name) ?? 0;
      final bi = int.tryParse(b.name) ?? 0;
      return ai.compareTo(bi);
    });

    final visibleLocations = availableDestinations;

    Widget buildDestinationButtons() {
      if (userId != destinationSelector) {
        if (isRobotBusy || uiMode == 'waiting') {
          return const Center(
            child: Text(
              "選択された目的地へ\n向かいます",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          );
        }
        return const Center(
          child: Text(
            "パートナーが目的地を選択するのを\n待っています...",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        );
      }

      return ListView.separated(
        itemCount: availableDestinations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final location = availableDestinations[index];
          final bool canPress = !isRobotBusy &&
              uiMode != 'waiting' &&
              isAtValidStartLocation &&
              isSystemReady;

          return ElevatedButton(
            onPressed: canPress ? () => sendRequest(location) : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade600,
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

    Widget buildRouteButtons() {
      final routes = [
        {'label': '左ルート', 'value': 'route_left', 'color': Colors.pink.shade400},
        {
          'label': '中央ルート',
          'value': 'route_center',
          'color': Colors.purple.shade500
        },
        {
          'label': '右ルート',
          'value': 'route_right',
          'color': Colors.indigo.shade500
        },
      ];
      final serverCommService = ref.read(serverCommunicationServiceProvider);

      return Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: routes.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final route = routes[index];
                final value = route['value'] as String;
                final isSelected = selectedPreviewRoute.value == value;

                final bool canPress = !isRobotBusy &&
                    uiMode != 'waiting' &&
                    isAtValidStartLocation &&
                    isSystemReady;

                return ElevatedButton(
                  onPressed: canPress
                      ? () {
                          selectedPreviewRoute.value = value;
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: route['color'] as Color,
                    side: isSelected
                        ? const BorderSide(color: Colors.white, width: 4)
                        : null,
                    disabledBackgroundColor: Colors.grey.shade400,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isSelected)
                        const Icon(Icons.check, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(route['label'] as String,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                );
              },
            ),
          ),
          if (selectedPreviewRoute.value != null)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  serverCommService
                      .sendRouteSelection(selectedPreviewRoute.value!);
                  selectedPreviewRoute.value = null;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text("この経路で決定",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
        ],
      );
    }

    String displayMessage = cooperationMessage;
    if (!isSystemReady) {
      displayMessage = "パートナーの接続を待っています...";
    } else if (!isAtValidStartLocation && !isRobotBusy && uiMode != 'waiting') {
      displayMessage = "指定外の場所($currentLocation)にいます。\n操作できません。";
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
                color:
                    !isSystemReady || (!isAtValidStartLocation && !isRobotBusy)
                        ? Colors.grey.shade300
                        : (uiMode == 'route'
                            ? Colors.purple.shade50
                            : (robotStatus == 'moving'
                                ? Colors.orange.shade100
                                : Colors.blue.shade50)),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: !isSystemReady ||
                            (!isAtValidStartLocation && !isRobotBusy)
                        ? Colors.grey.shade500
                        : (uiMode == 'route'
                            ? Colors.purple.shade300
                            : (robotStatus == 'moving'
                                ? Colors.orange.shade300
                                : Colors.blue.shade200)),
                    width: 2),
              ),
              alignment: Alignment.center,
              child: Text(
                displayMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: !isSystemReady ||
                            (!isAtValidStartLocation && !isRobotBusy)
                        ? Colors.black54
                        : (uiMode == 'route'
                            ? Colors.purple.shade900
                            : (robotStatus == 'moving'
                                ? Colors.orange.shade900
                                : Colors.blue.shade900)),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              uiMode == 'route' ? "経路を選択" : "目的地",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: (uiMode == 'route' && userId != destinationSelector)
                  ? buildRouteButtons()
                  : buildDestinationButtons(),
            ),
          ],
        ),
      ),
    );

    // ★ 追加: FocusをScaffoldの外側に配置し、画面全体で入力を確実に受け取る
    return Focus(
      autofocus: true,
      onKeyEvent: (node, event) {
        handleKeyEvent(event);
        return KeyEventResult.handled;
      },
      child: Scaffold(
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
                          ...visibleLocations.map((e) => _locationPin(e, () {
                                if (!isRobotBusy &&
                                    uiMode != 'waiting' &&
                                    userId == destinationSelector &&
                                    isAtValidStartLocation &&
                                    isSystemReady) {
                                  sendRequest(e);
                                }
                              })),
                        ],
                        mapTransformState: mapTransformState,
                        previewPath: previewPath,
                      ),
                    ),
            ),
            questionArea,
          ],
        ),
      ),
    );
  }

  PinModel _locationPin(Location location, Function() onTap) {
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
