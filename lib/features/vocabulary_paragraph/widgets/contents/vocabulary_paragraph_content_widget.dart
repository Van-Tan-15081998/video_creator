import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
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
  VocabularyExampleParagraph? get getCurrentVocabularyExampleParagraph => _currentVocabularyExampleParagraph;

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
        if (widget.systemStateManagement?.getVocabularyParagraphFeature?.checkConditionActiveByDirection() == true) {
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
        }
      });
    });

    _ticker = createTicker((Duration elapsed) {
      if (widget.systemStateManagement?.getVocabularyParagraphFeature?.checkConditionActiveByDirection() == true) {
        if ((getCurrentVocabularyExampleParagraph?.getEngSentenceSS01 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS01) ||
            (getCurrentVocabularyExampleParagraph?.getEngSentenceSS02 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS02) ||
            (getCurrentVocabularyExampleParagraph?.getEngSentenceSS03 != getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS03)) {
          setState(() {
            getCurrentVocabularyExampleParagraph?.setTitle(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS01, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS02, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getEngSentenceSS03, isPriorityOverride: true);

            getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getInsightVocabSS01, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getInsightVocabSS02, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getInsightVocabSS03, isPriorityOverride: true);
            getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.getInsightVocabSS04, isPriorityOverride: true);

            if ((getCurrentVocabularyExampleParagraph?.getEngSentenceSS01?.isEmpty == true || getCurrentVocabularyExampleParagraph?.getEngSentenceSS01 == null) &&
                (getCurrentVocabularyExampleParagraph?.getEngSentenceSS02?.isEmpty == true || getCurrentVocabularyExampleParagraph?.getEngSentenceSS02 == null) &&
                (getCurrentVocabularyExampleParagraph?.getEngSentenceSS03?.isEmpty == true || getCurrentVocabularyExampleParagraph?.getEngSentenceSS03 == null)) {
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

              wordListSS01 = (getCurrentVocabularyExampleParagraph?.getEngSentenceSS01 ?? '').split(' ');
              for (String word in wordListSS01) {
                if (word.contains('_')) {
                  String trueWord = word.replaceAll('_', '');
                  wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
                } else {
                  wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
                }
              }

              wordListSS02 = (getCurrentVocabularyExampleParagraph?.getEngSentenceSS02 ?? '').split(' ');
              for (String word in wordListSS02) {
                if (word.contains('_')) {
                  String trueWord = word.replaceAll('_', '');
                  wordWidgetSpan.add(wordItem(word: trueWord, isNormal: false, isSpecial: true));
                } else {
                  wordWidgetSpan.add(wordItem(word: word, isNormal: false, isSpecial: false));
                }
              }

              wordListSS03 = (getCurrentVocabularyExampleParagraph?.getEngSentenceSS03 ?? '').split(' ');
              for (String word in wordListSS03) {
                if (word.contains('_')) {
                  String trueWord = word.replaceAll('_', '');
                  wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
                } else {
                  wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
                }
              }
            }

            onPlaySFXVocabularyParagraphExampleAppear();
          });
        }
      }
    })..start();
  }

  List<String> wordListSS01 = [];
  List<String> wordListSS02 = [];
  List<String> wordListSS03 = [];
  List<WidgetSpan> wordWidgetSpan = [];

  onPlaySFXVocabularyParagraphExampleAppear() {
    FlameAudio.play('sfx/text_appear/vocabulary_paragraph_example_appear2.mp3', volume: 0.45);
  }

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
            // ClipRRect(
            //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
            //   child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            // ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              right: 15.0,
              top: 15.0,
              height: 100.0,
              child: Container(
                width: 500.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                  border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(15), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0)),
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
                                      'Paragraph',
                                      style: GoogleFonts.poetsenOne(
                                        textStyle: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 2.0
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
                                      'Paragraph',
                                      style: GoogleFonts.poetsenOne(
                                        textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
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
            ),

            // AnimatedPositioned(
            //   duration: const Duration(milliseconds: 100), //
            //   top: 150.0,
            //   right: -50.0,
            //   width: 800.0,
            //   height: 125.0,
            //   child: AnimatedVocabularyParagraphTitleWidget(sizeDx: 800.0, sizeDy: 125.0), //
            // ),
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
                                                padding: const EdgeInsets.all(30.0),
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
                                                padding: const EdgeInsets.all(30.0),
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
                  getCurrentVocabularyExampleParagraph?.getTitle ?? '',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.concertOne(color: Color(0xFF3CB371).withValues(alpha: 0.8), fontWeight: FontWeight.w600, fontSize: 25.0, letterSpacing: 1.1),
                ),
              ),
            ),

            AnimatedPositioned(
              bottom: 55.0,
              left: 40.0,
              width: widget.sizeDx - 350.0,
              height: 200.0,
              duration: const Duration(milliseconds: 100),
              child: BounceInUp(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: widget.sizeDx - 350.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                        border: Border.all(width: 5.0, color: Color(0xFF1C1C1C)),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                      ),
                    ),

                    // Container(
                    //   width: widget.sizeDx - 350.0,
                    //   height: 200.0,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(width: 12.0, color: Color(0xFF5C5C5C).withValues(alpha: 0.25)),
                    //     borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                    //   ),
                    // ),
                    Positioned(
                      top: 10.0,
                      left: 10.0,
                      width: (widget.sizeDx - 350.0) / 2 - 15.0,
                      height: 85.0,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                        width: (widget.sizeDx - 350.0) / 2 - 15.0,
                        height: 85.0,
                        // decoration: BoxDecoration(color: Color(0xFF1C1C1C).withValues(alpha: 0.85)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getCurrentVocabularyExampleParagraph?.getInsightVocabSS01 ?? '',
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(height: 1.5, fontSize: 20.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFD1EEEE).withValues(alpha: 1), letterSpacing: 1.2),
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      width: (widget.sizeDx - 350.0) / 2 - 15.0,
                      height: 85.0,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                        width: (widget.sizeDx - 350.0) / 2 - 15.0,
                        height: 85.0,
                        // decoration: BoxDecoration(color: Color(0xFF1C1C1C).withValues(alpha: 0.85)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getCurrentVocabularyExampleParagraph?.getInsightVocabSS02 ?? '',
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(height: 1.5, fontSize: 20.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFD1EEEE).withValues(alpha: 1), letterSpacing: 1.2),
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      width: (widget.sizeDx - 350.0) / 2 - 15.0,
                      height: 85.0,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                        width: (widget.sizeDx - 350.0) / 2 - 15.0,
                        height: 85.0,
                        // decoration: BoxDecoration(color: Color(0xFF1C1C1C).withValues(alpha: 0.85)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getCurrentVocabularyExampleParagraph?.getInsightVocabSS03 ?? '',
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(height: 1.5, fontSize: 20.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFD1EEEE).withValues(alpha: 1), letterSpacing: 1.2),
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 10.0,
                      width: (widget.sizeDx - 350.0) / 2 - 15.0,
                      height: 85.0,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                        width: (widget.sizeDx - 350.0) / 2 - 15.0,
                        height: 85.0,
                        // decoration: BoxDecoration(color: Color(0xFF1C1C1C).withValues(alpha: 0.85)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getCurrentVocabularyExampleParagraph?.getInsightVocabSS04 ?? '',
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(height: 1.5, fontSize: 20.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFD1EEEE).withValues(alpha: 1), letterSpacing: 1.2),
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
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
            // style: GoogleFonts.comfortaa(
            style: GoogleFonts.robotoSlab(
              textStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF000000)),
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
