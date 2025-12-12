import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakTimeSpaceContentWidget extends StatefulWidget {
  const BreakTimeSpaceContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<BreakTimeSpaceContentWidget> createState() => _BreakTimeSpaceContentWidgetState();
}

class _BreakTimeSpaceContentWidgetState extends State<BreakTimeSpaceContentWidget> {
  Timer? _timer;

  final ScrollController _scrollController = ScrollController();

  int totalMinutes = 1;
  int totalSeconds = 0;
  int totalMilliseconds = 0;

  double limitedTimeProgressbarLength = 0;
  double limitedTimeProgressbar = 0;

  int up = 100;
  double down = 0.01;

  int counterCreateMessage = 0;
  int counterMessage = 0;

  List<Widget> messageList = [];

  @override
  void initState() {
    super.initState();

    totalSeconds = 60 * totalMinutes;

    limitedTimeProgressbarLength = widget.sizeDx * 0.78 - 100.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    messageList = [
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        if (widget.systemStateManagement?.getBreakTimeSpaceFeature?.checkConditionActiveByDirection() == true) {
          if (totalSeconds > 0) {
            totalSeconds -= 1;

            limitedTimeProgressbar = (limitedTimeProgressbarLength / (60 * totalMinutes)) * totalSeconds;

            // setState(() {});
          } else {
            totalSeconds = 60 * totalMinutes;
          }

          counterCreateMessage++;

          if (counterCreateMessage > 0 && counterCreateMessage % 5 == 0) {
            setState(() {
              messageList.add(Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 500.0, color: Colors.transparent));
              messageList.add(messageByWordWidget(isLeftSide: true, isRightSide: false));
            });

            counterMessage++;

            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_scrollController.hasClients) {
                _scrollController.animateTo(_scrollController.position.maxScrollExtent + 100.0, duration: Duration(milliseconds: 1000), curve: Curves.easeOut);
              }
            });
          }
        }
      });
      if (_scrollController.hasClients) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent + 100.0, duration: Duration(milliseconds: 1000), curve: Curves.easeOut);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
            child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          ),

          Positioned(
            top: 150.0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy - 360.0,
            child: SizedBox(
              width: widget.sizeDx,
              height: widget.sizeDy - 250.0,
              child: ShaderMask(
                blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 250.0),
                  // child: SingleChildScrollView(
                  //   controller: _scrollController,
                  //   child: Column(children: messageList),
                  // ),
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: messageList.length,
                    itemBuilder: (_, index) => Container(child: messageList[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget messageByWordWidget({required bool isLeftSide, required bool isRightSide}) {
    double distanceToBorder = 15.0;

    String engSentence = "Learning daily builds _confidence and long term success. Learning daily builds _confidence and long term success. Learning daily builds _confidence and long term success.";
    String vieSentence =
        "Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài. Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài. Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.";

    // String engSentence = "0123456789";
    // String vieSentence = "0123456789";

    // String engSentence = "0123456789 0123456789";
    // String vieSentence = "0123456789 0123456789";

    // String engSentence = "0123456789 0123456789 0123456789";
    // String vieSentence = "0123456789 0123456789 0123456789";

    // String engSentence = "0123456789 0123456789 0123456789 0123456789";
    // String vieSentence = "0123456789 0123456789 0123456789 0123456789";

    // String engSentence = "0123456789 0123456789 0123456789 0123456789 0123456789";
    // String vieSentence = "0123456789 0123456789 0123456789 0123456789 0123456789";

    // String engSentence = "0123456789 0123456789 _0123456789 0123456789 0123456789 0123456789";
    // String vieSentence = "0123456789 0123456789 _0123456789 0123456789 0123456789 0123456789";

    List<String> engWordList = [];
    List<String> vieWordList = [];

    List<TextSpan> engWordWidgetSpan = [];
    List<TextSpan> vieWordWidgetSpan = [];

    engWordList = engSentence.split(' ');
    for (String word in engWordList) {
      if (word.contains('_')) {
        String trueWord = word.replaceAll('_', '');

        engWordWidgetSpan.add(
          TextSpan(
            text: '$trueWord ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 45),
          ),
        );
      } else {
        engWordWidgetSpan.add(
          TextSpan(
            text: '$word ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 42),
          ),
        );
      }
    }

    vieWordList = vieSentence.split(' ');
    for (int index = 0; index < vieWordList.length; index++) {
      if (vieWordList[index].contains('_')) {
        String trueWord = vieWordList[index].replaceAll('_', '');

        if (index == 0) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '"$trueWord ',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord."',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord ',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        }
      } else {
        if (index == 0) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '"${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]}."',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.bold, fontSize: 40.0, height: 1.5),
            ),
          );
        }
      }
    }

    /// max width
    double maxWidth = widget.sizeDx * 0.58;

    /// totalHeight
    double totalHeight = 0;

    double engSentenceHeight = 0;
    double engSentenceWidth = 0;

    double vieSentenceHeight = 0;
    double vieSentenceWidth = 0;

    switch (engSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.9;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.8;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.7;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.6;
        }
        break;
    }

    switch (vieSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          vieSentenceHeight = 180.0;
          vieSentenceWidth = maxWidth * 0.95;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          vieSentenceHeight = 180.0;
          vieSentenceWidth = maxWidth * 0.95;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.85;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.75;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.65;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.55;
        }
        break;
    }

    totalHeight = engSentenceHeight + vieSentenceHeight + 10.0;

    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 20.0),
      duration: const Duration(milliseconds: 100),
      width: widget.sizeDx,
      height: totalHeight,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            bottom: 20.0,
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            width: vieSentenceWidth,
            height: vieSentenceHeight,
            child: Container(
              width: vieSentenceWidth,
              height: vieSentenceHeight,
              decoration: BoxDecoration(
                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                borderRadius: isRightSide
                    ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                    : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: engSentenceHeight == 180.0 ? 2 : 1,

                      text: TextSpan(
                        style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 40.0),
                        children: vieWordWidgetSpan,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 20.0,
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            width: engSentenceWidth,
            height: engSentenceHeight,
            child: Container(
              width: engSentenceWidth,
              height: engSentenceHeight,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withValues(alpha: 0.95),
                border: Border.all(width: 8.0, color: Color(0xFFFFFFFF).withValues(alpha: 0.95)),
                borderRadius: isRightSide
                    ? BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(45.0))
                    : BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0), bottomRight: Radius.circular(45.0), bottomLeft: Radius.circular(0)),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 8.0, spreadRadius: 1.0, offset: Offset(0, 0))],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    // textAlign: TextAlign.start,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,

                    maxLines: vieSentenceHeight == 180.0 ? 2 : 1,
                    text: TextSpan(children: engWordWidgetSpan),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
