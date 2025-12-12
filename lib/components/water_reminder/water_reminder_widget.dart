import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterReminderWidget extends StatefulWidget {
  const WaterReminderWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<WaterReminderWidget> createState() => _WaterReminderWidgetState();
}

class _WaterReminderWidgetState extends State<WaterReminderWidget> {
  Timer? _timer;

  int minute = 0;
  double second = 0;

  double sizeDx = 0;

  @override
  void initState() {
    super.initState();

    second = 600;

    sizeDx = widget.sizeDx - 30;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        if (second > 0) {
          second -= 1;

          sizeDx = (widget.sizeDx - 30) / 600 * second;

          setState(() {});
        } else {
          second = 600;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          // BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2)
          BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 2, spreadRadius: 1, offset: Offset(0, 0)),
        ],
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 0,
            left: 0,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                // color: Color(0xFFFFFFFF),
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 15.0, color: Colors.black),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 15.0,
            left: 15.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 10),
              width: sizeDx,
              height: widget.sizeDy - 30.0,
              decoration: BoxDecoration(
                color: Color(0xFF00F5FF),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 10.0,
            left: 10.0,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    text: TextSpan(
                      style: GoogleFonts.bungee(
                        textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Nhớ uống nước bạn nhé!',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                        ),
                      ],
                    ),
                  ),

                  RichText(
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    text: TextSpan(
                      style: GoogleFonts.bungee(
                        textStyle: const TextStyle(color: Color(0xFF4C4C4C)),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Remember to drink water!',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
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
    );
  }
}
