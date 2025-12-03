import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/system_timeline/models/system_timeline_feature.dart';

class SystemTimelineWidget extends StatefulWidget {
  const SystemTimelineWidget({super.key, required this.systemTimelineFeature});

  /// -----
  /// TODO:
  /// -----
  final SystemTimelineFeature? systemTimelineFeature;

  @override
  State<SystemTimelineWidget> createState() => _SystemTimelineWidgetState();
}

class _SystemTimelineWidgetState extends State<SystemTimelineWidget> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        widget.systemTimelineFeature?.getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.onUpdate();
        widget.systemTimelineFeature?.getSystemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.onUpdate();
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
