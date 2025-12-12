import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyWidget extends StatefulWidget {
  const VocabularyWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyWidget> createState() => _VocabularyWidgetState();
}

class _VocabularyWidgetState extends State<VocabularyWidget> {
  Timer? _timer;

  bool isActivatingGroupA = false;
  bool isActivatingGroupB = false;
  bool isActivatingGroupC = false;
  bool isActivatingGroupD = false;
  bool isActivatingGroupE = false;
  bool isActivatingGroupF = false;
  bool isActivatingGroupG = false;
  bool isActivatingGroupH = false;
  bool isActivatingGroupI = false;
  bool isActivatingGroupJ = false;
  bool isActivatingGroupK = false;
  bool isActivatingGroupL = false;
  bool isActivatingGroupM = false;
  bool isActivatingGroupN = false;
  bool isActivatingGroupO = false;
  bool isActivatingGroupP = false;
  bool isActivatingGroupQ = false;
  bool isActivatingGroupR = false;
  bool isActivatingGroupS = false;
  bool isActivatingGroupT = false;
  bool isActivatingGroupU = false;
  bool isActivatingGroupV = false;
  bool isActivatingGroupW = false;
  bool isActivatingGroupX = false;
  bool isActivatingGroupY = false;
  bool isActivatingGroupZ = false;

  int counter = 0;

  int multiple = 0;

  resetActive() {
    isActivatingGroupA = false;
    isActivatingGroupB = false;
    isActivatingGroupC = false;
    isActivatingGroupD = false;
    isActivatingGroupE = false;
    isActivatingGroupF = false;
    isActivatingGroupG = false;
    isActivatingGroupH = false;
    isActivatingGroupI = false;
    isActivatingGroupJ = false;
    isActivatingGroupK = false;
    isActivatingGroupL = false;
    isActivatingGroupM = false;
    isActivatingGroupN = false;
    isActivatingGroupO = false;
    isActivatingGroupP = false;
    isActivatingGroupQ = false;
    isActivatingGroupR = false;
    isActivatingGroupS = false;
    isActivatingGroupT = false;
    isActivatingGroupU = false;
    isActivatingGroupV = false;
    isActivatingGroupW = false;
    isActivatingGroupX = false;
    isActivatingGroupY = false;
    isActivatingGroupZ = false;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        counter++;

        if (counter == 1) {
          resetActive();

          isActivatingGroupA = true;

          setState(() {});
        } else if (counter == 10 * 2) {
          resetActive();
          isActivatingGroupB = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 3) {
          resetActive();
          isActivatingGroupC = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 4) {
          resetActive();
          isActivatingGroupD = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 5) {
          resetActive();
          isActivatingGroupE = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 6) {
          resetActive();
          isActivatingGroupF = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 7) {
          resetActive();
          isActivatingGroupG = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 8) {
          resetActive();
          isActivatingGroupH = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 9) {
          resetActive();
          isActivatingGroupI = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 10) {
          resetActive();
          isActivatingGroupJ = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 11) {
          resetActive();
          isActivatingGroupK = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 12) {
          resetActive();
          isActivatingGroupL = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 13) {
          resetActive();
          isActivatingGroupM = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 14) {
          resetActive();
          isActivatingGroupN = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 15) {
          resetActive();
          isActivatingGroupO = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 16) {
          resetActive();
          isActivatingGroupP = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 17) {
          resetActive();
          isActivatingGroupQ = true;
          multiple++;

          setState(() {});
        } else if (counter == 10 * 18) {
          resetActive();
          isActivatingGroupR = true;

          setState(() {});
        } else if (counter == 10 * 19) {
          resetActive();
          isActivatingGroupS = true;

          setState(() {});
        } else if (counter == 10 * 20) {
          resetActive();
          isActivatingGroupT = true;

          setState(() {});
        } else if (counter == 10 * 21) {
          resetActive();
          isActivatingGroupU = true;

          setState(() {});
        } else if (counter == 10 * 22) {
          resetActive();
          isActivatingGroupV = true;

          setState(() {});
        } else if (counter == 10 * 23) {
          resetActive();
          isActivatingGroupW = true;

          setState(() {});
        } else if (counter == 10 * 24) {
          resetActive();
          isActivatingGroupX = true;

          setState(() {});
        } else if (counter == 10 * 25) {
          resetActive();
          isActivatingGroupY = true;

          setState(() {});
        } else if (counter == 10 * 26) {
          resetActive();
          isActivatingGroupZ = true;

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
            left: ((widget.sizeDx - 15.0) * 3.0 / 30.0) * multiple * (-1),
            width: (widget.sizeDx - 15.0) * 3.0,
            height: widget.sizeDy * 0.15,
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: (widget.sizeDx - 15.0) * 3.0,
              height: widget.sizeDy * 0.15,
              color: Colors.transparent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupA ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'a',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupB ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'b',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupC ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'c',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupD ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'd',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupE ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'e',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupF ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'f',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupG ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'g',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupH ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'h',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupI ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'i',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupJ ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'j',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupK ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'k',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupL ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'l',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupM ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'm',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupN ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'n',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupO ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'o',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupP ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'p',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupQ ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'q',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupR ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'r',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupS ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              's',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupT ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              't',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupU ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'u',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupV ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'v',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupW ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'w',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupX ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'x',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupY ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'y',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: ((widget.sizeDx - 15.0) * 3.0) / 30.0 * 1.0,
                      height: widget.sizeDy * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: isActivatingGroupZ ? Color(0xFF00FF7F) : Colors.white,
                            border: Border.all(width: 2.0, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              'z',
                              style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(color: Color(0xFF1C1C1C)),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
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
            width: widget.sizeDx - (widget.sizeDx * 0.3 + 30.0),
            height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
            duration: const Duration(milliseconds: 100),
            child: Container(
              width: widget.sizeDx - (widget.sizeDx * 0.3 + 30.0),
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
                    width: widget.sizeDx - (widget.sizeDx * 0.3 + 30.0),
                    height: widget.sizeDy - (widget.sizeDy * 0.15),
                    child: Container(
                      width: widget.sizeDx - (widget.sizeDx * 0.3 + 30.0),
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
                                style: TextStyle(fontSize: 20, height: 1.8),
                                children: [
                                  // TextSpan(
                                  //   text: 'enjoy ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFF00F5FF)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'laugh ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFF7FFFD4)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'happiness ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFF54FF9F)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'fun ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFF00FF7F)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'fulfill ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFC0FF3E)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'happy ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFFF68F)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'blissful ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFFFF00)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'satisfied ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFFC125)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'glad ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFF6A6A)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'delighted ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFF7F24)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'cheerful ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFF3030)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'joyful ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFFA500)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'thankful ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFF4500)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  // TextSpan(
                                  //   text: 'honor ',
                                  //   style: GoogleFonts.coiny(
                                  //     textStyle: const TextStyle(color: Color(0xFFFF3E96)),
                                  //     fontSize: 30.0,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // ),
                                  TextSpan(
                                    text: 'pleasure ',
                                    style: GoogleFonts.coiny(
                                      textStyle: const TextStyle(color: Color(0xFFE066FF)),
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle, // ✅ Căn giữa theo chiều dọc
                                    child: Container(
                                      // height: 50.0,
                                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFF00),
                                        border: Border.all(color: Color(0xFFFFF68F), width: 1),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Text(
                                        'self-satisfied',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.coiny(
                                          textStyle: const TextStyle(color: Colors.black),
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.w800,
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
