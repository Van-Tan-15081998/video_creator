import 'dart:async';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_icon_status.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_sprite_unit.dart';
import 'package:google_fonts/google_fonts.dart';

///
/// TODO:
///
class BasicAnimatedIconSprite extends SpriteAnimationComponent with HasVisibility {
  /// -----
  /// TODO:
  /// -----
  BasicAnimatedIconSprite({required Component? parentComponent, required AnimatedIconStatus? animatedIconStatus}) {
    caiDatParentComponent(value: parentComponent);
    caiDatAnimatedIconStatus(value: animatedIconStatus);

    position.setValues(getAnimatedIconStatus?.getMoHinh?.getDxTrongTam ?? 0, getAnimatedIconStatus?.getMoHinh?.getDyTrongTam ?? 0);
  }

  AnimatedIconStatus? _animatedIconStatus;
  AnimatedIconStatus? get getAnimatedIconStatus => _animatedIconStatus;
  Future<void> caiDatAnimatedIconStatus({required AnimatedIconStatus? value}) async {
    _animatedIconStatus ??= value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _backgroundAnimatedIcon;
  String? get getBackgroundAnimatedIcon => _backgroundAnimatedIcon;
  Future<void> setBackgroundAnimatedIcon({required String? value}) async {
    _backgroundAnimatedIcon = value;
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  Future<void> onInitRoot() async {
    caiDatTextComponent(
      value: TextComponent(
        text: getBackgroundAnimatedIcon ?? '🐤',
        position: Vector2(100, 50),
        anchor: Anchor.topLeft,
        // textRenderer: TextPaint(style: GoogleFonts.titanOne(fontSize: 26, color: Color(0xFF3C3C3C).withValues(alpha: 0.8))),
        textRenderer: getTextRenderer,
      ),
    );
    if (getTextComponent != null) {
      add(getTextComponent!);
    }

    onVoidCaiDatKiemTraHienThi(value: true);

    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  Future<void> onResetRoot() async {
    return;
  }

  TextComponent? _textComponent;
  TextComponent? get getTextComponent => _textComponent;
  Future<void> caiDatTextComponent({required TextComponent? value}) async {
    _textComponent ??= value;
    return;
  }

  TextRenderer? _textRenderer;
  TextRenderer? get getTextRenderer => _textRenderer;
  Future<void> caiDatTextRenderer({required TextRenderer? value}) async {
    _textRenderer ??= value;
    return;
  }

  /// -----
  /// TODO: DonViSpriteCoBan
  /// -----
  BasicSpriteUnit? _donViSprite;
  BasicSpriteUnit? get getDonViSprite => _donViSprite;
  Future<void> caiDatDonViSprite({required BasicSpriteUnit? value}) async {
    _donViSprite ??= value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Component? _parentComponent;
  Component? get getParentComponent => _parentComponent;
  Future<void> caiDatParentComponent({required Component? value}) async {
    _parentComponent ??= value;
    return;
  }

  Future<void> onAddToParent() async {
    if (getParentComponent != null && isMounted == false) {
      await Future.delayed(Duration.zero);

      animation = null;
      getDonViSprite?.onVoidCaiDatSpriteAnimation(value: null);

      await getParentComponent?.add(this);
    }

    return;
  }

  void onRemoveFromParent() {
    onVoidCaiDatKiemTraHienThi(value: false);

    animation = null;
    getDonViSprite?.onVoidCaiDatSpriteAnimation(value: null);

    if (isMounted == true) {
      removeFromParent();
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Danh Mô Hình Hiện Hành
  /// -----
  String? _maDinhDanhMoHinhHienHanh;
  String? get getMaDinhDanhMoHinhHienHanh => _maDinhDanhMoHinhHienHanh;
  Future<void> caiDatMaDinhDanhMoHinhHienHanh({required String? value}) async {
    _maDinhDanhMoHinhHienHanh = value;
    return;
  }

  /// -----
  /// TODO: Kiểm Tra Hiển Thị
  /// -----
  bool? _kiemTraHienThi;
  bool? get getKiemTraHienThi => _kiemTraHienThi;
  void onVoidCaiDatKiemTraHienThi({required bool? value}) {
    _kiemTraHienThi = value;

    if (_kiemTraHienThi == false || _kiemTraHienThi == null) {
      isVisible = false;
    } else if (_kiemTraHienThi == true) {
      isVisible = true;
    }

    return;
  }

  /// -----
  /// TODO: Cài Đặt Mô Hình Chi Tiết
  /// -----
  Future<void> caiDatMoHinhChiTiet() async {
    return;
  }

  /// -----
  /// TODO: Cập Nhật Position Và Size
  /// -----
  double dxCapNhat = 0;
  double dyCapNhat = 0;
  double chieuCaoThanCapNhat = 0;
  double chieuRongThanCapNhat = 0;
  double gocXoay = 0;

  void onVoidCapNhatPositionSizeValues() {
    if (getKiemTraHienThi == true) {
      ///
      /// TODO:
      ///

      dxCapNhat = getAnimatedIconStatus?.getMoHinh?.getDxTrongTam ?? 0;
      dyCapNhat = getAnimatedIconStatus?.getMoHinh?.getDyTrongTam ?? 0;
      chieuCaoThanCapNhat = getAnimatedIconStatus?.getMoHinh?.getChieuCaoThan ?? 0;
      chieuRongThanCapNhat = getAnimatedIconStatus?.getMoHinh?.getChieuRongThan ?? 0;

      gocXoay = getAnimatedIconStatus?.getMoHinh?.getGocXoay ?? 0;

      if (dxCapNhat.isNaN == false && dyCapNhat.isNaN == false && chieuCaoThanCapNhat.isNaN == false && chieuRongThanCapNhat.isNaN == false) {
        ///
        /// TODO:
        ///
        if (position.x != dxCapNhat || position.y != dyCapNhat) {
          position.setValues(dxCapNhat, dyCapNhat);
        }
        if (size.x != chieuRongThanCapNhat || size.y != chieuCaoThanCapNhat) {
          size.setValues(chieuRongThanCapNhat, chieuCaoThanCapNhat);
        }

        /// -----
        /// TODO:
        /// -----
        if (angle != gocXoay) {
          angle = gocXoay;
        }
      }
    }
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // debugMode = true;
    anchor = Anchor.center;

    await onInitRoot();
  }

  @override
  FutureOr<void> update(double dt) {
    super.update(dt);

    onVoidCapNhatPositionSizeValues();
  }
}
