import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyEnglishMainInformationWidget extends StatefulWidget {
  const VocabularyEnglishMainInformationWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyEnglishMainInformationWidget> createState() => _VocabularyEnglishMainInformationWidgetState();
}

class _VocabularyEnglishMainInformationWidgetState extends State<VocabularyEnglishMainInformationWidget> with SingleTickerProviderStateMixin {
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

  final int totalSecondsConst = 212;

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
        }
      });

      _ticker = createTicker((Duration elapsed) {
        if (englishDefinitionString != getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng &&
            getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng?.isNotEmpty == true) {
          setState(() {
            englishDefinitionString = getCurrentVocabularyItem?.getVocabularyDataModel?.getTopicSpecificMeaningInEng ?? '';
            pronunciationUK = getCurrentVocabularyItem?.getVocabularyDataModel?.getPronunciationUK ?? '';
            pronunciationUS = getCurrentVocabularyItem?.getVocabularyDataModel?.getPronunciationUS ?? '';

            ///
            englishDefinitionStringList = [];
            englishDefinitionWidgetSpan = [];
            englishDefinitionStringList = englishDefinitionString.split(' ');
            for (String word in englishDefinitionStringList) {
              if (word.contains('_')) {
                String trueWord = word.replaceAll('_', '');
                englishDefinitionWidgetSpan.add(englishDefinitionWordItem(word: trueWord));
              } else {
                englishDefinitionWidgetSpan.add(englishDefinitionWordItem(word: word));
              }
            }
          });
        }
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
        AnimatedPositioned(
          top: 40.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'PRONUNCIATION:'),
        ),

        AnimatedPositioned(
          top: 100.0,
          right: 0,
          height: 165.0,
          width: widget.sizeDx,
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
                color: Color(0xFF000000).withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(2),
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          top: 110.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: ukTitle(word: 'UK:'),
        ),
        AnimatedPositioned(
          top: 110.0,
          right: 60.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              children: [pronunciationString(word: pronunciationUK, isUKPronunciation: true)],
            ),
          ),
        ),

        AnimatedPositioned(
          top: 185.0,
          left: 70.0,
          duration: const Duration(milliseconds: 100),
          child: usTitle(word: 'US:'),
        ),
        AnimatedPositioned(
          top: 185.0,
          right: 30.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              children: [pronunciationString(word: pronunciationUS, isUKPronunciation: false)],
            ),
          ),
        ),

        AnimatedPositioned(
          top: 260.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'ENGLISH DEFINITION:'),
        ),

        AnimatedPositioned(
          top: 335.0,
          left: 40.0,
          width: widget.sizeDx - 70.0,
          height: 220.0,
          duration: const Duration(milliseconds: 100),
          child: Container(
            color: Colors.transparent,
            child: Text.rich(
              TextSpan(style: TextStyle(fontSize: 20, height: 1.0), children: englishDefinitionWidgetSpan),
              overflow: TextOverflow.fade,
              maxLines: 4,
            ),
          ),
        ),

        AnimatedPositioned(
          bottom: 10.0,
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
