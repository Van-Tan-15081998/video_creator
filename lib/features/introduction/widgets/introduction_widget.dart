import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/introduction/models/introduction_feature.dart';
import 'package:frame_creator_v2/features/introduction/widgets/contents/introduction_content_widget.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key, required this.introductionFeature, required this.onComplete});

  final IntroductionFeature? introductionFeature;

  final VoidCallback? onComplete;

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  IntroductionContentWidget? _introductionContentWidget;

  @override
  void initState() {
    super.initState();

    _introductionContentWidget = IntroductionContentWidget(
      systemStateManagement: widget.introductionFeature?.getSystemStateManagement,
      sizeDx: widget.introductionFeature?.getSizeDx ?? 0,
      sizeDy: widget.introductionFeature?.getSizeDy ?? 0,
      onComplete: () {
        widget.onComplete?.call();
      },
    );

    topPosition = widget.introductionFeature?.getTopPosition;
    rightPosition = widget.introductionFeature?.getRightPosition;
    bottomPosition = widget.introductionFeature?.getBottomPosition;
    leftPosition = widget.introductionFeature?.getLeftPosition;
    sizeDx = widget.introductionFeature?.getSizeDx ?? 0;
    sizeDy = widget.introductionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.introductionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.introductionFeature?.getTopPosition) {
        topPosition = widget.introductionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.introductionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.introductionFeature?.getRightPosition) {
        rightPosition = widget.introductionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.introductionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.introductionFeature?.getBottomPosition) {
        bottomPosition = widget.introductionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.introductionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.introductionFeature?.getLeftPosition) {
        leftPosition = widget.introductionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.introductionFeature?.getSizeDx) {
        sizeDx = widget.introductionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.introductionFeature?.getSizeDy) {
        sizeDy = widget.introductionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.introductionFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.introductionFeature?.checkConditionActiveByDirection() == false) {
        ///
        if (isActivatedWindow == true && isAnimatedShow == true && isMarkedUnactivatedWindow == false) {
          setState(() {
            isMarkedUnactivatedWindow = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isActivatedWindow = false;
              isAnimatedShow = false;
              isMarkedUnactivatedWindow = false;
            });
          });
        }
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.introductionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
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
      duration: const Duration(milliseconds: 500),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? FadeInDown(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [isActivatedWindow ? _introductionContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
