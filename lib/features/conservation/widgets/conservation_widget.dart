import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/conservation/models/conservation_feature.dart';
import 'package:frame_creator_v2/features/conservation/widgets/contents/conservation_content_widget.dart';

class ConservationWidget extends StatefulWidget {
  const ConservationWidget({super.key, required this.conservationFeature});

  final ConservationFeature? conservationFeature;

  @override
  State<ConservationWidget> createState() => _ConservationWidgetState();
}

class _ConservationWidgetState extends State<ConservationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  ConservationContentWidget? _conservationContentWidget;

  @override
  void initState() {
    super.initState();

    _conservationContentWidget = ConservationContentWidget(
      systemStateManagement: widget.conservationFeature?.getSystemStateManagement,
      sizeDx: widget.conservationFeature?.getSizeDx ?? 0,
      sizeDy: widget.conservationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.conservationFeature?.getTopPosition;
    rightPosition = widget.conservationFeature?.getRightPosition;
    bottomPosition = widget.conservationFeature?.getBottomPosition;
    leftPosition = widget.conservationFeature?.getLeftPosition;
    sizeDx = widget.conservationFeature?.getSizeDx ?? 0;
    sizeDy = widget.conservationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.conservationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.conservationFeature?.getTopPosition) {
        topPosition = widget.conservationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.conservationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.conservationFeature?.getRightPosition) {
        rightPosition = widget.conservationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.conservationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.conservationFeature?.getBottomPosition) {
        bottomPosition = widget.conservationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.conservationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.conservationFeature?.getLeftPosition) {
        leftPosition = widget.conservationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.conservationFeature?.getSizeDx) {
        sizeDx = widget.conservationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.conservationFeature?.getSizeDy) {
        sizeDy = widget.conservationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.conservationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.conservationFeature?.checkConditionActiveByDirection() == false) {
            isAnimatedShow = false;
          }
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
      duration: const Duration(milliseconds: 100),
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
                child: Stack(children: [_conservationContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
