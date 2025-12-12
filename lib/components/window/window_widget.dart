import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/communication/communication_character_widget.dart';
import 'package:frame_creator_v2/components/communication/communication_widget.dart';
import 'package:frame_creator_v2/components/example_sentence/example_sentence_widget.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/components/window/word_information_component/word_information_widget.dart';

class WindowWidget extends StatefulWidget {
  const WindowWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<WindowWidget> createState() => _WindowWidgetState();
}

class _WindowWidgetState extends State<WindowWidget> {
  bool isExampleSentencePhrase = false;
  bool isCommunicationPhrase = false;

  @override
  void initState() {
    super.initState();

    isExampleSentencePhrase = false;
    isCommunicationPhrase = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(20.0)), boxShadow: []),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          ),

          isCommunicationPhrase ? CommunicationWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy) : Container(),
          isCommunicationPhrase ? CommunicationCharacterWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy) : Container(),

          isExampleSentencePhrase ? ExampleSentenceWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy) : Container(),

          // EssayWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          WordInformationWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
