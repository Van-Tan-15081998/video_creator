import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/models/vocabulary_subject_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/widgets/contents/vocabulary_subject_content_widget.dart';

class VocabularySubjectWidget extends StatefulWidget {
  const VocabularySubjectWidget({super.key, required this.vocabularySubjectFeature});

  final VocabularySubjectFeature? vocabularySubjectFeature;

  @override
  State<VocabularySubjectWidget> createState() => _VocabularySubjectWidgetState();
}

class _VocabularySubjectWidgetState extends State<VocabularySubjectWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularySubjectContentWidget? _vocabularySubjectContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularySubjectContentWidget = VocabularySubjectContentWidget(
      systemStateManagement: widget.vocabularySubjectFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularySubjectFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularySubjectFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularySubjectFeature?.getTopPosition;
    rightPosition = widget.vocabularySubjectFeature?.getRightPosition;
    bottomPosition = widget.vocabularySubjectFeature?.getBottomPosition;
    leftPosition = widget.vocabularySubjectFeature?.getLeftPosition;
    sizeDx = widget.vocabularySubjectFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularySubjectFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (topPosition != widget.vocabularySubjectFeature?.getTopPosition) {
        topPosition = widget.vocabularySubjectFeature?.getTopPosition;
        isUpdate = true;
      }

      if (rightPosition != widget.vocabularySubjectFeature?.getRightPosition) {
        rightPosition = widget.vocabularySubjectFeature?.getRightPosition;
        isUpdate = true;
      }

      if (bottomPosition != widget.vocabularySubjectFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularySubjectFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (leftPosition != widget.vocabularySubjectFeature?.getLeftPosition) {
        leftPosition = widget.vocabularySubjectFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularySubjectFeature?.getSizeDx) {
        sizeDx = widget.vocabularySubjectFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularySubjectFeature?.getSizeDy) {
        sizeDy = widget.vocabularySubjectFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.vocabularySubjectFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.vocabularySubjectFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.vocabularySubjectFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
      duration: const Duration(milliseconds: 100),
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
                child: Stack(children: [isActivatedWindow ? _vocabularySubjectContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
