import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/features/vocabulary_paragraph/widgets/contents/animated_vocabulary_paragraph_title_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyParagraphContentWidget extends StatefulWidget {
  const VocabularyParagraphContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyParagraphContentWidget> createState() => _VocabularyParagraphContentWidgetState();
}

class _VocabularyParagraphContentWidgetState extends State<VocabularyParagraphContentWidget> with SingleTickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;

  int totalMinutes = 1;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

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

  VocabularyExampleParagraph? _currentVocabularyExampleParagraph;

  bool isShow = false;

  // List<String> engWordList = [];
  // List<TextSpan> engWordWidgetSpan = [];

  double progressbarHeight = 0;

  double progressbarOpacity = 0;

  int totalSecondsConst = 28;

  bool isActiveTimer = false;

  @override
  void initState() {
    super.initState();

    totalSeconds = totalSecondsConst;

    limitedTimeProgressbarLength = widget.sizeDx * 0.9;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    _currentVocabularyExampleParagraph = VocabularyExampleParagraph();

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
      if ((_currentVocabularyExampleParagraph?.getEngSentenceSS01 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS01) ||
          (_currentVocabularyExampleParagraph?.getEngSentenceSS02 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS02) ||
          (_currentVocabularyExampleParagraph?.getEngSentenceSS03 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS03)) {
        setState(() {
          _currentVocabularyExampleParagraph?.setTitle(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getTitle, isPriorityOverride: true);
          _currentVocabularyExampleParagraph?.setEngSentenceSS01(
            value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS01,
            isPriorityOverride: true,
          );
          _currentVocabularyExampleParagraph?.setEngSentenceSS02(
            value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS02,
            isPriorityOverride: true,
          );
          _currentVocabularyExampleParagraph?.setEngSentenceSS03(
            value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS03,
            isPriorityOverride: true,
          );

          if ((_currentVocabularyExampleParagraph?.getEngSentenceSS01?.isEmpty == true || _currentVocabularyExampleParagraph?.getEngSentenceSS01 == null) &&
              (_currentVocabularyExampleParagraph?.getEngSentenceSS02?.isEmpty == true || _currentVocabularyExampleParagraph?.getEngSentenceSS02 == null) &&
              (_currentVocabularyExampleParagraph?.getEngSentenceSS03?.isEmpty == true || _currentVocabularyExampleParagraph?.getEngSentenceSS03 == null)) {
            isShow = false;
            isActiveTimer = false;
            progressbarHeight = 0;
            progressbarOpacity = 0;
            totalSecondsConst = totalSecondsConst--;
            limitedTimeProgressbar = limitedTimeProgressbarLength;
          } else {
            isShow = true;
            isActiveTimer = true;
            totalSeconds = totalSecondsConst;

            wordWidgetSpan = [];

            wordListSS01 = (_currentVocabularyExampleParagraph?.getEngSentenceSS01 ?? '').split(' ');
            for (String word in wordListSS01) {
              if (word.contains('_')) {
                String trueWord = word.replaceAll('_', '');
                wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
              } else {
                wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
              }
            }

            wordListSS02 = (_currentVocabularyExampleParagraph?.getEngSentenceSS02 ?? '').split(' ');
            for (String word in wordListSS02) {
              if (word.contains('_')) {
                String trueWord = word.replaceAll('_', '');
                wordWidgetSpan.add(wordItem(word: trueWord, isNormal: false, isSpecial: true));
              } else {
                wordWidgetSpan.add(wordItem(word: word, isNormal: false, isSpecial: false));
              }
            }

            wordListSS03 = (_currentVocabularyExampleParagraph?.getEngSentenceSS03 ?? '').split(' ');
            for (String word in wordListSS03) {
              if (word.contains('_')) {
                String trueWord = word.replaceAll('_', '');
                wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
              } else {
                wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
              }
            }
          }
        });
      }
    })..start();
  }

  List<String> wordListSS01 = [];
  List<String> wordListSS02 = [];
  List<String> wordListSS03 = [];
  List<WidgetSpan> wordWidgetSpan = [];

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
              child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100), //
              top: 150.0,
              right: -50.0,
              width: 800.0,
              height: 125.0,
              child: AnimatedVocabularyParagraphTitleWidget(sizeDx: 800.0, sizeDy: 125.0), //
            ),

            Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              color: Colors.transparent,
              child: isShow
                  ? FadeInUp(
                      child: Stack(
                        alignment: AlignmentDirectional.center,

                        children: [
                          Positioned(
                            top: 220.0,
                            left: 0,
                            width: widget.sizeDx,
                            height: widget.sizeDy - 250.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                color: Colors.transparent,
                                width: widget.sizeDx,
                                height: widget.sizeDy - 250.0,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(15.0))),
                                  child: ShaderMask(
                                    blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
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
                                    child: Container(
                                      padding: EdgeInsets.all(0),
                                      width: widget.sizeDx,
                                      height: widget.sizeDy,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(width: 0, color: Colors.transparent),
                                      ),
                                      child: Stack(
                                        children: [
                                          AnimatedPositioned(
                                            duration: const Duration(milliseconds: 100),
                                            top: 10.0,
                                            left: 10.0,
                                            child: Container(
                                              width: widget.sizeDx,
                                              height: widget.sizeDy,
                                              decoration: BoxDecoration(color: Colors.transparent),
                                              child: Padding(
                                                padding: const EdgeInsets.all(50.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection: Axis.vertical,

                                                  child: Text.rich(TextSpan(style: TextStyle(fontSize: 20, height: 1.0), children: wordWidgetSpan)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                          Positioned(
                            top: 220.0,
                            left: 0,
                            width: widget.sizeDx,
                            height: widget.sizeDy - 250.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                color: Colors.transparent,
                                width: widget.sizeDx,
                                height: widget.sizeDy - 250.0,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(15.0))),
                                  child: ShaderMask(
                                    blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
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
                                    child: Container(
                                      padding: EdgeInsets.all(0),
                                      width: widget.sizeDx,
                                      height: widget.sizeDy,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(width: 0, color: Colors.transparent),
                                      ),
                                      child: Stack(
                                        children: [
                                          AnimatedPositioned(
                                            duration: const Duration(milliseconds: 100),
                                            top: 10.0,
                                            left: 10.0,
                                            child: Container(
                                              width: widget.sizeDx,
                                              height: widget.sizeDy,
                                              decoration: BoxDecoration(color: Colors.transparent),
                                              child: Padding(
                                                padding: const EdgeInsets.all(50.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection: Axis.vertical,

                                                  child: Text.rich(TextSpan(style: TextStyle(fontSize: 20, height: 1.0), children: wordWidgetSpan)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),

            AnimatedPositioned(
              bottom: 60.0,
              right: 30.0,
              width: 300.0,
              height: 50.0,
              duration: const Duration(milliseconds: 100),
              child: Container(
                color: Colors.transparent,
                width: 185.0,
                height: 35.0,
                child: Text(
                  _currentVocabularyExampleParagraph?.getTitle ?? '',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.concertOne(color: Color(0xFF3CB371).withValues(alpha: 0.8), fontWeight: FontWeight.w600, fontSize: 25.0, letterSpacing: 1.1),
                ),
              ),
            ),

            AnimatedPositioned(
              bottom: 30.0,
              left: (widget.sizeDx * 0.1) / 2,
              width: widget.sizeDx * 0.9,
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
          ],
        ),
      ),
    );
  }

  WidgetSpan wordItem({required String word, required bool? isNormal, required bool? isSpecial}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Container(
          margin: const EdgeInsets.only(top: 2.0, bottom: 2.0),
          decoration: BoxDecoration(
            color: isNormal == true
                ? Color(0xFFFFFFFF).withValues(alpha: 0.8)
                : isSpecial == true
                ? Color(0xFF00BFFF).withValues(alpha: 1.0)
                : Color(0xFFFFFF00).withValues(alpha: 1.0), //
          ),
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Text(
            word,
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFF000000)),
            ),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
