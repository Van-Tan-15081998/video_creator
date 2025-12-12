import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_list_overall/models/vocabulary_list_overall_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list_overall/widgets/contents/vocabulary_list_overall_content_widget.dart';

class VocabularyListOverallWidget extends StatefulWidget {
  const VocabularyListOverallWidget({super.key, required this.vocabularyListOverallFeature, required this.onComplete});

  final VocabularyListOverallFeature? vocabularyListOverallFeature;

  final VoidCallback? onComplete;

  @override
  State<VocabularyListOverallWidget> createState() => _VocabularyListOverallWidgetState();
}

class _VocabularyListOverallWidgetState extends State<VocabularyListOverallWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyListOverallContentWidget? _vocabularyListOverallContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyListOverallContentWidget = VocabularyListOverallContentWidget(
      systemStateManagement: widget.vocabularyListOverallFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyListOverallFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyListOverallFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyListOverallFeature?.getTopPosition;
    rightPosition = widget.vocabularyListOverallFeature?.getRightPosition;
    bottomPosition = widget.vocabularyListOverallFeature?.getBottomPosition;
    leftPosition = widget.vocabularyListOverallFeature?.getLeftPosition;
    sizeDx = widget.vocabularyListOverallFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyListOverallFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyListOverallFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyListOverallFeature?.getTopPosition) {
        topPosition = widget.vocabularyListOverallFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListOverallFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyListOverallFeature?.getRightPosition) {
        rightPosition = widget.vocabularyListOverallFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListOverallFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyListOverallFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyListOverallFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListOverallFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyListOverallFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyListOverallFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyListOverallFeature?.getSizeDx) {
        sizeDx = widget.vocabularyListOverallFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyListOverallFeature?.getSizeDy) {
        sizeDy = widget.vocabularyListOverallFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.vocabularyListOverallFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.vocabularyListOverallFeature?.checkConditionActiveByDirection() == false) {
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
          ? FadeInLeft(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [_vocabularyListOverallContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
