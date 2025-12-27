import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/widgets/contents/square_board_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class MemoryGameBoardContentWidget extends StatefulWidget {
  const MemoryGameBoardContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<MemoryGameBoardContentWidget> createState() => _MemoryGameBoardContentWidgetState();
}

class _MemoryGameBoardContentWidgetState extends State<MemoryGameBoardContentWidget> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;

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
  MemoryWordUnit? _currentMemoryWordUnit;
  MemoryWordUnit? get getCurrentMemoryWordUnit => _currentMemoryWordUnit;
  void setCurrentMemoryWordUnit({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryWordUnit = value;
    } else {
      _currentMemoryWordUnit ??= value;
    }

    return;
  }

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
  List<VocabularyInterestingKnowledgeConversationItem>? _interestingKnowledgeConversationItemList;
  List<VocabularyInterestingKnowledgeConversationItem>? get getInterestingKnowledgeConversationItemList => _interestingKnowledgeConversationItemList;
  void setInterestingKnowledgeConversationItemList({required List<VocabularyInterestingKnowledgeConversationItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _interestingKnowledgeConversationItemList = value;
    } else {
      _interestingKnowledgeConversationItemList ??= value;
    }

    return;
  }

  String readyMessage = 'The first pomodoro session will start in a few seconds. Get ready!';
  String startMessage = 'Let\'s go!';

  List<String> messageStringList = [];

  @override
  void initState() {
    super.initState();

    messageStringList.add(readyMessage);
    messageStringList.add(startMessage);

    totalSeconds = 60 * totalMinutes;

    limitedTimeProgressbarLength = widget.sizeDx * 0.78 - 100.0;
    limitedTimeProgressbar = limitedTimeProgressbarLength;

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    setInterestingKnowledgeConversationItemList(value: [], isPriorityOverride: true);
    getCurrentVocabularyItem?.getVocabularyDataModel?.getVocabularyInterestingKnowledgeConversation?.getInterestingKnowledgeItemList?.forEach((element) {
      getInterestingKnowledgeConversationItemList?.add(element);
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
        if (widget.systemStateManagement?.getInterestingKnowledgeConversationFeature?.checkConditionActiveByDirection() == true) {
          if (totalSeconds > 0) {
            totalSeconds -= 1;

            limitedTimeProgressbar = (limitedTimeProgressbarLength / (60 * totalMinutes)) * totalSeconds;

            // setState(() {});
          } else {
            totalSeconds = 60 * totalMinutes;
          }

          counterCreateMessage++;

          if (counterCreateMessage > 0 && counterCreateMessage % 2 == 0) {
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

            if (getInterestingKnowledgeConversationItemList?.isNotEmpty == true) {
              if (getInterestingKnowledgeConversationItemList?.firstOrNull?.getIsLeftCharacterSS01 == true) {
                setState(() {
                  if (getInterestingKnowledgeConversationItemList?.firstOrNull?.getImageSource?.isNotEmpty == true) {
                    messageList.add(
                      pictureMessageByWordWidget(
                        isLeftSide: true,
                        isRightSide: false,
                        engSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getEngSentence ?? '',
                        vieSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getVieSentence ?? '',
                        imageSource: getInterestingKnowledgeConversationItemList?.firstOrNull?.getImageSource ?? '',
                      ),
                    );
                  } else {
                    messageList.add(messageByWordWidget(isLeftSide: true, isRightSide: false, engSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getEngSentence ?? '', vieSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getVieSentence ?? ''));
                  }
                });
              } else if (getInterestingKnowledgeConversationItemList?.firstOrNull?.getIsRightCharacterSS02 == true) {
                setState(() {
                  if (getInterestingKnowledgeConversationItemList?.firstOrNull?.getImageSource?.isNotEmpty == true) {
                    messageList.add(
                      pictureMessageByWordWidget(
                        isLeftSide: false,
                        isRightSide: true,
                        engSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getEngSentence ?? '',
                        vieSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getVieSentence ?? '',
                        imageSource: getInterestingKnowledgeConversationItemList?.firstOrNull?.getImageSource ?? '',
                      ),
                    );
                  } else {
                    messageList.add(messageByWordWidget(isLeftSide: false, isRightSide: true, engSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getEngSentence ?? '', vieSentence: getInterestingKnowledgeConversationItemList?.firstOrNull?.getVieSentence ?? ''));
                  }
                });
              }

              getInterestingKnowledgeConversationItemList?.removeAt(0);

              onPlaySFXInterestingKnowledgeConversationSentenceAppear();
            }

            // if (getConversationItemList?.isNotEmpty == true) {
            //   if (getConversationItemList?.firstOrNull?.getIsLeftCharacterSS01 == true) {
            //     setState(() {
            //       messageList.add(
            //         messageByWordWidget(
            //           isLeftSide: true,
            //           isRightSide: false,
            //           engSentence: getConversationItemList?.firstOrNull?.getEngSentence ?? '',
            //           vieSentence: getConversationItemList?.firstOrNull?.getVieSentence ?? '',
            //         ),
            //       );
            //     });
            //   } else if (getConversationItemList?.firstOrNull?.getIsRightCharacterSS02 == true) {
            //     setState(() {
            //       messageList.add(
            //         messageByWordWidget(
            //           isLeftSide: false,
            //           isRightSide: true,
            //           engSentence: getConversationItemList?.firstOrNull?.getEngSentence ?? '',
            //           vieSentence: getConversationItemList?.firstOrNull?.getVieSentence ?? '',
            //         ),
            //       );
            //     });
            //   }
            //
            //   getConversationItemList?.removeAt(0);
            // }

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

    _ticker = createTicker((Duration elapsed) {

    })..start();
  }

  onPlaySFXInterestingKnowledgeConversationSentenceAppear() {
    FlameAudio.play('sfx/text_appear/interesting_knowledge_conversation_sentence_appear_01.mp3', volume: 0.25);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
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
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
            child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 40.0,
            right: 40.0,
            width: widget.sizeDx - 80.0,
            height: widget.sizeDy - 80.0,
            child: SquareBoardWidget(systemStateManagement: widget.systemStateManagement,
                sizeDx: widget.sizeDx - 80.0,
                sizeDy: widget.sizeDy - 80.0),
          ),

          Positioned(
            top: 20.0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy - 120.0,
            child: SizedBox(
              width: widget.sizeDx,
              height: widget.sizeDy - 120.0,
              child: ShaderMask(
                blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white.withValues(alpha: 1.0),
                      Colors.white.withValues(alpha: 0.99),
                      Colors.white.withValues(alpha: 0.98),
                      Colors.white.withValues(alpha: 0.97),
                      Colors.white.withValues(alpha: 0.96),
                      Colors.white.withValues(alpha: 0.95),
                      Colors.white.withValues(alpha: 0.94),
                      Colors.white.withValues(alpha: 0.93),
                      Colors.white.withValues(alpha: 0.92),
                      Colors.white.withValues(alpha: 0.91),
                      Colors.white.withValues(alpha: 0.90),
                      Colors.white.withValues(alpha: 0.89),
                      Colors.white.withValues(alpha: 0.88),
                    ],
                    // stops: [0.64, 0.67, 0.70, 0.73, 0.76, 0.79, 0.82, 0.85, 0.88, 0.81, 0.94, 0.97, 1.0],
                    stops: [0.88, 0.89, 0.90, 0.91, 0.92, 0.93, 0.94, 0.95, 0.96, 0.97, 0.98, 0.99, 1.0],
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

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            right: 15.0,
            bottom: 15.0,
            child: Container(
              width: widget.sizeDx * 0.6,
              height: 100.0,
              decoration: BoxDecoration(),

              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                        border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Memory game',
                                      style: GoogleFonts.concertOne(
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
                                      textAlign: TextAlign.right,
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
                                      'Memory game',
                                      style: GoogleFonts.concertOne(
                                        textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                                      ),
                                      textAlign: TextAlign.right,
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
                  ),
                ],
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
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: engSentenceHeight == 180.0 ? 2 : 1,

                      text: TextSpan(
                        style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 35.0),
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
                    textAlign: TextAlign.start,
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

  Widget pictureMessageByWordWidget({required bool isLeftSide, required bool isRightSide, required String engSentence, required String vieSentence, required String imageSource}) {
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

    double imageHeight = 500.0;
    double imageWidth = maxWidth * 1.0 + 50;

    int engMaxLines = 1;
    int vieMaxLines = 1;

    switch (engSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          engSentenceHeight = 260.0;
          engSentenceWidth = maxWidth * 1.0 + 50;
          engMaxLines = 4;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          engSentenceHeight = 180.0;
          engSentenceWidth = maxWidth * 1.0;
          engMaxLines = 2;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.9;
          engMaxLines = 2;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.8;
          engMaxLines = 1;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.7;
          engMaxLines = 1;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          engSentenceHeight = 120.0;
          engSentenceWidth = maxWidth * 0.6;
          engMaxLines = 1;
        }
        break;
    }

    switch (vieSentence.length) {
      case >= 60:
        {
          /// 2 Lines
          vieSentenceHeight = 260.0;
          vieSentenceWidth = maxWidth * 0.95 + 50.0;
          vieMaxLines = 3;
        }
        break;
      case >= 50 && < 60:
        {
          /// 2 Lines
          vieSentenceHeight = 180.0;
          vieSentenceWidth = maxWidth * 0.95;
          vieMaxLines = 2;
        }
        break;
      case >= 40 && < 50:
        {
          /// 2 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.85;
          vieMaxLines = 2;
        }
        break;
      case >= 30 && < 40:
        {
          /// 1 Lines &
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.75;
          vieMaxLines = 1;
        }
        break;
      case >= 20 && < 30:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.65;
          vieMaxLines = 1;
        }
        break;
      case >= 0 && < 20:
        {
          /// 1 Lines
          vieSentenceHeight = 120.0;
          vieSentenceWidth = maxWidth * 0.55;
          vieMaxLines = 1;
        }
        break;
    }

    totalHeight = engSentenceHeight + vieSentenceHeight + 10.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: widget.sizeDx,
      height: totalHeight + imageHeight,

      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 0,
            right: isRightSide ? distanceToBorder : null,
            left: isLeftSide ? distanceToBorder : null,
            width: imageWidth,
            height: imageHeight,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                isLeftSide
                    ? BounceInLeft(
                        duration: const Duration(milliseconds: 1500),
                        child: Stack(
                          children: [
                            Container(
                              width: imageWidth,
                              height: imageHeight,
                              decoration: BoxDecoration(
                                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                                border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                                borderRadius: isRightSide
                                    ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                    : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                                image: DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitWidth),
                                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                              ),
                            ),
                            Container(
                              width: imageWidth,
                              height: imageHeight,
                              decoration: BoxDecoration(
                                border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                                borderRadius: isRightSide
                                    ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                    : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                isRightSide
                    ? BounceInRight(
                        duration: const Duration(milliseconds: 1500),
                        child: Stack(
                          children: [
                            Container(
                              width: imageWidth,
                              height: imageHeight,
                              decoration: BoxDecoration(
                                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                                border: Border.all(width: 8.0, color: Color(0xFF1C1C1C)),
                                borderRadius: isRightSide
                                    ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                    : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                                image: DecorationImage(image: AssetImage(imageSource), fit: BoxFit.fitWidth),
                                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                              ),
                            ),
                            Container(
                              width: imageWidth,
                              height: imageHeight,
                              decoration: BoxDecoration(
                                border: Border.all(width: 16.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                                borderRadius: isRightSide
                                    ? BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(30.0))
                                    : BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            width: widget.sizeDx,
            height: totalHeight,
            child: AnimatedContainer(
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
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: vieMaxLines,

                              text: TextSpan(
                                style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Color(0xFFECECEC).withValues(alpha: 0.5)), fontSize: 35.0),
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
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,

                            maxLines: engMaxLines,
                            text: TextSpan(children: engWordWidgetSpan),
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
      ),
    );
  }
}
