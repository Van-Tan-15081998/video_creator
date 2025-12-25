import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyTitleContentWidget extends StatefulWidget {
  const VocabularyTitleContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyTitleContentWidget> createState() => _VocabularyTitleContentWidgetState();
}

class _VocabularyTitleContentWidgetState extends State<VocabularyTitleContentWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  bool isFullScreen = false;

  bool isCompleted = false;

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

  @override
  void initState() {
    super.initState();

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    _ticker = createTicker((Duration elapsed) {
      if (widget.systemStateManagement?.getVocabularyTitleFeature?.checkConditionActiveByDirection() == true) {
        if (wordString != getCurrentVocabularyItem?.getVocabularyDataModel?.getWord && getCurrentVocabularyItem?.getVocabularyDataModel?.getWord?.isNotEmpty == true) {
          setState(() {
            wordString = getCurrentVocabularyItem?.getVocabularyDataModel?.getWord ?? '';
            isShowWord = true;
            isShowSimplifyType = false;

            _isNoun = false;
            _isPronoun = false;
            _isVerb = false;
            _isAdjective = false;
            _isAdverb = false;
            _isPreposition = false;
            _isConjunction = false;
            _isInterjection = false;
            _isOtherType = false;

            onPlaySFXVocabularyTitleContentAppear();
          });
        }

        if (isShowSimplifyType != getCurrentVocabularyItem?.getVocabularyDataModel?.getIsSimplifyType) {
          setState(() {
            isShowSimplifyType = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsSimplifyType ?? false;

            if (isShowSimplifyType == true) {
              isShowFullType = '[HIDE]';
            }
          });
        }

        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsNoun == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsNoun != _isNoun) {
          setState(() {
            _isNoun = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsNoun;

            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPronoun == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPronoun != _isPronoun) {
          setState(() {
            _isPronoun = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPronoun;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsVerb == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsVerb != _isVerb) {
          setState(() {
            _isVerb = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsVerb;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdjective == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdjective != _isAdjective) {
          setState(() {
            _isAdjective = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdjective;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdverb == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdverb != _isAdverb) {
          setState(() {
            _isAdverb = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsAdverb;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPreposition == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPreposition != _isPreposition) {
          setState(() {
            _isPreposition = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsPreposition;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsConjunction == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsConjunction != _isConjunction) {
          setState(() {
            _isConjunction = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsConjunction;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsInterjection == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsInterjection != _isInterjection) {
          setState(() {
            _isInterjection = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsInterjection;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
        if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsOtherType == true && getCurrentVocabularyItem?.getVocabularyDataModel?.getIsOtherType != _isOtherType) {
          setState(() {
            _isOtherType = getCurrentVocabularyItem?.getVocabularyDataModel?.getIsOtherType;
            if (isShowSimplifyType == false) {
              isShowFullType = '[SHOW]';
            }

            onPlaySFXVocabularyTitleContentAppear();
          });
          return;
        }
      }
    })..start();

    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  String wordString = '';
  bool isShowWord = false;
  // bool isShowType = false;
  String isShowFullType = '[DEFAULT]';
  bool isShowSimplifyType = false;

  bool? _isNoun = false;
  bool? _isPronoun = false;
  bool? _isVerb = false;
  bool? _isAdjective = false;
  bool? _isAdverb = false;
  bool? _isPreposition = false;
  bool? _isConjunction = false;
  bool? _isInterjection = false;
  bool? _isOtherType = false;

  final Random _random = Random();

  onPlaySFXVocabularyTitleContentAppear() {
    String nextSFX;
    nextSFX = sfxList[_random.nextInt(sfxList.length)];
    FlameAudio.play(nextSFX, volume: 0.15);
  }

  final List<String> sfxList = [
    'sfx/vocabulary_definition/vocabulary_definition_appear_01.mp3',
    'sfx/vocabulary_definition/vocabulary_definition_appear_02.mp3',
    'sfx/vocabulary_definition/vocabulary_definition_appear_03.mp3',
    'sfx/vocabulary_definition/vocabulary_definition_appear_04.mp3',
    'sfx/vocabulary_definition/vocabulary_definition_appear_05.mp3',
  ];

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        AnimatedPositioned(
          top: 40.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: isShowWord
              ? FadeIn(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 20, height: 1.0),
                      children: [
                        vocabWordItem(word: wordString),
                        isShowSimplifyType
                            ? simplifyPartsOfSpeechWidgetSpan(isNoun: _isNoun, isPronoun: _isPronoun, isVerb: _isVerb, isAdjective: _isAdjective, isAdverb: _isAdverb, isPreposition: _isPreposition, isConjunction: _isConjunction, isInterjection: _isInterjection)
                            : WidgetSpan(child: Container()),
                      ],
                    ),
                  ),
                )
              : Container(),
        ),

        AnimatedPositioned(
          top: 40.0,
          right: 40.0,
          duration: const Duration(milliseconds: 100),
          child: isShowFullType == '[SHOW]'
              ? FadeIn(
                  child: partsOfSpeech(isNoun: _isNoun, isPronoun: _isPronoun, isVerb: _isVerb, isAdjective: _isAdjective, isAdverb: _isAdverb, isPreposition: _isPreposition, isConjunction: _isConjunction, isInterjection: _isInterjection),
                )
              : isShowFullType == '[HIDE]'
              ? FadeOut(
                  child: partsOfSpeech(isNoun: _isNoun, isPronoun: _isPronoun, isVerb: _isVerb, isAdjective: _isAdjective, isAdverb: _isAdverb, isPreposition: _isPreposition, isConjunction: _isConjunction, isInterjection: _isInterjection),
                )
              : Container(),
        ),
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

    return SizedBox(
      width: 280.0,
      height: 90.0,

      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0), bottomRight: Radius.circular(8.0), bottomLeft: Radius.circular(8.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,

          children: [
            Positioned(
              width: 280.0,
              height: 160.0,
              child: SizedBox(
                width: 280.0,
                height: 160.0,
                child: ShaderMask(
                  blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
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
                        Colors.white.withValues(alpha: 0.05),
                        Colors.transparent,
                        Colors.transparent, // Hoàn toàn biến mất bên phải
                      ],
                      stops: [0.64, 0.67, 0.70, 0.73, 0.76, 0.79, 0.82, 0.85, 0.88, 0.81, 0.94, 0.97, 1.0],
                    ).createShader(bounds);
                  },
                  child: Opacity(
                    opacity: 0.65,
                    child: SizedBox(
                      width: 280.0,
                      height: 90.0,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                          child: Container(
                            width: 280.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/colorful/parts_of_speech_02.jpg'), fit: BoxFit.fitWidth),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(width: 280.0, height: 100.0, child: Container(width: 280.0, height: 160.0, decoration: boxDecoration)),

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
      ),
    );
  }

  Widget simplifyPartsOfSpeech({bool? isNoun, bool? isPronoun, bool? isVerb, bool? isAdjective, bool? isAdverb, bool? isPreposition, bool? isConjunction, bool? isInterjection}) {
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
    Color titleColor = Color(0xFFFFFFFF);

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

      title = 'n';
      titleColor = Color(0xFF7FFF00);
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

      title = 'pron';
      titleColor = Color(0xFF00D67F);
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

      title = 'v';
      titleColor = Color(0xFFFF8C00);
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
      titleColor = Color(0xFFDC143C);
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
      titleColor = Color(0xFF00BFFF);
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
      titleColor = Color(0xFFF9F400);
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
      titleColor = Color(0xFFFF5A5A);
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
      titleColor = Color(0xFFC1FFC1);
    }

    return SizedBox(
      width: 280.0,
      height: 100.0,

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
                        textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: titleColor, letterSpacing: 3),
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

  WidgetSpan simplifyPartsOfSpeechWidgetSpan({bool? isNoun, bool? isPronoun, bool? isVerb, bool? isAdjective, bool? isAdverb, bool? isPreposition, bool? isConjunction, bool? isInterjection}) {
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
    Color titleColor = Color(0xFFFFFFFF);

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

      title = 'n';
      titleColor = Color(0xFF7FFF00);
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

      title = 'pron';
      titleColor = Color(0xFF00D67F);
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

      title = 'v';
      titleColor = Color(0xFFFF8C00);
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
      titleColor = Color(0xFFDC143C);
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
      titleColor = Color(0xFF00BFFF);
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
      titleColor = Color(0xFFF9F400);
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
      titleColor = Color(0xFFFF5A5A);
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
      titleColor = Color(0xFFC1FFC1);
    }

    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: FadeInRight(
        child: ClipRect(
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withValues(alpha: 0),
              border: Border.all(color: Color(0xFF000000).withValues(alpha: 0), width: 2),
              borderRadius: BorderRadius.circular(3),
            ),

            child: Stack(
              children: [
                // Positioned(
                //   bottom: -1.0,
                //   left: 0,
                //   child: Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
                // ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            '(',
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.normal,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5.0
                                  ..color = Color(0xFF1C1C1C), // Màu viền
                                letterSpacing: 3,
                              ),
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(width: 3.0, height: 5.0),
                        Flexible(
                          child: Text(
                            title,
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                fontSize: 35.0,
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
                        SizedBox(width: 3.0, height: 5.0),
                        Flexible(
                          child: Text(
                            ')',
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.normal,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5.0
                                  ..color = Color(0xFF1C1C1C), // Màu viền
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
                            '(',
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 3),
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(width: 3.0, height: 5.0),
                        Flexible(
                          child: Text(
                            title,
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: titleColor, letterSpacing: 3),
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(width: 3.0, height: 5.0),
                        Flexible(
                          child: Text(
                            ')',
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 3),
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
