import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/animation_components/active_container/inactive_container_widget.dart';
import 'package:frame_creator_v2/components/pomodoro/total_elapsed_time.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class PomodoroWidget0 extends StatefulWidget {
  const PomodoroWidget0({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<PomodoroWidget0> createState() => _PomodoroWidgetState();
}

class _PomodoroWidgetState extends State<PomodoroWidget0> {
  Timer? _timer;

  int totalMinute = 0;
  int totalSecond = 0;

  String processingId = '';

  double stayFocusedProgressbar = 0; // Progressbar
  double breakTimeProgressbar = 0; // Progressbar

  int totalMinutePomodoroSS01 = 25;
  int totalMinuteBreakTimePomodoroSS01 = 5;
  int totalSecondPomodoroSS01 = 0;
  int totalSecondBreakTimePomodoroSS01 = 0;
  double stayFocusedProgressbarPomodoroSS01 = 0; // Progressbar
  double breakTimeProgressbarPomodoroSS01 = 0; // Progressbar

  int totalMinutePomodoroSS02 = 25;
  int totalMinuteBreakTimePomodoroSS02 = 5;
  int totalSecondPomodoroSS02 = 0;
  int totalSecondBreakTimePomodoroSS02 = 0;
  double stayFocusedProgressbarPomodoroSS02 = 0; // Progressbar
  double breakTimeProgressbarPomodoroSS02 = 0; // Progressbar

  int totalMinutePomodoroSS03 = 25;
  int totalMinuteBreakTimePomodoroSS03 = 5;
  int totalSecondPomodoroSS03 = 0;
  int totalSecondBreakTimePomodoroSS03 = 0;
  double stayFocusedProgressbarPomodoroSS03 = 0; // Progressbar
  double breakTimeProgressbarPomodoroSS03 = 0; // Progressbar

  int totalMinutePomodoroSS04 = 25;
  int totalMinuteBreakTimePomodoroSS04 = 5;
  int totalSecondPomodoroSS04 = 0;
  int totalSecondBreakTimePomodoroSS04 = 0;
  double stayFocusedProgressbarPomodoroSS04 = 0; // Progressbar
  double breakTimeProgressbarPomodoroSS04 = 0; // Progressbar

  @override
  void initState() {
    super.initState();

    stayFocusedProgressbar = widget.sizeDx * 0.50 - 2.0;
    breakTimeProgressbar = widget.sizeDx * 0.14 - 2.0;

    totalSecondPomodoroSS01 = totalMinutePomodoroSS01 * 60;
    totalSecondPomodoroSS02 = totalMinutePomodoroSS02 * 60;
    totalSecondPomodoroSS03 = totalMinutePomodoroSS03 * 60;
    totalSecondPomodoroSS04 = totalMinutePomodoroSS04 * 60;

    totalSecondBreakTimePomodoroSS01 = totalMinuteBreakTimePomodoroSS01 * 60;
    totalSecondBreakTimePomodoroSS02 = totalMinuteBreakTimePomodoroSS02 * 60;
    totalSecondBreakTimePomodoroSS03 = totalMinuteBreakTimePomodoroSS03 * 60;
    totalSecondBreakTimePomodoroSS04 = totalMinuteBreakTimePomodoroSS04 * 60;

    totalSecond = totalSecondPomodoroSS01 + totalSecondPomodoroSS02 + totalSecondPomodoroSS03 + totalSecondPomodoroSS04;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        /// PomodoroSS01
        if (totalSecondPomodoroSS01 > 0) {
          stayFocusedProgressbarPomodoroSS01 = (stayFocusedProgressbar / (totalMinutePomodoroSS01 * 60)) * ((totalMinutePomodoroSS01 * 60) - totalSecondPomodoroSS01);

          totalSecondPomodoroSS01 -= 1;

          processingId = '[PomodoroSS01]';

          setState(() {});

          return;
        } else if (totalSecondPomodoroSS01 == 0) {
          if (totalSecondBreakTimePomodoroSS01 > 0) {
            breakTimeProgressbarPomodoroSS01 = (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS01 * 60)) * ((totalMinuteBreakTimePomodoroSS01 * 60) - totalSecondBreakTimePomodoroSS01);

            totalSecondBreakTimePomodoroSS01 -= 1;

            processingId = '[PomodoroSS01]';

            setState(() {});

            return;
          }
        }

        /// PomodoroSS02
        if (totalSecondPomodoroSS01 == 0 && totalSecondBreakTimePomodoroSS01 == 0) {
          if (totalSecondPomodoroSS02 > 0) {
            stayFocusedProgressbarPomodoroSS02 = (stayFocusedProgressbar / (totalMinutePomodoroSS02 * 60)) * ((totalMinutePomodoroSS02 * 60) - totalSecondPomodoroSS02);

            totalSecondPomodoroSS02 -= 1;

            processingId = '[PomodoroSS02]';

            setState(() {});

            return;
          } else if (totalSecondPomodoroSS02 == 0) {
            if (totalSecondBreakTimePomodoroSS02 > 0) {
              breakTimeProgressbarPomodoroSS02 = (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS02 * 60)) * ((totalMinuteBreakTimePomodoroSS02 * 60) - totalSecondBreakTimePomodoroSS02);

              totalSecondBreakTimePomodoroSS02 -= 1;

              processingId = '[PomodoroSS02]';

              setState(() {});

              return;
            }
          }
        }

        /// PomodoroSS03
        if (totalSecondPomodoroSS02 == 0 && totalSecondBreakTimePomodoroSS02 == 0) {
          if (totalSecondPomodoroSS03 > 0) {
            stayFocusedProgressbarPomodoroSS03 = (stayFocusedProgressbar / (totalMinutePomodoroSS03 * 60)) * ((totalMinutePomodoroSS03 * 60) - totalSecondPomodoroSS03);

            totalSecondPomodoroSS03 -= 1;

            processingId = '[PomodoroSS03]';

            setState(() {});

            return;
          } else if (totalSecondPomodoroSS03 == 0) {
            if (totalSecondBreakTimePomodoroSS03 > 0) {
              breakTimeProgressbarPomodoroSS03 = (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS03 * 60)) * ((totalMinuteBreakTimePomodoroSS03 * 60) - totalSecondBreakTimePomodoroSS03);

              totalSecondBreakTimePomodoroSS03 -= 1;

              processingId = '[PomodoroSS03]';

              setState(() {});

              return;
            }
          }
        }

        /// PomodoroSS04
        if (totalSecondPomodoroSS03 == 0 && totalSecondBreakTimePomodoroSS03 == 0) {
          if (totalSecondPomodoroSS04 > 0) {
            stayFocusedProgressbarPomodoroSS04 = (stayFocusedProgressbar / (totalMinutePomodoroSS04 * 60)) * ((totalMinutePomodoroSS04 * 60) - totalSecondPomodoroSS04);

            totalSecondPomodoroSS04 -= 1;

            processingId = '[PomodoroSS04]';

            setState(() {});

            return;
          } else if (totalSecondPomodoroSS04 == 0) {
            if (totalSecondBreakTimePomodoroSS04 > 0) {
              breakTimeProgressbarPomodoroSS04 = (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS04 * 60)) * ((totalMinuteBreakTimePomodoroSS04 * 60) - totalSecondBreakTimePomodoroSS04);

              totalSecondBreakTimePomodoroSS04 -= 1;

              processingId = '[PomodoroSS04]';

              setState(() {});

              return;
            } else {
              processingId = '[Done]';

              setState(() {});
            }
          }
        }
      });
    });
  }

  Widget pomodoroItem({required String? id, required double? top, required double? bottom, required double? left, required double? right}) {
    double stayFocusedProgressbar = 0;
    double breakTimeProgressbar = 0;

    bool isProcessingStayFocused = false;
    bool isProcessingBreakTime = false;

    bool isProcessing = false;
    String title = 'Pomodoro';

    switch (id) {
      case '[PomodoroSS01]':
        {
          stayFocusedProgressbar = stayFocusedProgressbarPomodoroSS01;
          breakTimeProgressbar = breakTimeProgressbarPomodoroSS01;

          if (totalSecondPomodoroSS01 != 0) {
            isProcessingStayFocused = true;
          }
          if (totalSecondBreakTimePomodoroSS01 != 0) {
            isProcessingBreakTime = true;
          }

          if (processingId == '[PomodoroSS01]') {
            isProcessing = true;
          }

          title = 'Pomodoro 1';
        }
        break;
      case '[PomodoroSS02]':
        {
          stayFocusedProgressbar = stayFocusedProgressbarPomodoroSS02;
          breakTimeProgressbar = breakTimeProgressbarPomodoroSS02;

          if (totalSecondPomodoroSS02 != 0) {
            isProcessingStayFocused = true;
          }
          if (totalSecondBreakTimePomodoroSS02 != 0) {
            isProcessingBreakTime = true;
          }

          if (processingId == '[PomodoroSS02]') {
            isProcessing = true;
          }

          title = 'Pomodoro 2';
        }
        break;
      case '[PomodoroSS03]':
        {
          stayFocusedProgressbar = stayFocusedProgressbarPomodoroSS03;
          breakTimeProgressbar = breakTimeProgressbarPomodoroSS03;

          if (totalSecondPomodoroSS03 != 0) {
            isProcessingStayFocused = true;
          }
          if (totalSecondBreakTimePomodoroSS03 != 0) {
            isProcessingBreakTime = true;
          }

          if (processingId == '[PomodoroSS03]') {
            isProcessing = true;
          }

          title = 'Pomodoro 3';
        }
        break;
      case '[PomodoroSS04]':
        {
          stayFocusedProgressbar = stayFocusedProgressbarPomodoroSS04;
          breakTimeProgressbar = breakTimeProgressbarPomodoroSS04;

          if (totalSecondPomodoroSS04 != 0) {
            isProcessingStayFocused = true;
          }
          if (totalSecondBreakTimePomodoroSS04 != 0) {
            isProcessingBreakTime = true;
          }

          if (processingId == '[PomodoroSS04]') {
            isProcessing = true;
          }

          title = 'Pomodoro 4';
        }
        break;
    }

    return AnimatedPositioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      duration: const Duration(milliseconds: 100),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: widget.sizeDx - 20.0,

          ///
          height: widget.sizeDy * 0.2,

          ///
          color: Colors.transparent,

          ///
          child: Stack(
            alignment: AlignmentDirectional.center,

            children: [
              // AnimatedPositioned(
              //   duration: const Duration(milliseconds: 100),
              //   top: 0,
              //   left: 0,
              //   child: AnimatedContainer(
              //     duration: const Duration(milliseconds: 100),
              //     width: widget.sizeDx * 0.3,
              //     height: widget.sizeDy * 0.18,
              //     decoration: BoxDecoration(
              //       color: isProcessing
              //           ? Color(0xFF00BFFF)
              //           : (isProcessingStayFocused == true || isProcessingBreakTime == true)
              //           ? Colors.white.withValues(alpha: 0.8)
              //           : Color(0xFFFF4040),
              //       border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
              //       borderRadius: BorderRadius.all(Radius.circular(15.0)),
              //     ),
              //     child: Center(
              //       child: Text(
              //         title,
              //         style: GoogleFonts.concertOne(
              //           textStyle: const TextStyle(color: Colors.black),
              //           fontSize: 32.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: 0,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      width: widget.sizeDx * 0.3,
                      height: widget.sizeDy * 0.18,

                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 20, height: 1.0),
                            children: [
                              titleAnimation(
                                word: title,
                                isActive: isProcessing,
                                color: isProcessing
                                    ? Color(0xFF00BFFF)
                                    : (isProcessingStayFocused == true || isProcessingBreakTime == true)
                                    ? Colors.white.withValues(alpha: 0.8)
                                    : Color(0xFFFF4040),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 3,
                left: 3,
                child: Container(
                  width: widget.sizeDx * 0.3 - 6.0,
                  height: widget.sizeDy * 0.18 - 6.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5.0, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),

              ///
              /// Stay Focused
              ///
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 1.0,
                left: widget.sizeDx * 0.32 + 1.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),

                  child: Container(
                    color: Colors.transparent,
                    width: widget.sizeDx * 0.50,
                    height: widget.sizeDy * 0.18 - 2.0,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: stayFocusedProgressbar,
                          height: widget.sizeDy * 0.18 - 2.0,
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            border: Border.all(width: 5.0, color: Colors.lightGreenAccent),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 15.0, spreadRadius: 3.0, offset: Offset(0, 0))],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: widget.sizeDx * 0.32,
                child: Container(
                  width: widget.sizeDx * 0.50,
                  height: widget.sizeDy * 0.18,
                  decoration: BoxDecoration(
                    color: isProcessingStayFocused ? Colors.white.withValues(alpha: 0.5) : Colors.transparent,
                    border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Center(
                    child: Text(
                      '25 min',
                      style: GoogleFonts.concertOne(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 3,
                left: widget.sizeDx * 0.32 + 3,
                child: Container(
                  width: widget.sizeDx * 0.50 - 6.0,
                  height: widget.sizeDy * 0.18 - 6.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5.0, color: Color(0xFF1C1C1C)),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),

              ///
              /// Break Time
              ///
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 1.0,
                left: widget.sizeDx * 0.84 + 1.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),

                  child: Container(
                    color: Colors.transparent,
                    width: widget.sizeDx * 0.14,
                    height: widget.sizeDy * 0.18 - 2.0,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: breakTimeProgressbar,
                          height: widget.sizeDy * 0.18 - 2.0,
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            border: Border.all(width: 5.0, color: Colors.lightGreenAccent),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: widget.sizeDx * 0.84,
                child: Container(
                  width: widget.sizeDx * 0.14,
                  height: widget.sizeDy * 0.18,
                  decoration: BoxDecoration(
                    color: isProcessingBreakTime ? Colors.white.withValues(alpha: 0.5) : Colors.transparent,
                    border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Center(
                    child: Text(
                      '5 min',
                      style: GoogleFonts.concertOne(
                        textStyle: const TextStyle(color: Colors.black),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 3,
                left: widget.sizeDx * 0.84 + 3,
                child: Container(
                  width: widget.sizeDx * 0.14 - 1.0 - 6.0,
                  height: widget.sizeDy * 0.18 - 6.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5.0, color: Color(0xFF1C1C1C)),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  WidgetSpan titleAnimation({required String word, required bool isActive, required Color? color}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              decoration: BoxDecoration(),

              child: Stack(
                children: [
                  Positioned(
                    bottom: -1.0,
                    left: -1.0,
                    height: 25.0,
                    width: 500.0,
                    child: Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
                  ),

                  Positioned(
                    top: -1.0,
                    left: -1.0,
                    child: Container(
                      height: 35.0,
                      width: 500.0,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: isActive ? ActiveContainerWidget(isReverse: false, color: color ?? Color(0xFF363636)) : InactiveContainerWidget(isReverse: false, color: color ?? Color(0xFF363636)),
                    ),
                  ),

                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              word,
                              style: GoogleFonts.concertOne(
                                textStyle: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 5.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 1,
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
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              word,
                              style: GoogleFonts.concertOne(
                                textStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 1),
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        children: [
          Container(
            width: widget.sizeDx,
            height: widget.sizeDy,
            decoration: BoxDecoration(
              color: Color(0xFF002200).withValues(alpha: 0.5),
              border: Border.all(width: 5.0, color: Colors.black),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
              boxShadow: [
                // Bóng tối (dưới phải)
                // BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2),
                BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0)),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
                  ),
                ],
              ),
            ),
          ),

          ///
          pomodoroItem(id: '[PomodoroSS01]', top: 0, left: 0, right: null, bottom: null),

          pomodoroItem(id: '[PomodoroSS02]', top: widget.sizeDy * 0.20, left: 0, right: null, bottom: null),

          pomodoroItem(id: '[PomodoroSS03]', top: widget.sizeDy * 0.40, left: 0, right: null, bottom: null),

          pomodoroItem(id: '[PomodoroSS04]', top: widget.sizeDy * 0.60, left: 0, right: null, bottom: null),

          /// Total Elapsed Time
          AnimatedPositioned(
            bottom: 0,
            left: 10.0,
            duration: const Duration(milliseconds: 100),
            width: widget.sizeDx - 20.0,
            height: widget.sizeDy * 0.20,
            child: TotalElapsedTime0(systemStateManagement: widget.systemStateManagement, sizeDx: widget.sizeDx - 20.0, sizeDy: widget.sizeDy * 0.15),
          ),

          // AnimatedPositioned(
          //   bottom: 0,
          //   left: 10.0,
          //   duration: const Duration(milliseconds: 100),
          //   width: widget.sizeDx - 20.0,
          //   height: widget.sizeDy * 0.20,
          //   child: Center(
          //     child: Container(
          //       width: widget.sizeDx - 20.0,
          //       height: widget.sizeDy * 0.15,
          //
          //       decoration: BoxDecoration(
          //         // color: Color(0xFF363636),
          //         color: Color(0xFF1C1C1C),
          //         border: Border.all(width: 2.0, color: Color(0xFF1C1C1C)),
          //         borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Container(
          //             padding: const EdgeInsets.only(left: 20.0),
          //             color: Colors.transparent,
          //             width: widget.sizeDx * 0.6,
          //             height: 60.0,
          //             child: Text(
          //               'Total Elapsed Time:',
          //               style: GoogleFonts.concertOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 30.0, letterSpacing: 2.0),
          //             ),
          //           ),
          //           Container(
          //             padding: const EdgeInsets.only(right: 20.0),
          //             color: Colors.transparent,
          //             width: widget.sizeDx * 0.3,
          //             height: 45.0,
          //             child: Text(
          //               '10:00:00',
          //               textAlign: TextAlign.right,
          //               style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
