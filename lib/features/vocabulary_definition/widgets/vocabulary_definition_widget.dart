import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/vocabulary_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/widgets/contents/vocabulary_definition_content_widget.dart';

class VocabularyDefinitionWidget extends StatefulWidget {
  const VocabularyDefinitionWidget({super.key, required this.vocabularyDefinitionFeature, required this.onComplete});

  final VocabularyDefinitionFeature? vocabularyDefinitionFeature;

  final VoidCallback? onComplete;

  @override
  State<VocabularyDefinitionWidget> createState() => _VocabularyDefinitionWidgetState();
}

class _VocabularyDefinitionWidgetState extends State<VocabularyDefinitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyDefinitionContentWidget? _vocabularyDefinitionContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyDefinitionContentWidget = VocabularyDefinitionContentWidget(
      systemStateManagement: widget.vocabularyDefinitionFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyDefinitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyDefinitionFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyDefinitionFeature?.getTopPosition;
    rightPosition = widget.vocabularyDefinitionFeature?.getRightPosition;
    bottomPosition = widget.vocabularyDefinitionFeature?.getBottomPosition;
    leftPosition = widget.vocabularyDefinitionFeature?.getLeftPosition;
    sizeDx = widget.vocabularyDefinitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyDefinitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyDefinitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyDefinitionFeature?.getTopPosition) {
        topPosition = widget.vocabularyDefinitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyDefinitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyDefinitionFeature?.getRightPosition) {
        rightPosition = widget.vocabularyDefinitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyDefinitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyDefinitionFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyDefinitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyDefinitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyDefinitionFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyDefinitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyDefinitionFeature?.getSizeDx) {
        sizeDx = widget.vocabularyDefinitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyDefinitionFeature?.getSizeDy) {
        sizeDy = widget.vocabularyDefinitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.vocabularyDefinitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.vocabularyDefinitionFeature?.checkConditionActiveByDirection() == false) {
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
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_vocabularyDefinitionContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
