import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/blackboard/models/blackboard_feature.dart';
import 'package:frame_creator_v2/features/blackboard/widgets/contents/blackboard_content_widget.dart';

class BlackboardWidget extends StatefulWidget {
  const BlackboardWidget({super.key, required this.blackboardFeature});

  final BlackboardFeature? blackboardFeature;

  @override
  State<BlackboardWidget> createState() => _BlackboardWidgetState();
}

class _BlackboardWidgetState extends State<BlackboardWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  BlackboardContentWidget? _blackboardContentWidget;

  @override
  void initState() {
    super.initState();

    _blackboardContentWidget = BlackboardContentWidget(
      systemStateManagement: widget.blackboardFeature?.getSystemStateManagement,
      sizeDx: widget.blackboardFeature?.getSizeDx ?? 0,
      sizeDy: widget.blackboardFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.blackboardFeature?.getTopPosition;
    rightPosition = widget.blackboardFeature?.getRightPosition;
    bottomPosition = widget.blackboardFeature?.getBottomPosition;
    leftPosition = widget.blackboardFeature?.getLeftPosition;
    sizeDx = widget.blackboardFeature?.getSizeDx ?? 0;
    sizeDy = widget.blackboardFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.blackboardFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.blackboardFeature?.getTopPosition) {
        topPosition = widget.blackboardFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.blackboardFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.blackboardFeature?.getRightPosition) {
        rightPosition = widget.blackboardFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.blackboardFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.blackboardFeature?.getBottomPosition) {
        bottomPosition = widget.blackboardFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.blackboardFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.blackboardFeature?.getLeftPosition) {
        leftPosition = widget.blackboardFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.blackboardFeature?.getSizeDx) {
        sizeDx = widget.blackboardFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.blackboardFeature?.getSizeDy) {
        sizeDy = widget.blackboardFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.blackboardFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.blackboardFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.blackboardFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
          ? FadeInDown(
              animate: true,
              child: Container(
                width: sizeDx,
                height: sizeDy,
                decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0)),
                child: Stack(children: [isActivatedWindow ? _blackboardContentWidget ?? Container() : Container()]),
              ),
            )
          : Container(),
    );
  }
}
