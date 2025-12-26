import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/memory_game_board_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/widgets/contents/memory_game_board_character_widget.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/widgets/contents/memory_game_board_content_widget.dart';

class MemoryGameBoardWidget extends StatefulWidget {
  const MemoryGameBoardWidget({super.key, required this.memoryGameBoardFeature});

  final MemoryGameBoardFeature? memoryGameBoardFeature;

  @override
  State<MemoryGameBoardWidget> createState() => _MemoryGameBoardWidgetState();
}

class _MemoryGameBoardWidgetState extends State<MemoryGameBoardWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  MemoryGameBoardContentWidget? _memoryGameBoardContentWidget;

  @override
  void initState() {
    super.initState();

    _memoryGameBoardContentWidget = MemoryGameBoardContentWidget(
      systemStateManagement: widget.memoryGameBoardFeature?.getSystemStateManagement,
      sizeDx: widget.memoryGameBoardFeature?.getSizeDx ?? 0,
      sizeDy: widget.memoryGameBoardFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.memoryGameBoardFeature?.getTopPosition;
    rightPosition = widget.memoryGameBoardFeature?.getRightPosition;
    bottomPosition = widget.memoryGameBoardFeature?.getBottomPosition;
    leftPosition = widget.memoryGameBoardFeature?.getLeftPosition;
    sizeDx = widget.memoryGameBoardFeature?.getSizeDx ?? 0;
    sizeDy = widget.memoryGameBoardFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.memoryGameBoardFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.memoryGameBoardFeature?.getTopPosition) {
        topPosition = widget.memoryGameBoardFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.memoryGameBoardFeature?.getRightPosition) {
        rightPosition = widget.memoryGameBoardFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.memoryGameBoardFeature?.getBottomPosition) {
        bottomPosition = widget.memoryGameBoardFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.memoryGameBoardFeature?.getLeftPosition) {
        leftPosition = widget.memoryGameBoardFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.memoryGameBoardFeature?.getSizeDx) {
        sizeDx = widget.memoryGameBoardFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.memoryGameBoardFeature?.getSizeDy) {
        sizeDy = widget.memoryGameBoardFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.memoryGameBoardFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.memoryGameBoardFeature?.checkConditionActiveByDirection() == false) {
        ///
        if (isActivatedWindow == true && isAnimatedShow == true && isMarkedUnactivatedWindow == false) {
          setState(() {
            isMarkedUnactivatedWindow = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isActivatedWindow = false;
              isAnimatedShow = false;
              isMarkedUnactivatedWindow = false;
            });
          });
        }
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.memoryGameBoardFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }
      });
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      top: topPosition,
      right: rightPosition,
      bottom: bottomPosition,
      left: leftPosition,
      width: sizeDx,
      height: sizeDy,

      child: isAnimatedShow
          ? FadeInLeft(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow ? _memoryGameBoardContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: MemoryGameBoardCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
