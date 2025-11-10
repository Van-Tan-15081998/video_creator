import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';

class WindowWidget extends StatefulWidget {
  const WindowWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<WindowWidget> createState() => _WindowWidgetState();
}

class _WindowWidgetState extends State<WindowWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [

          TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
