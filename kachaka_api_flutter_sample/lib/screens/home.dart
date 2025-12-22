import 'dart:async'; // Timer用
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // キーボード操作用
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/service/server_communication_service.dart';
import 'package:kachaka_api_flutter_sample/service/servo_service.dart';
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
    // ★ 追加: クールダウン終了時刻を取得
    final cooldownUntil = ref.watch(cooldownUntilProvider);

    final routeOptions = ref.watch(routeOptionsProvider);
    final targetDestination = ref.watch(targetDestinationProvider);
    final selectedPreviewRoute = useState<String?>(null);

    // ★ 追加: 実験開始フラグ
    final isExperimentStarted = ref.watch(isExperimentStartedProvider);
    final serverCommService = ref.read(serverCommunicationServiceProvider);

    // ★ 追加: クールダウン残り時間の状態管理
    final remainingCooldown = useState<int>(0);

    // ★ 追加: 定期タイマーでクールダウン残り時間を更新
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        final now = DateTime.now().millisecondsSinceEpoch / 1000.0;
        final diff = (cooldownUntil - now).ceil();
        if (diff > 0) {
          remainingCooldown.value = diff;
        } else {
          remainingCooldown.value = 0;
        }
      });
      return timer.cancel;
    }, [cooldownUntil]);

    final isCoolingDown = remainingCooldown.value > 0;

    const allowedStartLocations = [
      '充電ドック',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11'
    ];
    final isAtValidStartLocation =
        allowedStartLocations.contains(currentLocation);

    void handleKeyEvent(KeyEvent event) {
      if (userId == null) return;
      if (event is! KeyDownEvent && event is! KeyUpEvent) return;

      final isPressed = event is KeyDownEvent;
      final servoService = ref.read(servoServiceProvider);

      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        debugPrint("➡️ Arrow Right (Pressed: $isPressed) -> Sending Negative");
        servoService.handleKeyInput(
            axis: 'horizontal', isPositive: false, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        debugPrint("⬅️ Arrow Left (Pressed: $isPressed) -> Sending Positive");
        servoService.handleKeyInput(
            axis: 'horizontal', isPositive: true, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        debugPrint("⬆️ Arrow Up (Pressed: $isPressed)");
        servoService.handleKeyInput(
            axis: 'vertical', isPositive: true, isPressed: isPressed);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        debugPrint("⬇️ Arrow Down (Pressed: $isPressed)");
        servoService.handleKeyInput(
            axis: 'vertical', isPositive: false, isPressed: isPressed);
      }
    }

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
      final restrictedNames = [
        '充電ドック',
        'a',
        'b',
        'c',
        'd',
        'e',
        'f',
      ];
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
      // ★★★ 追加: 実験開始前の待機画面 ★★★
      if (!isExperimentStarted) {
        if (userId == 'user_1') {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "実験の準備ができたら\nボタンを押してください",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    serverCommService.sendStartExperiment();
                  },
                  icon: const Icon(Icons.play_arrow,
                      size: 32, color: Colors.white),
                  label: const Text("計測開始",
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "※押した瞬間にログ記録が開始されます",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          );
        } else {
          // User 2 や Spectator の場合
          return const Center(
            child: Text(
              "User 1 が実験を開始するのを\n待っています...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          );
        }
      }

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

      const Map<String, String> displayNames = {
        '1': '1 幾何学的な旋律',
        '2': '2 フィルターバブルの安住',
        '3': '3 タイムラプスの人生',
        '4': '4 既読無視の空白',
        '5': '5 アバターと肉体の乖離',
        '6': '6 終わりのないスクロール',
        '7': '7 監視下の透明人間',
        '8': '8 エコーチェンバーの共鳴',
        '9': '9 ログアウト後の残響',
        '10': '10 液状化するデータ',
        '11': '11 電子の雨、孤独な傘',
      };

      return ListView.separated(
        itemCount: availableDestinations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final location = availableDestinations[index];
          final bool canPress = !isRobotBusy &&
              uiMode != 'waiting' &&
              isAtValidStartLocation &&
              isSystemReady &&
              !isCoolingDown; // ★ クールダウン中は押せない

          final String buttonLabel =
              displayNames[location.name] ?? location.name;

          return ElevatedButton(
            onPressed: canPress ? () => sendRequest(location) : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade600,
              disabledBackgroundColor: Colors.grey.shade400,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(buttonLabel,
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
        {
          'label': '最短ルートで向かう',
          'value': 'route_left',
          'color': Colors.pink.shade400
        },
        {
          'label': '少し他を見て向かう',
          'value': 'route_center',
          'color': Colors.purple.shade500
        },
        {
          'label': 'ぐるっと他を見て向かう',
          'value': 'route_right',
          'color': Colors.indigo.shade500
        },
      ];

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
                    isSystemReady &&
                    !isCoolingDown;

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
    } else if (!isExperimentStarted) {
      // ★ 実験開始前のメッセージ
      displayMessage = userId == 'user_1' ? "計測を開始してください" : "実験開始待機中...";
    } else if (isCoolingDown) {
      // ★ クールダウン中のメッセージ
      displayMessage = "到着後の待機時間です。\nあと ${remainingCooldown.value} 秒...";
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
                color: !isExperimentStarted
                    ? Colors.grey.shade300
                    : (isCoolingDown
                        ? Colors.grey.shade300 // ★ クールダウン中の色
                        : (!isSystemReady ||
                                (!isAtValidStartLocation && !isRobotBusy)
                            ? Colors.grey.shade300
                            : (uiMode == 'route'
                                ? Colors.purple.shade50
                                : (robotStatus == 'moving'
                                    ? Colors.orange.shade100
                                    : Colors.blue.shade50)))),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: !isExperimentStarted
                        ? Colors.grey.shade500
                        : (isCoolingDown
                            ? Colors.grey.shade500
                            : (!isSystemReady ||
                                    (!isAtValidStartLocation && !isRobotBusy)
                                ? Colors.grey.shade500
                                : (uiMode == 'route'
                                    ? Colors.purple.shade300
                                    : (robotStatus == 'moving'
                                        ? Colors.orange.shade300
                                        : Colors.blue.shade200)))),
                    width: 2),
              ),
              alignment: Alignment.center,
              child: Text(
                displayMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: !isSystemReady ||
                            !isExperimentStarted ||
                            (!isAtValidStartLocation && !isRobotBusy) ||
                            isCoolingDown
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
                                    isSystemReady &&
                                    isExperimentStarted && // ★ 追加
                                    !isCoolingDown) {
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
      pinCenterOffset: Offset(estimatedWidth / 2, estimatedHeight / 2),
      onTap: onTap,
      child: RotatedBox(quarterTurns: 0, child: pinLabel),
    );
  }
}
