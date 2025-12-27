import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_item.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_time.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareBoardWidget extends StatefulWidget {
  const SquareBoardWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<SquareBoardWidget> createState() => _BlackboardContentWidgetState();
}

class _BlackboardContentWidgetState extends State<SquareBoardWidget> with TickerProviderStateMixin {
  late final Ticker _ticker;

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

  String currentWord = '';

  @override
  void initState() {
    super.initState();

    setCurrentMemoryWordUnit(value: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime?.getCurrentMemoryWordUnit, isPriorityOverride: true);

    // sizeUnit = widget.sizeDx / 4;
    sizeUnit = 900 / 4;

    _ticker = createTicker((Duration elapsed) {
      if (currentWord != getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId) {
        setState(() {
          currentWord = getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId ?? '...';
        });
      }

      ///
    })..start();
  }

  double sizeUnit = 0;

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,

      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          left: 0,
          top: 0,
          child: Container(
            width: 520.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
              border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            currentWord,
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                // fontSize: 35.0,
                                fontSize: 15.0,
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
                            currentWord,
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                // fontSize: 35.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600, //
                                fontStyle: FontStyle.normal, //
                                color: Color(0xFFFFFFFF), //
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
                ],
              ),
            ),
          ),
        ),

        Positioned(
          top: 0,
          right: 0,
          width: 900.0,
          height: 900.0,
          child: Container(
            padding: EdgeInsets.all(0),
            width: 900.0,
            height: 900.0,

            decoration: BoxDecoration(
              color: Color(0xFF002200).withValues(alpha: 0.5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  width: 900.0,
                  height: 900.0,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        child: TransparentEffectWallWidgetLight(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
                      ),
                    ],
                  ),
                ),

                ///
                /// ROW 1
                ///
                Positioned(
                  top: sizeUnit * 0,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 1, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 2, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 3, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 0,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 4, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 2
                ///
                Positioned(
                  top: sizeUnit * 1,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 5, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 6, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 7, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 1,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 8, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 3
                ///
                Positioned(
                  top: sizeUnit * 2,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 9, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 10, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 11, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 2,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 12, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),

                ///
                /// ROW 4
                ///
                Positioned(
                  top: sizeUnit * 3,
                  left: sizeUnit * 0,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 13, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
                  left: sizeUnit * 1,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 14, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
                  left: sizeUnit * 2,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 15, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
                    ),
                  ),
                ),
                Positioned(
                  top: sizeUnit * 3,
                  left: sizeUnit * 3,
                  width: sizeUnit,
                  height: sizeUnit,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: sizeUnit - 2.0,
                      height: sizeUnit - 2.0,

                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 5.0, color: Colors.black),
                      ),
                      child: FlipCard(memoryTime: widget.systemStateManagement?.getMemoryGameBoardFeature?.getMemoryTime, index: 16, sizeDx: sizeUnit - 2.0, sizeDy: sizeUnit - 2.0),
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
}

class FlipCard extends StatefulWidget {
  const FlipCard({super.key, required this.memoryTime, required this.index, required this.sizeDx, required this.sizeDy});

  final MemoryTime? memoryTime;
  final int index;

