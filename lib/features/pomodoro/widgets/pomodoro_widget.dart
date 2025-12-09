import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/pomodoro/models/pomodoro_feature.dart';
import 'package:frame_creator_v2/features/pomodoro/widgets/contents/pomodoro_content_widget.dart';

class PomodoroWidget extends StatefulWidget {
  const PomodoroWidget({super.key, required this.pomodoroFeature});

  final PomodoroFeature? pomodoroFeature;

  @override
  State<PomodoroWidget> createState() => _PomodoroWidgetState();
}

class _PomodoroWidgetState extends State<PomodoroWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  PomodoroContentWidget? _pomodoroContentWidget;

  @override
  void initState() {
    super.initState();

    _pomodoroContentWidget = PomodoroContentWidget(
      systemStateManagement: widget.pomodoroFeature?.getSystemStateManagement,
      sizeDx: widget.pomodoroFeature?.getSizeDx ?? 0,
      sizeDy: widget.pomodoroFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.pomodoroFeature?.getTopPosition;
    rightPosition = widget.pomodoroFeature?.getRightPosition;
    bottomPosition = widget.pomodoroFeature?.getBottomPosition;
    leftPosition = widget.pomodoroFeature?.getLeftPosition;
    sizeDx = widget.pomodoroFeature?.getSizeDx ?? 0;
    sizeDy = widget.pomodoroFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.pomodoroFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.pomodoroFeature?.getTopPosition) {
        topPosition = widget.pomodoroFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.pomodoroFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.pomodoroFeature?.getRightPosition) {
        rightPosition = widget.pomodoroFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.pomodoroFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.pomodoroFeature?.getBottomPosition) {
        bottomPosition = widget.pomodoroFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.pomodoroFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.pomodoroFeature?.getLeftPosition) {
        leftPosition = widget.pomodoroFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.pomodoroFeature?.getSizeDx) {
        sizeDx = widget.pomodoroFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.pomodoroFeature?.getSizeDy) {
        sizeDy = widget.pomodoroFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.pomodoroFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.pomodoroFeature?.checkConditionActiveByDirection() == false) {
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
          ? FadeInUp(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_pomodoroContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
