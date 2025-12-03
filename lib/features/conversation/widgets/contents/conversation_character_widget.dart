import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/flame/communication_flame_widget.dart';

class ConversationCharacterWidget extends StatefulWidget {
  const ConversationCharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<ConversationCharacterWidget> createState() => _ConversationCharacterWidgetState();
}

class _ConversationCharacterWidgetState extends State<ConversationCharacterWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ///
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: widget.sizeDx,
      height: widget.sizeDy,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: GameWidget(
              game: CommunicationFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
