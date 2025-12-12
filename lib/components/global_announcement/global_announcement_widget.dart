import 'dart:async';

import 'package:flutter/material.dart';

class GlobalAnnouncementWidget0 extends StatefulWidget {
  const GlobalAnnouncementWidget0({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<GlobalAnnouncementWidget0> createState() => _GlobalAnnouncementWidgetState();
}

class _GlobalAnnouncementWidgetState extends State<GlobalAnnouncementWidget0> {
  Timer? _timer;

  Color? announcementColor;

  int counter = 0;

  double sizeDx = 0;
  double sizeDy = 0;

  @override
  void initState() {
    super.initState();

    sizeDx = widget.sizeDx;
    sizeDy = widget.sizeDy;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        counter++;

        if (counter % 2 == 0) {
          announcementColor = Color(0xFF00FF7F);

          sizeDx = widget.sizeDx + 20.0;
          sizeDy = widget.sizeDy + 20.0;
        } else {
          announcementColor = Color(0xFF00FF7F).withValues(alpha: 0.1);

          sizeDx = widget.sizeDx + 40.0;
          sizeDy = widget.sizeDy + 40.0;
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
          top: -10.0,
          left: -10.0,
          width: widget.sizeDx + 20.0,
          height: widget.sizeDy + 20.0,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: sizeDx,
              height: sizeDy,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(width: 18.0, color: announcementColor ?? Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
