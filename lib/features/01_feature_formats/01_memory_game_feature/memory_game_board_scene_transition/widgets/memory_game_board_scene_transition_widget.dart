import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board_scene_transition/models/memory_game_board_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board_scene_transition/widgets/contents/memory_game_board_scene_transition_content_widget.dart';

class MemoryGameBoardSceneTransitionWidget extends StatefulWidget {
  const MemoryGameBoardSceneTransitionWidget({super.key, required this.memoryGameBoardSceneTransitionFeature});

  final MemoryGameBoardSceneTransitionFeature? memoryGameBoardSceneTransitionFeature;

  @override
  State<MemoryGameBoardSceneTransitionWidget> createState() => _MemoryGameBoardSceneTransitionWidgetState();
}

class _MemoryGameBoardSceneTransitionWidgetState extends State<MemoryGameBoardSceneTransitionWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  MemoryGameBoardSceneTransitionContentWidget? _memoryGameBoardSceneTransitionContentWidget;

  @override
  void initState() {
    super.initState();

    _memoryGameBoardSceneTransitionContentWidget = MemoryGameBoardSceneTransitionContentWidget(
      systemStateManagement: widget.memoryGameBoardSceneTransitionFeature?.getSystemStateManagement,
      sizeDx: widget.memoryGameBoardSceneTransitionFeature?.getSizeDx ?? 0,
      sizeDy: widget.memoryGameBoardSceneTransitionFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.memoryGameBoardSceneTransitionFeature?.getTopPosition;
    rightPosition = widget.memoryGameBoardSceneTransitionFeature?.getRightPosition;
    bottomPosition = widget.memoryGameBoardSceneTransitionFeature?.getBottomPosition;
    leftPosition = widget.memoryGameBoardSceneTransitionFeature?.getLeftPosition;
    sizeDx = widget.memoryGameBoardSceneTransitionFeature?.getSizeDx ?? 0;
    sizeDy = widget.memoryGameBoardSceneTransitionFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.memoryGameBoardSceneTransitionFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.memoryGameBoardSceneTransitionFeature?.getTopPosition) {
        topPosition = widget.memoryGameBoardSceneTransitionFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardSceneTransitionFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.memoryGameBoardSceneTransitionFeature?.getRightPosition) {
        rightPosition = widget.memoryGameBoardSceneTransitionFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardSceneTransitionFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.memoryGameBoardSceneTransitionFeature?.getBottomPosition) {
        bottomPosition = widget.memoryGameBoardSceneTransitionFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.memoryGameBoardSceneTransitionFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.memoryGameBoardSceneTransitionFeature?.getLeftPosition) {
        leftPosition = widget.memoryGameBoardSceneTransitionFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.memoryGameBoardSceneTransitionFeature?.getSizeDx) {
        sizeDx = widget.memoryGameBoardSceneTransitionFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.memoryGameBoardSceneTransitionFeature?.getSizeDy) {
        sizeDy = widget.memoryGameBoardSceneTransitionFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.memoryGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.memoryGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.memoryGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                child: Stack(children: [isActivatedWindow ? _memoryGameBoardSceneTransitionContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
