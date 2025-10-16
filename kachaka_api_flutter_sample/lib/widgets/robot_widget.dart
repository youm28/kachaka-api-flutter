import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kachaka_api_flutter_sample/constants/settings.dart';
import 'package:kachaka_api_flutter_sample/model/map_layout_model.dart';
import 'package:kachaka_api/kachaka_api.dart';
import 'package:kachaka_api_flutter_sample/stores/robot/robot_store.dart';
import 'package:kachaka_api_flutter_sample/utils/helpers/map_helper.dart';

class RobotWidget extends HookConsumerWidget {
  final Map_ mapInfo;
  final MapLayoutInfo layoutInfo;
  const RobotWidget({
    super.key,
    required this.mapInfo,
    required this.layoutInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final robotPose =
        ref.watch(robotStoreProvider.select((value) => value.pose));

    if (robotPose == null) {
      return Container();
    }

    // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
    // ★ START: ここの計算ロジックを修正                   ★
    // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
    // 画面に表示される際のロボットアイコンの幅と高さを計算
    // 元のサイズに0.8を掛けて全体的に小さくする
    final width = (robotDepth / (mapInfo.width * mapInfo.resolution)) *
        layoutInfo.mapWidth *
        0.8;
    final height = (robotWidth / (mapInfo.height * mapInfo.resolution)) *
        layoutInfo.mapHeight *
        0.8;
    // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
    // ★ END: ここの計算ロジックを修正                     ★
    // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

    final loc = MapHelper.pinWidgetToMapLocation(
      mapInfo: mapInfo,
      pose: robotPose,
      pinCenterFromBottom: height / 2.0,
      pinCenterFormLeft: width / 2.0,
      layoutInfo: layoutInfo,
    );

    return Positioned(
      left: loc[0],
      bottom: loc[1],
      child: IgnorePointer(
        ignoring: true,
        child: Transform.rotate(
          angle: -robotPose.theta,
          child: Image.asset(
            "assets/icons/kachaka.png",
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
