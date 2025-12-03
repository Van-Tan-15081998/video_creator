import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/conversation/models/conversation_feature.dart';
import 'package:frame_creator_v2/features/conversation/widgets/contents/conversation_content_widget.dart';

class ConversationWidget extends StatefulWidget {
  const ConversationWidget({super.key, required this.conversationFeature});

  final ConversationFeature? conversationFeature;

  @override
  State<ConversationWidget> createState() => _ConversationWidgetState();
}

class _ConversationWidgetState extends State<ConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  ConversationContentWidget? _conversationContentWidget;

  @override
  void initState() {
    super.initState();

    _conversationContentWidget = ConversationContentWidget(
      systemStateManagement: widget.conversationFeature?.getSystemStateManagement,
      sizeDx: widget.conversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.conversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.conversationFeature?.getTopPosition;
    rightPosition = widget.conversationFeature?.getRightPosition;
    bottomPosition = widget.conversationFeature?.getBottomPosition;
    leftPosition = widget.conversationFeature?.getLeftPosition;
    sizeDx = widget.conversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.conversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.conversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.conversationFeature?.getTopPosition) {
        topPosition = widget.conversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.conversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.conversationFeature?.getRightPosition) {
        rightPosition = widget.conversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.conversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.conversationFeature?.getBottomPosition) {
        bottomPosition = widget.conversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.conversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.conversationFeature?.getLeftPosition) {
        leftPosition = widget.conversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.conversationFeature?.getSizeDx) {
        sizeDx = widget.conversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.conversationFeature?.getSizeDy) {
        sizeDy = widget.conversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      if (isUpdate == true) {
        setState(() {
          isUpdate = false;
        });
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.conversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
          setState(() {
            isAnimatedShow = true;
          });
        }

        if (isAnimatedShow == true) {
          if (widget.conversationFeature?.checkConditionActiveByDirection() == false) {
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
                child: Stack(children: [_conversationContentWidget ?? Container()]),
              ),
            )
          : Container(),
    );
  }
}
