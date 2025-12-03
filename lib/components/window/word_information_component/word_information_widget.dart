import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WordInformationWidget extends StatefulWidget {
  const WordInformationWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<WordInformationWidget> createState() => _WordInformationWidgetState();
}

class _WordInformationWidgetState extends State<WordInformationWidget> {
  @override
  void initState() {
    super.initState();

    wordListSS01 = essaySS01.split(' ');
    for (String word in wordListSS01) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');
        wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
      } else {
        wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
      }
    }

    wordListSS02 = essaySS02.split(' ');
    for (String word in wordListSS02) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');
        wordWidgetSpan.add(wordItem(word: trueWord, isNormal: false, isSpecial: true));
      } else {
        wordWidgetSpan.add(wordItem(word: word, isNormal: false, isSpecial: false));
      }
    }

    wordListSS03 = essaySS03.split(' ');
    for (String word in wordListSS03) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');
        wordWidgetSpan.add(wordItem(word: trueWord, isNormal: true, isSpecial: true));
      } else {
        wordWidgetSpan.add(wordItem(word: word, isNormal: true, isSpecial: false));
      }
    }
  }

  List<String> wordListSS01 = [];
  List<String> wordListSS02 = [];
  List<String> wordListSS03 = [];
  List<WidgetSpan> wordWidgetSpan = [];

  String essaySS01 = 'Life often challenges us in ways we never expect. Many people give up when they face obstacles, believing that failure defines their limits. ';
  String essaySS02 = 'However, those who persist discover a strength they never knew they had. The human capacity for resilience is truly _unbelievable. ';
  String essaySS03 =
      'When people refuse to surrender, they often turn pain into motivation and fear into courage. '
      'History is filled with examples of individuals who overcame impossible odds. '
      'They remind us that success is not about avoiding difficulties but about rising above them. '
      'Every setback is a chance to learn, to grow, and to rebuild with more wisdom. '
      'In the end, what separates achievers from dreamers is determination. '
      'And that determination begins with the belief that nothing is truly impossible.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        AnimatedPositioned(
          top: 50.0,
          left: 50.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              children: [vocabWordItem(word: 'Unbelievable')],
            ),
          ),
        ),

        AnimatedPositioned(top: 45.0, right: 45.0, duration: const Duration(milliseconds: 100), child: partsOfSpeech(isNoun: true)),

        AnimatedPositioned(
          top: 200.0,
          left: 50.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'DEFINITION:'),
        ),

        AnimatedPositioned(
          top: 320.0,
          left: 50.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'SYNONYMS:'),
        ),

        AnimatedPositioned(
          top: 440.0,
          left: 50.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'COMMON COLLOCATIONS:'),
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
