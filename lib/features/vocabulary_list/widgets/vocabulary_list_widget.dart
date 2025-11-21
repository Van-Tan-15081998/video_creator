import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/features/vocabulary_list/models/vocabulary_list_feature.dart';

class VocabularyListWidget extends StatefulWidget {
  const VocabularyListWidget({super.key, required this.vocabularyListFeature});

  final VocabularyListFeature? vocabularyListFeature;

  @override
  State<VocabularyListWidget> createState() => _VocabularyListWidgetState();
}

class _VocabularyListWidgetState extends State<VocabularyListWidget> with SingleTickerProviderStateMixin {
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
      top: widget.vocabularyListFeature?.getTopPosition,
      right: widget.vocabularyListFeature?.getRightPosition,
      bottom: widget.vocabularyListFeature?.getBottomPosition,
      left: widget.vocabularyListFeature?.getLeftPosition,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: EdgeInsets.all(5.0),
        width: widget.vocabularyListFeature?.getSizeDx,
        height: widget.vocabularyListFeature?.getSizeDy,
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.5)),
      ),
    );
  }
}