import 'package:flutter/material.dart';
import 'package:frame_creator_v2/component_for_test/demo_animated_background.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class BackgroundImageContentWidget extends StatefulWidget {
  const BackgroundImageContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<BackgroundImageContentWidget> createState() => _BackgroundImageContentWidgetState();
}

class _BackgroundImageContentWidgetState extends State<BackgroundImageContentWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        Container(
          padding: EdgeInsets.all(0),
          width: widget.sizeDx,
          height: widget.sizeDy,

          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage('assets/images/landscape2.jpg'), fit: BoxFit.fill),
            image: DecorationImage(image: AssetImage('assets/images/background/background_02.jpg'), fit: BoxFit.fill),
          ),
        ),

        Container(
          padding: EdgeInsets.all(0),
          width: widget.sizeDx,
          height: widget.sizeDy,

          decoration: BoxDecoration(color: Color(0xFF000000).withValues(alpha: 0.25)),
        ),

        AnimatedBlocksBackground(),
      ],
    );
  }
}
