import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PomodoroEndingConversationFlameWidget extends FlameGame {
  PomodoroEndingConversationFlameWidget({required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  late SpriteAnimationComponent spriteComponentSS01;
  late SpriteAnimationComponent spriteComponentSS02;

  @override
  Color backgroundColor() => Colors.transparent; // ví dụ: tím đậm

  @override
  Future<void> onLoad() async {
    // Load sprite sheet
    final imageSS01 = await images.load('sprite_sheet/24A/monster24A.png');
    final imageSS02 = await images.load('sprite_sheet/20A/monster20A.png');

    SpriteAnimation spriteAnimationSS01 = SpriteAnimation.fromFrameData(
      imageSS01,
      SpriteAnimationData.sequenced(
        amount: 91, // Số frame trong spriteSheet
        textureSize: Vector2(269, 230), // Kích thước mỗi frame
        amountPerRow: 13,
        stepTime: 0.03, // Tốc độ animation
      ),
    );

    SpriteAnimation spriteAnimationSS02 = SpriteAnimation.fromFrameData(
      imageSS02,
      SpriteAnimationData.sequenced(
        amount: 91, // Số frame trong spriteSheet
        textureSize: Vector2(260, 250), // Kích thước mỗi frame
        amountPerRow: 13,
        stepTime: 0.03, // Tốc độ animation
      ),
    );

    double sizeDxCharacterSS01 = 269.0 * 1.2;
    double sizeDyCharacterSS01 = 230.0 * 1.2;

    double sizeDxCharacterSS02 = 260.0 * 1.2;
    double sizeDyCharacterSS02 = 250.0 * 1.2;

    spriteComponentSS01 = SpriteAnimationComponent()
      ..animation = spriteAnimationSS01
      ..size = Vector2(sizeDxCharacterSS01, sizeDyCharacterSS01)
      ..position = Vector2(sizeDxCharacterSS01 / 2 + 25.0, sizeDy - (sizeDyCharacterSS01 / 2 + 50));

    spriteComponentSS02 = SpriteAnimationComponent()
      ..animation = spriteAnimationSS02
      ..size = Vector2(sizeDxCharacterSS02, sizeDyCharacterSS02)
      ..position = Vector2(sizeDx - (sizeDxCharacterSS02 / 2 + 25.0), sizeDy - (sizeDyCharacterSS02 / 2 + 50));

    spriteComponentSS01.anchor = Anchor.center;
    spriteComponentSS02.anchor = Anchor.center;

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
      position: Vector2(spriteComponentSS01.x, spriteComponentSS01.y + (sizeDyCharacterSS01 / 2) + 10.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
      ),
    );

    /// Viền Tên Nhân Vật 2
    final borderNameSpriteComponentSS02 = TextComponent(
      text: 'Nathan',
      position: Vector2(spriteComponentSS02.x, spriteComponentSS02.y + (sizeDyCharacterSS02 / 2) + 10.0), // vị trí trên màn hình
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

    /// Tên Nhân Vật 2
    final nameSpriteComponentSS02 = TextComponent(
      text: 'Nathan',
      position: Vector2(spriteComponentSS02.x, spriteComponentSS02.y + (sizeDyCharacterSS02 / 2) + 10.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
      ),
    );

    borderNameSpriteComponentSS01.anchor = Anchor.center;
    borderNameSpriteComponentSS02.anchor = Anchor.center;
    nameSpriteComponentSS01.anchor = Anchor.center;
    nameSpriteComponentSS02.anchor = Anchor.center;

    add(spriteComponentSS01);
    // add(spriteComponentSS02);

    add(borderNameSpriteComponentSS01);
    // add(borderNameSpriteComponentSS02);
    add(nameSpriteComponentSS01);
    // add(nameSpriteComponentSS02);
  }

  // @override
  // void update(double dt) {
  //   super.update(dt);
  //   // logic game mỗi frame ở đây
  // }
}
