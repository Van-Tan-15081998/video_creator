import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/interesting_knowledge/widgets/contents/interesting_knowledge_conversation_flame_widget.dart';

class InterestingKnowledgeConversationCharacterWidget extends StatefulWidget {
  const InterestingKnowledgeConversationCharacterWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<InterestingKnowledgeConversationCharacterWidget> createState() => _InterestingKnowledgeConversationCharacterWidgetState();
}

class _InterestingKnowledgeConversationCharacterWidgetState extends State<InterestingKnowledgeConversationCharacterWidget> {
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
              game: InterestingKnowledgeConversationFlameWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
