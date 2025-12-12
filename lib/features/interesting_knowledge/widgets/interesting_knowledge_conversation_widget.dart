import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/interesting_knowledge/models/interesting_knowledge_conversation_feature.dart';
import 'package:frame_creator_v2/features/interesting_knowledge/widgets/contents/interesting_knowledge_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/interesting_knowledge/widgets/contents/interesting_knowledge_conversation_content_widget.dart';

class InterestingKnowledgeConversationWidget extends StatefulWidget {
  const InterestingKnowledgeConversationWidget({super.key, required this.interestingKnowledgeConversationFeature});

  final InterestingKnowledgeConversationFeature? interestingKnowledgeConversationFeature;

  @override
  State<InterestingKnowledgeConversationWidget> createState() => _InterestingKnowledgeConversationWidgetState();
}

class _InterestingKnowledgeConversationWidgetState extends State<InterestingKnowledgeConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  InterestingKnowledgeConversationContentWidget? _interestingKnowledgeConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _interestingKnowledgeConversationContentWidget = InterestingKnowledgeConversationContentWidget(
      systemStateManagement: widget.interestingKnowledgeConversationFeature?.getSystemStateManagement,
      sizeDx: widget.interestingKnowledgeConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.interestingKnowledgeConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.interestingKnowledgeConversationFeature?.getTopPosition;
    rightPosition = widget.interestingKnowledgeConversationFeature?.getRightPosition;
    bottomPosition = widget.interestingKnowledgeConversationFeature?.getBottomPosition;
    leftPosition = widget.interestingKnowledgeConversationFeature?.getLeftPosition;
    sizeDx = widget.interestingKnowledgeConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.interestingKnowledgeConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.interestingKnowledgeConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.interestingKnowledgeConversationFeature?.getTopPosition) {
        topPosition = widget.interestingKnowledgeConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.interestingKnowledgeConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.interestingKnowledgeConversationFeature?.getRightPosition) {
        rightPosition = widget.interestingKnowledgeConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.interestingKnowledgeConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.interestingKnowledgeConversationFeature?.getBottomPosition) {
        bottomPosition = widget.interestingKnowledgeConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.interestingKnowledgeConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.interestingKnowledgeConversationFeature?.getLeftPosition) {
        leftPosition = widget.interestingKnowledgeConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.interestingKnowledgeConversationFeature?.getSizeDx) {
        sizeDx = widget.interestingKnowledgeConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.interestingKnowledgeConversationFeature?.getSizeDy) {
        sizeDy = widget.interestingKnowledgeConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.interestingKnowledgeConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.interestingKnowledgeConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.interestingKnowledgeConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow ? _interestingKnowledgeConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow ? Positioned(
                      top: 0,
                      left: 0,
                      width: sizeDx,
                      height: sizeDy,
                      child: InterestingKnowledgeConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                    ) : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
