import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/pomodoro_starting_conversation/widgets/contents/pomodoro_starting_conversation_flame_widget.dart';

class PomodoroStartingConversationCharacterWidget extends StatefulWidget {
  const PomodoroStartingConversationCharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<PomodoroStartingConversationCharacterWidget> createState() => _PomodoroStartingConversationCharacterWidgetState();
}

class _PomodoroStartingConversationCharacterWidgetState extends State<PomodoroStartingConversationCharacterWidget> {
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
              game: PomodoroStartingConversationFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
