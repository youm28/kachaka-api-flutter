import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/model/map_transform_state.dart';
import 'package:kachaka_api_flutter_sample/model/pin_model.dart';
import 'package:kachaka_api_flutter_sample/utils/helpers/map_helper.dart';
import 'package:kachaka_api_flutter_sample/widgets/map_image.dart';
import 'package:kachaka_api_flutter_sample/widgets/robot_widget.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:kachaka_api_flutter_sample/widgets/map_arrow_painter.dart';

class MapWidget extends HookConsumerWidget {
  final Map_ mapInfo;
  final List<PinModel> pins;
  final ValueNotifier<MapTransformState> mapTransformState;
  final List<Pose>? previewPath;

  const MapWidget({
    super.key,
    required this.mapInfo,
    required this.pins,
    required this.mapTransformState,
    this.previewPath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      // 修正: 縦横の入れ替え(swappedConstraints)を削除し、そのままのconstraintsを使用

      return HookBuilder(builder: (context) {
        final transformationController = useTransformationController();

        // 修正: constraintsをそのまま渡す
        final mapLayout = useMemoized(
            () => MapHelper.calcMapSize(
                  mapInfo: mapInfo,
                  constraints: constraints,
                ),
            [mapInfo, constraints]);

        useEffect(() {
          // 修正: ここも constraints を使用してスケール計算
          final scaleX = constraints.maxWidth / mapLayout.mapWidth;
          final scaleY = constraints.maxHeight / mapLayout.mapHeight;
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

        // ★★★ プレビューパスを画面座標(Offset)に変換 ★★★
        List<Offset> arrowOffsets = [];
        if (previewPath != null) {
          arrowOffsets = previewPath!.map((pose) {
            final loc = MapHelper.pinWidgetToMapLocation(
              mapInfo: mapInfo,
              pose: pose,
              pinCenterFormLeft: 0,
              pinCenterFromBottom: 0,
              layoutInfo: mapLayout,
            );
            // bottom基準をtop基準に変換
            return Offset(loc[0], mapLayout.mapHeight - loc[1]);
          }).toList();
        }

        return RotatedBox(
          quarterTurns: 0, // 回転なし
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
              child: Stack(
                children: [
                  MapImage(
                    mapInfo: mapInfo,
                    width: mapLayout.mapWidth,
                    height: mapLayout.mapHeight,
                  ),

                  // ★★★ 追加: 経路プレビュー描画 ★★★
                  if (arrowOffsets.isNotEmpty)
                    Positioned.fill(
                      child: CustomPaint(
                        painter: MapArrowPainter(
                          points: arrowOffsets,
                          color: Colors.orangeAccent.withOpacity(0.8),
                        ),
                      ),
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
                  RobotWidget(
                    mapInfo: mapInfo,
                    layoutInfo: mapLayout,
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
