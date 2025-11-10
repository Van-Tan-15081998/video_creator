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
  @override
  void initState() {
    super.initState();
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
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            bottom: widget.sizeDy * 0.045,
            left: widget.sizeDx * 0.32,
            width: widget.sizeDx * 0.65,
            height: widget.sizeDy * 0.13,
            child: Container(
              // width: widget.sizeDx * 0.65,
              height: widget.sizeDy * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 3.0, 3.0, 6.0),
                    child: RichText(
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,


                      maxLines: 2,
                      text: TextSpan(
                        style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 35.0),
                        children: [
                          TextSpan(
                            text: 'Cô ấy rất tỉ mỉ trong công việc, kiểm tra từng chi tiết hai lần.',
                            // style: GoogleFonts.comfortaa(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 30),
                            // style: GoogleFonts.blackOpsOne(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 30),
                            // style: GoogleFonts.agbalumo(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.tiltNeon(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.coiny(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.protestStrike(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            // style: GoogleFonts.alumniSansInlineOne(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 35.0),
                            style: GoogleFonts.sriracha(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35.0),
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
            left: widget.sizeDx * 0.25,
            width: widget.sizeDx * 0.7,
            height: widget.sizeDy * 0.15,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              width: widget.sizeDx * 0.7,
              height: widget.sizeDy * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 6.0, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text: TextSpan(
                      style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 35.0),
                      children: [
                        TextSpan(
                          text: 'She is ',
                          style: GoogleFonts.robotoSlab(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        TextSpan(
                          text: 'meticulous ',
                          style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 38),
                        ),
                        TextSpan(
                          text: 'in her work, checking every detail twice.',
                          style: GoogleFonts.robotoSlab(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
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
