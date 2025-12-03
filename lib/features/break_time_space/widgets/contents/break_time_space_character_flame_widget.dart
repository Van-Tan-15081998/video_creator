import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakTimeSpaceCharacterFlameWidget extends FlameGame {
  BreakTimeSpaceCharacterFlameWidget({required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  late SpriteAnimationComponent spriteComponentSS01;

  @override
  Color backgroundColor() => Colors.transparent; // ví dụ: tím đậm

  @override
  Future<void> onLoad() async {
    // Load sprite sheet
    final imageSS01 = await images.load('sprite_sheet/11B/monster11B.png');

    SpriteAnimation spriteAnimationSS01 = SpriteAnimation.fromFrameData(
      imageSS01,
      SpriteAnimationData.sequenced(
        amount: 91, // Số frame trong spriteSheet
        textureSize: Vector2(260, 250), // Kích thước mỗi frame
        amountPerRow: 13,
        stepTime: 0.03, // Tốc độ animation
      ),
    );

    double sizeDxCharacterSS01 = 260.0 * 1.2;
    double sizeDyCharacterSS01 = 250.0 * 1.2;

    spriteComponentSS01 = SpriteAnimationComponent()
      ..animation = spriteAnimationSS01
      ..size = Vector2(sizeDxCharacterSS01, sizeDyCharacterSS01)
      ..position = Vector2(sizeDxCharacterSS01 / 2 + 50.0, sizeDy - (sizeDyCharacterSS01 / 2 + 100));

    spriteComponentSS01.anchor = Anchor.center;

    /// Viền Tên Nhân Vật 1
    final borderNameSpriteComponentSS01 = TextComponent(
      text: 'Tommy',
      position: Vector2(spriteComponentSS01.x, spriteComponentSS01.y + (sizeDyCharacterSS01 / 2) + 10.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(
          // color: Color(0xFF838B83),
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 10
            ..color = Color(0xFF000000),
          letterSpacing: 5.0,
        ),
      ),
    );

    /// Tên Nhân Vật 1
    final nameSpriteComponentSS01 = TextComponent(
      text: 'Tommy',
      position: Vector2(spriteComponentSS01.x, spriteComponentSS01.y + (sizeDyCharacterSS01 / 2) + 60.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
      ),
    );

    borderNameSpriteComponentSS01.anchor = Anchor.center;
    nameSpriteComponentSS01.anchor = Anchor.center;

    add(spriteComponentSS01);

    add(borderNameSpriteComponentSS01);
    add(nameSpriteComponentSS01);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // logic game mỗi frame ở đây
  }
}
