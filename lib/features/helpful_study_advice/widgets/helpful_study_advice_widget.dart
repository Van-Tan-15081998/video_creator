import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/models/helpful_study_advice_feature.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/widgets/contents/helpful_study_advice_content_widget.dart';

class HelpfulStudyAdviceWidget extends StatefulWidget {
  const HelpfulStudyAdviceWidget({super.key, required this.helpfulStudyAdviceFeature, required this.onComplete});

  final HelpfulStudyAdviceFeature? helpfulStudyAdviceFeature;

  final VoidCallback? onComplete;

  @override
  State<HelpfulStudyAdviceWidget> createState() => _HelpfulStudyAdviceWidgetState();
}

class _HelpfulStudyAdviceWidgetState extends State<HelpfulStudyAdviceWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  HelpfulStudyAdviceContentWidget? _helpfulStudyAdviceContentWidget;

  @override
  void initState() {
    super.initState();

    _helpfulStudyAdviceContentWidget = HelpfulStudyAdviceContentWidget(
      systemStateManagement: widget.helpfulStudyAdviceFeature?.getSystemStateManagement,
      sizeDx: widget.helpfulStudyAdviceFeature?.getSizeDx ?? 0,
      sizeDy: widget.helpfulStudyAdviceFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.helpfulStudyAdviceFeature?.getTopPosition;
    rightPosition = widget.helpfulStudyAdviceFeature?.getRightPosition;
    bottomPosition = widget.helpfulStudyAdviceFeature?.getBottomPosition;
    leftPosition = widget.helpfulStudyAdviceFeature?.getLeftPosition;
    sizeDx = widget.helpfulStudyAdviceFeature?.getSizeDx ?? 0;
    sizeDy = widget.helpfulStudyAdviceFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.helpfulStudyAdviceFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.helpfulStudyAdviceFeature?.getTopPosition) {
        topPosition = widget.helpfulStudyAdviceFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.helpfulStudyAdviceFeature?.getRightPosition) {
        rightPosition = widget.helpfulStudyAdviceFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.helpfulStudyAdviceFeature?.getBottomPosition) {
        bottomPosition = widget.helpfulStudyAdviceFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.helpfulStudyAdviceFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.helpfulStudyAdviceFeature?.getLeftPosition) {
        leftPosition = widget.helpfulStudyAdviceFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.helpfulStudyAdviceFeature?.getSizeDx) {
        sizeDx = widget.helpfulStudyAdviceFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.helpfulStudyAdviceFeature?.getSizeDy) {
        sizeDy = widget.helpfulStudyAdviceFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.helpfulStudyAdviceFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.helpfulStudyAdviceFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.helpfulStudyAdviceFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                    isActivatedWindow ? _helpfulStudyAdviceContentWidget ?? Container() : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