  final double sizeDx;
  final double sizeDy;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with TickerProviderStateMixin {
  Timer? _timer;
  late final Ticker _ticker;
  late AnimationController _controller;
  bool isFront = true;

  MemoryWordUnit? memoryWordUnit;

  MemoryWordUnit? currentMemoryWordUnit;

  @override
  void initState() {
    super.initState();

    memoryWordUnit = MemoryWordUnit(id: '');
    memoryWordUnit?.onSetupRoot();
    memoryWordUnit?.onInitRoot();

    if (widget.index == 1) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01;
    }
    if (widget.index == 2) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02;
    }
    if (widget.index == 3) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03;
    }
    if (widget.index == 4) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04;
    }
    if (widget.index == 5) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05;
    }
    if (widget.index == 6) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06;
    }
    if (widget.index == 7) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07;
    }
    if (widget.index == 8) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08;
    }
    if (widget.index == 9) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09;
    }
    if (widget.index == 10) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10;
    }
    if (widget.index == 11) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11;
    }
    if (widget.index == 12) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12;
    }
    if (widget.index == 13) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13;
    }
    if (widget.index == 14) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14;
    }
    if (widget.index == 15) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15;
    }
    if (widget.index == 16) {
      currentMemoryWordUnit = widget.memoryTime?.getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16;
    }

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    _ticker = createTicker((Duration elapsed) {
      if (memoryWordUnit?.getMemoryWordUnitDataModel?.getId != currentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId) {
        setState(() {
          memoryWordUnit?.getMemoryWordUnitDataModel?.setId(value: currentMemoryWordUnit?.getMemoryWordUnitDataModel?.getId, isPriorityOverride: true);
        });
      }
      if (memoryWordUnit?.getMemoryWordUnitDataModel?.getShowStatus != currentMemoryWordUnit?.getMemoryWordUnitDataModel?.getShowStatus) {
        memoryWordUnit?.getMemoryWordUnitDataModel?.setShowStatus(value: currentMemoryWordUnit?.getMemoryWordUnitDataModel?.getShowStatus, isPriorityOverride: true);

        if (memoryWordUnit?.getMemoryWordUnitDataModel?.isShow() == true) {
          if (isFront == true) {
            flipBack();
          }
        }

        if (memoryWordUnit?.getMemoryWordUnitDataModel?.isHide() == true) {
          if (isFront == false) {
            flipFront();
          }
        }

        if (memoryWordUnit?.getMemoryWordUnitDataModel?.isHiddenUnderneath() == true) {
          hiddenUnderneath();
        }

        if (memoryWordUnit?.getMemoryWordUnitDataModel?.isShowComplete() == true) {
          unHiddenUnderneath();
          Future.delayed(Duration(milliseconds: 100), () {
            flipBack();
          });
        }

        if (memoryWordUnit?.getMemoryWordUnitDataModel?.isUnHiddenUnderneath() == true) {
          unHiddenUnderneath();
        }
      }

      if (true) {
        if (kDebugMode) {
          print('a');
        }
      }
    })..start();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        // flipBack();
      });
    });
  }

  void flipFront() {
    if (!isFront) {
      _controller.reverse();
      isFront = true;

      memoryWordUnit?.getMemoryWordUnitDataModel?.hiding();
    }
  }

  void flipBack() {
    if (isFront) {
      _controller.forward();
      isFront = false;

      memoryWordUnit?.getMemoryWordUnitDataModel?.showing();
    }
  }

  void hiddenUnderneath() {
    if (isHiddenUnderneath == false) {
      setState(() {
        isHiddenUnderneath = true;
      });
    }
  }

  void unHiddenUnderneath() {
    if (isHiddenUnderneath == true) {
      setState(() {
        isHiddenUnderneath = false;
      });
    }
  }

  bool isHiddenUnderneath = false;

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final angle = _controller.value * pi;

              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001) // tạo hiệu ứng 3D
                  ..rotateY(angle),
                child: angle <= pi / 2 ? front() : Transform(alignment: Alignment.center, transform: Matrix4.rotationY(pi), child: back()),
              );
            },
          ),

          AnimatedPositioned(
            top: isHiddenUnderneath ? 0 : -widget.sizeDy,
            left: isHiddenUnderneath ? 0 : -widget.sizeDx,
            duration: const Duration(milliseconds: 300),
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                // border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget front() {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
      ),
      alignment: Alignment.center,
      child: Text('FRONT ${memoryWordUnit?.getMemoryWordUnitDataModel?.getId ?? '...'}', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }

  Widget back() {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withValues(alpha: 0.5),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0), bottomLeft: Radius.circular(12.0)),
      ),
      alignment: Alignment.center,
      child: const Text('BACK', style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}
