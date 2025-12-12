import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTopicTitleWidget extends StatefulWidget {
  const AnimatedTopicTitleWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<AnimatedTopicTitleWidget> createState() => _AnimatedTopicTitleWidgetState();
}

class _AnimatedTopicTitleWidgetState extends State<AnimatedTopicTitleWidget> with TickerProviderStateMixin {
  late AnimationController _inOutController;
  late Animation<double> _animation;

  Timer? _loopTimer;
  double screenWidth = 0;
  final double containerWidth = 220; // width container
  final double rightMargin = 10; // khoảng cách tới mép phải
  final Duration animationDuration = Duration(milliseconds: 900);

  @override
  void initState() {
    super.initState();

    _inOutController = AnimationController(vsync: this, duration: animationDuration);

    _animation = Tween<double>(begin: 0.3, end: 0.0).animate(CurvedAnimation(parent: _inOutController, curve: Curves.elasticOut));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        screenWidth = widget.sizeDx;
        _startLoop();
      }
    });
  }

  void _startLoop() {
    _loopTimer?.cancel();

    _playSequence();

    // Lặp lại 30s
    _loopTimer = Timer.periodic(Duration(seconds: 30), (_) {
      _playSequence();
    });
  }

  Future<void> _playSequence() async {
    if (mounted) {
      _inOutController.reset();

      await _inOutController.forward();

      await Future.delayed(Duration(seconds: 10));

      if (mounted) {
        await _inOutController.reverse();
      }
    }
  }

  double _computeLeft() {
    final double startX = screenWidth; // ngoài màn hình phải
    final double endX = screenWidth - containerWidth - rightMargin; // sát mép phải

    // animation 1->0: startX -> endX
    return startX * _animation.value + endX * (1 - _animation.value);
  }

  @override
  void dispose() {
    _loopTimer?.cancel();
    _inOutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = widget.sizeDx;

    return Container(
      color: Colors.transparent,
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        children: [
          AnimatedBuilder(
            animation: _inOutController,
            builder: (context, child) {
              final double left = _computeLeft();

              return Positioned(
                top: 50.0, // vertical position
                left: left,

                child: Transform.rotate(
                  angle: -math.pi / 2, // xoay dọc
                  alignment: Alignment.center,
                  child: Container(
                    width: containerWidth,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,

                        maxLines: 1,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'T',
                              style: GoogleFonts.cherryBombOne(color: Color(0xFF00CFFF), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
                            ),
                            TextSpan(
                              text: 'o',
                              style: GoogleFonts.cherryBombOne(color: Color(0xFFD067FF), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
                            ),
                            TextSpan(
                              text: 'p',
                              style: GoogleFonts.cherryBombOne(color: Color(0xFFFF4FA3), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
                            ),
                            TextSpan(
                              text: 'i',
                              style: GoogleFonts.cherryBombOne(color: Color(0xFFFF9A00), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
                            ),
                            TextSpan(
                              text: 'c',
                              style: GoogleFonts.cherryBombOne(color: Color(0xFF32FF6A), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
