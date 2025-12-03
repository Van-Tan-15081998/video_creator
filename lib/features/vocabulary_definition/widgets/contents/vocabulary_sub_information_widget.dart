import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularySubInformationWidget extends StatefulWidget {
  const VocabularySubInformationWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularySubInformationWidget> createState() => _VocabularySubInformationWidgetState();
}

class _VocabularySubInformationWidgetState extends State<VocabularySubInformationWidget> {
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
          top: 40.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'PRONUNCIATION:'),
        ),
        AnimatedPositioned(
          top: 110.0,
          left: 60.0,
          duration: const Duration(milliseconds: 100),
          child: ukTitle(word: 'UK:'),
        ),
        AnimatedPositioned(
          top: 110.0,
          left: 150.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              children: [pronunciationString(word: '/ˌʌnbɪˈliːvəbl/', isUKPronunciation: true)],
            ),
          ),
        ),

        AnimatedPositioned(
          top: 185.0,
          left: 60.0,
          duration: const Duration(milliseconds: 100),
          child: usTitle(word: 'US:'),
        ),
        AnimatedPositioned(
          top: 185.0,
          left: 150.0,
          duration: const Duration(milliseconds: 100),
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 20, height: 1.0),
              children: [pronunciationString(word: '/ˌʌnbɪˈliːvəbl/', isUKPronunciation: false)],
            ),
          ),
        ),

        AnimatedPositioned(
          top: 260.0,
          left: 40.0,
          duration: const Duration(milliseconds: 100),
          child: title(word: 'ENGLISH DEFINITION:'),
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
                  textStyle: TextStyle(height: 1.32, fontSize: 25.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFF000000).withValues(alpha: 1), letterSpacing: 1.2),
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
