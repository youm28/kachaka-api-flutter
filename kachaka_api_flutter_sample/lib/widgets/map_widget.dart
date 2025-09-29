// lib/widgets/map_widget.dart

import 'dart:math' as math; // これがファイルの先頭にimportされていることを確認

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
  final double aspectRatio; // 新しく追加: マップの望ましい縦横比 (width / height)

  const MapWidget({
    super.key,
    required this.mapInfo,
    required this.pins,
    required this.mapTransformState,
    this.aspectRatio = 1.0, // デフォルト値は1.0 (正方形)
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      // 回転後のために、縦と横の制約を入れ替える
      final swappedConstraints = BoxConstraints(
        maxWidth: constraints.maxHeight,
        maxHeight: constraints.maxWidth,
      );

      return HookBuilder(builder: (context) {
        final transformationController = useTransformationController();
        final mapLayout = useMemoized(
            () => MapHelper.calcMapSize(
                  mapInfo: mapInfo,
                  // 入れ替えた制約をマップサイズの計算に使う
                  constraints: swappedConstraints,
                ),
            [mapInfo, swappedConstraints]);

        useEffect(() {
          // 入れ替えた後の制約（swappedConstraints）に対して、マップがフィットするようにスケールを計算
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
              // OverflowBoxの代わりにSizedBoxを使用
              width: mapLayout.mapWidth,
              height: mapLayout.mapHeight,
              child: Stack(
                // Stackの残りの部分は変更なし
                children: [
                  MapImage(
                    mapInfo: mapInfo,
                    width: mapLayout.mapWidth,
                    height: mapLayout.mapHeight,
                  ),
                  RobotWidget(
                    mapInfo: mapInfo,
                    layoutInfo: mapLayout,
                  ),
                  ...pins.map(
                    (e) {
                      final scaleFactor = e.shouldScale
                          ? 1.0 /
                              (mapTransformState.value.scale == 0
                                  ? 0.01
                                  : mapTransformState.value.scale)
                          : 1.0;
                      final loc = MapHelper.pinWidgetToMapLocation(
                        mapInfo: mapInfo,
                        pose: e.pose,
                        pinCenterFormLeft: e.pinCenterOffset.dx * scaleFactor,
                        pinCenterFromBottom: e.pinCenterOffset.dy * scaleFactor,
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
                ],
              ),
            ),
          ),
        );
      });
    });
  }
}
