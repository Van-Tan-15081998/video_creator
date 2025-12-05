import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_list/models/vocabulary_list_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list/widgets/contents/vocabulary_list_content_widget.dart';

class VocabularyListWidget extends StatefulWidget {
  const VocabularyListWidget({super.key, required this.vocabularyListFeature, required this.onComplete});

  final VocabularyListFeature? vocabularyListFeature;

  final VoidCallback? onComplete;

  @override
  State<VocabularyListWidget> createState() => _VocabularyListWidgetState();
}

class _VocabularyListWidgetState extends State<VocabularyListWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyListContentWidget? _vocabularyListContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyListContentWidget = VocabularyListContentWidget(
      systemStateManagement: widget.vocabularyListFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyListFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyListFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyListFeature?.getTopPosition;
    rightPosition = widget.vocabularyListFeature?.getRightPosition;
    bottomPosition = widget.vocabularyListFeature?.getBottomPosition;
    leftPosition = widget.vocabularyListFeature?.getLeftPosition;
    sizeDx = widget.vocabularyListFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyListFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyListFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyListFeature?.getTopPosition) {
        topPosition = widget.vocabularyListFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyListFeature?.getRightPosition) {
        rightPosition = widget.vocabularyListFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyListFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyListFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyListFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyListFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyListFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyListFeature?.getSizeDx) {
        sizeDx = widget.vocabularyListFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyListFeature?.getSizeDy) {
        sizeDy = widget.vocabularyListFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.vocabularyListFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.vocabularyListFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_vocabularyListContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
