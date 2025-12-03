import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class SystemTimelineWidget0 extends StatefulWidget {
  const SystemTimelineWidget0({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<SystemTimelineWidget0> createState() => _SystemTimelineWidgetState();
}

class _SystemTimelineWidgetState extends State<SystemTimelineWidget0> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        widget.systemStateManagement?.getMainTimelineStateManagement?.getTimeline?.onUpdate();
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
    return Container();
  }
}
