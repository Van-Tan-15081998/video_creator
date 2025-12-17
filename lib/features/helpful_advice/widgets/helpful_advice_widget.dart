import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/helpful_advice/models/helpful_advice_feature.dart';
import 'package:frame_creator_v2/features/helpful_advice/widgets/contents/helpful_advice_content_widget.dart';

class HelpfulAdviceWidget extends StatefulWidget {
  const HelpfulAdviceWidget({super.key, required this.helpfulAdviceFeature});

  final HelpfulAdviceFeature? helpfulAdviceFeature;

  @override
  State<HelpfulAdviceWidget> createState() => _HelpfulAdviceWidgetState();
}

class _HelpfulAdviceWidgetState extends State<HelpfulAdviceWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  HelpfulAdviceContentWidget? _helpfulAdviceContentWidget;

  @override
  void initState() {
    super.initState();

    _helpfulAdviceContentWidget = HelpfulAdviceContentWidget(
      systemStateManagement: widget.helpfulAdviceFeature?.getSystemStateManagement,
      sizeDx: widget.helpfulAdviceFeature?.getSizeDx ?? 0,
      sizeDy: widget.helpfulAdviceFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.helpfulAdviceFeature?.getTopPosition;
    rightPosition = widget.helpfulAdviceFeature?.getRightPosition;
    bottomPosition = widget.helpfulAdviceFeature?.getBottomPosition;
    leftPosition = widget.helpfulAdviceFeature?.getLeftPosition;
    sizeDx = widget.helpfulAdviceFeature?.getSizeDx ?? 0;
    sizeDy = widget.helpfulAdviceFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.helpfulAdviceFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.helpfulAdviceFeature?.getTopPosition) {
        topPosition = widget.helpfulAdviceFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.helpfulAdviceFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.helpfulAdviceFeature?.getRightPosition) {
        rightPosition = widget.helpfulAdviceFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.helpfulAdviceFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.helpfulAdviceFeature?.getBottomPosition) {
        bottomPosition = widget.helpfulAdviceFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.helpfulAdviceFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.helpfulAdviceFeature?.getLeftPosition) {
        leftPosition = widget.helpfulAdviceFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.helpfulAdviceFeature?.getSizeDx) {
        sizeDx = widget.helpfulAdviceFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.helpfulAdviceFeature?.getSizeDy) {
        sizeDy = widget.helpfulAdviceFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.helpfulAdviceFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.helpfulAdviceFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.helpfulAdviceFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInRight(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(
                  children: [
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),
                    isActivatedWindow ? _helpfulAdviceContentWidget ?? Container() : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
