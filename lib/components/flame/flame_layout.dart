import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';

class MySpriteGame extends FlameGame {
  MySpriteGame({required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  late SpriteAnimationComponent spriteComponent;
  late SpriteAnimationComponent spriteComponentSS01;
  late SpriteAnimationComponent spriteComponentSS02;

  @override
  Color backgroundColor() => Colors.transparent; // ví dụ: tím đậm

  @override
  Future<void> onLoad() async {
    // Load sprite sheet
    final image = await images.load('sprite_sheet/24A/monster24A.png');

    // Cắt sprite sheet thành animation
    final spriteSheet = SpriteSheet(
      image: image,
      srcSize: Vector2(269, 230), // kích thước mỗi frame
    );

    SpriteAnimation spriteAnimation = SpriteAnimation.fromFrameData(
      image,
      SpriteAnimationData.sequenced(
        amount: 91, // Số frame trong spriteSheet
        textureSize: Vector2(269, 230), // Kích thước mỗi frame
        amountPerRow: 13,
        stepTime: 0.03, // Tốc độ animation
      ),
    );

    // Tạo SpriteAnimationComponent
    spriteComponent = SpriteAnimationComponent()
      ..animation = spriteAnimation
      ..size = Vector2(269.0, 230.0)
      ..position = Vector2(269.0 / 2 + 25.0, sizeDy - (230.0 / 2 + 25)); // đặt tại x=100, y=100

    spriteComponentSS01 = SpriteAnimationComponent()
      ..animation = spriteAnimation
      ..size = Vector2(269.0, 230.0)
      ..position = Vector2(269.0 / 2 + 25.0, sizeDy - (230.0 / 2 + 25)); // đặt tại x=100, y=100

    spriteComponentSS02 = SpriteAnimationComponent()
      ..animation = spriteAnimation
      ..size = Vector2(269.0, 230.0)
      ..position = Vector2(269.0 / 2 + 25.0, sizeDy - (230.0 / 2 + 25)); // đặt tại x=100, y=100

    spriteComponent.anchor = Anchor.center;
    spriteComponentSS01.anchor = Anchor.center;
    spriteComponentSS02.anchor = Anchor.center;

    add(spriteComponent);
    add(spriteComponentSS01);
    add(spriteComponentSS02);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // logic game mỗi frame ở đây
  }
}
