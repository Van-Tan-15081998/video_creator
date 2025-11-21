import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/scene_transition/models/scene_transition_feature.dart';

class SceneTransitionWidget extends StatefulWidget {
  const SceneTransitionWidget({super.key, required this.sceneTransitionFeature});

  final SceneTransitionFeature? sceneTransitionFeature;

  @override
  State<SceneTransitionWidget> createState() => _SceneTransitionWidgetState();
}

class _SceneTransitionWidgetState extends State<SceneTransitionWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((Duration elapsed) {
      ///
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
      top: widget.sceneTransitionFeature?.getTopPosition,
      right: widget.sceneTransitionFeature?.getRightPosition,
      bottom: widget.sceneTransitionFeature?.getBottomPosition,
      left: widget.sceneTransitionFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.sceneTransitionFeature?.getSizeDx,
        height: widget.sceneTransitionFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}