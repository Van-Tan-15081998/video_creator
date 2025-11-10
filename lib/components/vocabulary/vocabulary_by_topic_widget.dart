import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyByTopicWidget extends StatefulWidget {
  const VocabularyByTopicWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyByTopicWidget> createState() => _VocabularyByTopicWidgetState();
}

class _VocabularyByTopicWidgetState extends State<VocabularyByTopicWidget> {
  Timer? _timer;

  bool isActivatingWordSS01 = false;
  bool isActivatingWordSS02 = false;
  bool isActivatingWordSS03 = false;
  bool isActivatingWordSS04 = false;
  bool isActivatingWordSS05 = false;
  bool isActivatingWordSS06 = false;
  bool isActivatingWordSS07 = false;
  bool isActivatingWordSS08 = false;
  bool isActivatingWordSS09 = false;
  bool isActivatingWordSS10 = false;
  bool isActivatingWordSS11 = false;
  bool isActivatingWordSS12 = false;
  bool isActivatingWordSS13 = false;
  bool isActivatingWordSS14 = false;
  bool isActivatingWordSS15 = false;
  bool isActivatingWordSS16 = false;
  bool isActivatingWordSS17 = false;
  bool isActivatingWordSS18 = false;
  bool isActivatingWordSS19 = false;
  bool isActivatingWordSS20 = false;
  bool isActivatingWordSS21 = false;
  bool isActivatingWordSS22 = false;
  bool isActivatingWordSS23 = false;
  bool isActivatingWordSS24 = false;
  bool isActivatingWordSS25 = false;
  bool isActivatingWordSS26 = false;
  bool isActivatingWordSS27 = false;
  bool isActivatingWordSS28 = false;
  bool isActivatingWordSS29 = false;
  bool isActivatingWordSS30 = false;

  int counter = 0;

  int multiple = 0;

