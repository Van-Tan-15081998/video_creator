import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/vocabulary_definition_feature.dart';

class VocabularyDefinitionWidget extends StatefulWidget {
  const VocabularyDefinitionWidget({super.key, required this.vocabularyDefinitionFeature});

  final VocabularyDefinitionFeature? vocabularyDefinitionFeature;

  @override
  State<VocabularyDefinitionWidget> createState() => _VocabularyDefinitionWidgetState();
}

class _VocabularyDefinitionWidgetState extends State<VocabularyDefinitionWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((Duration elapsed) {
      ///
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
      top: widget.vocabularyDefinitionFeature?.getTopPosition,
      right: widget.vocabularyDefinitionFeature?.getRightPosition,
      bottom: widget.vocabularyDefinitionFeature?.getBottomPosition,
      left: widget.vocabularyDefinitionFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.vocabularyDefinitionFeature?.getSizeDx,
        height: widget.vocabularyDefinitionFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}