import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_title/models/vocabulary_title_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_title/widgets/contents/vocabulary_title_content_widget.dart';

class VocabularyTitleWidget extends StatefulWidget {
  const VocabularyTitleWidget({super.key, required this.vocabularyTitleFeature});

  final VocabularyTitleFeature? vocabularyTitleFeature;

  @override
  State<VocabularyTitleWidget> createState() => _VocabularyTitleWidgetState();
}

class _VocabularyTitleWidgetState extends State<VocabularyTitleWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyTitleContentWidget? _vocabularyTitleContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyTitleContentWidget = VocabularyTitleContentWidget(
      systemStateManagement: widget.vocabularyTitleFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyTitleFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyTitleFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyTitleFeature?.getTopPosition;
    rightPosition = widget.vocabularyTitleFeature?.getRightPosition;
    bottomPosition = widget.vocabularyTitleFeature?.getBottomPosition;
    leftPosition = widget.vocabularyTitleFeature?.getLeftPosition;
    sizeDx = widget.vocabularyTitleFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyTitleFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyTitleFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyTitleFeature?.getTopPosition) {
        topPosition = widget.vocabularyTitleFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyTitleFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyTitleFeature?.getRightPosition) {
        rightPosition = widget.vocabularyTitleFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyTitleFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyTitleFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyTitleFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyTitleFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyTitleFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyTitleFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyTitleFeature?.getSizeDx) {
        sizeDx = widget.vocabularyTitleFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyTitleFeature?.getSizeDy) {
        sizeDy = widget.vocabularyTitleFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.vocabularyTitleFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.vocabularyTitleFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.vocabularyTitleFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0)),
                child: Stack(children: [isActivatedWindow ? _vocabularyTitleContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
