import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyMainInformationWidget extends StatefulWidget {
  const VocabularyMainInformationWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyMainInformationWidget> createState() => _VocabularyMainInformationWidgetState();
}

class _VocabularyMainInformationWidgetState extends State<VocabularyMainInformationWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  Timer? _timer;

  int totalMinutes = 2;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

  final int totalSecondsConst = 25;

  @override
  void initState() {
    super.initState();

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    totalSeconds = totalSecondsConst;

    limitedTimeProgressbarLength = 1000.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalSeconds > 0) {
          totalSeconds -= 1;

          limitedTimeProgressbar = (limitedTimeProgressbarLength / totalSecondsConst) * totalSeconds;
          if (mounted) {
            setState(() {});
          }
        } else {
          totalSeconds = totalSecondsConst;
        }
      });

      _ticker = createTicker((Duration elapsed) {
        if (currentImageSource != getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificImage && getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificImage?.isNotEmpty == true) {
          currentImageSource = getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificImage ?? defaultImageSource;
        } else {
          if (currentImageSource.isEmpty == true) {
            currentImageSource = defaultImageSource;
          }
        }

        if (definitionString != getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaning && getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaning?.isNotEmpty == true) {
          setState(() {
            definitionString = getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaning ?? '';

            isShowDefinitionString = true;

            onPlaySFXVocabularyMainInformationAppear();
          });
        }

        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft != null || getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight != null) {
          if (isShowMainTitle == '[DEFAULT]') {
            setState(() {
              isShowMainTitle = '[SHOW]';
            });
          }
        }
      })..start();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), () {
        if (mounted) {
          if (currentImageSource.isNotEmpty == true) {
            setState(() {
              showImage = '[SHOW]';
              onPlaySFXImageAppear();
            });
          }
        }
      });

      Future.delayed(Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            bottomDefinitionTitle = -200.0;
          });
        }
      });

      Future.delayed(Duration(seconds: 27), () {
        if (mounted) {
          setState(() {
            showImage = '[HIDE]';
          });
        }
      });
    });
  }

  String definitionString = '';
  bool isShowDefinitionString = false;

  double bottomDefinitionTitle = 15.0;

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

  String defaultImageSource = 'assets/images/interesting_knowledge/knowledge_01.jpg';
  String currentImageSource = '';
  String showImage = '[DEFAULT]';

  String isShowMainTitle = '[DEFAULT]';

  final Random _random = Random();
  onPlaySFXVocabularyMainInformationAppear() {
    String nextSFX;
    nextSFX = sfxList[_random.nextInt(sfxList.length)];
    FlameAudio.play(nextSFX, volume: 0.15);
  }

  final List<String> sfxList = ['sfx/vocabulary_definition/vocabulary_definition_appear_a01.mp3', 'sfx/vocabulary_definition/vocabulary_definition_appear_a02.mp3'];

  onPlaySFXImageAppear() {
    FlameAudio.play('sfx/vocabulary_definition/image_appear.mp3', volume: 0.25);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        AnimatedPositioned(
          top: 200.0,
          left: 50.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'DEFINITION:'),
        ),

        AnimatedPositioned(
          top: 198.0,
          right: 0,
          height: 75.0,
          width: widget.sizeDx - 320.0,
          duration: const Duration(milliseconds: 100),
          child: ShaderMask(
            blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
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
                color: Color(0xFF000000).withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(2),
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          top: 200.0,
          right: 40.0,
          height: 75.0,
          width: widget.sizeDx - 320.0,
          duration: const Duration(milliseconds: 100),
          child: isShowDefinitionString
              ? FadeIn(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 1.0, 1.0, 10.0),
                    child: definitionWidget(word: definitionString),
                  ),
                )
              : Container(),
        ),

        // AnimatedPositioned(
        //   top: 320.0,
        //   left: 50.0,
        //   duration: const Duration(milliseconds: 100),
        //   child: title(word: 'SYNONYMS:'),
        // ),
        //
        // AnimatedPositioned(
        //   top: 440.0,
        //   left: 50.0,
        //   duration: const Duration(milliseconds: 100),
        //   child: title(word: 'COMMON COLLOCATIONS:'),
        // ),
        Positioned(
          bottom: 15.0,
          width: 1000.0,
          height: 500.0,
          left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? 15.0 : null,
          right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? 15.0 : null,
          child: showImage == '[SHOW]'
              ? BounceInUp(
                  child: Stack(
                    children: [
                      Container(
                        width: 1000.0,
                        height: 500.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                          border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                          image: DecorationImage(image: AssetImage(currentImageSource), fit: BoxFit.fitWidth),
                          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                        ),
                      ),
                      Container(
                        width: 1000.0,
                        height: 500.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        ),
                      ),

                      AnimatedPositioned(
                        bottom: 8.0,
                        left: 25.0,
                        width: 1000.0 - 50.0,
                        height: 6.0,
                        duration: const Duration(milliseconds: 100),
                        child: Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 1000),
                              width: limitedTimeProgressbar,
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(width: 1.0, color: Colors.transparent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : showImage == '[HIDE]'
              ? FadeOutDown(
                  child: Stack(
                    children: [
                      Container(
                        width: 1000.0,
                        height: 500.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                          border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                          image: DecorationImage(image: AssetImage(currentImageSource), fit: BoxFit.fitWidth),
                          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                        ),
                      ),
                      Container(
                        width: 1000.0,
                        height: 500.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ),

        isShowMainTitle == '[SHOW]'
            ? AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                left: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true ? 15.0 : null,
                right: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true ? 15.0 : null,
                bottom: bottomDefinitionTitle,
                height: 100.0,
                child: Container(
                  width: 500.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                    border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                    borderRadius: getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true
                        ? BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(15.0))
                        : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(0)),
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
                                        'Definition',
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
                                        'Definition',
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
              )
            : Container(),
      ],
    );
  }

  Widget title({required String word}) {
    return Text(
      word,
      style: GoogleFonts.squadaOne(
        textStyle: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFECECEC), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget definitionWidget({required String word}) {
    return Text(
      word,
      style: GoogleFonts.sriracha(
        textStyle: TextStyle(
          fontSize: 33.0, //
          fontWeight: FontWeight.w600, //
          fontStyle: FontStyle.normal, //
          color: Color(0xFFECECEC), //
          letterSpacing: 1.0, //
          // height: 1.3 //
        ),
      ),
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget partsOfSpeech({bool? isNoun, bool? isPronoun, bool? isVerb, bool? isAdjective, bool? isAdverb, bool? isPreposition, bool? isConjunction, bool? isInterjection}) {
    // bool isNoun = false; // (Danh từ)
    // bool isPronoun = false; // (Đại từ)
    // bool isVerb = false; // (Động từ)
    // bool isAdjective = false; // (Tính từ)
    // bool isAdverb = false; // (Trạng từ)
    // bool isPreposition = false; // (Giới từ)
    // bool isConjunction = false; // (Liên từ)
    // bool isInterjection = false; // (Thán từ)

    BoxDecoration? boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF7FFF00).withValues(alpha: 1.0), //
          Color(0xFF7FFF00).withValues(alpha: 0.5), //
          Color(0xFF7FFF00).withValues(alpha: 0), //
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );

    String? title = '';

    /// 1
    if (isNoun == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF7FFF00).withValues(alpha: 1.0), //
            Color(0xFF7FFF00).withValues(alpha: 0.5), //
            Color(0xFF7FFF00).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'noun';
    }

    /// 2
    if (isPronoun == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF00D67F).withValues(alpha: 1.0), //
            Color(0xFF00D67F).withValues(alpha: 0.5), //
            Color(0xFF00D67F).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'pronoun';
    }

    /// 3
    if (isVerb == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF8C00).withValues(alpha: 1.0), //
            Color(0xFFFF8C00).withValues(alpha: 0.5), //
            Color(0xFFFF8C00).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'verb';
    }

    /// 4
    if (isAdjective == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFDC143C).withValues(alpha: 1.0), //
            Color(0xFFDC143C).withValues(alpha: 0.5), //
            Color(0xFFDC143C).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'adj';
    }

    /// 5
    if (isAdverb == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF00BFFF).withValues(alpha: 1.0), //
            Color(0xFF00BFFF).withValues(alpha: 0.5), //
            Color(0xFF00BFFF).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'adv';
    }

    /// 6
    if (isPreposition == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF9F400).withValues(alpha: 1.0), //
            Color(0xFFF9F400).withValues(alpha: 0.5), //
            Color(0xFFF9F400).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'prep';
    }

    /// 7
    if (isConjunction == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF5A5A).withValues(alpha: 1.0), //
            Color(0xFFFF5A5A).withValues(alpha: 0.5), //
            Color(0xFFFF5A5A).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'conj';
    }

    /// 8
    if (isInterjection == true) {
      boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFC1FFC1).withValues(alpha: 1.0), //
            Color(0xFFC1FFC1).withValues(alpha: 0.5), //
            Color(0xFFC1FFC1).withValues(alpha: 0), //
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );

      title = 'interj';
    }

    return Container(
      width: 280.0,
      height: 100.0,
      decoration: boxDecoration,

      child: Stack(
        alignment: AlignmentDirectional.center,

        children: [
          Positioned(
            top: -2.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: GoogleFonts.concertOne(
                        textStyle: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5.0
                            ..color = Color(0xFF000000), // Màu viền
                          letterSpacing: 3,
                        ),
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -5.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: GoogleFonts.concertOne(
                        textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFECECEC), letterSpacing: 3),
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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

  WidgetSpan vocabWordItem({required String word}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3.0),
          decoration: BoxDecoration(
            color: Color(0xFFFF4040).withValues(alpha: 1.0),
            border: Border.all(color: Color(0xFF000000), width: 2),
            borderRadius: BorderRadius.circular(3),
          ),

          child: Stack(
            children: [
              Positioned(
                bottom: -1.0,
                left: 0,
                child: Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
              ),

              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          word,
                          style: GoogleFonts.titanOne(
                            textStyle: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 5.0
                                ..color = Color(0xFF000000), // Màu viền
                              letterSpacing: 3,
                            ),
                          ),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          word,
                          style: GoogleFonts.titanOne(
                            textStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFECECEC), letterSpacing: 3),
                          ),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
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
    );
  }
}
