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

    // ★ 目的地1~6のみフィルタリング
    final availableDestinations = locations.where((l) {
      final restrictedNames = ['充電ドック', 'a', 'b', 'c', 'd', 'e'];
      return !restrictedNames.contains(l.name) &&
          l.type != LocationType.LOCATION_TYPE_SHELF_HOME;
    }).toList();

    // ★ 数字の昇順（1→6）にソート
    availableDestinations.sort((a, b) {
      final ai = int.tryParse(a.name) ?? 0;
      final bi = int.tryParse(b.name) ?? 0;
      return ai.compareTo(bi);
    });

    // ★ 地図上のピン表示用
    final visibleLocations = availableDestinations;

    // ★ 目的地ボタンを作成するウィジェット (user_1用)
    Widget buildDestinationButtons() {
      return ListView.separated(
        itemCount: availableDestinations.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final location = availableDestinations[index];
          return ElevatedButton(
            onPressed: isRobotBusy || uiMode == 'waiting'
                ? null
                : () => sendRequest(location),
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

    // ★ 経路選択ボタンを作成
    Widget buildRouteButtons() {
      // routeの定義: ラベル、送信する値、ボタンの色
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
          return ElevatedButton(
            onPressed: isRobotBusy || uiMode == 'waiting'
                ? null
                : () => serverCommService
                    .sendRouteSelection(route['value'] as String),
            style: ElevatedButton.styleFrom(
              // 定義した色を使用
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
                color: uiMode == 'route'
                    ? Colors.purple.shade50
                    : (robotStatus == 'moving'
                        ? Colors.orange.shade100
                        : Colors.blue.shade50),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: uiMode == 'route'
                        ? Colors.purple.shade300
                        : (robotStatus == 'moving'
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
                    color: uiMode == 'route'
                        ? Colors.purple.shade900
                        : (robotStatus == 'moving'
                            ? Colors.orange.shade900
                            : Colors.blue.shade900),
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
                        // ★ 両ユーザーとも1~5のみ表示
                        ...visibleLocations.map((e) => _locationPin(e, () {
                              // user_1の時のみクリック可能
                              if (!isRobotBusy &&
                                  uiMode != 'waiting' &&
                                  userId == 'user_1') {
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
