import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_topic_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/widgets/contents/animated_topic_title_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularySubjectContentWidget extends StatefulWidget {
  const VocabularySubjectContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularySubjectContentWidget> createState() => _VocabularySubjectContentWidgetState();
}

class _VocabularySubjectContentWidgetState extends State<VocabularySubjectContentWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  /// -----
  /// TODO:
  /// -----
  VocabularyTopicDataModel? _vocabularyTopic;
  VocabularyTopicDataModel? get getVocabularyTopic => _vocabularyTopic;
  void setVocabularyTopic({required VocabularyTopicDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyTopic = value;
    } else {
      _vocabularyTopic ??= value;
    }

    return;
  }

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((Duration elapsed) {
      if (widget.systemStateManagement?.getVocabularySubjectFeature?.checkConditionActiveByDirection() == true) {
        if (getVocabularyTopic == null) {
          setVocabularyTopic(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularyTopic, isPriorityOverride: true);

          setState(() {
            ///
          });
        }

        ///
      }
    })..start();
  }

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
          duration: const Duration(milliseconds: 100), //
          top: 10.0,
          right: -80.0,
          width: 300.0,
          height: 300.0,
          child: AnimatedTopicTitleWidget(sizeDx: 300.0, sizeDy: 300.0), //
        ),

        AnimatedPositioned(
          top: 30.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          // child: mainTopicTitle(word: 'Personal Qualities'),
          child: mainTopicTitle(word: getVocabularyTopic?.getParentTopicEng ?? ''),
        ),
        AnimatedPositioned(
          top: 100.0,
          // left: 300.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              // children: [pronunciationString(word: 'Phẩm chất cá nhân', isUKPronunciation: true)],
              children: [pronunciationString(word: getVocabularyTopic?.getParentTopicVie ?? '', isUKPronunciation: true)],
            ),
          ),
        ),

        AnimatedPositioned(
          top: 200.0,
          left: 100.0,
          duration: const Duration(milliseconds: 100),
          child: Container(
            width: 12.0,
            height: 80.0,
            decoration: BoxDecoration(color: Color(0xFF00BFFF).withValues(alpha: 1.0), borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
        ),

        AnimatedPositioned(
          top: 292.0,
          left: 120.0,
          duration: const Duration(milliseconds: 100),
          child: Container(
            width: 120.0,
            height: 6.0,
            decoration: BoxDecoration(color: Color(0xFF00BFFF).withValues(alpha: 1.0), borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
        ),

        AnimatedPositioned(
          top: 310.0,
          left: 100.0,
          duration: const Duration(milliseconds: 100),
          child: Container(
            width: 12.0,
            height: 200.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF00BFFF).withValues(alpha: 1.0), //
                  Color(0xFF00BFFF).withValues(alpha: 0.1), //
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
        ),

        AnimatedPositioned(
          top: 230.0,
          left: 300.0,
          duration: const Duration(milliseconds: 100),
          // child: subTopicTitle(word: 'Intelligence'),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              // children: [subTopicTitleAnimation(word: 'Intelligence')],
              children: [subTopicTitleAnimation(word: getVocabularyTopic?.getMainTopicEng ?? '')],
            ),
          ),
        ),
        AnimatedPositioned(
          top: 340.0,
          left: 300.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              // children: [pronunciationString(word: 'Sự thông minh', isUKPronunciation: false)],
              children: [pronunciationString(word: getVocabularyTopic?.getMainTopicVie ?? '', isUKPronunciation: false)],
            ),
          ),
        ),
        AnimatedPositioned(
          top: 430.0,
          left: 350.0,
          duration: const Duration(milliseconds: 100),
          child: numberOfWordsTitle(word: 'Number of words: ${getVocabularyTopic?.getTotalWords?.toInt() ?? '0'}'),
        ),
      ],
    );
  }

  Widget numberOfWordsTitle({required String word}) {
    return Text(
      word,
      style: GoogleFonts.squadaOne(
        textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFECECEC), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
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

  Widget mainTopicTitle({required String word}) {
    return Text(
      word,
      style: GoogleFonts.concertOne(
        textStyle: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFF00BFFF).withValues(alpha: 1), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget subTopicTitle({required String word}) {
    return Text(
      word,
      style: GoogleFonts.concertOne(
        textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFFF4040).withValues(alpha: 1), letterSpacing: 1.0),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget topicTitle({required String word}) {
    return RichText(
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,

      maxLines: 1,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'T',
            style: GoogleFonts.cherryBombOne(color: Color(0xFF00CFFF), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
          ),
          TextSpan(
            text: 'o',
            style: GoogleFonts.cherryBombOne(color: Color(0xFFD067FF), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
          ),
          TextSpan(
            text: 'p',
            style: GoogleFonts.cherryBombOne(color: Color(0xFFFF4FA3), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
          ),
          TextSpan(
            text: 'i',
            style: GoogleFonts.cherryBombOne(color: Color(0xFFFF9A00), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
          ),
          TextSpan(
            text: 'c',
            style: GoogleFonts.cherryBombOne(color: Color(0xFF32FF6A), fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, fontSize: 50, letterSpacing: 10.0),
          ),
        ],
      ),
    );
  }

  Widget pronunciation({required String word}) {
    return Text(
      word,
      style: GoogleFonts.notoSerif(
        textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFECECEC).withValues(alpha: 1), letterSpacing: 1.5),
      ),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
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

              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0, bottom: 2.0),
                  child: Text(
                    word,
                    style: GoogleFonts.sriracha(
                      // ok
                      textStyle: TextStyle(height: 1.32, fontSize: 22.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFF000000).withValues(alpha: 1)),
                    ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  WidgetSpan subTopicTitleAnimation({required String word}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3.0),
              decoration: BoxDecoration(
                // color: Color(0xFFFFFF00).withValues(alpha: 1.0),
                // border: Border.all(color: Color(0xFF000000), width: 3.0),
                // borderRadius: BorderRadius.circular(0),
              ),

              child: Stack(
                children: [
                  Positioned(
                    bottom: -1.0,
                    left: -1.0,
                    height: 25.0,
                    width: 500.0,
                    child: Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
                  ),

                  Positioned(
                    top: -1.0,
                    left: -1.0,
                    child: Container(
                      height: 35.0,
                      width: 500.0,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: ActiveContainerWidget(isReverse: true, color: Color(0xFF363636)),
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
                                textStyle: TextStyle(
                                  fontSize: 30.0,
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
                                textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFFF4040), letterSpacing: 3),
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
          ],
        ),
      ),
    );
  }
}
