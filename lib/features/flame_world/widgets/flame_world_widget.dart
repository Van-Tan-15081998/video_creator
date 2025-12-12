import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/flame_world/models/flame_world_feature.dart';

class FlameWorldWidget extends StatefulWidget {
  const FlameWorldWidget({super.key, required this.flameWorldFeature});

  final FlameWorldFeature? flameWorldFeature;

  @override
  State<FlameWorldWidget> createState() => _FlameWorldWidgetState();
}

class _FlameWorldWidgetState extends State<FlameWorldWidget> with SingleTickerProviderStateMixin {
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
      top: widget.flameWorldFeature?.getTopPosition,
      right: widget.flameWorldFeature?.getRightPosition,
      bottom: widget.flameWorldFeature?.getBottomPosition,
      left: widget.flameWorldFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.flameWorldFeature?.getSizeDx,
        height: widget.flameWorldFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}
