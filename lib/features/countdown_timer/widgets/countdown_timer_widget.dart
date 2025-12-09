import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/countdown_timer/models/countdown_timer_feature.dart';
import 'package:frame_creator_v2/features/countdown_timer/widgets/contents/countdown_timer_content_widget.dart';

class CountdownTimerWidget extends StatefulWidget {
  const CountdownTimerWidget({super.key, required this.countdownTimerFeature});

  final CountdownTimerFeature? countdownTimerFeature;

  @override
  State<CountdownTimerWidget> createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  CountdownTimerContentWidget? _countdownTimerContentWidget;

  @override
  void initState() {
    super.initState();

    _countdownTimerContentWidget = CountdownTimerContentWidget(
      systemStateManagement: widget.countdownTimerFeature?.getSystemStateManagement,
      sizeDx: widget.countdownTimerFeature?.getSizeDx ?? 0,
      sizeDy: widget.countdownTimerFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.countdownTimerFeature?.getTopPosition;
    rightPosition = widget.countdownTimerFeature?.getRightPosition;
    bottomPosition = widget.countdownTimerFeature?.getBottomPosition;
    leftPosition = widget.countdownTimerFeature?.getLeftPosition;
    sizeDx = widget.countdownTimerFeature?.getSizeDx ?? 0;
    sizeDy = widget.countdownTimerFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.countdownTimerFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.countdownTimerFeature?.getTopPosition) {
        topPosition = widget.countdownTimerFeature?.getTopPosition;
        isUpdate = true;
      } else if (topPosition != widget.countdownTimerFeature?.getTopPosition) {
        topPosition = widget.countdownTimerFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.countdownTimerFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.countdownTimerFeature?.getRightPosition) {
        rightPosition = widget.countdownTimerFeature?.getRightPosition;
        isUpdate = true;
      } else if (rightPosition != widget.countdownTimerFeature?.getRightPosition) {
        rightPosition = widget.countdownTimerFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.countdownTimerFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.countdownTimerFeature?.getBottomPosition) {
        bottomPosition = widget.countdownTimerFeature?.getBottomPosition;
        isUpdate = true;
      } else if (bottomPosition != widget.countdownTimerFeature?.getBottomPosition) {
        bottomPosition = widget.countdownTimerFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.countdownTimerFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.countdownTimerFeature?.getLeftPosition) {
        leftPosition = widget.countdownTimerFeature?.getLeftPosition;
        isUpdate = true;
      } else if (leftPosition != widget.countdownTimerFeature?.getLeftPosition) {
        leftPosition = widget.countdownTimerFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.countdownTimerFeature?.getSizeDx) {
        sizeDx = widget.countdownTimerFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.countdownTimerFeature?.getSizeDy) {
        sizeDy = widget.countdownTimerFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.countdownTimerFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.countdownTimerFeature?.checkConditionActiveByDirection() == false) {
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
          ? FadeInRight(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_countdownTimerContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
