import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyDefinitionFlameWidget extends FlameGame {
  VocabularyDefinitionFlameWidget({required this.systemStateManagement, required this.sizeDx, required this.sizeDy}) {
    setCurrentVocabularyItem(value: systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItem, isPriorityOverride: true);
  }

  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  late SpriteAnimationComponent spriteComponentSS01;
  late SpriteAnimationComponent spriteComponentSS02;

  TextComponent? nameSpriteComponentSS01;
  TextComponent? nameSpriteComponentSS02;

  TextComponent? borderNameSpriteComponentSS01;
  TextComponent? borderNameSpriteComponentSS02;

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _currentVocabularyItem;
  VocabularyItem? get getCurrentVocabularyItem => _currentVocabularyItem;
  void setCurrentVocabularyItem({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItem = value;
    } else {
      _currentVocabularyItem ??= value;
    }

    return;
  }

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
    borderNameSpriteComponentSS01 = TextComponent(
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
    nameSpriteComponentSS01 = TextComponent(
      text: 'Tommy',
      position: Vector2(spriteComponentSS01.x, spriteComponentSS01.y + (sizeDyCharacterSS01 / 2) + 10.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
      ),
    );

    /// Viền Tên Nhân Vật 2
    borderNameSpriteComponentSS02 = TextComponent(
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
    nameSpriteComponentSS02 = TextComponent(
      text: 'Nathan',
      position: Vector2(spriteComponentSS02.x, spriteComponentSS02.y + (sizeDyCharacterSS02 / 2) + 10.0), // vị trí trên màn hình
      textRenderer: TextPaint(
        style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
      ),
    );

    borderNameSpriteComponentSS01?.anchor = Anchor.center;
    borderNameSpriteComponentSS02?.anchor = Anchor.center;
    nameSpriteComponentSS01?.anchor = Anchor.center;
    nameSpriteComponentSS02?.anchor = Anchor.center;

    if (false) {
      add(spriteComponentSS01);
      add(spriteComponentSS02);

      if (borderNameSpriteComponentSS01 != null) {
        add(borderNameSpriteComponentSS01!);
      }
      if (borderNameSpriteComponentSS02 != null) {
        add(borderNameSpriteComponentSS02!);
      }
      if (nameSpriteComponentSS01 != null) {
        add(nameSpriteComponentSS01!);
      }
      if (nameSpriteComponentSS02 != null) {
        add(nameSpriteComponentSS02!);
      }
    }

    systemStateManagement?.getVocabularyDefinitionFeature?.onActivateLeftCharacter = () {
      add(spriteComponentSS01);
      if (borderNameSpriteComponentSS01 != null) {
        add(borderNameSpriteComponentSS01!);
      }
      if (nameSpriteComponentSS01 != null) {
        add(nameSpriteComponentSS01!);
      }
    };

    systemStateManagement?.getVocabularyDefinitionFeature?.onDeActivateLeftCharacter = () {
      if (spriteComponentSS01.isMounted == true) {
        remove(spriteComponentSS01);
      }
      if (borderNameSpriteComponentSS01?.isMounted == true) {
        remove(borderNameSpriteComponentSS01!);
      }
      if (nameSpriteComponentSS01?.isMounted == true) {
        remove(nameSpriteComponentSS01!);
      }
    };
    systemStateManagement?.getVocabularyDefinitionFeature?.onActivateRightCharacter = () {
      add(spriteComponentSS02);
      if (borderNameSpriteComponentSS02 != null) {
        add(borderNameSpriteComponentSS02!);
      }
      if (nameSpriteComponentSS02 != null) {
        add(nameSpriteComponentSS02!);
      }
    };
    systemStateManagement?.getVocabularyDefinitionFeature?.onDeactivateRightCharacter = () {
      if (spriteComponentSS02.isMounted == true) {
        remove(spriteComponentSS02);
      }
      if (borderNameSpriteComponentSS02?.isMounted == true) {
        remove(borderNameSpriteComponentSS02!);
      }
      if (nameSpriteComponentSS02?.isMounted == true) {
        remove(nameSpriteComponentSS02!);
      }
    };
  }

  @override
  void update(double dt) {
    super.update(dt);
    // logic game mỗi frame ở đây
    if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnLeft == true) {
      if (spriteComponentSS01.isMounted == true) {
        remove(spriteComponentSS01);
      }
      if (borderNameSpriteComponentSS01?.isMounted == true) {
        remove(borderNameSpriteComponentSS01!);
      }
      if (nameSpriteComponentSS01?.isMounted == true) {
        remove(nameSpriteComponentSS01!);
      }

      /// Add ComponentSS02
      if (spriteComponentSS02.isMounted == false) {
        add(spriteComponentSS02);
      }
      if (borderNameSpriteComponentSS02?.isMounted == false) {
        add(borderNameSpriteComponentSS02!);
      }
      if (nameSpriteComponentSS02?.isMounted == false) {
        add(nameSpriteComponentSS02!);
      }
    } else if (getCurrentVocabularyItem?.getVocabularyDataModel?.getIsExampleOnRight == true) {
      if (spriteComponentSS02.isMounted == true) {
        remove(spriteComponentSS02);
      }
      if (borderNameSpriteComponentSS02?.isMounted == true) {
        remove(borderNameSpriteComponentSS02!);
      }
      if (nameSpriteComponentSS02?.isMounted == true) {
        remove(nameSpriteComponentSS02!);
      }

      /// Add ComponentSS01
      if (spriteComponentSS01.isMounted == false) {
        add(spriteComponentSS01);
      }
      if (borderNameSpriteComponentSS01?.isMounted == false) {
        add(borderNameSpriteComponentSS01!);
      }
      if (nameSpriteComponentSS01?.isMounted == false) {
        add(nameSpriteComponentSS01!);
      }
    }
  }
}
