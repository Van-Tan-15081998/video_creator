import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class GlobalAnnouncementContentWidget extends StatefulWidget {
  const GlobalAnnouncementContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<GlobalAnnouncementContentWidget> createState() => _GlobalAnnouncementContentWidgetState();
}

class _GlobalAnnouncementContentWidgetState extends State<GlobalAnnouncementContentWidget> {
  Timer? _timer;

  Color? announcementColor;

  int counter = 0;

  double sizeDx = 0;
  double sizeDy = 0;

  double leftPosition = 0;
  double topPosition = 0;

  bool isAnnounce = true;

  @override
  void initState() {
    super.initState();

    sizeDx = widget.sizeDx;
    sizeDy = widget.sizeDy;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        counter++;

        if (counter % 2 == 0) {
          if (isAnnounce == true) {
            announcementColor = Color(0xFF7CFC00).withValues(alpha: 1.0);

            sizeDx = widget.sizeDx + 50;
            sizeDy = widget.sizeDy + 50;

            leftPosition = -25.0;
            topPosition = -25.0;
          }
        } else {
          announcementColor = Color(0xFF1C1C1C).withValues(alpha: 1.0);

          sizeDx = widget.sizeDx + 50;
          sizeDy = widget.sizeDy + 50;

          leftPosition = -25.0;
          topPosition = -25.0;
        }

        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        Positioned(
          top: -20.0,
          left: -20.0,
          width: widget.sizeDx + 40.0,
          height: widget.sizeDy + 40.0,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: widget.sizeDx + 40.0,
              height: widget.sizeDy + 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),
                border: Border.all(width: 45.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.2)),
              ),
            ),
          ),
        ),

        Positioned(
          top: topPosition,
          left: leftPosition,
          width: widget.sizeDx + 50.0,
          height: widget.sizeDy + 50.0,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: sizeDx,
              height: sizeDy,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65.0),
                border: Border.all(width: 32.0, color: announcementColor ?? Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
