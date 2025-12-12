import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleSentenceWidget extends StatefulWidget {
  const ExampleSentenceWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<ExampleSentenceWidget> createState() => _ExampleSentenceWidgetState();
}

class _ExampleSentenceWidgetState extends State<ExampleSentenceWidget> {
  Timer? _timer;

  int totalMinutes = 1;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

  int up = 100;
  double down = 0.01;

  @override
  void initState() {
    super.initState();

    totalSeconds = 60 * totalMinutes;

    limitedTimeProgressbarLength = widget.sizeDx * 0.78 - 25.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalSeconds > 0) {
          totalSeconds -= 1;

          limitedTimeProgressbar = (limitedTimeProgressbarLength / (60 * totalMinutes)) * totalSeconds;

          setState(() {});
        } else {
          totalSeconds = 60 * totalMinutes;
        }
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
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            bottom: widget.sizeDy * 0.015 - 3.0,
            left: widget.sizeDx * 0.25 - 5.0,
            width: widget.sizeDx * 0.75 - 3.0,
            height: widget.sizeDy * 0.15,
            child: Container(
              // width: widget.sizeDx * 0.65,
              height: widget.sizeDy * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 8.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,

                      maxLines: 2,
                      text: TextSpan(
                        style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 40.0),
                        children: [
                          TextSpan(
                            text: 'Cô ấy rất tỉ mỉ trong công việc, kiểm tra từng chi tiết hai lần.',
                            // style: GoogleFonts.comfortaa(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 30),
                            // style: GoogleFonts.blackOpsOne(color: Color(0xFF1C1C1C), fontWeight: FontWeight.w500, fontSize: 40),
                            // style: GoogleFonts.agbalumo(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0),
                            // style: GoogleFonts.tiltNeon(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0),
                            // style: GoogleFonts.coiny(color: Color(0xFF1C1C1C), fontWeight: FontWeight.w500, fontSize: 35.0),
                            // style: GoogleFonts.fraunces(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0), // ok
                            // style: GoogleFonts.sriracha(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            style: GoogleFonts.sansitaSwashed(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 42.0), // ok
                            // style: GoogleFonts.beiruti(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0), // ok
                            // style: GoogleFonts.protestStrike(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.alumniSansInlineOne(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.sriracha(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            bottom: widget.sizeDy * 0.15,
            left: widget.sizeDx * 0.22 - 5.0,
            width: widget.sizeDx * 0.78 - 3.0,
            height: widget.sizeDy * 0.20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              width: widget.sizeDx * 0.7,
              height: widget.sizeDy * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 8.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    // textAlign: TextAlign.start,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,

                    maxLines: 2,
                    text: TextSpan(
                      style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 35.0),

                      children: [
                        TextSpan(
                          text: 'She is ',
                          style: GoogleFonts.robotoSlab(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 45),
                        ),
                        TextSpan(
                          text: 'meticulous ',
                          style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 48),
                        ),
                        TextSpan(
                          text: 'in her work, checking every detail twice.',
                          style: GoogleFonts.robotoSlab(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 45),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          AnimatedPositioned(
            bottom: widget.sizeDy * 0.15 + 8.0,
            left: widget.sizeDx * 0.22 + 6.0,
            width: widget.sizeDx * 0.78 - 25.0,
            height: 8.0,
            duration: const Duration(milliseconds: 100),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: limitedTimeProgressbar,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(width: 3.0, color: Colors.transparent),
                  ),
                ),
              ],
            ),
          ),

          AnimatedPositioned(
            bottom: widget.sizeDy * 0.15 + 20.0,
            right: 10.0,
            width: 185.0,
            height: 35.0,
            duration: const Duration(milliseconds: 100),
            child: Container(
              color: Colors.transparent,
              width: 185.0,
              height: 35.0,
              child: Text(
                'Example: 1/3',
                style: GoogleFonts.concertOne(color: Color(0xFF3CB371), fontWeight: FontWeight.w600, fontSize: 20.0, letterSpacing: 1.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
