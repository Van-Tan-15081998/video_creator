import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/global_announcement/models/global_announcement_feature.dart';
import 'package:frame_creator_v2/features/global_announcement/widgets/contents/global_announcement_content_widget.dart';

class GlobalAnnouncementWidget extends StatefulWidget {
  const GlobalAnnouncementWidget({super.key, required this.globalAnnouncementFeature});

  final GlobalAnnouncementFeature? globalAnnouncementFeature;

  @override
  State<GlobalAnnouncementWidget> createState() => _GlobalAnnouncementWidgetState();
}

class _GlobalAnnouncementWidgetState extends State<GlobalAnnouncementWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  GlobalAnnouncementContentWidget? _globalAnnouncementContentWidget;

  @override
  void initState() {
    super.initState();

    _globalAnnouncementContentWidget = GlobalAnnouncementContentWidget(
      systemStateManagement: widget.globalAnnouncementFeature?.getSystemStateManagement,
      sizeDx: widget.globalAnnouncementFeature?.getSizeDx ?? 0,
      sizeDy: widget.globalAnnouncementFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.globalAnnouncementFeature?.getTopPosition;
    rightPosition = widget.globalAnnouncementFeature?.getRightPosition;
    bottomPosition = widget.globalAnnouncementFeature?.getBottomPosition;
    leftPosition = widget.globalAnnouncementFeature?.getLeftPosition;
    sizeDx = widget.globalAnnouncementFeature?.getSizeDx ?? 0;
    sizeDy = widget.globalAnnouncementFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.globalAnnouncementFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.globalAnnouncementFeature?.getTopPosition) {
        topPosition = widget.globalAnnouncementFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.globalAnnouncementFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.globalAnnouncementFeature?.getRightPosition) {
        rightPosition = widget.globalAnnouncementFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.globalAnnouncementFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.globalAnnouncementFeature?.getBottomPosition) {
        bottomPosition = widget.globalAnnouncementFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.globalAnnouncementFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.globalAnnouncementFeature?.getLeftPosition) {
        leftPosition = widget.globalAnnouncementFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.globalAnnouncementFeature?.getSizeDx) {
        sizeDx = widget.globalAnnouncementFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.globalAnnouncementFeature?.getSizeDy) {
        sizeDy = widget.globalAnnouncementFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.globalAnnouncementFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.globalAnnouncementFeature?.checkConditionActiveByDirection() == false) {
            isAnimatedShow = false;
          }
        }
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? BounceInDown(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_globalAnnouncementContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
