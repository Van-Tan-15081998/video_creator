import 'package:frame_creator_v2/components/animated_background/models/basic_movement_object.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/movement_objects/basic_animated_symbol_sprite.dart';

class AnimatedIconStatus {
  /// -----
  /// TODO:
  /// -----
  BasicMovementObject? _moHinh;
  BasicMovementObject? get getMoHinh => _moHinh;
  Future<void> setMoHinh({required BasicMovementObject? value}) async {
    _moHinh = value;
  }

  void onVoidCaiDatMoHinh({required BasicMovementObject? value}) {
    _moHinh = value;
  }

  /// -----
  /// TODO:
  /// -----
  AnimatedIconStatus({required BasicMovementObject? moHinh}) {
    setMoHinh(value: moHinh);
  }

  /// -----
  /// TODO:
  /// -----
  BasicAnimatedSymbolSprite? _spriteVienDan;
  BasicAnimatedSymbolSprite? get getSpriteVienDan => _spriteVienDan;
  Future<void> onCaiDatSpriteVienDan({required BasicAnimatedSymbolSprite? value}) async {
    _spriteVienDan ??= value;
    return;
  }
}
