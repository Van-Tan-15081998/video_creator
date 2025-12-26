import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/helpful_study_advice_animated_background_widget.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpfulStudyAdviceDetailWidget extends StatefulWidget {
  const HelpfulStudyAdviceDetailWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<HelpfulStudyAdviceDetailWidget> createState() => _HelpfulStudyAdviceDetailWidgetState();
}

class _HelpfulStudyAdviceDetailWidgetState extends State<HelpfulStudyAdviceDetailWidget> with SingleTickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;

  int totalMinutes = 2;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

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

  final int totalSecondsConst = 48;

  @override
  void initState() {
    super.initState();

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    totalSeconds = totalSecondsConst;

    limitedTimeProgressbarLength = widget.sizeDx - 50.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalSeconds > 0) {
          totalSeconds -= 1;

          limitedTimeProgressbar = (limitedTimeProgressbarLength / totalSecondsConst) * totalSeconds;

          setState(() {});
        } else {
          totalSeconds = totalSecondsConst;
          widget.systemStateManagement?.getHelpfulStudyAdviceFeature?.onDeactivateWindow();
        }
      });

      _ticker = createTicker((Duration elapsed) {
        // if (englishDefinitionString != getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng &&
        //     getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng?.isNotEmpty == true) {
        //   setState(() {
        //     englishDefinitionString = getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng ?? '';
        //     pronunciationUK = getCurrentVocabularyItem?.getVocabularyDataModel?.getPronunciationUK ?? '';
        //     pronunciationUS = getCurrentVocabularyItem?.getVocabularyDataModel?.getPronunciationUS ?? '';
        //
        //     ///
        //     englishDefinitionStringList = [];
        //     englishDefinitionWidgetSpan = [];
        //     englishDefinitionStringList = englishDefinitionString.split(' ');
        //     for (String word in englishDefinitionStringList) {
        //       if (word.contains('_')) {
        //         String trueWord = word.replaceAll('_', '');
        //         englishDefinitionWidgetSpan.add(englishDefinitionWordItem(word: trueWord));
        //       } else {
        //         englishDefinitionWidgetSpan.add(englishDefinitionWordItem(word: word));
        //       }
        //     }
        //   });
        // }
      })..start();
    });
  }

  List<String> englishDefinitionStringList = [];
  List<WidgetSpan> englishDefinitionWidgetSpan = [];
  String englishDefinitionString = '';

  String pronunciationUK = '';
  String pronunciationUS = '';

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
        Container(
          padding: EdgeInsets.all(0),
          width: widget.sizeDx,
          height: widget.sizeDy,

          decoration: BoxDecoration(
            color: Color(0xFF002200).withValues(alpha: 0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            border: Border.all(width: 15.0, color: Colors.black),
            boxShadow: [
              // Bóng tối (dưới phải)
              // BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0)),
            ],
            image: DecorationImage(image: AssetImage('assets/images/background/background_07.jpg'), fit: BoxFit.fitWidth),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const TransparentEffectWallWidgetLight(sizeDx: 2000.0, sizeDy: 1000.0),

              Positioned(
                // top: 0,
                // left: 0,
                width: widget.sizeDx * 2,
                height: widget.sizeDx * 2,
                child: Container(
                  color: Color(0xFF00FF00).withValues(alpha: 0),
                  // color: Color(0xFF00FF00).withValues(alpha: 0.99),
                  child: ShaderMask(
                    blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white,
                          Colors.transparent, // Hoàn toàn biến mất bên phải
                        ],
                        stops: [0.65, 1.0],
                      ).createShader(bounds);
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(color: Color(0xFF1C1C1C).withValues(alpha: 0.1)),
                        // GameWidget(
                        //   // game: AnimatedBackgroundWidget(chieuCaoManHinhPhiVatLy: widget.sizeDy * 2.5, chieuRongManHinhPhiVatLy: widget.sizeDx * 2.5),
                        //   game: AnimatedBackgroundWidget(chieuCaoManHinhPhiVatLy: 3500.0, chieuRongManHinhPhiVatLy: 3500.0),
                        // ),
                        const HelpfulStudyAdviceAnimatedBackgroundWidget(sizeDx: 3500.0, sizeDy: 3500.0),
                        // Container(color: Color(0xFFFFFFFF).withValues(alpha: 0.65)),
                        // Container(color: Color(0xFFFFFFFF).withValues(alpha: 0.15)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          top: 140.0,
          left: 30.0,
          width: widget.sizeDx - 60.0,
          height: 200.0,
          child: Container(
            // width: widget.sizeDx * 0.65,
            height: widget.sizeDy * 0.15,
            decoration: BoxDecoration(
              // color: Color(0xFF1C1C1C).withValues(alpha: 0.9),
              color: Color(0xFFFFFFFF).withValues(alpha: 0.99),
              // border: Border.all(width: 8.0, color: Color(0xFFFFFFFF).withValues(alpha: 0.9)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
              boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.25), blurRadius: 2.0, spreadRadius: 1.0, offset: Offset(0, 0))],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,

                    text: TextSpan(
                      style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 42.0),
                      children: [
                        TextSpan(
                          text:
                              // '"Sunny weather offers excellent conditions for outdoor activities, but it can also increase the risk of dehydration if proper care is not taken. Sunny weather offers excellent conditions for outdoor activities, but it can also increase the risk of dehydration if proper care is not taken."',
                              // '"Sunny weather offers excellent conditions for outdoor activities."',
                              getCurrentVocabularyItem?.getCurrentHelpfulStudyAdvice?.getSentenceEng ?? '',
                          // style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w600, fontSize: 40.0, height: 1.5),
                          style: GoogleFonts.robotoSlab(color: Color(0xFF1C1C1C), fontWeight: FontWeight.w800, fontSize: 42.0),
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
          bottom: 15.0,
          left: 15.0,
          width: widget.sizeDx * 0.95,
          height: 150.0,
          child: Container(
            // width: widget.sizeDx * 0.65,
            height: widget.sizeDy * 0.15,
            decoration: BoxDecoration(
              // color: Color(0xFF1C1C1C).withValues(alpha: 0.9),
              color: Color(0xFF00FF00).withValues(alpha: 0.45),
              border: Border.all(width: 8.0, color: Color(0xFFFFFFFF).withValues(alpha: 0.65)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
              boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.15), blurRadius: 2.0, spreadRadius: 1.0, offset: Offset(0, 0))],
            ),
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          bottom: 15.0,
          left: 15.0,
          width: widget.sizeDx * 0.95,
          height: 150.0,
          child: Container(
            // width: widget.sizeDx * 0.65,
            height: widget.sizeDy * 0.15,
            decoration: BoxDecoration(
              // color: Color(0xFF1C1C1C).withValues(alpha: 0.9),
              color: Color(0xFFFFFFFF).withValues(alpha: 0.65),
              border: Border.all(width: 8.0, color: Color(0xFFFFFFFF).withValues(alpha: 0.65)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
              boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.15), blurRadius: 2.0, spreadRadius: 1.0, offset: Offset(0, 0))],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,

                    text: TextSpan(
                      style: GoogleFonts.agbalumo(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 42.0),
                      children: [
                        TextSpan(
                          // text: '"Cô ấy rất tỉ mỉ trong công việc, kiểm tra từng chi tiết hai lần. Cô ấy rất tỉ mỉ trong công việc, kiểm tra từng chi tiết hai lần, kiểm tra từng chi tiết hai lần. Cô ấy rất tỉ mỉ trong công việc, kiểm tra từng chi tiết hai lần."',
                          text: getCurrentVocabularyItem?.getCurrentHelpfulStudyAdvice?.getSentenceVie ?? '',
                          // style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w600, fontSize: 40.0, height: 1.5),
                          // style: GoogleFonts.agbalumo(color: Color(0xFF5C5C5C), fontWeight: FontWeight.w100, fontSize: 42.0, height: 1.5),
                          style: GoogleFonts.agbalumo(color: Color(0xFF2C2C2C), fontWeight: FontWeight.w100, fontSize: 42.0, height: 1.5),
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
          bottom: 15.0,
          left: 25.0,
          width: widget.sizeDx - 50.0,
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

        Container(
          width: widget.sizeDx - 8.0,
          height: widget.sizeDy - 8.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(width: 10.0, color: Colors.black),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          left: 15.0,
          top: 15.0,
          height: 100.0,
          child: Container(
            width: 500.0,
            height: 100.0,
            decoration: BoxDecoration(
              // color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
              color: Color(0xFF00FF00).withValues(alpha: 0.85),
              border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
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
                                  'Tips',
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
                                  'Tips',
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

  Widget ukTitle({required String word}) {
    return Text(
      word,
      style: GoogleFonts.concertOne(
        textStyle: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFF00BFFF).withValues(alpha: 1), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget usTitle({required String word}) {
    return Text(
      word,
      style: GoogleFonts.concertOne(
        textStyle: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFFF4040).withValues(alpha: 1), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget pronunciation({required String word}) {
    return Text(
      word,
      // style: GoogleFonts.voces(
      style: GoogleFonts.notoSerif(
        textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFECECEC).withValues(alpha: 1), letterSpacing: 1.5),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  WidgetSpan englishDefinitionWordItem({required String word}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.5),
          decoration: BoxDecoration(color: Color(0xFF1C1C1C).withValues(alpha: 0.8)),
          child: Text(
            word,
            style: GoogleFonts.robotoSlab(
              textStyle: TextStyle(height: 1.2, fontSize: 18.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFF0FFFF).withValues(alpha: 1), letterSpacing: 1.2),
            ),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
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

  WidgetSpan pronunciationString({required String word, required bool isUKPronunciation}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),

          child: Stack(
            children: [
              Positioned(
                bottom: -1.0,
                left: 0,
                // child: Container(height: 10.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
                child: Container(height: 7.0, width: 500.0, decoration: BoxDecoration(color: isUKPronunciation ? Color(0xFF00BFFF) : Color(0xFFFF4040))),
              ),

              Text(
                word,
                style: GoogleFonts.gentiumPlus(
                  // ok
                  textStyle: TextStyle(height: 1.32, fontSize: 24.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFF000000).withValues(alpha: 1), letterSpacing: 1.2),
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
