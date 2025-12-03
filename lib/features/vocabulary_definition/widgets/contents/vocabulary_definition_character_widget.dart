import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/widgets/contents/vocabulary_definition_flame_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class VocabularyDefinitionCharacterWidget extends StatefulWidget {
  const VocabularyDefinitionCharacterWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyDefinitionCharacterWidget> createState() => _IntroductoryConversationCharacterWidgetState();
}

class _IntroductoryConversationCharacterWidgetState extends State<VocabularyDefinitionCharacterWidget> {
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
              game: VocabularyDefinitionFlameWidget(systemStateManagement: widget.systemStateManagement, sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
            ),
          ),
        ],
      ),
    );
  }
}
