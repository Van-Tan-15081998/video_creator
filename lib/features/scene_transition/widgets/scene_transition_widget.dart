import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/scene_transition/models/scene_transition_feature.dart';
import 'package:frame_creator_v2/features/scene_transition/widgets/contents/scene_transition_content_widget.dart';

class SceneTransitionWidget extends StatefulWidget {
  const SceneTransitionWidget({super.key, required this.sceneTransitionFeature, required this.onComplete});

  final SceneTransitionFeature? sceneTransitionFeature;

  final VoidCallback? onComplete;

  @override
  State<SceneTransitionWidget> createState() => _SceneTransitionWidgetState();
}

class _SceneTransitionWidgetState extends State<SceneTransitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  SceneTransitionContentWidget? _sceneTransitionContentWidget;

  @override
  void initState() {
    super.initState();

    _sceneTransitionContentWidget = SceneTransitionContentWidget(
      systemStateManagement: widget.sceneTransitionFeature?.getSystemStateManagement,
      sizeDx: widget.sceneTransitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.sceneTransitionFeature?.getSizeDy ?? 0,
      onComplete: () {
        widget.onComplete?.call();
      },
    );

    topPosition = widget.sceneTransitionFeature?.getTopPosition;
    rightPosition = widget.sceneTransitionFeature?.getRightPosition;
    bottomPosition = widget.sceneTransitionFeature?.getBottomPosition;
    leftPosition = widget.sceneTransitionFeature?.getLeftPosition;
    sizeDx = widget.sceneTransitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.sceneTransitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.sceneTransitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.sceneTransitionFeature?.getTopPosition) {
        topPosition = widget.sceneTransitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.sceneTransitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.sceneTransitionFeature?.getRightPosition) {
        rightPosition = widget.sceneTransitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.sceneTransitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.sceneTransitionFeature?.getBottomPosition) {
        bottomPosition = widget.sceneTransitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.sceneTransitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.sceneTransitionFeature?.getLeftPosition) {
        leftPosition = widget.sceneTransitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.sceneTransitionFeature?.getSizeDx) {
        sizeDx = widget.sceneTransitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.sceneTransitionFeature?.getSizeDy) {
        sizeDy = widget.sceneTransitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.sceneTransitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.sceneTransitionFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_sceneTransitionContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
