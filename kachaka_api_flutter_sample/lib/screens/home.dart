// lib/screens/home.dart

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/constants/settings.dart';
import 'package:kachaka_api_flutter_sample/model/connection_options.dart';
import 'package:kachaka_api_flutter_sample/service/robot_connection_service.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/repositories/kachaka/kachaka_repository.dart';
import 'package:kachaka_api_flutter_sample/stores/location/location_store.dart';
import 'package:kachaka_api_flutter_sample/stores/map/map_store.dart';
import 'package:kachaka_api_flutter_sample/stores/shelf/shelf_store.dart';
import 'package:kachaka_api_flutter_sample/widgets/map_widget.dart';
import 'package:kachaka_api/kachaka_api.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref
        .watch(locationStoreProvider.select((value) => value.locations ?? []));
    final shelves =
        ref.watch(shelfStoreProvider.select((value) => value.shelves ?? []));
    final mapInfo =
        ref.watch(mapStoreProvider.select((value) => value.mapInfo));

    final mapTransformState = useState(MapTransformState.init());

    void moveToKintore() {
      final targetLocation = locations.cast<Location?>().firstWhere(
            (loc) => loc?.name == '筋トレ',
            orElse: () => null,
          );
      if (targetLocation != null) {
        print("「筋トレ」に移動します。ID: ${targetLocation.id}");
        ref.read(kachakaRepositoryProvider).startAction(
              Command(
                  moveToLocationCommand: MoveToLocationCommand(
                      targetLocationId: targetLocation.id)),
              cancelAll: true,
            );
      } else {
        print("「筋トレ」という名前の場所が見つかりませんでした。");
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
            const Text(
              "どこに行きますか？",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: moveToKintore,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("右"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: moveToKintore,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("筋トレ"),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(robotConnectionServiceProvider)
              .connect(ConnectionOptions(ipAddress, port));
        },
        child: const Icon(Icons.refresh),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: mapInfo == null
                ? AspectRatio(
                    aspectRatio: 1.0,
                    child: Container(
                      color: const Color(0xFFF8F1F8),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
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
                                  ref
                                      .read(kachakaRepositoryProvider)
                                      .startAction(
                                        Command(
                                            moveToLocationCommand:
                                                MoveToLocationCommand(
                                                    targetLocationId: e.id)),
                                        cancelAll: true,
                                      );
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

  PinModel _locationPin(Location location, Function onTap) {
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

  PinModel _shelfPin(Shelf shelf, Function onTap) {
    return PinModel(
      pose: shelf.pose,
      pinCenterOffset: const Offset(18, 3),
      onTap: onTap,
      child: Image.asset(
        "assets/icons/furniture.png",
        width: 36,
        height: 42,
      ),
    );
  }
}
