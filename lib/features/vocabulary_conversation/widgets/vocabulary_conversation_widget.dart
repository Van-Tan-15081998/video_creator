import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/core/simple_position_size.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/models/vocabulary_conversation_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/widgets/contents/vocabulary_conversation_character_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/widgets/contents/vocabulary_conversation_content_widget.dart';

class VocabularyConversationWidget extends StatefulWidget {
  const VocabularyConversationWidget({super.key, required this.vocabularyConversationFeature});

  final VocabularyConversationFeature? vocabularyConversationFeature;

  @override
  State<VocabularyConversationWidget> createState() => _ConversationWidgetState();
}

class _ConversationWidgetState extends State<VocabularyConversationWidget> with SimpleAnimationPositionSize, SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  VocabularyConversationContentWidget? _vocabularyConversationContentWidget;

  @override
  void initState() {
    super.initState();

    _vocabularyConversationContentWidget = VocabularyConversationContentWidget(
      systemStateManagement: widget.vocabularyConversationFeature?.getSystemStateManagement,
      sizeDx: widget.vocabularyConversationFeature?.getSizeDx ?? 0,
      sizeDy: widget.vocabularyConversationFeature?.getSizeDy ?? 0,
    );

    topPosition = widget.vocabularyConversationFeature?.getTopPosition;
    rightPosition = widget.vocabularyConversationFeature?.getRightPosition;
    bottomPosition = widget.vocabularyConversationFeature?.getBottomPosition;
    leftPosition = widget.vocabularyConversationFeature?.getLeftPosition;
    sizeDx = widget.vocabularyConversationFeature?.getSizeDx ?? 0;
    sizeDy = widget.vocabularyConversationFeature?.getSizeDy ?? 0;

    _ticker = createTicker((Duration elapsed) {
      ///

      if (widget.vocabularyConversationFeature?.isConditionActiveByTopDirection() == true && topPosition != widget.vocabularyConversationFeature?.getTopPosition) {
        topPosition = widget.vocabularyConversationFeature?.getTopPosition;
        isUpdate = true;
      }

      if (widget.vocabularyConversationFeature?.isConditionActiveByRightDirection() == true && rightPosition != widget.vocabularyConversationFeature?.getRightPosition) {
        rightPosition = widget.vocabularyConversationFeature?.getRightPosition;
        isUpdate = true;
      }

      if (widget.vocabularyConversationFeature?.isConditionActiveByBottomDirection() == true && bottomPosition != widget.vocabularyConversationFeature?.getBottomPosition) {
        bottomPosition = widget.vocabularyConversationFeature?.getBottomPosition;
        isUpdate = true;
      }

      if (widget.vocabularyConversationFeature?.isConditionActiveByLeftDirection() == true && leftPosition != widget.vocabularyConversationFeature?.getLeftPosition) {
        leftPosition = widget.vocabularyConversationFeature?.getLeftPosition;
        isUpdate = true;
      }

      if (sizeDx != widget.vocabularyConversationFeature?.getSizeDx) {
        sizeDx = widget.vocabularyConversationFeature?.getSizeDx ?? 0;
        isUpdate = true;
      }

      if (sizeDy != widget.vocabularyConversationFeature?.getSizeDy) {
        sizeDy = widget.vocabularyConversationFeature?.getSizeDy ?? 0;
        isUpdate = true;
      }

      /// -----
      /// TODO: Check Update Activate Window
      /// -----
      if (widget.vocabularyConversationFeature?.checkConditionActiveByDirection() == true) {
        ///
        if (isActivatedWindow == false) {
          setState(() {
            isActivatedWindow = true;
          });
        }
      } else if (widget.vocabularyConversationFeature?.checkConditionActiveByDirection() == false) {
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
        if (widget.vocabularyConversationFeature?.checkConditionActiveByDirection() == true && isAnimatedShow == false) {
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
                child: Stack(
                  children: [
                    isActivatedWindow
                        ? ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                            child: TransparentEffectWallWidget(sizeDx: sizeDx, sizeDy: sizeDy),
                          )
                        : Container(),

                    isActivatedWindow ? _vocabularyConversationContentWidget ?? Container() : Container(),

                    isActivatedWindow
                        ? Positioned(
                            top: 0,
                            left: 0,
                            width: sizeDx,
                            height: sizeDy,
                            child: VocabularyConversationCharacterWidget(sizeDx: sizeDx, sizeDy: sizeDy),
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
