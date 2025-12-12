import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/break_time_space/models/break_time_space_feature.dart';
import 'package:frame_creator_v2/features/break_time_space/widgets/contents/break_time_space_character_widget.dart';
import 'package:frame_creator_v2/features/break_time_space/widgets/contents/break_time_space_content_widget.dart';

class BreakTimeSpaceWidget extends StatefulWidget {
  const BreakTimeSpaceWidget({super.key, required this.breakTimeSpaceFeature});

  final BreakTimeSpaceFeature? breakTimeSpaceFeature;

  @override
  State<BreakTimeSpaceWidget> createState() => _BreakTimeSpaceWidgetState();
}

class _BreakTimeSpaceWidgetState extends State<BreakTimeSpaceWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  BreakTimeSpaceContentWidget? _breakTimeSpaceContentWidget;

  @override
  void initState() {
    super.initState();

    _breakTimeSpaceContentWidget = BreakTimeSpaceContentWidget(
      systemStateManagement: widget.breakTimeSpaceFeature?.getSystemStateManagement,
      sizeDx: widget.breakTimeSpaceFeature?.getSizeDx ?? 0,
      sizeDy: widget.breakTimeSpaceFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.breakTimeSpaceFeature?.getTopPosition;
    rightPosition = widget.breakTimeSpaceFeature?.getRightPosition;
    bottomPosition = widget.breakTimeSpaceFeature?.getBottomPosition;
    leftPosition = widget.breakTimeSpaceFeature?.getLeftPosition;
    sizeDx = widget.breakTimeSpaceFeature?.getSizeDx ?? 0;
    sizeDy = widget.breakTimeSpaceFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.breakTimeSpaceFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.breakTimeSpaceFeature?.getTopPosition) {
        topPosition = widget.breakTimeSpaceFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.breakTimeSpaceFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.breakTimeSpaceFeature?.getRightPosition) {
        rightPosition = widget.breakTimeSpaceFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.breakTimeSpaceFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.breakTimeSpaceFeature?.getBottomPosition) {
        bottomPosition = widget.breakTimeSpaceFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.breakTimeSpaceFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.breakTimeSpaceFeature?.getLeftPosition) {
        leftPosition = widget.breakTimeSpaceFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.breakTimeSpaceFeature?.getSizeDx) {
        sizeDx = widget.breakTimeSpaceFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.breakTimeSpaceFeature?.getSizeDy) {
        sizeDy = widget.breakTimeSpaceFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.breakTimeSpaceFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.breakTimeSpaceFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.breakTimeSpaceFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? BounceInDown(
              duration: const Duration(seconds: 1),
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,

                  children: [
                    isActivatedWindow ? _breakTimeSpaceContentWidget ?? Container() : Container(),
                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: BreakTimeSpaceCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
