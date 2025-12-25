import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyExampleSentenceWidget extends StatefulWidget {
  const VocabularyExampleSentenceWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyExampleSentenceWidget> createState() => _VocabularyExampleSentenceWidget();
}

class _VocabularyExampleSentenceWidget extends State<VocabularyExampleSentenceWidget> with SingleTickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;

  int totalMinutes = 1;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 2000;

  int up = 100;
  double down = 0.01;

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _currentVocabularyItem;
  VocabularyItem? get getCurrentVocabularyItem => _currentVocabularyItem;
  void setCurrentVocabularyItem({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItem = value;
    } else {
      _currentVocabularyItem ??= value;
    }

    return;
  }

  VocabularyExampleSentence? _currentVocabularyExampleSentence;

  bool isShow = false;

  List<String> engWordList = [];
  List<TextSpan> engWordWidgetSpan = [];

  double progressbarHeight = 0;

  double progressbarOpacity = 0;

  int totalSecondsConst = 38;

  bool isActiveTimer = false;

  @override
  void initState() {
    super.initState();

    totalSeconds = totalSecondsConst;

    limitedTimeProgressbarLength = widget.sizeDx * 0.76 - 25.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    _currentVocabularyExampleSentence = VocabularyExampleSentence();

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalSeconds == totalSecondsConst) {
          progressbarOpacity = 1;
        } else if (totalSeconds == 0) {
          setState(() {
            progressbarOpacity = 0;
          });
        }

        if (isActiveTimer == true) {
          if (totalSeconds > 0) {
            totalSeconds -= 1;

            limitedTimeProgressbar = (limitedTimeProgressbarLength / totalSecondsConst) * totalSeconds;

            setState(() {});
          }
        }
      });
    });

    _ticker = createTicker((Duration elapsed) {
      if (_currentVocabularyExampleSentence?.getEngSentence != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.getEngSentence) {
        setState(() {
          _currentVocabularyExampleSentence?.setTitle(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.getTitle, isPriorityOverride: true);
          _currentVocabularyExampleSentence?.setEngSentence(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.getEngSentence, isPriorityOverride: true);
          _currentVocabularyExampleSentence?.setVieSentence(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.getVieSentence, isPriorityOverride: true);

          if (_currentVocabularyExampleSentence?.getEngSentence?.isEmpty == true || _currentVocabularyExampleSentence?.getEngSentence == null) {
            isShow = false;
            isActiveTimer = false;
            progressbarHeight = 0;
            progressbarOpacity = 0;
            totalSecondsConst = totalSecondsConst--;
            limitedTimeProgressbar = limitedTimeProgressbarLength;

            onPlaySFXVocabularyExampleDisappear();
          } else {
            isShow = true;
            isActiveTimer = true;
            totalSeconds = totalSecondsConst;

            engWordWidgetSpan = [];
            engWordList = (_currentVocabularyExampleSentence?.getEngSentence ?? '').split(' ');
            for (int index = 0; index < engWordList.length; index++) {
              if (engWordList[index].contains('_')) {
                String trueWord = engWordList[index].replaceAll('_', '');
                engWordWidgetSpan.add(wordItem(word: ' $trueWord', isNormal: false, isSpecial: true));
              } else {
                if (engWordList[index] == '.' || index == 0) {
                  engWordWidgetSpan.add(wordItem(word: engWordList[index], isNormal: true, isSpecial: false));
                } else if (index > 0) {
                  engWordWidgetSpan.add(wordItem(word: ' ${engWordList[index]}', isNormal: true, isSpecial: false));
                }
              }
            }

            onPlaySFXVocabularyExampleAppear();
          }
        });
      }
    })..start();
  }

  onPlaySFXVocabularyExampleAppear() {
    FlameAudio.play('sfx/text_appear/vocabulary_example_sentence_appear.mp3', volume: 0.7);
  }
  onPlaySFXVocabularyExampleDisappear() {
    FlameAudio.play('sfx/text_appear/vocabulary_example_disappear.mp3', volume: 0.5);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getCurrentVocabularyItem?.getVocabularyDataModel?.getIsShowExampleOnSide == false
        ? Container()
        : Container(
            width: widget.sizeDx,
            height: widget.sizeDy,
            decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
              child: Container(
                width: widget.sizeDx,
                height: widget.sizeDy,
                color: Colors.transparent,
                child: isShow
                    ? FadeInUp(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 100),
                              bottom: widget.sizeDy * 0.015,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.25 - 10.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.25 - 10.0 : null,
                              width: widget.sizeDx * 0.75 - 3.0,
                              height: widget.sizeDy * 0.15 + 30.0,
                              child: Container(
                                // width: widget.sizeDx * 0.65,
                                // height: widget.sizeDy * 0.16,
                                height: widget.sizeDy * 0.15 + 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                                  border: Border.all(width: 8.0, color: Color(0xFF2C2C2C).withValues(alpha: 0.75)),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RichText(
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,

                                        maxLines: 2,
                                        text: TextSpan(
                                          style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 40.0),
                                          children: [
                                            TextSpan(
                                              text: _currentVocabularyExampleSentence?.getVieSentence ?? '',

                                              // style: GoogleFonts.sansitaSwashed(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0), // ok
                                              style: GoogleFonts.agbalumo(color: Color(0xFF838B83), fontWeight: FontWeight.w100, fontSize: 42.0, height: 1.3), // ok
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
                              bottom: widget.sizeDy * 0.15 + 30.0,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.22 - 5.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.22 - 5.0 : null,
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
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,

                                      maxLines: 2,
                                      text: TextSpan(
                                        style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 35.0),

                                        children: engWordWidgetSpan,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            AnimatedPositioned(
                              bottom: widget.sizeDy * 0.15 + 8.0 + 30.0,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.22 + 20.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.22 - 10.0 : null,
                              width: widget.sizeDx * 0.78 - 25.0,
                              height: 6.0,
                              duration: const Duration(milliseconds: 10),
                              child: Row(
                                children: [
                                  Opacity(
                                    opacity: progressbarOpacity,
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 1000),
                                      width: limitedTimeProgressbar,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(width: 1.0, color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            AnimatedPositioned(
                              // bottom: widget.sizeDy * 0.15 + 20.0 + 30.0,
                              bottom: widget.sizeDy * 0.15 + 30.0 + (widget.sizeDy * 0.20),
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true
                                  ? 30.0
                                  : getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true
                                  ? widget.sizeDx * 0.22 + 20.0
                                  : -1000,
                              width: 300.0,
                              height: 50.0,
                              duration: const Duration(milliseconds: 100),
                              child: Container(
                                color: Colors.transparent,
                                width: 185.0,
                                height: 35.0,
                                child: Text(
                                  _currentVocabularyExampleSentence?.getTitle ?? '',
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.concertOne(color: Color(0xFF3CB371).withValues(alpha: 0.65), fontWeight: FontWeight.w600, fontSize: 25.0, letterSpacing: 1.1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : FadeOutDown(
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 100),
                              bottom: widget.sizeDy * 0.015,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.25 - 10.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.25 - 10.0 : null,
                              width: widget.sizeDx * 0.75 - 3.0,
                              height: widget.sizeDy * 0.15 + 30.0,
                              child: Container(
                                // width: widget.sizeDx * 0.65,
                                // height: widget.sizeDy * 0.16,
                                height: widget.sizeDy * 0.15 + 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                                  border: Border.all(width: 8.0, color: Color(0xFF2C2C2C).withValues(alpha: 0.75)),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RichText(
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,

                                        maxLines: 2,
                                        text: TextSpan(
                                          style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 40.0),
                                          children: [
                                            TextSpan(
                                              text: _currentVocabularyExampleSentence?.getVieSentence ?? '',

                                              // style: GoogleFonts.sansitaSwashed(color: Color(0xFF1C1C1C), fontWeight: FontWeight.bold, fontSize: 40.0), // ok
                                              style: GoogleFonts.agbalumo(color: Color(0xFF838B83), fontWeight: FontWeight.w100, fontSize: 42.0, height: 1.3), // ok
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
                              bottom: widget.sizeDy * 0.15 + 30.0,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.22 - 5.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.22 - 5.0 : null,
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
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,

                                      maxLines: 2,
                                      text: TextSpan(
                                        style: GoogleFonts.robotoSlab(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 35.0),

                                        children: engWordWidgetSpan,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            AnimatedPositioned(
                              bottom: widget.sizeDy * 0.15 + 8.0 + 30.0,
                              left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? widget.sizeDx * 0.22 + 20.0 : null,
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? widget.sizeDx * 0.22 - 10.0 : null,
                              width: widget.sizeDx * 0.78 - 25.0,
                              height: 6,
                              duration: const Duration(milliseconds: 10),
                              child: Row(
                                children: [
                                  Opacity(
                                    opacity: progressbarOpacity,
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 1000),
                                      width: limitedTimeProgressbar,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(width: 1.0, color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            AnimatedPositioned(
                              // bottom: widget.sizeDy * 0.15 + 20.0 + 30.0,
                              bottom: widget.sizeDy * 0.15 + 30.0 + (widget.sizeDy * 0.20),
                              right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true
                                  ? 30.0
                                  : getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true
                                  ? widget.sizeDx * 0.22 + 20.0
                                  : -1000,
                              width: 300.0,
                              height: 50.0,
                              duration: const Duration(milliseconds: 100),
                              child: Container(
                                color: Colors.transparent,
                                width: 185.0,
                                height: 35.0,
                                child: Text(
                                  _currentVocabularyExampleSentence?.getTitle ?? '',
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.concertOne(color: Color(0xFF3CB371).withValues(alpha: 0.65), fontWeight: FontWeight.w600, fontSize: 25.0, letterSpacing: 1.1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          );
  }

  TextSpan wordItem({required String word, required bool? isNormal, required bool? isSpecial}) {
    Color textColor = Color(0xFF000000);
    Color backgroundColor = Color(0xFFFFFFFF);
    double textFontSize = 42.0;

    if (isNormal == true) {
      textColor = Color(0xFF000000);
      textFontSize = 42.0;
    } else if (isSpecial == true) {
      textColor = Color(0xFF4876FF);
      textFontSize = 43.0;
      backgroundColor = Color(0xFFFFFFE0);
    }

    return TextSpan(
      text: word,
      style: GoogleFonts.robotoSlab(
        backgroundColor: backgroundColor,
        textStyle: TextStyle(fontSize: textFontSize, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: textColor),
      ),
    );
  }
}
