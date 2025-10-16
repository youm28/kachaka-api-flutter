import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/utils/helpers/map_helper.dart';
import 'package:kachaka_api_flutter_sample/widgets/map_image.dart';
import 'package:kachaka_api_flutter_sample/widgets/robot_widget.dart';
import 'package:kachaka_api/kachaka_api.dart';

class MapWidget extends HookConsumerWidget {
  final Map_ mapInfo;
  final List<PinModel> pins;
  final ValueNotifier<MapTransformState> mapTransformState;

  const MapWidget({
    super.key,
    required this.mapInfo,
    required this.pins,
    required this.mapTransformState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      final swappedConstraints = BoxConstraints(
        maxWidth: constraints.maxHeight,
        maxHeight: constraints.maxWidth,
      );

      return HookBuilder(builder: (context) {
        final transformationController = useTransformationController();
        final mapLayout = useMemoized(
            () => MapHelper.calcMapSize(
                  mapInfo: mapInfo,
                  constraints: swappedConstraints,
                ),
            [mapInfo, swappedConstraints]);

        useEffect(() {
          final scaleX = swappedConstraints.maxWidth / mapLayout.mapWidth;
          final scaleY = swappedConstraints.maxHeight / mapLayout.mapHeight;
          final initialScale = math.min(scaleX, scaleY);

          transformationController.value = Matrix4.identity()
            ..scale(initialScale);

          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mapTransformState.value.scale == 1.0) {
              mapTransformState.value =
                  mapTransformState.value.copyWith(scale: initialScale);
            }
          });

          return null;
        }, [mapLayout]);

        return RotatedBox(
          quarterTurns: 3,
          child: InteractiveViewer(
            transformationController: transformationController,
            maxScale: double.infinity,
            minScale: 0.2,
            onInteractionUpdate: (details) {
              final scale = transformationController.value.getMaxScaleOnAxis();
              mapTransformState.value =
                  mapTransformState.value.copyWith(scale: scale);
            },
            scaleEnabled: true,
            panEnabled: true,
            child: SizedBox(
              width: mapLayout.mapWidth,
              height: mapLayout.mapHeight,
              // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
              // ★ START: ここのStack内の描画順を変更                ★
              // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
              child: Stack(
                children: [
                  // 1番目: 地図画像 (一番下に描画)
                  MapImage(
                    mapInfo: mapInfo,
                    width: mapLayout.mapWidth,
                    height: mapLayout.mapHeight,
                  ),
                  // 2番目: 目的地名のピン (地図の上、ロボットの下に描画)
                  ...pins.map(
                    (e) {
                      final scaleFactor = e.shouldScale
                          ? 1.0 /
                              (mapTransformState.value.scale == 0
                                  ? 0.01
                                  // ignore: invalid_use_of_protected_member
                                  : mapTransformState.value.scale)
                          : 1.0;
                      final loc = MapHelper.pinWidgetToMapLocation(
                        mapInfo: mapInfo,
                        pose: e.pose,
                        pinCenterFormLeft: e.pinCenterOffset.dx,
                        pinCenterFromBottom: e.pinCenterOffset.dy,
                        layoutInfo: mapLayout,
                      );
                      return Positioned(
                        left: loc[0],
                        bottom: loc[1],
                        child: Transform.scale(
                          alignment: Alignment.bottomLeft,
                          scale: scaleFactor,
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () => e.onTap?.call(),
                            child: e.child,
                          ),
                        ),
                      );
                    },
                  ),
                  // 3番目: ロボットのアイコン (一番上に描画)
                  RobotWidget(
                    mapInfo: mapInfo,
                    layoutInfo: mapLayout,
                  ),
                ],
              ),
              // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
              // ★ END: ここのStack内の描画順を変更                  ★
              // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
            ),
          ),
        );
      });
    });
  }
}
