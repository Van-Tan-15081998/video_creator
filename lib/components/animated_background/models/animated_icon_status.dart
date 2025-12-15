import 'package:frame_creator_v2/components/animated_background/models/basic_movement_object.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/movement_objects/basic_animated_icon_sprite.dart';

class AnimatedIconStatus {
  /// -----
  /// TODO:
  /// -----
  BasicMovementObject? _moHinh;
  BasicMovementObject? get getMoHinh => _moHinh;
  Future<void> caiDatMoHinh({required BasicMovementObject? value}) async {
    _moHinh = value;
  }

  void onVoidCaiDatMoHinh({required BasicMovementObject? value}) {
    _moHinh = value;
  }

  /// -----
  /// TODO:
  /// -----
  AnimatedIconStatus({required BasicMovementObject? moHinh}) {
    caiDatMoHinh(value: moHinh);
  }

  /// -----
  /// TODO:
  /// -----
  BasicAnimatedIconSprite? _spriteVienDan;
  BasicAnimatedIconSprite? get getSpriteVienDan => _spriteVienDan;
  Future<void> onCaiDatSpriteVienDan({required BasicAnimatedIconSprite? value}) async {
    _spriteVienDan ??= value;
    return;
  }
}
