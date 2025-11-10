import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PomodoroWidget extends StatefulWidget {
  const PomodoroWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<PomodoroWidget> createState() => _PomodoroWidgetState();
}

class _PomodoroWidgetState extends State<PomodoroWidget> {
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

    stayFocusedProgressbar = widget.sizeDx * 0.50;
    breakTimeProgressbar = widget.sizeDx * 0.10;

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
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        /// PomodoroSS01
        if (totalSecondPomodoroSS01 > 0) {
          stayFocusedProgressbarPomodoroSS01 = (stayFocusedProgressbar / (totalMinutePomodoroSS01 * 60)) * ((totalMinutePomodoroSS01 * 60) - totalSecondPomodoroSS01);

          totalSecondPomodoroSS01 -= 1;

          processingId = '[PomodoroSS01]';

          setState(() {});

          return;
        } else if (totalSecondPomodoroSS01 == 0) {
          if (totalSecondBreakTimePomodoroSS01 > 0) {
            breakTimeProgressbarPomodoroSS01 =
                (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS01 * 60)) * ((totalMinuteBreakTimePomodoroSS01 * 60) - totalSecondBreakTimePomodoroSS01);

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
              breakTimeProgressbarPomodoroSS02 =
                  (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS02 * 60)) * ((totalMinuteBreakTimePomodoroSS02 * 60) - totalSecondBreakTimePomodoroSS02);

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
              breakTimeProgressbarPomodoroSS03 =
                  (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS03 * 60)) * ((totalMinuteBreakTimePomodoroSS03 * 60) - totalSecondBreakTimePomodoroSS03);

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
              breakTimeProgressbarPomodoroSS04 =
                  (breakTimeProgressbar / (totalMinuteBreakTimePomodoroSS04 * 60)) * ((totalMinuteBreakTimePomodoroSS04 * 60) - totalSecondBreakTimePomodoroSS04);

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
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    width: widget.sizeDx * 0.3,
                    height: widget.sizeDy * 0.18,
                    decoration: BoxDecoration(
                      color: isProcessing
                          ? Colors.lightBlueAccent
                          : (isProcessingStayFocused == true || isProcessingBreakTime == true)
                          ? Colors.white.withValues(alpha: 0.8)
                          : Colors.red,
                      border: Border.all(width: 6.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        title,
                        style: GoogleFonts.chewy(
                          textStyle: const TextStyle(color: Color(0xFF262626)),
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              ///
              /// Stay Focused
              ///
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: widget.sizeDx * 0.32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Container(
                    color: Colors.transparent,
                    width: widget.sizeDx * 0.50,
                    height: widget.sizeDy * 0.18,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: stayFocusedProgressbar,
                          height: widget.sizeDy * 0.18,
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            border: Border.all(width: 5.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                    border: Border.all(width: 6.0, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                    child: Text(
                      '25 min',
                      style: GoogleFonts.teko(
                        textStyle: const TextStyle(color: Color(0xFF262626)),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              ///
              /// Break Time
              ///
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                top: 0,
                left: widget.sizeDx * 0.84,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Container(
                    color: Colors.transparent,
                    width: widget.sizeDx * 0.1,
                    height: widget.sizeDy * 0.18,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: breakTimeProgressbar,
                          height: widget.sizeDy * 0.18,
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            border: Border.all(width: 5.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  width: widget.sizeDx * 0.1,
                  height: widget.sizeDy * 0.18,
                  decoration: BoxDecoration(
                    color: isProcessingBreakTime ? Colors.white.withValues(alpha: 0.5) : Colors.transparent,
                    border: Border.all(width: 6.0, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                    child: Text(
                      '5 min',
                      style: GoogleFonts.teko(
                        textStyle: const TextStyle(color: Color(0xFF262626)),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              isProcessing
                  ? AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      top: 0,
                      left: widget.sizeDx * 0.95,
                      child: Container(
                        width: widget.sizeDx * 0.02,
                        height: widget.sizeDy * 0.18,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(width: 5.0, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
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
              // color: Colors.black.withValues(alpha: 0.8),
              border: Border.all(width: 5.0, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                // Bóng tối (dưới phải)
                BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2),
              ],
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
            child: Center(
              child: Container(
                width: widget.sizeDx - 20.0,
                height: widget.sizeDy * 0.15,

                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.8),
                  border: Border.all(width: 2.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: widget.sizeDx * 0.3,
                      height: 35.0,
                      child: Center(
                        child: Text('Total Elapsed Time:', style: TextStyle(fontSize: 20.0, color: Colors.blueGrey)),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 120.0,
                      height: 35.0,
                      child: Center(
                        child: Text('10:00:00', style: TextStyle(fontSize: 20.0, color: Colors.blueGrey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
