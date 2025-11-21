import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/global_announcement/models/global_announcement_feature.dart';

class GlobalAnnouncementWidget extends StatefulWidget {
  const GlobalAnnouncementWidget({super.key, required this.globalAnnouncementFeature});

  final GlobalAnnouncementFeature? globalAnnouncementFeature;

  @override
  State<GlobalAnnouncementWidget> createState() => _GlobalAnnouncementWidgetState();
}

class _GlobalAnnouncementWidgetState extends State<GlobalAnnouncementWidget> with SingleTickerProviderStateMixin {
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
      top: widget.globalAnnouncementFeature?.getTopPosition,
      right: widget.globalAnnouncementFeature?.getRightPosition,
      bottom: widget.globalAnnouncementFeature?.getBottomPosition,
      left: widget.globalAnnouncementFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.globalAnnouncementFeature?.getSizeDx,
        height: widget.globalAnnouncementFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}