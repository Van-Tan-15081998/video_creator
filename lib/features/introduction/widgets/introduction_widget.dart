import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/introduction/models/introduction_feature.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key, required this.introductionFeature});

  final IntroductionFeature? introductionFeature;

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> with SingleTickerProviderStateMixin {
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
      top: widget.introductionFeature?.getTopPosition,
      right: widget.introductionFeature?.getRightPosition,
      bottom: widget.introductionFeature?.getBottomPosition,
      left: widget.introductionFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.introductionFeature?.getSizeDx,
        height: widget.introductionFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}