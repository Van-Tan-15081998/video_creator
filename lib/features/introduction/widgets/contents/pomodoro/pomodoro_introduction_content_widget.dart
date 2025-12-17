import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class PomodoroIntroductionContentWidget extends StatefulWidget {
  const PomodoroIntroductionContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy, required this.onComplete});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  final VoidCallback? onComplete;

  @override
  State<PomodoroIntroductionContentWidget> createState() => _PomodoroIntroductionContentWidgetState();
}

class _PomodoroIntroductionContentWidgetState extends State<PomodoroIntroductionContentWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  Timer? _timer;

  bool isCompleted = false;

  PomodoroItemModel? pomodoroItemSS01;
  PomodoroItemModel? pomodoroItemSS02;
  PomodoroItemModel? pomodoroItemSS03;
  PomodoroItemModel? pomodoroItemSS04;
  PomodoroItemModel? pomodoroItemSS05;
  PomodoroItemModel? pomodoroItemSS06;
  PomodoroItemModel? pomodoroItemSS07;
  PomodoroItemModel? pomodoroItemSS08;
  PomodoroItemModel? pomodoroItemSS09;
  PomodoroItemModel? pomodoroItemSS10;

  @override
  void initState() {
    super.initState();

    pomodoroItemSS01 = PomodoroItemModel(
      word: 'Start',
      minute: '',
      width: 850.0,
      height: 150.0,
      left: 1600 - 40 * 1,
      bottom: 200.0 * 5,
      isStayFocused: false,
      isBreakTime: false,
      isRunIn: true,
      isStart: true,
      isFinish: false,
    );
    pomodoroItemSS02 = PomodoroItemModel(
      word: 'Stay focused',
      minute: '30',
      width: 850.0,
      height: 150.0,
      left: 1500 - 41 * 2,
      bottom: 200.0 * 4,
      isStayFocused: true,
      isBreakTime: false,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS03 = PomodoroItemModel(
      word: 'Break time',
      minute: '5',
      width: 850.0,
      height: 150.0,
      left: 1400 - 42 * 3,
      bottom: 200.0 * 3,
      isStayFocused: false,
      isBreakTime: true,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS04 = PomodoroItemModel(
      word: 'Stay focused',
      minute: '30',
      width: 850.0,
      height: 150.0,
      left: 1300 - 43 * 4,
      bottom: 200.0 * 2,
      isStayFocused: true,
      isBreakTime: false,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS05 = PomodoroItemModel(
      word: 'Break time',
      minute: '5',
      width: 850.0,
      height: 150.0,
      left: 1200 - 44 * 5,
      bottom: 200.0 * 1,
      isStayFocused: false,
      isBreakTime: true,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS06 = PomodoroItemModel(
      word: 'Stay focused',
      minute: '30',
      width: 850.0,
      height: 150.0,
      left: 1100 - 45 * 6,
      bottom: 200.0 * 0,
      isStayFocused: true,
      isBreakTime: false,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS07 = PomodoroItemModel(
      word: 'Break time',
      minute: '5',
      width: 850.0,
      height: 150.0,
      left: 1000 - 46 * 7,
      bottom: -200.0 * 1,
      isStayFocused: false,
      isBreakTime: true,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS08 = PomodoroItemModel(
      word: 'Stay focused',
      minute: '30',
      width: 850.0,
      height: 150.0,
      left: 900 - 47 * 8,
      bottom: -200.0 * 2,
      isStayFocused: true,
      isBreakTime: false,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS09 = PomodoroItemModel(
      word: 'Break time',
      minute: '5',
      width: 850.0,
      height: 150.0,
      left: 800 - 48 * 9,
      bottom: -200.0 * 3,
      isStayFocused: false,
      isBreakTime: true,
      isRunIn: true,
      isStart: false,
      isFinish: false,
    );
    pomodoroItemSS10 = PomodoroItemModel(
      word: 'Finish',
      minute: '',
      width: 850.0,
      height: 150.0,
      left: 700 - 49 * 10,
      bottom: -200.0 * 4,
      isStayFocused: false,
      isBreakTime: false,
      isRunIn: true,
      isStart: false,
      isFinish: true,
    );
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // });
          //
          _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
            // return;

            if ((pomodoroItemSS10?.left ?? 0) >= 1600.0 && isCompleted == false) {
              widget.onComplete?.call();
              isCompleted = true;
            }

            if ((pomodoroItemSS10?.bottom ?? 0) >= 100) {
              pomodoroItemSS01?.updateRunOut();
              pomodoroItemSS02?.updateRunOut();
              pomodoroItemSS03?.updateRunOut();
              pomodoroItemSS04?.updateRunOut();
              pomodoroItemSS05?.updateRunOut();
              pomodoroItemSS06?.updateRunOut();
              pomodoroItemSS07?.updateRunOut();
              pomodoroItemSS08?.updateRunOut();
              pomodoroItemSS09?.updateRunOut();
              pomodoroItemSS10?.updateRunOut();

              setState(() {
                pomodoroItemSS01?.onUpdate();
                pomodoroItemSS02?.onUpdate();
                pomodoroItemSS03?.onUpdate();
                pomodoroItemSS04?.onUpdate();
                pomodoroItemSS05?.onUpdate();
                pomodoroItemSS06?.onUpdate();
                pomodoroItemSS07?.onUpdate();
                pomodoroItemSS08?.onUpdate();
                pomodoroItemSS09?.onUpdate();
                pomodoroItemSS10?.onUpdate();
              });

              return;
            }

            pomodoroItemSS01?.updateRunIn();
            pomodoroItemSS02?.updateRunIn();
            pomodoroItemSS03?.updateRunIn();
            pomodoroItemSS04?.updateRunIn();
            pomodoroItemSS05?.updateRunIn();
            pomodoroItemSS06?.updateRunIn();
            pomodoroItemSS07?.updateRunIn();
            pomodoroItemSS08?.updateRunIn();
            pomodoroItemSS09?.updateRunIn();
            pomodoroItemSS10?.updateRunIn();

            setState(() {
              pomodoroItemSS01?.onUpdate();
              pomodoroItemSS02?.onUpdate();
              pomodoroItemSS03?.onUpdate();
              pomodoroItemSS04?.onUpdate();
              pomodoroItemSS05?.onUpdate();
              pomodoroItemSS06?.onUpdate();
              pomodoroItemSS07?.onUpdate();
              pomodoroItemSS08?.onUpdate();
              pomodoroItemSS09?.onUpdate();
              pomodoroItemSS10?.onUpdate();
            });
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Container();

    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -500.0,
          right: -800.0,
          width: 2000.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * 0.2,
            child: Container(
              width: 2000.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C).withValues(alpha: 0.85),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                border: Border.all(width: 15.0, color: Colors.black),
              ),
            ),
          ),
        ),

        // AnimatedPositioned(
        //   duration: const Duration(milliseconds: 500),
        //   top: -150.0,
        //   right: -1200.0,
        //   width: 2500.0,
        //   height: 2000.0,
        //   child: Transform.rotate(
        //     angle: pi * -0.3,
        //     child: Container(
        //       width: 2500.0,
        //       height: 3000.0,
        //       decoration: BoxDecoration(
        //         color: Color(0xFFFFFFFF).withValues(alpha: 0),
        //         borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
        //         image: DecorationImage(image: AssetImage('assets/images/background/background_04.jpg'), fit: BoxFit.fitHeight),
        //       ),
        //     ),
        //   ),
        // ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: 0,
          right: -500.0,
          width: 2500.0,
          height: 1440.0,
          child: Container(
            width: 2500.0,
            height: 1440.0,
            decoration: BoxDecoration(
              color: Color(0xFF54FF9F).withValues(alpha: 0),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            ),

            child: Stack(alignment: AlignmentDirectional.center, children: [pomodoroList(width: 2500.0, height: 1440.0)]),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -150.0,
          right: -1450.0,
          width: 2500.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * -0.3,
            child: Container(
              width: 2500.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withValues(alpha: 0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),

              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 2000.0,
                    height: 160.0,
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.white.withValues(alpha: 0.9),
                            Colors.white.withValues(alpha: 0.8),
                            Colors.white.withValues(alpha: 0.7),
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
                          stops: [0.40, 0.45, 0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.0],
                        ).createShader(bounds);
                      },
                      child: Container(color: Color(0xFF1C1C1C)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 1800.0,
                    height: 160.0,
                    child: Container(
                      color: Colors.transparent,
                      child: Stack(children: [topicTitleWidget(title: 'Pomodoro 30/5', width: 1800.0, height: 160.0)]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -150.0,
          right: -1650.0,
          width: 2500.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * -0.3,
            child: Container(
              width: 2500.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFF000000).withValues(alpha: 0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),

              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 2000.0,
                    height: 130.0,
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.white.withValues(alpha: 0.9),
                            Colors.white.withValues(alpha: 0.8),
                            Colors.white.withValues(alpha: 0.7),
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
                          stops: [0.40, 0.45, 0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.0],
                        ).createShader(bounds);
                      },
                      child: Container(color: Color(0xFF7FFFD4)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 1800.0,
                    height: 130.0,
                    child: Container(
                      color: Colors.transparent,
                      child: Stack(children: [subTopicTitleWidget(title: 'Number of Pomodoros: 4', width: 1800.0, height: 130.0)]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget pomodoroList({required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1),
      left: 0,
      bottom: 0,
      width: width,
      height: height,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(10.0),
        width: width,
        height: height,
        child: Stack(
          children: [
            ///
            pomodoroWidget(
              title: pomodoroItemSS01?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS01?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS01?.left ?? 0,
              bottom: pomodoroItemSS01?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS01,
            ),
            pomodoroWidget(
              title: pomodoroItemSS02?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS02?.minute ?? '',
              isStayFocused: true,
              left: pomodoroItemSS02?.left ?? 0,
              bottom: pomodoroItemSS02?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS02,
            ),
            pomodoroWidget(
              title: pomodoroItemSS03?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS03?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS03?.left ?? 0,
              bottom: pomodoroItemSS03?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS03,
            ),
            pomodoroWidget(
              title: pomodoroItemSS04?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS04?.minute ?? '',
              isStayFocused: true,
              left: pomodoroItemSS04?.left ?? 0,
              bottom: pomodoroItemSS04?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS04,
            ),
            pomodoroWidget(
              title: pomodoroItemSS05?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS05?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS05?.left ?? 0,
              bottom: pomodoroItemSS05?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS05,
            ),
            pomodoroWidget(
              title: pomodoroItemSS06?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS06?.minute ?? '',
              isStayFocused: true,
              left: pomodoroItemSS06?.left ?? 0,
              bottom: pomodoroItemSS06?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS06,
            ),
            pomodoroWidget(
              title: pomodoroItemSS07?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS07?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS07?.left ?? 0,
              bottom: pomodoroItemSS07?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS07,
            ),
            pomodoroWidget(
              title: pomodoroItemSS08?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS08?.minute ?? '',
              isStayFocused: true,
              left: pomodoroItemSS08?.left ?? 0,
              bottom: pomodoroItemSS08?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS08,
            ),
            pomodoroWidget(
              title: pomodoroItemSS09?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS09?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS09?.left ?? 0,
              bottom: pomodoroItemSS09?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS09,
            ),
            pomodoroWidget(
              title: pomodoroItemSS10?.word ?? 'pomodoro 1',
              minutes: pomodoroItemSS10?.minute ?? '',
              isStayFocused: false,
              left: pomodoroItemSS10?.left ?? 0,
              bottom: pomodoroItemSS10?.bottom ?? 0,
              pomodoroItem: pomodoroItemSS10,
            ),
          ],
        ),
      ),
    );
  }

  Widget pomodoroWidget({required String title, required String minutes, required bool isStayFocused, required double left, required double bottom, required PomodoroItemModel? pomodoroItem}) {
    Color backgroundColor = Color(0xFF00BFFF).withValues(alpha: 1);

    if (pomodoroItem?.isStayFocused == true) {
      backgroundColor = Color(0xFFFF4040).withValues(alpha: 1);
    }
    if (pomodoroItem?.isBreakTime == true) {
      backgroundColor = Color(0xFF7FFF00).withValues(alpha: 1);
    }
    if (pomodoroItem?.isStart == true || pomodoroItem?.isFinish == true) {
      backgroundColor = Color(0xFFB0E0E6).withValues(alpha: 1);
    }

    return AnimatedPositioned(
      left: left,
      bottom: bottom,
      width: 850.0,
      height: 185.0,
      duration: const Duration(milliseconds: 10),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 5.0,
            top: 20.0,
            width: 850.0,
            height: 120.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C).withValues(alpha: 0.5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
                boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.1), blurRadius: 1.0, spreadRadius: 1.0, offset: Offset(-1, 1))],
              ),
            ),
          ),

          minutes.isNotEmpty
              ? Positioned(
                  left: 100.0,
                  bottom: 2.0,
                  width: 800.0,
                  height: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 300.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C).withValues(alpha: 0.5),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
                      boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 1.0), blurRadius: 1.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                    ),
                    child: Text(
                      '$minutes minutes',
                      style: GoogleFonts.dangrek(
                        textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFE0FFFF), letterSpacing: 2.0),
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                )
              : Container(),

          Positioned(
            left: 20.0,
            top: 5.0,
            width: 850.0,
            height: 120.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
                boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 1.0), blurRadius: 1.0, spreadRadius: 1.0, offset: Offset(0, 0))],
              ),
              child: Text(
                title,
                style: GoogleFonts.coiny(
                  textStyle: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 2.0),
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mainTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      bottom: 15.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 30.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.titanOne(
                                textStyle: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 10.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 10.0,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
                              title,
                              style: GoogleFonts.titanOne(
                                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 10.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topicTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 250.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 10.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 5.0,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget subTopicTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 250.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    // Positioned(
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Flexible(
                    //         child: Text(
                    //           title,
                    //           style: GoogleFonts.dangrek(
                    //             textStyle: TextStyle(
                    //               fontSize: 55.0,
                    //               fontWeight: FontWeight.w800,
                    //               fontStyle: FontStyle.normal,
                    //               foreground: Paint()
                    //                 ..style = PaintingStyle.stroke
                    //                 ..strokeWidth = 10.0
                    //                 ..color = Color(0xFF000000), // Màu viền
                    //               letterSpacing: 5.0,
                    //             ),
                    //           ),
                    //           textAlign: TextAlign.center,
                    //           overflow: TextOverflow.ellipsis,
                    //           maxLines: 1,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 5.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PomodoroItemModel {
  PomodoroItemModel({
    required this.word, //
    required this.minute, //
    required this.width, //
    required this.height, //
    required this.left, //
    required this.bottom, //
    required this.isRunIn, //
    required this.isStayFocused, //
    required this.isBreakTime, //
    required this.isStart, //
    required this.isFinish, //
  });

  String? word;
  String? minute;

  double? width;

  double? height;

  double? left;

  double? bottom;

  bool? isRunIn;
  bool? isRunOut;

  bool? isStayFocused;
  bool? isBreakTime;

  bool? isStart;
  bool? isFinish;

  void updateRunIn() {
    isRunIn = true;
    isRunOut = false;
  }

  void updateRunOut() {
    isRunIn = false;
    isRunOut = true;
  }

  void onUpdate() {
    if (isRunIn == true) {
      if ((bottom ?? 0) > 1000.0) {
        updateRunOut();
      }

      onUpdateIn();
    }

    onUpdateOut();
  }

  void onUpdateIn() {
    if (isRunIn == true) {
      left = (left ?? 0) + 2.0;
      bottom = (bottom ?? 0) + 2.5;
    }
  }

  void onUpdateOut() {
    if (isRunOut == true) {
      left = (left ?? 0) + 20.0;
      bottom = (bottom ?? 0) + 1.0;
    }
  }
}
