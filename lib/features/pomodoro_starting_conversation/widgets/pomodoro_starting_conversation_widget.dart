import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/pomodoro_starting_conversation/models/pomodoro_starting_conversation_feature.dart';
import 'package:frame_creator_v2/features/pomodoro_starting_conversation/widgets/contents/pomodoro_starting_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/pomodoro_starting_conversation/widgets/contents/pomodoro_starting_conversation_content_widget.dart';

class PomodoroStartingConversationWidget extends StatefulWidget {
  const PomodoroStartingConversationWidget({super.key, required this.pomodoroStartingConversationFeature});

  final PomodoroStartingConversationFeature? pomodoroStartingConversationFeature;

  @override
  State<PomodoroStartingConversationWidget> createState() => _PomodoroStartingConversationWidgetState();
}

class _PomodoroStartingConversationWidgetState extends State<PomodoroStartingConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  PomodoroStartingConversationContentWidget? _pomodoroStartingConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _pomodoroStartingConversationContentWidget = PomodoroStartingConversationContentWidget(
      systemStateManagement: widget.pomodoroStartingConversationFeature?.getSystemStateManagement,
      sizeDx: widget.pomodoroStartingConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.pomodoroStartingConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.pomodoroStartingConversationFeature?.getTopPosition;
    rightPosition = widget.pomodoroStartingConversationFeature?.getRightPosition;
    bottomPosition = widget.pomodoroStartingConversationFeature?.getBottomPosition;
    leftPosition = widget.pomodoroStartingConversationFeature?.getLeftPosition;
    sizeDx = widget.pomodoroStartingConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.pomodoroStartingConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.pomodoroStartingConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.pomodoroStartingConversationFeature?.getTopPosition) {
        topPosition = widget.pomodoroStartingConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.pomodoroStartingConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.pomodoroStartingConversationFeature?.getRightPosition) {
        rightPosition = widget.pomodoroStartingConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.pomodoroStartingConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.pomodoroStartingConversationFeature?.getBottomPosition) {
        bottomPosition = widget.pomodoroStartingConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.pomodoroStartingConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.pomodoroStartingConversationFeature?.getLeftPosition) {
        leftPosition = widget.pomodoroStartingConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.pomodoroStartingConversationFeature?.getSizeDx) {
        sizeDx = widget.pomodoroStartingConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.pomodoroStartingConversationFeature?.getSizeDy) {
        sizeDy = widget.pomodoroStartingConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.pomodoroStartingConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.pomodoroStartingConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.pomodoroStartingConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow ? _pomodoroStartingConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow ? Positioned(
                      top: 0,
                      left: 0,
                      width: sizeDx,
                      height: sizeDy,
                      child: PomodoroStartingConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                    ) : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
