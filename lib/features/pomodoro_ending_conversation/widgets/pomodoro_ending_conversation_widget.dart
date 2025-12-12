import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/pomodoro_ending_conversation/models/pomodoro_ending_conversation_feature.dart';
import 'package:frame_creator_v2/features/pomodoro_ending_conversation/widgets/contents/pomodoro_ending_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/pomodoro_ending_conversation/widgets/contents/pomodoro_ending_conversation_content_widget.dart';

class PomodoroEndingConversationWidget extends StatefulWidget {
  const PomodoroEndingConversationWidget({super.key, required this.pomodoroEndingConversationFeature});

  final PomodoroEndingConversationFeature? pomodoroEndingConversationFeature;

  @override
  State<PomodoroEndingConversationWidget> createState() => _PomodoroEndingConversationWidgetState();
}

class _PomodoroEndingConversationWidgetState extends State<PomodoroEndingConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  PomodoroEndingConversationContentWidget? _pomodoroEndingConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _pomodoroEndingConversationContentWidget = PomodoroEndingConversationContentWidget(
      systemStateManagement: widget.pomodoroEndingConversationFeature?.getSystemStateManagement,
      sizeDx: widget.pomodoroEndingConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.pomodoroEndingConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.pomodoroEndingConversationFeature?.getTopPosition;
    rightPosition = widget.pomodoroEndingConversationFeature?.getRightPosition;
    bottomPosition = widget.pomodoroEndingConversationFeature?.getBottomPosition;
    leftPosition = widget.pomodoroEndingConversationFeature?.getLeftPosition;
    sizeDx = widget.pomodoroEndingConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.pomodoroEndingConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.pomodoroEndingConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.pomodoroEndingConversationFeature?.getTopPosition) {
        topPosition = widget.pomodoroEndingConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.pomodoroEndingConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.pomodoroEndingConversationFeature?.getRightPosition) {
        rightPosition = widget.pomodoroEndingConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.pomodoroEndingConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.pomodoroEndingConversationFeature?.getBottomPosition) {
        bottomPosition = widget.pomodoroEndingConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.pomodoroEndingConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.pomodoroEndingConversationFeature?.getLeftPosition) {
        leftPosition = widget.pomodoroEndingConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.pomodoroEndingConversationFeature?.getSizeDx) {
        sizeDx = widget.pomodoroEndingConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.pomodoroEndingConversationFeature?.getSizeDy) {
        sizeDy = widget.pomodoroEndingConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.pomodoroEndingConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.pomodoroEndingConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.pomodoroEndingConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInLeft(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow ? _pomodoroEndingConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: PomodoroEndingConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