  resetActive() {
    isActivatingWordSS01 = false;
    isActivatingWordSS02 = false;
    isActivatingWordSS03 = false;
    isActivatingWordSS04 = false;
    isActivatingWordSS05 = false;
    isActivatingWordSS06 = false;
    isActivatingWordSS07 = false;
    isActivatingWordSS08 = false;
    isActivatingWordSS09 = false;
    isActivatingWordSS10 = false;
    isActivatingWordSS11 = false;
    isActivatingWordSS12 = false;
    isActivatingWordSS13 = false;
    isActivatingWordSS14 = false;
    isActivatingWordSS15 = false;
    isActivatingWordSS16 = false;
    isActivatingWordSS17 = false;
    isActivatingWordSS18 = false;
    isActivatingWordSS19 = false;
    isActivatingWordSS20 = false;
    isActivatingWordSS21 = false;
    isActivatingWordSS22 = false;
    isActivatingWordSS23 = false;
    isActivatingWordSS24 = false;
    isActivatingWordSS25 = false;
    isActivatingWordSS26 = false;
    isActivatingWordSS27 = false;
    isActivatingWordSS28 = false;
    isActivatingWordSS29 = false;
    isActivatingWordSS30 = false;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        counter++;

        if (counter == 1) {
          resetActive();

          isActivatingWordSS01 = true;

          setState(() {});
        } else if (counter == 10 * 2) {
          resetActive();
          isActivatingWordSS02 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 3) {
          resetActive();
          isActivatingWordSS03 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 4) {
          resetActive();
          isActivatingWordSS04 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 5) {
          resetActive();
          isActivatingWordSS05 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 6) {
          resetActive();
          isActivatingWordSS06 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 7) {
          resetActive();
          isActivatingWordSS07 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 8) {
          resetActive();
          isActivatingWordSS08 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 9) {
          resetActive();
          isActivatingWordSS09 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 10) {
          resetActive();
          isActivatingWordSS10 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 11) {
          resetActive();
          isActivatingWordSS11 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 12) {
          resetActive();
          isActivatingWordSS12 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 13) {
          resetActive();
          isActivatingWordSS13 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 14) {
          resetActive();
          isActivatingWordSS14 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 15) {
          resetActive();
          isActivatingWordSS15 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 16) {
          resetActive();
          isActivatingWordSS16 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 17) {
          resetActive();
          isActivatingWordSS17 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 18) {
          resetActive();
          isActivatingWordSS18 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 19) {
          resetActive();
          isActivatingWordSS19 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 20) {
          resetActive();
          isActivatingWordSS20 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 21) {
          resetActive();
          isActivatingWordSS21 = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 22) {
          resetActive();
          isActivatingWordSS22 = true;

          setState(() {});
        } else if (counter == 10 * 23) {
          resetActive();
          isActivatingWordSS23 = true;

          setState(() {});
        } else if (counter == 10 * 24) {
          resetActive();
          isActivatingWordSS24 = true;

          setState(() {});
        } else if (counter == 10 * 25) {
          resetActive();
          isActivatingWordSS25 = true;

          setState(() {});
        } else if (counter == 10 * 26) {
          resetActive();
          isActivatingWordSS26 = true;

          setState(() {});
        } else if (counter == 10 * 27) {
          resetActive();
          isActivatingWordSS27 = true;

          setState(() {});
        } else if (counter == 10 * 28) {
          resetActive();
          isActivatingWordSS28 = true;

          setState(() {});
        } else if (counter == 10 * 29) {
          resetActive();
          isActivatingWordSS29 = true;

          setState(() {});
        } else if (counter == 10 * 30) {
          resetActive();
          isActivatingWordSS30 = true;

          setState(() {});
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        // color: Colors.black.withValues(alpha: 0.8),
        border: Border.all(width: 5.0, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        boxShadow: [
          // Bóng tối (dưới phải)
          BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2),
        ],
      ),
      child: Stack(
        children: [
          // TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          AnimatedPositioned(
            top: 0,
            left: ((widget.sizeDx - 20.0) * 3.0 / 30.0) * multiple * (-1),
            width: (widget.sizeDx - 20.0) * 3.0,
            height: widget.sizeDy * 0.15,
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: (widget.sizeDx - 20.0) * 3.0,
              height: widget.sizeDy * 0.15,
              color: Colors.transparent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS01 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '1.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS02 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '2.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS03 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '3.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS04 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '4.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS05 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '5.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS06 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '6.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS07 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '7.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS08 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '8.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS09 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '9.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS10 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '10.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS11 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '11.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS12 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '12.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS13 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '13.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS14 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '14.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS15 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '15.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS16 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '16.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS17 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '17.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS18 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '18.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS19 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '19.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS20 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '20.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS21 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '21.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS22 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '22.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS23 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '23.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS24 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '24.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS25 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '25.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS26 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '26.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS26 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '27.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS26 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '28.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS26 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '29.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingWordSS26 ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ShaderMask(
                            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white.withValues(alpha: 0.6),
                                  Colors.white.withValues(alpha: 0.5),
                                  Colors.white.withValues(alpha: 0.4),
                                  Colors.white.withValues(alpha: 0.3),
                                  Colors.white.withValues(alpha: 0.2),
                                  Colors.white.withValues(alpha: 0.1),
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent, // Hoàn toàn biến mất bên phải
                                ],
                                stops: [0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.80, 1.0],
                              ).createShader(bounds);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '30.vocabulary',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lilitaOne(
                                    textStyle: const TextStyle(color: Colors.black),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///
            ),
          ),

          AnimatedPositioned(
            bottom: 0,
            left: 0,
            width: widget.sizeDx * 0.3,
            height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
            duration: const Duration(milliseconds: 100),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: widget.sizeDx - 10.0, //
                height: widget.sizeDy * 0.15, //
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),

