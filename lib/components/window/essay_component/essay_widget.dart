import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EssayWidget extends StatefulWidget {
  const EssayWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<EssayWidget> createState() => _EssayWidgetState();
}

class _EssayWidgetState extends State<EssayWidget> {
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
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(15.0),
        //   child: TransparentEffectWallWidgetWhite(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
        // ),

        // Container(
        //   padding: EdgeInsets.all(0),
        //   width: widget.sizeDx,
        //   height: widget.sizeDy,
        //   decoration: BoxDecoration(
        //     color: Colors.transparent,
        //     borderRadius: BorderRadius.circular(15),
        //     border: Border.all(width: 0, color: Colors.transparent),
        //   ),
        //   child: Stack(
        //     children: [
        //       AnimatedPositioned(
        //         duration: const Duration(milliseconds: 100),
        //         top: 10.0,
        //         left: 10.0,
        //         child: Container(
        //           width: widget.sizeDx,
        //           height: widget.sizeDy,
        //           decoration: BoxDecoration(color: Colors.transparent),
        //           child: Padding(
        //             padding: const EdgeInsets.all(50.0),
        //             child: SingleChildScrollView(
        //               scrollDirection: Axis.vertical,
        //
        //               child: Text.rich(TextSpan(style: TextStyle(fontSize: 20, height: 1.0), children: wordWidgetSpan)),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            color: Colors.transparent,
            width: widget.sizeDx,
            height: widget.sizeDy,
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
      ],
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
