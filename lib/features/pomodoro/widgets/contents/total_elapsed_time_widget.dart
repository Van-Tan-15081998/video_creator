import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalElapsedTimeWidget extends StatefulWidget {
  const TotalElapsedTimeWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<TotalElapsedTimeWidget> createState() => _TotalElapsedTimeWidgetState();
}

class _TotalElapsedTimeWidgetState extends State<TotalElapsedTimeWidget> {
  Timer? _timer;

  String timeString = "00:00:00";
  String secondsString = "";
  String minutesString = "";
  String hoursString = "";

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        secondsString = widget.systemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.getTimeUnitString(isSecond: true) ?? "00";
        minutesString = widget.systemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.getTimeUnitString(isMinute: true) ?? "00";
        hoursString = widget.systemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.getTimeUnitString(isHour: true) ?? "00";

        setState(() {
          // timeString = "$hoursString:$minutesString:$secondsString";
        });
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
    return Center(
      child: Container(
        width: widget.sizeDx,
        height: 80.0,

        decoration: BoxDecoration(
          // color: Color(0xFF363636),
          color: Color(0xFF1C1C1C),
          border: Border.all(width: 2.0, color: Color(0xFF1C1C1C)),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(15.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              color: Colors.transparent,
              width: 500.0,
              height: 60.0,
              child: Text(
                'Total Elapsed Time:',
                style: GoogleFonts.concertOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 30.0, letterSpacing: 2.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20.0),
              color: Colors.transparent,
              width: 280.0,
              height: 45.0,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 80.0,
                    height: 80.0,
                    child: Text(
                      hoursString,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 0,
                    width: 10.0,
                    height: 80.0,
                    child: Text(
                      ":",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 0,
                    width: 80.0,
                    height: 80.0,
                    child: Text(
                      minutesString,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 0,
                    width: 10.0,
                    height: 80.0,
                    child: Text(
                      ":",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  ),
                  Positioned(
                    left: 180,
                    top: 0,
                    width: 80.0,
                    height: 80.0,
                    child: Text(
                      secondsString,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.blackOpsOne(color: Color(0xFFD3D3D3), fontWeight: FontWeight.bold, fontSize: 25.0),
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
}
