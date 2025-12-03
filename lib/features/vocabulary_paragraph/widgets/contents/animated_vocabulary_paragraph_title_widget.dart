import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedVocabularyParagraphTitleWidget extends StatefulWidget {
  const AnimatedVocabularyParagraphTitleWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<AnimatedVocabularyParagraphTitleWidget> createState() => _AnimatedVocabularyParagraphTitleWidgetState();
}

class _AnimatedVocabularyParagraphTitleWidgetState extends State<AnimatedVocabularyParagraphTitleWidget> with TickerProviderStateMixin {
  late AnimationController _inOutController;
  late Animation<double> _animation;

  Timer? _loopTimer;
  double screenWidth = 0;
  double screenHeight = 0;
  final double containerWidth = 550.0; // width container
  final double containerHeight = 120.0; // height container
  final double rightMargin = 20.0; // khoảng cách tới mép phải
  final double topMargin = 10.0; // khoảng cách tới mép tren
  final Duration animationDuration = Duration(milliseconds: 1200);

  bool isCompleteShow = false;

  @override
  void initState() {
    super.initState();

    _inOutController = AnimationController(vsync: this, duration: animationDuration);

    _animation = Tween<double>(begin: 0.8, end: 0.0).animate(CurvedAnimation(parent: _inOutController, curve: Curves.elasticOut));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      screenWidth = widget.sizeDx;
      screenHeight = widget.sizeDy;
      _startLoop();
    });
  }

  void _startLoop() {
    _loopTimer?.cancel();

    // Chạy ngay lần đầu
    _playSequence();

    // Lặp lại 30s
    _loopTimer = Timer.periodic(Duration(seconds: 10), (_) {
      _playSequence();
    });
  }

  Future<void> _playSequence() async {
    if (!mounted) return;

    // reset controller
    _inOutController.reset();

    // thò ra (vào màn hình)
    await _inOutController.forward();

    // giữ 30s
    await Future.delayed(Duration(seconds: 5));

    // thụt vào (ra ngoài màn hình phải)
    if (mounted == true) {
      await _inOutController.reverse();
    }
  }

  double _computeLeft() {
    final double startX = screenWidth; // ngoài màn hình phải
    final double endX = screenWidth - containerWidth - rightMargin; // sát mép phải

    // animation 1->0: startX -> endX
    return startX * _animation.value + endX * (1 - _animation.value);
  }

  double _computeTop() {
    final double startY = screenHeight; // ngoài màn hình phải
    final double endY = screenHeight - containerHeight - topMargin; // sát mép phải

    // animation 1->0: startX -> endX
    return -startY * _animation.value - endY * (1 - _animation.value);
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

    Color textColor = Color(0xFF7FFFD4).withValues(alpha: 0.5);

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
              final double top = _computeTop();

              return Positioned(
                top: top, // vertical position
                right: 0,

                child: Container(
                  height: 100,
                  width: containerWidth,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    // color: Colors.black.withValues(alpha: 0.75),
                    // borderRadius: BorderRadius.circular(12),
                    // boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,

                      maxLines: 1,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'P',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'a',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'r',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'a',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'g',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'r',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'a',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'p',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                          TextSpan(
                            text: 'h',
                            style: GoogleFonts.sriracha(color: textColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 55, letterSpacing: 5.0),
                          ),
                        ],
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
