import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/ending_conversation/models/ending_conversation_feature.dart';
import 'package:frame_creator_v2/features/ending_conversation/widgets/contents/ending_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/ending_conversation/widgets/contents/ending_conversation_content_widget.dart';

class EndingConversationWidget extends StatefulWidget {
  const EndingConversationWidget({super.key, required this.endingConversationFeature});

  final EndingConversationFeature? endingConversationFeature;

  @override
  State<EndingConversationWidget> createState() => _EndingConversationWidgetState();
}

class _EndingConversationWidgetState extends State<EndingConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  EndingConversationContentWidget? _endingConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _endingConversationContentWidget = EndingConversationContentWidget(
      systemStateManagement: widget.endingConversationFeature?.getSystemStateManagement,
      sizeDx: widget.endingConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.endingConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.endingConversationFeature?.getTopPosition;
    rightPosition = widget.endingConversationFeature?.getRightPosition;
    bottomPosition = widget.endingConversationFeature?.getBottomPosition;
    leftPosition = widget.endingConversationFeature?.getLeftPosition;
    sizeDx = widget.endingConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.endingConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.endingConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.endingConversationFeature?.getTopPosition) {
        topPosition = widget.endingConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.endingConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.endingConversationFeature?.getRightPosition) {
        rightPosition = widget.endingConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.endingConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.endingConversationFeature?.getBottomPosition) {
        bottomPosition = widget.endingConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.endingConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.endingConversationFeature?.getLeftPosition) {
        leftPosition = widget.endingConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.endingConversationFeature?.getSizeDx) {
        sizeDx = widget.endingConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.endingConversationFeature?.getSizeDy) {
        sizeDy = widget.endingConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.endingConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.endingConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.endingConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow ? _endingConversationContentWidget ?? Container() : Container(),
                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: EndingConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
