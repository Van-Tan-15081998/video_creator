import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_scene_transition/models/vocabulary_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_scene_transition/widgets/contents/vocabulary_scene_transition_content_widget.dart';

class VocabularySceneTransitionWidget extends StatefulWidget {
  const VocabularySceneTransitionWidget({super.key, required this.vocabularySceneTransitionFeature});

  final VocabularySceneTransitionFeature? vocabularySceneTransitionFeature;

  @override
  State<VocabularySceneTransitionWidget> createState() => _VocabularySceneTransitionWidgetState();
}

class _VocabularySceneTransitionWidgetState extends State<VocabularySceneTransitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularySceneTransitionContentWidget? _vocabularySceneTransitionContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularySceneTransitionContentWidget = VocabularySceneTransitionContentWidget(
      systemStateManagement: widget.vocabularySceneTransitionFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularySceneTransitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularySceneTransitionFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularySceneTransitionFeature?.getTopPosition;
    rightPosition = widget.vocabularySceneTransitionFeature?.getRightPosition;
    bottomPosition = widget.vocabularySceneTransitionFeature?.getBottomPosition;
    leftPosition = widget.vocabularySceneTransitionFeature?.getLeftPosition;
    sizeDx = widget.vocabularySceneTransitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularySceneTransitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularySceneTransitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularySceneTransitionFeature?.getTopPosition) {
        topPosition = widget.vocabularySceneTransitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularySceneTransitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularySceneTransitionFeature?.getRightPosition) {
        rightPosition = widget.vocabularySceneTransitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularySceneTransitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularySceneTransitionFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularySceneTransitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularySceneTransitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularySceneTransitionFeature?.getLeftPosition) {
        leftPosition = widget.vocabularySceneTransitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularySceneTransitionFeature?.getSizeDx) {
        sizeDx = widget.vocabularySceneTransitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularySceneTransitionFeature?.getSizeDy) {
        sizeDy = widget.vocabularySceneTransitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.vocabularySceneTransitionFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.vocabularySceneTransitionFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.vocabularySceneTransitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                child: Stack(children: [isActivatedWindow ? _vocabularySceneTransitionContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
