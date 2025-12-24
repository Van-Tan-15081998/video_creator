import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/animated_background_widget.dart';

class VocabularyTransitionSs14AnimatedBackgroundWidget extends StatefulWidget {
  const VocabularyTransitionSs14AnimatedBackgroundWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyTransitionSs14AnimatedBackgroundWidget> createState() => _VocabularyTransitionSs14AnimatedBackgroundWidgetState();
}

class _VocabularyTransitionSs14AnimatedBackgroundWidgetState extends State<VocabularyTransitionSs14AnimatedBackgroundWidget> {

  @override
  void initState() {
    super.initState();

    animatedBackgroundWidget = AnimatedBackgroundWidget(
      chieuCaoManHinhPhiVatLy: widget.sizeDy,
      chieuRongManHinhPhiVatLy: widget.sizeDx,
      textRenderer: TextPaint(
        style: TextStyle(
          fontFamily: 'TitanOne',
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000).withValues(alpha: 0.8),
          shadows: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.75), spreadRadius: 5.0, offset: Offset(1, 1), blurRadius: 1)],
        ),
      ),
      backgroundAnimatedIcon: '🚏',
      imageSpriteSource: 'assets/images/animated_background_symbols/symbol_01.webp',
      movementUnit: 1.0,
    );

    animatedBackgroundWidget?.onInit = () {
      animatedBackgroundWidget?.getAnimatedBackgroundUnitComponentA?.getDinhHuongBay?.setDinhHuongTheoPhaiSangTrai();
    };
  }

  AnimatedBackgroundWidget? animatedBackgroundWidget;

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: animatedBackgroundWidget ?? FlameGame());
  }
}
