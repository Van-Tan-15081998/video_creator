import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyListContentWidget extends StatefulWidget {
  const VocabularyListContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyListContentWidget> createState() => _VocabularyListContentWidgetState();
}

class _VocabularyListContentWidgetState extends State<VocabularyListContentWidget> with SingleTickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;

  final ScrollController _scrollController = ScrollController();

  bool isActivatingWordSS01 = false;
  bool isActivatingWordSS02 = false;
  bool isActivatingWordSS03 = false;
  bool isActivatingWordSS04 = false;
  bool isActivatingWordSS05 = false;
  bool isActivatingWordSS06 = false;
  bool isActivatingWordSS07 = false;
  bool isActivatingWordSS08 = false;
  bool isActivatingWordSS09 = false;
  bool isActivatingWordSS10 = false;
  bool isActivatingWordSS11 = false;
  bool isActivatingWordSS12 = false;
  bool isActivatingWordSS13 = false;
  bool isActivatingWordSS14 = false;
  bool isActivatingWordSS15 = false;
  bool isActivatingWordSS16 = false;
  bool isActivatingWordSS17 = false;
  bool isActivatingWordSS18 = false;
  bool isActivatingWordSS19 = false;
  bool isActivatingWordSS20 = false;
  bool isActivatingWordSS21 = false;
  bool isActivatingWordSS22 = false;
  bool isActivatingWordSS23 = false;
  bool isActivatingWordSS24 = false;
  bool isActivatingWordSS25 = false;
  bool isActivatingWordSS26 = false;
  bool isActivatingWordSS27 = false;
  bool isActivatingWordSS28 = false;
  bool isActivatingWordSS29 = false;
  bool isActivatingWordSS30 = false;

  int counter = 0;

  int multiple = 0;

  resetActive() {
    isActivatingWordSS01 = false;
    isActivatingWordSS02 = false;
    isActivatingWordSS03 = false;
    isActivatingWordSS04 = false;
    isActivatingWordSS05 = false;
    isActivatingWordSS06 = false;
    isActivatingWordSS07 = false;
    isActivatingWordSS08 = false;
    isActivatingWordSS09 = false;
    isActivatingWordSS10 = false;
    isActivatingWordSS11 = false;
    isActivatingWordSS12 = false;
    isActivatingWordSS13 = false;
    isActivatingWordSS14 = false;
    isActivatingWordSS15 = false;
    isActivatingWordSS16 = false;
    isActivatingWordSS17 = false;
    isActivatingWordSS18 = false;
    isActivatingWordSS19 = false;
    isActivatingWordSS20 = false;
    isActivatingWordSS21 = false;
    isActivatingWordSS22 = false;
    isActivatingWordSS23 = false;
    isActivatingWordSS24 = false;
    isActivatingWordSS25 = false;
    isActivatingWordSS26 = false;
    isActivatingWordSS27 = false;
    isActivatingWordSS28 = false;
    isActivatingWordSS29 = false;
    isActivatingWordSS30 = false;
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

  List<VocabularyItem?>? _currentVocabularyItemList;
  List<VocabularyItem?>? get getCurrentVocabularyItemList => _currentVocabularyItemList;
  void setCurrentVocabularyItemList({required List<VocabularyItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItemList = value;
    } else {
      _currentVocabularyItemList ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyItem?>? _topicVocabularyItemList;
  List<VocabularyItem?>? get getTopicVocabularyItemList => _topicVocabularyItemList;
  void setTopicVocabularyItemList({required List<VocabularyItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicVocabularyItemList = value;
    } else {
      _topicVocabularyItemList ??= value;
    }

    return;
  }

  List<WidgetSpan> wordWidgetSpan = [];

  @override
  void initState() {
    super.initState();

    setCurrentVocabularyItemList(value: [], isPriorityOverride: true);

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);

    setTopicVocabularyItemList(value: getCurrentVocabularyItem?.getTopicVocabularyItemList ?? [], isPriorityOverride: true);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ticker = createTicker((Duration elapsed) {
        if (widget.systemStateManagement?.getVocabularyListFeature?.checkConditionActiveByDirection() == true) {
          if (getCurrentVocabularyItemList?.length != getCurrentVocabularyItem?.getCurrentVocabularyItemList?.length) {
            setState(() {
              setCurrentVocabularyItemList(value: getCurrentVocabularyItem?.getCurrentVocabularyItemList ?? [], isPriorityOverride: true);
              wordWidgetSpan = [];

              for (int index = 0; index < (getCurrentVocabularyItemList?.length ?? 0); index++) {
                if (index < ((getCurrentVocabularyItemList?.length ?? 0) - 1)) {
                  wordWidgetSpan.add(wordItem(word: getCurrentVocabularyItemList?[index]?.getVocabularyDataModel?.getWord ?? '', isActive: false, isHide: false));
                } else if (index == ((getCurrentVocabularyItemList?.length ?? 0) - 1)) {
                  /// Activating word

                  wordWidgetSpan.add(wordItem(word: getCurrentVocabularyItemList?[index]?.getVocabularyDataModel?.getWord ?? '', isActive: true, isHide: false));
                }
              }

              wordWidgetSpan.add(wordItem(word: '123456789123456789123456789123456789', isActive: false, isHide: true));
              wordWidgetSpan.add(wordItem(word: '123456789123456789123456789123456789', isActive: false, isHide: true));
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_scrollController.hasClients) {
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent - 130.0, duration: Duration(milliseconds: 2000), curve: Curves.easeOut);
                }
              });

              ///
              ///
              ///
              int activeIndex = 0;

              for (int index = 0; index < (getTopicVocabularyItemList?.length ?? 0); index++) {
                if (getTopicVocabularyItemList?[index]?.getIsActive == true) {
                  wordVocabularyItemList.add(wordVocabularyItem(word: getTopicVocabularyItemList?[index]?.getVocabularyDataModel?.getWord ?? '', isActive: true, index: index + 1));

                  activeIndex = index;
                } else {
                  wordVocabularyItemList.add(wordVocabularyItem(word: getTopicVocabularyItemList?[index]?.getVocabularyDataModel?.getWord ?? '', isActive: false, index: index + 1));
                }
              }

              Future.delayed(Duration(seconds: 1), () {
                if (mounted) {
                  setState(() {
                    if (getTopicVocabularyItemList?.length == 20) {
                      if (activeIndex < 11) {
                        multiple = activeIndex;
                      } else {
                        multiple = 10;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 21) {
                      if (activeIndex < 12) {
                        multiple = activeIndex;
                      } else {
                        multiple = 11;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 22) {
                      if (activeIndex < 13) {
                        multiple = activeIndex;
                      } else {
                        multiple = 12;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 23) {
                      if (activeIndex < 14) {
                        multiple = activeIndex;
                      } else {
                        multiple = 13;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 24) {
                      if (activeIndex < 15) {
                        multiple = activeIndex;
                      } else {
                        multiple = 14;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 25) {
                      if (activeIndex < 16) {
                        multiple = activeIndex;
                      } else {
                        multiple = 15;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 26) {
                      if (activeIndex < 17) {
                        multiple = activeIndex;
                      } else {
                        multiple = 16;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 27) {
                      if (activeIndex < 18) {
                        multiple = activeIndex;
                      } else {
                        multiple = 17;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 28) {
                      if (activeIndex < 19) {
                        multiple = activeIndex;
                      } else {
                        multiple = 18;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 29) {
                      if (activeIndex < 20) {
                        multiple = activeIndex;
                      } else {
                        multiple = 19;
                      }
                    }
                    if (getTopicVocabularyItemList?.length == 30) {
                      if (activeIndex < 21) {
                        multiple = activeIndex;
                      } else {
                        multiple = 20;
                      }
                    }
                  });
                }
              });
            });
          }
        }
      })..start();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  List<Widget> wordVocabularyItemList = [];

  Widget wordVocabularyItem({required String word, required int index, required isActive}) {
    final random = Random();
    //
    // // Tạo số double ngẫu nhiên từ -10 đến 10
    // double value = random.nextDouble() * 20 - 10;

    List<int> angles = [0, 90, 180, 270, 360];

    List<String> srcs = [
      'assets/images/colorful/colorful_style_a1.jpg',
      'assets/images/colorful/colorful_style_a2.jpg',
      'assets/images/colorful/colorful_style_a3.jpg',
      'assets/images/colorful/colorful_style_a4.jpg',
    ];

    String src = srcs[random.nextInt(srcs.length)];

    double randomLeft = (random.nextDouble() * 2) * -2;
    double randomTop = (random.nextDouble() * 2) * -2;
    double randomZoom = random.nextDouble() * 1 + 2;
    double randomRotate = angles[random.nextInt(angles.length)].toDouble();

    return Container(
      color: Colors.transparent,
      width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
      height: widget.sizeDy * 0.15,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
          child: Stack(
            children: [
              Positioned(
                width: 200.0,
                height: 200.0,
                top: -50.0,
                left: -40.0,
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    border: Border.all(width: 2.0, color: Colors.black),
                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2)],
                  ),
                ),
              ),

              Positioned(
                left: -10,
                top: -10,
                width: 200.0,
                height: 200.0,
                child: Opacity(
                  opacity: 0.5,
                  child: Transform.rotate(
                    angle: randomRotate,
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(image: AssetImage(src), fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 5.0),
                color: Colors.transparent,
                width: ((widget.sizeDx - 20.0) * 3.0) / 30.0 * 1.0,
                height: widget.sizeDy * 0.15,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // color: isActive ? Color(0xFF76EE00).withValues(alpha: 0.6) : Colors.white,
                      // color: isActive ? Color(0xFF00BFFF).withValues(alpha: 0.9) : Colors.white,
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          // colors: [
                          //   Colors.white,
                          //   Colors.white.withValues(alpha: 0.6),
                          //   Colors.white.withValues(alpha: 0.5),
                          //   Colors.white.withValues(alpha: 0.4),
                          //   Colors.white.withValues(alpha: 0.3),
                          //   Colors.white.withValues(alpha: 0.2),
                          //   Colors.white.withValues(alpha: 0.1),
                          //   Colors.transparent,
                          //   Colors.transparent,
                          //   Colors.transparent, // Hoàn toàn biến mất bên phải
                          // ],
                          // colors: [
                          //   Colors.orangeAccent,
                          //   // Colors.white.withValues(alpha: 0.9),
                          //   Colors.orangeAccent.withValues(alpha: 0.8),
                          //   Colors.orangeAccent.withValues(alpha: 0.7),
                          //   Colors.orangeAccent.withValues(alpha: 0.6),
                          //   Colors.orangeAccent.withValues(alpha: 0.5),
                          //   Colors.orangeAccent.withValues(alpha: 0.4),
                          //   Colors.orangeAccent.withValues(alpha: 0.3),
                          //   Colors.orangeAccent.withValues(alpha: 0.2),
                          //   Colors.orangeAccent.withValues(alpha: 0.1),
                          //   Colors.transparent,
                          //   Colors.transparent,
                          //   // Colors.transparent, // Hoàn toàn biến mất bên phải
                          // ],
                          colors: [Colors.white.withValues(alpha: 1), Colors.white.withValues(alpha: 0.5)],
                          stops: [0.25, 1.0],
                        ).createShader(bounds);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Center(
                          child: Text(
                            word,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.titanOne(
                              // textStyle: TextStyle(color: isActive ? Color(0xFF00BFFF) : Colors.black.withValues(alpha: 0.9)),
                              textStyle: TextStyle(color: isActive ? Color(0xFF1C86EE) : Colors.black.withValues(alpha: 0.9)),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              shadows: [BoxShadow(color: Colors.black.withValues(alpha: 0.9), offset: Offset(1, 1), blurRadius: 1)],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                width: 200.0,
                height: 200.0,
                top: -50.0,
                right: -135.0,
                child: Transform.rotate(
                  angle: 0.3,
                  child: Container(
                    width: 200.0,
                    height: 200.0,

                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.9),
                      border: Border.all(width: 2.0, color: Colors.black),
                    ),
                    child: ClipRRect(
                      child: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              width: 200.0 * randomZoom,
                              height: 200.0 * randomZoom,
                              child: Container(
                                width: 200.0 * randomZoom,
                                height: 200.0 * randomZoom,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(width: 2.0, color: Colors.black),
                                  boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2)],
                                ),
                              ),
                            ),

                            Positioned(
                              left: -10,
                              top: -10,
                              width: 200.0,
                              height: 200.0,
                              child: Transform.rotate(
                                angle: randomRotate,
                                child: Container(
                                  width: 200.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(width: 2.0, color: Colors.black),
                                    image: DecorationImage(image: AssetImage(src), fit: BoxFit.contain),
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

              Positioned(
                width: 60.0,
                height: 50.0,
                bottom: 0,
                right: 0,
                child: Center(
                  child: Text(
                    index.toString(),
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.titanOne(
                      textStyle: TextStyle(color: isActive ? Color(0xFF1C86EE) : Colors.white),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      shadows: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2)],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.8),
        border: Border.all(width: 5.0, color: Colors.black),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
        boxShadow: [
          // Bóng tối (dưới phải)
          // BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2),
          // BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0)),
        ],
      ),
      child: Stack(
        children: [
          // TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          AnimatedPositioned(
            top: 0,
            left: ((widget.sizeDx - 20.0) * 3.0 / 30.0) * multiple * (-1),
            width: (widget.sizeDx - 20.0) * 3.0,
            height: widget.sizeDy * 0.15,
            duration: const Duration(milliseconds: 1000),
            child: Container(
              width: (widget.sizeDx - 20.0) * 3.0,
              height: widget.sizeDy * 0.15,
              color: Colors.transparent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisSize: MainAxisSize.max, children: wordVocabularyItemList),
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: 0,
            left: 5,
            width: widget.sizeDx - 30.0,
            height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
            duration: const Duration(milliseconds: 100),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: widget.sizeDx - 30.0,
                height: widget.sizeDy - (widget.sizeDy * 0.15 + 30.0),
                decoration: BoxDecoration(
                  color: Color(0xFF002200).withValues(alpha: 0.4),
                  border: Border.all(width: 2.0, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // image: DecorationImage(image: AssetImage('assets/images/paper2.jpg'), fit: BoxFit.fitWidth),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      width: widget.sizeDx,
                      height: widget.sizeDy - (widget.sizeDy * 0.15),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                            child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy - (widget.sizeDy * 0.15)),
                          ),
                        ],
                      ),
                    ),

                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      top: 0,
                      left: 0,
                      width: widget.sizeDx - 30.0,
                      height: widget.sizeDy - (widget.sizeDy * 0.15),
                      child: FadeInUp(
                        child: Container(
                          width: widget.sizeDx - 30.0,
                          height: widget.sizeDy - (widget.sizeDy * 0.15),
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              child: Column(
                                children: [Text.rich(TextSpan(style: TextStyle(fontSize: 20, height: 1.0), children: wordWidgetSpan))],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  WidgetSpan wordItem({required String word, required bool isActive, required bool isHide}) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRect(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3.0),
              decoration: BoxDecoration(
                // color: Color(0xFFFFFF00).withValues(alpha: 1.0),
                border: isHide ? Border.all(color: Colors.transparent, width: 3.0) : Border.all(color: Color(0xFF000000), width: 3.0),
                borderRadius: BorderRadius.circular(0),
              ),

              child: Stack(
                children: [
                  Positioned(
                    top: -1.0,
                    left: -1.0,
                    height: 100.0,
                    width: 500.0,
                    child: isHide ? Container() : Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFFFFFF00))),
                  ),

                  Positioned(
                    bottom: -1.0,
                    left: -1.0,
                    height: 25.0,
                    width: 500.0,
                    child: isHide ? Container() : Container(height: 25.0, width: 500.0, decoration: BoxDecoration(color: Color(0xFF1C1C1C))),
                  ),

                  isActive
                      ? Positioned(
                          top: -1.0,
                          left: -1.0,
                          child: Container(
                            height: 35.0,
                            width: 500.0,
                            decoration: BoxDecoration(color: Colors.transparent),
                            child: isHide ? Container() : ActiveContainerWidget(),
                          ),
                        )
                      : Text(''),

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
                                    ..color = isHide ? Colors.transparent : Color(0xFF000000), // Màu viền
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
                                textStyle: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  color: isHide ? Colors.transparent : Color(0xFFECECEC),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
