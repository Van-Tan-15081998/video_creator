import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/background_image/models/background_image_feature.dart';
import 'package:frame_creator_v2/features/background_image/widgets/contents/background_image_content_widget.dart';

class BackgroundImageWidget extends StatefulWidget {
  const BackgroundImageWidget({super.key, required this.backgroundImageFeature});

  final BackgroundImageFeature? backgroundImageFeature;

  @override
  State<BackgroundImageWidget> createState() => _BackgroundImageWidgetState();
}

class _BackgroundImageWidgetState extends State<BackgroundImageWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  BackgroundImageContentWidget? _backgroundImageContentWidget;

  @override
  void initState() {
    super.initState();

    _backgroundImageContentWidget = BackgroundImageContentWidget(
      systemStateManagement: widget.backgroundImageFeature?.getSystemStateManagement,
      sizeDx: widget.backgroundImageFeature?.getSizeDx ?? 0,
      sizeDy: widget.backgroundImageFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.backgroundImageFeature?.getTopPosition;
    rightPosition = widget.backgroundImageFeature?.getRightPosition;
    bottomPosition = widget.backgroundImageFeature?.getBottomPosition;
    leftPosition = widget.backgroundImageFeature?.getLeftPosition;
    sizeDx = widget.backgroundImageFeature?.getSizeDx ?? 0;
    sizeDy = widget.backgroundImageFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.backgroundImageFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.backgroundImageFeature?.getTopPosition) {
        topPosition = widget.backgroundImageFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.backgroundImageFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.backgroundImageFeature?.getRightPosition) {
        rightPosition = widget.backgroundImageFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.backgroundImageFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.backgroundImageFeature?.getBottomPosition) {
        bottomPosition = widget.backgroundImageFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.backgroundImageFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.backgroundImageFeature?.getLeftPosition) {
        leftPosition = widget.backgroundImageFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.backgroundImageFeature?.getSizeDx) {
        sizeDx = widget.backgroundImageFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.backgroundImageFeature?.getSizeDy) {
        sizeDy = widget.backgroundImageFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.backgroundImageFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.backgroundImageFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_backgroundImageContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
