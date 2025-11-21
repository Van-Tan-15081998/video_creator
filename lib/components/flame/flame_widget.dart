import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/flame/flame_layout.dart';

class FlameWidget extends StatefulWidget {
  const FlameWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<FlameWidget> createState() => _FlameWidgetState();
}

class _FlameWidgetState extends State<FlameWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: widget.sizeDx,
      height: widget.sizeDy,

      child: GameWidget(
        game: MySpriteGame(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
      ),
    );
  }
}
