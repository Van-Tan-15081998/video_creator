import 'dart:async';

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class CountdownTimerContentWidget extends StatefulWidget {
  const CountdownTimerContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<CountdownTimerContentWidget> createState() => _CountdownTimerContentWidgetState();
}

class _CountdownTimerContentWidgetState extends State<CountdownTimerContentWidget> {
  Timer? _timer;

  int minute = 0;
  int second = 0;
  int prepareSecond = 0;

  String minuteString = '';
  String secondString = '';
  String prepareSecondString = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        minute = 60;
        second = 60;
      });
    });

    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (widget.systemStateManagement?.getCountdownTimerFeature?.checkConditionActiveByDirection() == true) {
        ///
        /// TODO: StayFocused
        ///

        /// TODO: StayFocused SS01
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS01?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: StayFocused SS02
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS02?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: StayFocused SS03
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS03?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: StayFocused SS04
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getStayFocusedSS04?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        ///
        /// TODO: BreakTime
        ///

        /// TODO: BreakTime SS01
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS01?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: BreakTime SS02
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS02?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: BreakTime SS03
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS03?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        /// TODO: BreakTime SS04
        if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.getStatus?.isActive() == true) {
          minute = widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.getTotalRemainingMinutes?.toInt() ?? 0;
          second = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.getTotalRemainingSeconds?.toInt() ?? 0) % 60;

          prepareSecond = (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getBreakTimeSS04?.getTotalPrepareSeconds?.toInt() ?? 0);

          if (mounted) {
            setState(() {});
          }

          return;
        }

        if (mounted) {
          setState(() {
            ///
          });
        }
      }
    });

    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (widget.systemStateManagement?.getCountdownTimerFeature?.checkConditionActiveByDirection() == true) {
        String minuteStringTick = '';
        String secondStringTick = '';
        String prepareSecondStringTick = '';

        switch (minute) {
          case 0:
            {
              minuteStringTick = '00';
            }
            break;
          case 1:
            {
              minuteStringTick = '01';
            }
            break;
          case 2:
            {
              minuteStringTick = '02';
            }
            break;
          case 3:
            {
              minuteStringTick = '03';
            }
            break;
          case 4:
            {
              minuteStringTick = '04';
            }
            break;
          case 5:
            {
              minuteStringTick = '05';
            }
            break;
          case 6:
            {
              minuteStringTick = '06';
            }
            break;
          case 7:
            {
              minuteStringTick = '07';
            }
            break;
          case 8:
            {
              minuteStringTick = '08';
            }
            break;
          case 9:
            {
              minuteStringTick = '09';
            }
            break;
          case 10:
            {
              minuteStringTick = '10';
            }
            break;
          case 11:
            {
              minuteStringTick = '11';
            }
            break;
          case 12:
            {
              minuteStringTick = '12';
            }
            break;
          case 13:
            {
              minuteStringTick = '13';
            }
            break;
          case 14:
            {
              minuteStringTick = '14';
            }
            break;
          case 15:
            {
              minuteStringTick = '15';
            }
            break;
          case 16:
            {
              minuteStringTick = '16';
            }
            break;
          case 17:
            {
              minuteStringTick = '17';
            }
            break;
          case 18:
            {
              minuteStringTick = '18';
            }
            break;
          case 19:
            {
              minuteStringTick = '19';
            }
            break;
          case 20:
            {
              minuteStringTick = '20';
            }
            break;
          case 21:
            {
              minuteStringTick = '21';
            }
            break;
          case 22:
            {
              minuteStringTick = '22';
            }
            break;
          case 23:
            {
              minuteStringTick = '23';
            }
            break;
          case 24:
            {
              minuteStringTick = '24';
            }
            break;
          case 25:
            {
              minuteStringTick = '25';
            }
            break;
          case 26:
            {
              minuteStringTick = '26';
            }
            break;
          case 27:
            {
              minuteStringTick = '27';
            }
            break;
          case 28:
            {
              minuteStringTick = '28';
            }
            break;
          case 29:
            {
              minuteStringTick = '29';
            }
            break;
          case 30:
            {
              minuteStringTick = '30';
            }
            break;
          case 31:
            {
              minuteStringTick = '31';
            }
            break;
          case 32:
            {
              minuteStringTick = '32';
            }
            break;
          case 33:
            {
              minuteStringTick = '33';
            }
            break;
          case 34:
            {
              minuteStringTick = '34';
            }
            break;
          case 35:
            {
              minuteStringTick = '35';
            }
            break;
          case 36:
            {
              minuteStringTick = '36';
            }
            break;
          case 37:
            {
              minuteStringTick = '37';
            }
            break;
          case 38:
            {
              minuteStringTick = '38';
            }
            break;
          case 39:
            {
              minuteStringTick = '39';
            }
            break;
          case 40:
            {
              minuteStringTick = '40';
            }
            break;
          case 41:
            {
              minuteStringTick = '41';
            }
            break;
          case 42:
            {
              minuteStringTick = '42';
            }
            break;
          case 43:
            {
              minuteStringTick = '43';
            }
            break;
          case 44:
            {
              minuteStringTick = '44';
            }
            break;
          case 45:
            {
              minuteStringTick = '45';
            }
            break;
          case 46:
            {
              minuteStringTick = '46';
            }
            break;
          case 47:
            {
              minuteStringTick = '47';
            }
            break;
          case 48:
            {
              minuteStringTick = '48';
            }
            break;
          case 49:
            {
              minuteStringTick = '49';
            }
            break;
          case 50:
            {
              minuteStringTick = '50';
            }
            break;
          case 51:
            {
              minuteStringTick = '51';
            }
            break;
          case 52:
            {
              minuteStringTick = '52';
            }
            break;
          case 53:
            {
              minuteStringTick = '53';
            }
            break;
          case 54:
            {
              minuteStringTick = '54';
            }
            break;
          case 55:
            {
              minuteStringTick = '55';
            }
            break;
          case 56:
            {
              minuteStringTick = '56';
            }
            break;
          case 57:
            {
              minuteStringTick = '57';
            }
            break;
          case 58:
            {
              minuteStringTick = '58';
            }
            break;
          case 59:
            {
              minuteStringTick = '59';
            }
            break;
          case 60:
            {
              minuteStringTick = '60';
            }
            break;
        }

        switch (second) {
          case 0:
            {
              secondStringTick = '00';
            }
            break;
          case 1:
            {
              secondStringTick = '01';
            }
            break;
          case 2:
            {
              secondStringTick = '02';
            }
            break;
          case 3:
            {
              secondStringTick = '03';
            }
            break;
          case 4:
            {
              secondStringTick = '04';
            }
            break;
          case 5:
            {
              secondStringTick = '05';
            }
            break;
          case 6:
            {
              secondStringTick = '06';
            }
            break;
          case 7:
            {
              secondStringTick = '07';
            }
            break;
          case 8:
            {
              secondStringTick = '08';
            }
            break;
          case 9:
            {
              secondStringTick = '09';
            }
            break;
          case 10:
            {
              secondStringTick = '10';
            }
            break;
          case 11:
            {
              secondStringTick = '11';
            }
            break;
          case 12:
            {
              secondStringTick = '12';
            }
            break;
          case 13:
            {
              secondStringTick = '13';
            }
            break;
          case 14:
            {
              secondStringTick = '14';
            }
            break;
          case 15:
            {
              secondStringTick = '15';
            }
            break;
          case 16:
            {
              secondStringTick = '16';
            }
            break;
          case 17:
            {
              secondStringTick = '17';
            }
            break;
          case 18:
            {
              secondStringTick = '18';
            }
            break;
          case 19:
            {
              secondStringTick = '19';
            }
            break;
          case 20:
            {
              secondStringTick = '20';
            }
            break;
          case 21:
            {
              secondStringTick = '21';
            }
            break;
          case 22:
            {
              secondStringTick = '22';
            }
            break;
          case 23:
            {
              secondStringTick = '23';
            }
            break;
          case 24:
            {
              secondStringTick = '24';
            }
            break;
          case 25:
            {
              secondStringTick = '25';
            }
            break;
          case 26:
            {
              secondStringTick = '26';
            }
            break;
          case 27:
            {
              secondStringTick = '27';
            }
            break;
          case 28:
            {
              secondStringTick = '28';
            }
            break;
          case 29:
            {
              secondStringTick = '29';
            }
            break;
          case 30:
            {
              secondStringTick = '30';
            }
            break;
          case 31:
            {
              secondStringTick = '31';
            }
            break;
          case 32:
            {
              secondStringTick = '32';
            }
            break;
          case 33:
            {
              secondStringTick = '33';
            }
            break;
          case 34:
            {
              secondStringTick = '34';
            }
            break;
          case 35:
            {
              secondStringTick = '35';
            }
            break;
          case 36:
            {
              secondStringTick = '36';
            }
            break;
          case 37:
            {
              secondStringTick = '37';
            }
            break;
          case 38:
            {
              secondStringTick = '38';
            }
            break;
          case 39:
            {
              secondStringTick = '39';
            }
            break;
          case 40:
            {
              secondStringTick = '40';
            }
            break;
          case 41:
            {
              secondStringTick = '41';
            }
            break;
          case 42:
            {
              secondStringTick = '42';
            }
            break;
          case 43:
            {
              secondStringTick = '43';
            }
            break;
          case 44:
            {
              secondStringTick = '44';
            }
            break;
          case 45:
            {
              secondStringTick = '45';
            }
            break;
          case 46:
            {
              secondStringTick = '46';
            }
            break;
          case 47:
            {
              secondStringTick = '47';
            }
            break;
          case 48:
            {
              secondStringTick = '48';
            }
            break;
          case 49:
            {
              secondStringTick = '49';
            }
            break;
          case 50:
            {
              secondStringTick = '50';
            }
            break;
          case 51:
            {
              secondStringTick = '51';
            }
            break;
          case 52:
            {
              secondStringTick = '52';
            }
            break;
          case 53:
            {
              secondStringTick = '53';
            }
            break;
          case 54:
            {
              secondStringTick = '54';
            }
            break;
          case 55:
            {
              secondStringTick = '55';
            }
            break;
          case 56:
            {
              secondStringTick = '56';
            }
            break;
          case 57:
            {
              secondStringTick = '57';
            }
            break;
          case 58:
            {
              secondStringTick = '58';
            }
            break;
          case 59:
            {
              secondStringTick = '59';
            }
            break;
          case 60:
            {
              secondStringTick = '60';
            }
            break;
        }

        switch (prepareSecond) {
          case 505:
            {
              prepareSecondStringTick = '05';
              isPrepare = true;
            }
            break;
          case 504:
            {
              prepareSecondStringTick = '04';
              isPrepare = true;
            }
            break;
          case 503:
            {
              prepareSecondStringTick = '03';
              isPrepare = true;
            }
            break;
          case 502:
            {
              prepareSecondStringTick = '02';
              isPrepare = true;
            }
            break;
          case 501:
            {
              prepareSecondStringTick = '01';
              isPrepare = true;
            }
            break;
          case 500:
            {
              prepareSecondStringTick = '00';
              isPrepare = true;
            }
            break;
          default:
            {
              prepareSecondStringTick = '05';
              isPrepare = false;
            }
        }

        setState(() {
          minuteString = minuteStringTick;
          secondString = secondStringTick;
          prepareSecondString = prepareSecondStringTick;

          if (isPrepare == true) {
            if (isStayFocused != false || isBreakTime != false) {
              isStayFocused = false;
              isBreakTime = false;

              onPlaySFXStayFocusedBreakTime();
            }
          } else if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_STAY_FOCUSED_SS01]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_STAY_FOCUSED_SS02]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_STAY_FOCUSED_SS03]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_STAY_FOCUSED_SS04]') {
            if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.isCompletedPreparing() == true) {
              if (isStayFocused != true || isBreakTime != false) {
                isStayFocused = true;
                isBreakTime = false;
                backgroundColor = Color(0xFF00BFFF);
                onPlaySFXStayFocusedBreakTime();
              }
            }
          } else if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_BREAK_TIME_SS01]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_BREAK_TIME_SS02]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_BREAK_TIME_SS03]' ||
              widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.getId == '[POMODORO_BREAK_TIME_SS04]') {
            if (widget.systemStateManagement?.getPomodoroFeature?.getPomodoroTime?.getCurrentPomodoroItem?.isCompletedPreparing() == true) {
              if (isStayFocused != false || isBreakTime != true) {
                isBreakTime = true;
                isStayFocused = false;
                backgroundColor = Color(0xFF7CFC00);
                onPlaySFXStayFocusedBreakTime();
              }
            }
          }
        });
      }
    });
  }

  bool isStayFocused = false;
  bool isBreakTime = false;

  bool isPrepare = false;
  bool isStart = false;

  Color backgroundColor = Color(0xFFFFFFFF);

  onPlaySFXStayFocusedBreakTime() {
    FlameAudio.play('sfx/text_change/stay_focused_break_time.mp3', volume: 0.45);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            child: AnimatedContainer(
              // padding: EdgeInsets.all(5.0),
              duration: const Duration(milliseconds: 100),
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                // color: backgroundColor.withValues(alpha: 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
                border: Border.all(width: 15.0, color: Colors.black),
                image: DecorationImage(image: AssetImage('assets/images/background/background_03.jpg'), fit: BoxFit.fitWidth),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,

                children: [
                  AnimatedPositioned(
                    bottom: -45.0,
                    right: -45.0,
                    duration: const Duration(milliseconds: 100),
                    width: widget.sizeDx,
                    height: widget.sizeDy,
                    child: Container(
                      width: widget.sizeDx,
                      height: widget.sizeDy,
                      decoration: BoxDecoration(
                        color: Color(0xFF1C1C1C).withValues(alpha: 0.1),
                        border: Border.all(width: 5.0, color: Colors.transparent),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        // boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                      ),
                    ),
                  ),

                  isStayFocused
                      ? AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),

                          left: widget.sizeDx * 0.02,
                          child: Container(
                            width: widget.sizeDx * 0.45,
                            height: widget.sizeDy * 0.8,
                            decoration: BoxDecoration(
                              // color: Colors.white.withValues(alpha: 1.0),
                              // border: Border.all(width: 2.0, color: Colors.black),
                              // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),

                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                                  'STAY FOCUSED',
                                                  style: GoogleFonts.poetsenOne(
                                                    textStyle: TextStyle(
                                                      fontSize: 55.0,
                                                      fontWeight: FontWeight.bold,
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
                                                  'STAY FOCUSED',
                                                  style: GoogleFonts.poetsenOne(
                                                    textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                                                  ),
                                                  textAlign: TextAlign.center,
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
                              ],
                            ),
                          ),
                        )
                      : Container(),

                  isBreakTime == true
                      ? AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),

                          left: widget.sizeDx * 0.02,
                          child: Container(
                            width: widget.sizeDx * 0.45,
                            height: widget.sizeDy * 0.8,
                            decoration: BoxDecoration(
                              // color: Colors.white.withValues(alpha: 1.0),
                              // border: Border.all(width: 2.0, color: Colors.black),
                              // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),

                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                                  'BREAK TIME',
                                                  style: GoogleFonts.poetsenOne(
                                                    textStyle: TextStyle(
                                                      fontSize: 55.0,
                                                      fontWeight: FontWeight.bold,
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
                                                  'BREAK TIME',
                                                  style: GoogleFonts.poetsenOne(
                                                    textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                                                  ),
                                                  textAlign: TextAlign.center,
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
                              ],
                            ),
                          ),
                        )
                      : Container(),

                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 10),
                    top: 40.0,
                    left: widget.sizeDx * 0.48 + 15.0,
                    child: Container(
                      width: widget.sizeDx * 0.22,
                      height: widget.sizeDy * 0.7,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                        border: Border.all(width: 8.0, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            minuteString,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                              textStyle: const TextStyle(color: Color(0xFF363636)),
                              fontSize: 88.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 10),

                    left: widget.sizeDx * 0.48,
                    child: Container(
                      width: widget.sizeDx * 0.22,
                      height: widget.sizeDy * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 1.0),
                        border: Border.all(width: 8.0, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            minuteString,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                              textStyle: const TextStyle(color: Color(0xFF363636)),
                              fontSize: 88.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    top: 40.0,
                    left: widget.sizeDx * 0.50 + widget.sizeDx * 0.22 + 15.0,
                    child: Container(
                      width: widget.sizeDx * 0.22,
                      height: widget.sizeDy * 0.7,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.8),
                        border: Border.all(width: 8.0, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            secondString,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                              textStyle: const TextStyle(color: Color(0xFF363636)),
                              fontSize: 88.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),

                    left: widget.sizeDx * 0.50 + widget.sizeDx * 0.22,
                    child: Container(
                      width: widget.sizeDx * 0.22,
                      height: widget.sizeDy * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 1.0),
                        border: Border.all(width: 8.0, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            secondString,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.coiny(
                              textStyle: const TextStyle(color: Color(0xFF363636)),
                              fontSize: 88.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  isPrepare
                      ? AnimatedPositioned(
                          duration: const Duration(milliseconds: 100),

                          left: widget.sizeDx * 0.50 + widget.sizeDx * 0.22,
                          child: Container(
                            width: widget.sizeDx * 0.22,
                            height: widget.sizeDy * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 1.0),
                              border: Border.all(width: 8.0, color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  prepareSecondString,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.coiny(
                                    textStyle: const TextStyle(color: Color(0xFF363636)),
                                    fontSize: 88.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),

          Container(
            width: widget.sizeDx,
            height: widget.sizeDy,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(width: 15.0, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
