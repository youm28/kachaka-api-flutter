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

    // 現在地を取得
    final currentLocation = ref.watch(currentLocationProvider);

    // ★★★ 修正箇所: 操作可能な場所のリストを定義 ★★★
    const allowedStartLocations = ['充電ドック', '1', '2', '3', '4', '5', '6'];

    // ★★★ 修正箇所: 現在地が操作可能な場所か判定 ★★★
    final isAtValidStartLocation =
        allowedStartLocations.contains(currentLocation);

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

    // 目的地リストのフィルタリング
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

    // ★ 目的地ボタン (User 1)
    Widget buildDestinationButtons() {
      return ListView.separated(
        itemCount: availableDestinations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final location = availableDestinations[index];

          // ボタンが押せる条件:
          // 1. ロボットが移動中(busy)でない
          // 2. 相手の操作待ち(waiting)でない
          // 3. ★ 現在地が許可された場所(isAtValidStartLocation)である
          final bool canPress =
              !isRobotBusy && uiMode != 'waiting' && isAtValidStartLocation;

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

    // ★ 経路選択ボタン (User 2)
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

      return ListView.separated(
        itemCount: routes.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final route = routes[index];

          // ボタンが押せる条件:
          // 1. ロボットが移動中(busy)でない
          // 2. 相手の操作待ち(waiting)でない
          // 3. ★ 現在地が許可された場所(isAtValidStartLocation)である
          final bool canPress =
              !isRobotBusy && uiMode != 'waiting' && isAtValidStartLocation;

          return ElevatedButton(
            onPressed: canPress
                ? () => serverCommService
                    .sendRouteSelection(route['value'] as String)
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: route['color'] as Color,
              disabledBackgroundColor: Colors.grey.shade400,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(route['label'] as String,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          );
        },
      );
    }

    // メッセージの表示内容を調整（無効な場所にいる場合）
    String displayMessage = cooperationMessage;
    if (!isAtValidStartLocation && !isRobotBusy && uiMode != 'waiting') {
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
                // 無効な場所にいるときはグレーにする
                color: !isAtValidStartLocation && !isRobotBusy
                    ? Colors.grey.shade300
                    : (uiMode == 'route'
                        ? Colors.purple.shade50
                        : (robotStatus == 'moving'
                            ? Colors.orange.shade100
                            : Colors.blue.shade50)),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: !isAtValidStartLocation && !isRobotBusy
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
                    color: !isAtValidStartLocation && !isRobotBusy
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
              child: uiMode == 'route'
                  ? buildRouteButtons()
                  : buildDestinationButtons(),
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
                        ...visibleLocations.map((e) => _locationPin(e, () {
                              // ピンのタップイベントも同様に制限
                              if (!isRobotBusy &&
                                  uiMode != 'waiting' &&
                                  userId == 'user_1' &&
                                  isAtValidStartLocation) {
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
