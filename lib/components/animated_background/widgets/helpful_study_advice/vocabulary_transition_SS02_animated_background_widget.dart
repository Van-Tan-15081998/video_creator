import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/animated_background_widget.dart';

class VocabularyTransitionSs02AnimatedBackgroundWidget extends StatefulWidget {
  const VocabularyTransitionSs02AnimatedBackgroundWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<VocabularyTransitionSs02AnimatedBackgroundWidget> createState() => _VocabularyTransitionSs02AnimatedBackgroundWidgetState();
}

class _VocabularyTransitionSs02AnimatedBackgroundWidgetState extends State<VocabularyTransitionSs02AnimatedBackgroundWidget> {
  // @override
  // void initState() {
  //   super.initState();
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return GameWidget(
  //     game: AnimatedBackgroundWidget(
  //       chieuCaoManHinhPhiVatLy: widget.sizeDy,
  //       chieuRongManHinhPhiVatLy: widget.sizeDx,
  //       textRenderer: TextPaint(
  //         style: TextStyle(
  //           fontFamily: 'TitanOne',
  //           fontSize: 80,
  //           fontWeight: FontWeight.bold,
  //           color: Color(0xFF000000).withValues(alpha: 0.8),
  //           shadows: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.75), spreadRadius: 5.0, offset: Offset(1, 1), blurRadius: 1)],
  //         ),
  //       ),
  //       backgroundAnimatedIcon: '🔋',
  //       movementUnit: 1.0,
  //     ),
  //   );
  // }
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
      backgroundAnimatedIcon: '🚕',
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