          AnimatedPositioned(
            bottom: 0,
            left: widget.sizeDx * 0.3 + 15.0,
            width: widget.sizeDx - (widget.sizeDx * 0.3 + 40.0),
            height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
            duration: const Duration(milliseconds: 100),
            child: Container(
              width: widget.sizeDx - (widget.sizeDx * 0.3 + 40.0),
              height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
              decoration: BoxDecoration(
                color: Colors.transparent.withValues(alpha: 0.7),
                border: Border.all(width: 2.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    top: 0,
                    left: 0,
                    width: widget.sizeDx - (widget.sizeDx * 0.3 + 40.0),
                    height: widget.sizeDy - (widget.sizeDy * 0.15),
                    child: Container(
                      width: widget.sizeDx - (widget.sizeDx * 0.3 + 40.0),
                      height: widget.sizeDy - (widget.sizeDy * 0.15),
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(fontSize: 20, height: 1.0),
                                children: [
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),

                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      'enjoy',
                                                      style: GoogleFonts.coiny(
                                                        textStyle: TextStyle(
                                                          fontSize: 22.0,
                                                          fontWeight: FontWeight.bold,
                                                          fontStyle: FontStyle.normal,
                                                          foreground: Paint()
                                                            ..style = PaintingStyle.stroke
                                                            ..strokeWidth = 3.0
                                                            ..color = Colors.black, // Màu viền
                                                        ),
                                                      ),
                                                      textAlign: TextAlign.start,
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      'enjoy',
                                                      style: GoogleFonts.coiny(
                                                        textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Colors.red),
                                                      ),
                                                      textAlign: TextAlign.start,
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),

                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      'laugh',
                                                      style: GoogleFonts.coiny(
                                                        textStyle: TextStyle(
                                                          fontSize: 22.0,
                                                          fontWeight: FontWeight.bold,
                                                          fontStyle: FontStyle.normal,
                                                          foreground: Paint()
                                                            ..style = PaintingStyle.stroke
                                                            ..strokeWidth = 3.0
                                                            ..color = Colors.black, // Màu viền
                                                        ),
                                                      ),
                                                      textAlign: TextAlign.start,
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      'laugh',
                                                      style: GoogleFonts.coiny(
                                                        textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Colors.red),
                                                      ),
                                                      textAlign: TextAlign.start,
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'happiness',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'fun',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'fulfill',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'happy',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'blissful',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'satisfied',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'glad',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'delighted',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'cheerful',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'joyful',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'thankful',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'honor',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'pleasure',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'self-satisfied',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'self-satisfied',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                                      child: Container(
                                        // height: 50.0,
                                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          border: Border.all(color: Color(0x00000000), width: 2),
                                          borderRadius: BorderRadius.circular(3),
                                        ),
                                        child: Text(
                                          'self-satisfied',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.coiny(
                                            textStyle: const TextStyle(color: Colors.black),
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // RichText(
                            //   textAlign: TextAlign.start,
                            //   overflow: TextOverflow.ellipsis,
                            //   maxLines: 5,
                            //   text: TextSpan(
                            //     style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 20.0),
                            //     children: [
                            //       TextSpan(
                            //         text: 'book ',
                            //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            //       ),
                            //       TextSpan(
                            //         text: '[C] noun\n',
                            //         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                            //       ),
                            //       TextSpan(text: 'A written or printed work consisting of pages.\n'),
                            //       TextSpan(
                            //         text: 'Example: ',
                            //         style: TextStyle(fontWeight: FontWeight.bold),
                            //       ),
                            //       TextSpan(
                            //         text: 'I read a great book yesterday. ',
                            //         style: TextStyle(fontStyle: FontStyle.italic),
                            //         spellOut: true,
                            //       ),
                            //
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Row(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: phanGiaiMainAxisAlignment(canhLe: widget.canhLeVanBan),
          //   children: [
          //     Flexible(
          //       child: Container(
          //         color: Colors.transparent,
          //         child: Stack(
          //           children: [
          //             Positioned(
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Flexible(
          //                     child: Text(
          //                       widget.vanBan ?? 'VAN_BAN',
          //                       style: GoogleFonts.chewy(
          //                         textStyle: TextStyle(
          //                           fontSize: widget.kichThuocPhongChu ?? 10.0,
          //                           fontWeight: widget.doDayPhongChu ?? FontWeight.normal,
          //                           fontStyle: FontStyle.normal,
          //                           foreground: Paint()
          //                             ..style = PaintingStyle.stroke
          //                             ..strokeWidth = 2.0
          //                             ..color = mauSacKhungVien ?? Colors.black, // Màu viền
          //                         ),
          //                       ),
          //                       textAlign: phanGiaiTextAlign(),
          //                       overflow: TextOverflow.ellipsis,
          //                       maxLines: widget.soDongToiDa ?? 1,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Positioned(
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Flexible(
          //                     child: Text(
          //                       widget.vanBan ?? 'VAN_BAN',
          //                       style: GoogleFonts.chewy(
          //                         textStyle: TextStyle(
          //                           fontSize: widget.kichThuocPhongChu ?? 10.0,
          //                           fontWeight: widget.doDayPhongChu ?? FontWeight.normal,
          //                           fontStyle: FontStyle.normal,
          //                           color: mauSacKhungNen ?? Colors.black,
          //                         ),
          //                       ),
          //                       textAlign: phanGiaiTextAlign(),
          //                       overflow: TextOverflow.ellipsis,
          //                       maxLines: widget.soDongToiDa ?? 1,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          AnimatedPositioned(
            bottom: 0,
            left: widget.sizeDx * 0.3 + 15.0,
            width: widget.sizeDx - (widget.sizeDx * 0.3 + 30.0),
            height: widget.sizeDy * 0.035,
            duration: const Duration(milliseconds: 100),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: widget.sizeDx - 10.0, //
                height: widget.sizeDy * 0.15, //
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 1.0),
                  border: Border.all(width: 2.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
