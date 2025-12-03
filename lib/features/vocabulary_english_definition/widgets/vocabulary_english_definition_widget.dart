import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_english_definition/models/vocabulary_english_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_english_definition/widgets/contents/vocabulary_english_definition_content_widget.dart';

class VocabularyEnglishDefinitionWidget extends StatefulWidget {
  const VocabularyEnglishDefinitionWidget({super.key, required this.vocabularyEnglishDefinitionFeature, required this.onComplete});

  final VocabularyEnglishDefinitionFeature? vocabularyEnglishDefinitionFeature;

  final VoidCallback? onComplete;

  @override
  State<VocabularyEnglishDefinitionWidget> createState() => _VocabularyEnglishDefinitionWidgetState();
}

class _VocabularyEnglishDefinitionWidgetState extends State<VocabularyEnglishDefinitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyEnglishDefinitionContentWidget? _vocabularyEnglishDefinitionContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyEnglishDefinitionContentWidget = VocabularyEnglishDefinitionContentWidget(
      systemStateManagement: widget.vocabularyEnglishDefinitionFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyEnglishDefinitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyEnglishDefinitionFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyEnglishDefinitionFeature?.getTopPosition;
    rightPosition = widget.vocabularyEnglishDefinitionFeature?.getRightPosition;
    bottomPosition = widget.vocabularyEnglishDefinitionFeature?.getBottomPosition;
    leftPosition = widget.vocabularyEnglishDefinitionFeature?.getLeftPosition;
    sizeDx = widget.vocabularyEnglishDefinitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyEnglishDefinitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyEnglishDefinitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyEnglishDefinitionFeature?.getTopPosition) {
        topPosition = widget.vocabularyEnglishDefinitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyEnglishDefinitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyEnglishDefinitionFeature?.getRightPosition) {
        rightPosition = widget.vocabularyEnglishDefinitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyEnglishDefinitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyEnglishDefinitionFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyEnglishDefinitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyEnglishDefinitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyEnglishDefinitionFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyEnglishDefinitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyEnglishDefinitionFeature?.getSizeDx) {
        sizeDx = widget.vocabularyEnglishDefinitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyEnglishDefinitionFeature?.getSizeDy) {
        sizeDy = widget.vocabularyEnglishDefinitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.vocabularyEnglishDefinitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.vocabularyEnglishDefinitionFeature?.checkConditionActiveByDirection() == false) {
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
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_vocabularyEnglishDefinitionContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
