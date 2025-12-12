import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_paragraph/models/vocabulary_paragraph_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_paragraph/widgets/contents/vocabulary_paragraph_content_widget.dart';

class VocabularyParagraphWidget extends StatefulWidget {
  const VocabularyParagraphWidget({super.key, required this.vocabularyParagraphFeature});

  final VocabularyParagraphFeature? vocabularyParagraphFeature;

  @override
  State<VocabularyParagraphWidget> createState() => _VocabularyParagraphWidgetState();
}

class _VocabularyParagraphWidgetState extends State<VocabularyParagraphWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyParagraphContentWidget? _vocabularyParagraphContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyParagraphContentWidget = VocabularyParagraphContentWidget(
      systemStateManagement: widget.vocabularyParagraphFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyParagraphFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyParagraphFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyParagraphFeature?.getTopPosition;
    rightPosition = widget.vocabularyParagraphFeature?.getRightPosition;
    bottomPosition = widget.vocabularyParagraphFeature?.getBottomPosition;
    leftPosition = widget.vocabularyParagraphFeature?.getLeftPosition;
    sizeDx = widget.vocabularyParagraphFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyParagraphFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyParagraphFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyParagraphFeature?.getTopPosition) {
        topPosition = widget.vocabularyParagraphFeature?.getTopPosition;
        isUpdate = true;
      } else if (topPosition != widget.vocabularyParagraphFeature?.getTopPosition) {
        topPosition = widget.vocabularyParagraphFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyParagraphFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyParagraphFeature?.getRightPosition) {
        rightPosition = widget.vocabularyParagraphFeature?.getRightPosition;
        isUpdate = true;
      } else if (rightPosition != widget.vocabularyParagraphFeature?.getRightPosition) {
        rightPosition = widget.vocabularyParagraphFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyParagraphFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyParagraphFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyParagraphFeature?.getBottomPosition;
        isUpdate = true;
      } else if (bottomPosition != widget.vocabularyParagraphFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyParagraphFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyParagraphFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyParagraphFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyParagraphFeature?.getLeftPosition;
        isUpdate = true;
      } else if (leftPosition != widget.vocabularyParagraphFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyParagraphFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyParagraphFeature?.getSizeDx) {
        sizeDx = widget.vocabularyParagraphFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyParagraphFeature?.getSizeDy) {
        sizeDy = widget.vocabularyParagraphFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.vocabularyParagraphFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.vocabularyParagraphFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.vocabularyParagraphFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow
                        ? FadeIn(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                              child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                            ),
                          )
                        : Container(),
                    isActivatedWindow ? _vocabularyParagraphContentWidget ?? Container() : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
