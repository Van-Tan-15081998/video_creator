import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/introductory_conversation/models/introductory_conversation_feature.dart';
import 'package:frame_creator_v2/features/introductory_conversation/widgets/contents/introductory_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/introductory_conversation/widgets/contents/introductory_conversation_content_widget.dart';

class IntroductoryConversationWidget extends StatefulWidget {
  const IntroductoryConversationWidget({super.key, required this.introductoryConversationFeature});

  final IntroductoryConversationFeature? introductoryConversationFeature;

  @override
  State<IntroductoryConversationWidget> createState() => _IntroductoryConversationWidgetState();
}

class _IntroductoryConversationWidgetState extends State<IntroductoryConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  IntroductoryConversationContentWidget? _introductoryConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _introductoryConversationContentWidget = IntroductoryConversationContentWidget(
      systemStateManagement: widget.introductoryConversationFeature?.getSystemStateManagement,
      sizeDx: widget.introductoryConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.introductoryConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.introductoryConversationFeature?.getTopPosition;
    rightPosition = widget.introductoryConversationFeature?.getRightPosition;
    bottomPosition = widget.introductoryConversationFeature?.getBottomPosition;
    leftPosition = widget.introductoryConversationFeature?.getLeftPosition;
    sizeDx = widget.introductoryConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.introductoryConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.introductoryConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.introductoryConversationFeature?.getTopPosition) {
        topPosition = widget.introductoryConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.introductoryConversationFeature?.getRightPosition) {
        rightPosition = widget.introductoryConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.introductoryConversationFeature?.getBottomPosition) {
        bottomPosition = widget.introductoryConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.introductoryConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.introductoryConversationFeature?.getLeftPosition) {
        leftPosition = widget.introductoryConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.introductoryConversationFeature?.getSizeDx) {
        sizeDx = widget.introductoryConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.introductoryConversationFeature?.getSizeDy) {
        sizeDy = widget.introductoryConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.introductoryConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.introductoryConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.introductoryConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInUp(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow ? _introductoryConversationContentWidget ?? Container() : Container(),
                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: IntroductoryConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
