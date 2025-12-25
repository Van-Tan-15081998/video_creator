import 'dart:async';
import 'dart:math';

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyConversationContentWidget extends StatefulWidget {
  const VocabularyConversationContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyConversationContentWidget> createState() => _VocabularyConversationContentWidgetState();
}

class _VocabularyConversationContentWidgetState extends State<VocabularyConversationContentWidget> {
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

  /// -----
  /// TODO:
  /// -----
  List<VocabularyExampleConversationItem>? _conversationItemList;
  List<VocabularyExampleConversationItem>? get getConversationItemList => _conversationItemList;
  void setConversationItemList({required List<VocabularyExampleConversationItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _conversationItemList = value;
    } else {
      _conversationItemList ??= value;
    }

    return;
  }

  @override
  void initState() {
    super.initState();

    totalSeconds = 60 * totalMinutes;

    limitedTimeProgressbarLength = widget.sizeDx * 0.78 - 100.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    setConversationItemList(value: [], isPriorityOverride: true);
    getCurrentVocabularyItem?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.forEach((element) {
      getConversationItemList?.add(element);
    });

    messageList = [
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
      Container(margin: EdgeInsets.all(5.0), width: widget.sizeDx, height: 300.0, color: Colors.transparent),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (widget.systemStateManagement?.getVocabularyConversationFeature?.checkConditionActiveByDirection() == true) {
          if (totalSeconds > 0) {
            totalSeconds -= 1;

            limitedTimeProgressbar = (limitedTimeProgressbarLength / (60 * totalMinutes)) * totalSeconds;

            // setState(() {});
          } else {
            totalSeconds = 60 * totalMinutes;
          }

          counterCreateMessage++;

          if (counterCreateMessage > 0 && counterCreateMessage % 5 == 0) {
            // if (counterMessage % 2 == 0) {
            //   setState(() {
            //     // messageList.add(messageWidget(isLeftSide: true, isRightSide: false));
            //     messageList.add(messageByWordWidget(isLeftSide: true, isRightSide: false));
            //   });
            // } else {
            //   setState(() {
            //     // messageList.add(messageWidget(isLeftSide: false, isRightSide: true));
            //     messageList.add(messageByWordWidget(isLeftSide: false, isRightSide: true));
            //   });
            // }

            if (getConversationItemList?.isNotEmpty == true) {
              if (getConversationItemList?.firstOrNull?.getIsLeftCharacterSS01 == true) {
                setState(() {
                  messageList.add(messageByWordWidget(isLeftSide: true, isRightSide: false, engSentence: getConversationItemList?.firstOrNull?.getEngSentence ?? '', vieSentence: getConversationItemList?.firstOrNull?.getVieSentence ?? ''));
                });
              } else if (getConversationItemList?.firstOrNull?.getIsRightCharacterSS02 == true) {
                setState(() {
                  messageList.add(messageByWordWidget(isLeftSide: false, isRightSide: true, engSentence: getConversationItemList?.firstOrNull?.getEngSentence ?? '', vieSentence: getConversationItemList?.firstOrNull?.getVieSentence ?? ''));
                });
              }

              getConversationItemList?.removeAt(0);

              onPlaySFXVocabularyConversationSentenceAppear();
            }

            counterMessage++;

            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_scrollController.hasClients) {
                _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
              }
            });
          }
        }
      });
      if (_scrollController.hasClients) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
      }
    });
  }

  final Random _random = Random();
  onPlaySFXVocabularyConversationSentenceAppear() {
    // FlameAudio.play('sfx/text_appear/vocabulary_conversation_sentence_appear.mp3', volume: 0.25);

    String nextSFX;
    nextSFX = sfxList2[_random.nextInt(sfxList2.length)];
    FlameAudio.play(nextSFX, volume: 0.45);
  }

  final List<String> sfxList = [
    'sfx/text_appear/vocabulary_conversation_sentence_appear_01.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_02.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_03.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_04.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_05.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_06.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_07.mp3',
    'sfx/text_appear/vocabulary_conversation_sentence_appear_08.mp3',
  ];

  final List<String> sfxList2 = [
    'sfx/monster_message/monster_message_01.mp3',
    'sfx/monster_message/monster_message_02.mp3',
    'sfx/monster_message/monster_message_03.mp3',
    'sfx/monster_message/monster_message_04.mp3',
    'sfx/monster_message/monster_message_05.mp3',
    'sfx/monster_message/monster_message_06.mp3',
    'sfx/monster_message/monster_message_07.mp3',
    'sfx/monster_message/monster_message_08.mp3',
    'sfx/monster_message/monster_message_09.mp3',
    'sfx/monster_message/monster_message_10.mp3',
    'sfx/monster_message/monster_message_11.mp3',
    'sfx/monster_message/monster_message_12.mp3',
    'sfx/monster_message/monster_message_13.mp3',
    'sfx/monster_message/monster_message_14.mp3',
    'sfx/monster_message/monster_message_15.mp3',
    'sfx/monster_message/monster_message_16.mp3',
    'sfx/monster_message/monster_message_17.mp3',
    'sfx/monster_message/monster_message_18.mp3',
    'sfx/monster_message/monster_message_19.mp3',
    'sfx/monster_message/monster_message_20.mp3',
  ];

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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0)),
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
                                    'Conversation',
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
                                    'Conversation',
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
          //   child: AnimatedVocabularyConversationTitleWidget(sizeDx: 800.0, sizeDy: 125.0), //
          // ),
          Positioned(
            top: 150.0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy - 250.0,
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
                  child: SingleChildScrollView(
                    controller: _scrollController,

                    child: Column(children: messageList),
                  ),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: 0,
          //   left: 0,
          //   width: widget.sizeDx,
          //   height: widget.sizeDy,
          //   child: VocabularyConversationCharacterWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          // ),
          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget messageByWordWidget({required bool isLeftSide, required bool isRightSide, required String engSentence, required String vieSentence}) {
    double distanceToBorder = 15.0;

    // String engSentence = "Learning daily builds _confidence and long term success.";
    // String vieSentence = "Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.";

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
            style: GoogleFonts.robotoSlab(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 42),
          ),
        );
      } else {
        engWordWidgetSpan.add(
          TextSpan(
            text: '$word ',
            style: GoogleFonts.robotoSlab(color: Color(0xFF000000), fontWeight: FontWeight.w800, fontSize: 40),
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
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord."',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '$trueWord ',
              style: GoogleFonts.sriracha(color: Color(0xFF1E90FF), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        }
      } else {
        if (index == 0) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '"${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        } else if (index == vieWordList.length - 1) {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]}."',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        } else {
          vieWordWidgetSpan.add(
            TextSpan(
              text: '${vieWordList[index]} ',
              style: GoogleFonts.sriracha(color: Color(0xFF838B83), fontWeight: FontWeight.w800, fontSize: 38.0, height: 1.5),
            ),
          );
        }
      }
    }

    /// max width
    double maxWidth = widget.sizeDx * 0.75;

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
