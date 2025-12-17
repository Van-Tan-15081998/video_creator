import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/models/helpful_study_advice_related_to_topic_feature.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/widgets/contents/helpful_study_advice_related_to_topic_content_widget.dart';

class HelpfulStudyAdviceRelatedToTopicWidget extends StatefulWidget {
  const HelpfulStudyAdviceRelatedToTopicWidget({super.key, required this.helpfulStudyAdviceRelatedToTopicFeature});

  final HelpfulStudyAdviceRelatedToTopicFeature? helpfulStudyAdviceRelatedToTopicFeature;

  @override
  State<HelpfulStudyAdviceRelatedToTopicWidget> createState() => _HelpfulStudyAdviceRelatedToTopicWidgetState();
}

class _HelpfulStudyAdviceRelatedToTopicWidgetState extends State<HelpfulStudyAdviceRelatedToTopicWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  HelpfulStudyAdviceRelatedToTopicContentWidget? _helpfulStudyAdviceRelatedToTopicContentWidget;

  @override
  void initState() {
    super.initState();

    _helpfulStudyAdviceRelatedToTopicContentWidget = HelpfulStudyAdviceRelatedToTopicContentWidget(
      systemStateManagement: widget.helpfulStudyAdviceRelatedToTopicFeature?.getSystemStateManagement,
      sizeDx: widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDx ?? 0,
      sizeDy: widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getTopPosition;
    rightPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getRightPosition;
    bottomPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getBottomPosition;
    leftPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getLeftPosition;
    sizeDx = widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDx ?? 0;
    sizeDy = widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.helpfulStudyAdviceRelatedToTopicFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.helpfulStudyAdviceRelatedToTopicFeature?.getTopPosition) {
        topPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceRelatedToTopicFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.helpfulStudyAdviceRelatedToTopicFeature?.getRightPosition) {
        rightPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceRelatedToTopicFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.helpfulStudyAdviceRelatedToTopicFeature?.getBottomPosition) {
        bottomPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceRelatedToTopicFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.helpfulStudyAdviceRelatedToTopicFeature?.getLeftPosition) {
        leftPosition = widget.helpfulStudyAdviceRelatedToTopicFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDx) {
        sizeDx = widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDy) {
        sizeDy = widget.helpfulStudyAdviceRelatedToTopicFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.helpfulStudyAdviceRelatedToTopicFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.helpfulStudyAdviceRelatedToTopicFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.helpfulStudyAdviceRelatedToTopicFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),
                    isActivatedWindow ? _helpfulStudyAdviceRelatedToTopicContentWidget ?? Container() : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
