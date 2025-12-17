import 'dart:async';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_background_state_management.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_icon_status.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_movement_direction.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_movement_object.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/movement_objects/basic_animated_icon_sprite.dart';
import 'package:google_fonts/google_fonts.dart';

/// -----
/// TODO:
/// -----
class AnimatedBackgroundUnitComponent extends PositionComponent with HasVisibility {
  /// -----
  /// TODO:
  /// -----
  AnimatedBackgroundUnitComponent({required double? chieuCaoManHinhPhiVatLy, required double? chieuRongManHinhPhiVatLy, required double? dxTrongTam, required double? dyTrongTam}) {
    caiDatAnimatedBackgroundStateManagement(
      value: AnimatedBackgroundStateManagement(chieuCaoManHinhPhiVatLy: chieuCaoManHinhPhiVatLy, chieuRongManHinhPhiVatLy: chieuRongManHinhPhiVatLy, sizeDx: null, sizeDy: null),
    );

    ///
    caiDatChieuCaoManHinhPhiVatLy(value: chieuCaoManHinhPhiVatLy);
    caiDatChieuRongManHinhPhiVatLy(value: chieuRongManHinhPhiVatLy);

    ///
    caiDatDxTrongTam(value: dxTrongTam);
    caiDatDyTrongTam(value: dyTrongTam);

    caiDatDinhHuongBay(value: BasicMovementDirection.onMacDinh());
  }

  /// -----
  /// TODO: Kích Thước Màn Hình
  /// -----
  double? _chieuCaoManHinhPhiVatLy;
  double? get getChieuCaoManHinhPhiVatLy => _chieuCaoManHinhPhiVatLy;
  double get getChieuCaoManHinhPhiVatLyNotNull => _chieuCaoManHinhPhiVatLy ?? 0;
  void caiDatChieuCaoManHinhPhiVatLy({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _chieuCaoManHinhPhiVatLy = value;
      } else {
        _chieuCaoManHinhPhiVatLy = 0;
      }
    } else {
      _chieuCaoManHinhPhiVatLy = 0;
    }
    return;
  }

  double? _chieuRongManHinhPhiVatLy;
  double? get getChieuRongManHinhPhiVatLy => _chieuRongManHinhPhiVatLy;
  double get getChieuRongManHinhPhiVatLyNotNull => _chieuRongManHinhPhiVatLy ?? 0;
  void caiDatChieuRongManHinhPhiVatLy({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _chieuRongManHinhPhiVatLy = value;
      } else {
        _chieuRongManHinhPhiVatLy = 0;
      }
    } else {
      _chieuRongManHinhPhiVatLy = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dx Trọng Tâm
  /// -----
  double? _dxTrongTam;
  double? get getDxTrongTam => _dxTrongTam;
  double get getDxTrongTamNotNull => _dxTrongTam ?? 0;
  void caiDatDxTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxTrongTam = value;
      } else {
        _dxTrongTam = 0;
      }
    } else {
      _dxTrongTam = 0;
    }

    if (getDxTrongTam != position.x) {
      position.setValues(getDxTrongTam ?? 0, getDyTrongTam ?? 0);
    }

    return;
  }

  /// -----
  /// TODO: Dy Trọng Tâm
  /// -----
  double? _dyTrongTam;
  double? get getDyTrongTam => _dyTrongTam;
  double get getDyTrongTamNotNull => _dyTrongTam ?? 0;
  void caiDatDyTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyTrongTam = value;
      } else {
        _dyTrongTam = 0;
      }
    } else {
      _dyTrongTam = 0;
    }

    if (getDyTrongTam != position.y) {
      position.setValues(getDxTrongTam ?? 0, getDyTrongTam ?? 0);
    }

    return;
  }

  void onCapNhatPosition({required double? dxTrongTam, required double? dyTrongTam}) {
    caiDatDxTrongTam(value: dxTrongTam);
    caiDatDyTrongTam(value: dyTrongTam);
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    try {
      await onSetupRoot();
      await onAddRoot();
    } catch (e) {
      return;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  AnimatedBackgroundStateManagement? _animatedBackgroundStateManagement;
  AnimatedBackgroundStateManagement? get getAnimatedBackgroundStateManagement => _animatedBackgroundStateManagement;
  Future<void> caiDatAnimatedBackgroundStateManagement({required AnimatedBackgroundStateManagement? value}) async {
    _animatedBackgroundStateManagement = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicAnimatedIconSprite? _spriteAnimatedIconAX00Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX02Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX04Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX06Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX08Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX10Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX12Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX14Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX16Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX18Y00;

  BasicAnimatedIconSprite? _spriteAnimatedIconBX01Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX03Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX05Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX07Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX09Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX11Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX13Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX15Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX17Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX19Y01;

  BasicAnimatedIconSprite? _spriteAnimatedIconCX00Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX02Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX04Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX06Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX08Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX10Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX12Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX14Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX16Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX18Y02;

  BasicAnimatedIconSprite? _spriteAnimatedIconDX01Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX03Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX05Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX07Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX09Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX11Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX13Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX15Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX17Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX19Y03;

  BasicAnimatedIconSprite? _spriteAnimatedIconEX00Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX02Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX04Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX06Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX08Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX10Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX12Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX14Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX16Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX18Y04;

  BasicAnimatedIconSprite? _spriteAnimatedIconFX01Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX03Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX05Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX07Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX09Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX11Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX13Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX15Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX17Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX19Y05;

  BasicAnimatedIconSprite? _spriteAnimatedIconGX00Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX02Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX04Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX06Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX08Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX10Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX12Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX14Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX16Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX18Y06;

  BasicAnimatedIconSprite? _spriteAnimatedIconHX01Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX03Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX05Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX07Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX09Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX11Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX13Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX15Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX17Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX19Y07;

  BasicAnimatedIconSprite? _spriteAnimatedIconIX00Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX02Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX04Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX06Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX08Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX10Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX12Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX14Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX16Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX18Y08;

  BasicAnimatedIconSprite? _spriteAnimatedIconJX01Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX03Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX05Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX07Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX09Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX11Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX13Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX15Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX17Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX19Y09;

  BasicAnimatedIconSprite? _spriteAnimatedIconKX00Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX02Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX04Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX06Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX08Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX10Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX12Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX14Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX16Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX18Y10;

  BasicAnimatedIconSprite? _spriteAnimatedIconLX01Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX03Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX05Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX07Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX09Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX11Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX13Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX15Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX17Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX19Y11;

  BasicAnimatedIconSprite? _spriteAnimatedIconMX00Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX02Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX04Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX06Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX08Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX10Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX12Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX14Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX16Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX18Y12;

  BasicAnimatedIconSprite? _spriteAnimatedIconNX01Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX03Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX05Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX07Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX09Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX11Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX13Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX15Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX17Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX19Y13;

  BasicAnimatedIconSprite? _spriteAnimatedIconOX00Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX02Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX04Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX06Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX08Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX10Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX12Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX14Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX16Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX18Y14;

  BasicAnimatedIconSprite? _spriteAnimatedIconPX01Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX03Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX05Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX07Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX09Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX11Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX13Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX15Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX17Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX19Y15;

  BasicAnimatedIconSprite? _spriteAnimatedIconQX00Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX02Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX04Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX06Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX08Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX10Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX12Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX14Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX16Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX18Y16;

  BasicAnimatedIconSprite? _spriteAnimatedIconRX01Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX03Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX05Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX07Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX09Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX11Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX13Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX15Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX17Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX19Y17;

  BasicAnimatedIconSprite? _spriteAnimatedIconSX00Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX02Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX04Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX06Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX08Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX10Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX12Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX14Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX16Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX18Y18;

  BasicAnimatedIconSprite? _spriteAnimatedIconTX01Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX03Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX05Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX07Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX09Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX11Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX13Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX15Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX17Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX19Y19;

  List<BasicAnimatedIconSprite?> animatedIconSpriteList = [];

  /// TODO:
  /// TODO:
  /// TODO:
  /// TODO:
  /// TODO:

  AnimatedIconStatus? _animatedIconStatusAX00Y00;
  AnimatedIconStatus? _animatedIconStatusAX02Y00;
  AnimatedIconStatus? _animatedIconStatusAX04Y00;
  AnimatedIconStatus? _animatedIconStatusAX06Y00;
  AnimatedIconStatus? _animatedIconStatusAX08Y00;
  AnimatedIconStatus? _animatedIconStatusAX10Y00;
  AnimatedIconStatus? _animatedIconStatusAX12Y00;
  AnimatedIconStatus? _animatedIconStatusAX14Y00;
  AnimatedIconStatus? _animatedIconStatusAX16Y00;
  AnimatedIconStatus? _animatedIconStatusAX18Y00;

  AnimatedIconStatus? _animatedIconStatusBX01Y01;
  AnimatedIconStatus? _animatedIconStatusBX03Y01;
  AnimatedIconStatus? _animatedIconStatusBX05Y01;
  AnimatedIconStatus? _animatedIconStatusBX07Y01;
  AnimatedIconStatus? _animatedIconStatusBX09Y01;
  AnimatedIconStatus? _animatedIconStatusBX11Y01;
  AnimatedIconStatus? _animatedIconStatusBX13Y01;
  AnimatedIconStatus? _animatedIconStatusBX15Y01;
  AnimatedIconStatus? _animatedIconStatusBX17Y01;
  AnimatedIconStatus? _animatedIconStatusBX19Y01;

  AnimatedIconStatus? _animatedIconStatusCX00Y02;
  AnimatedIconStatus? _animatedIconStatusCX02Y02;
  AnimatedIconStatus? _animatedIconStatusCX04Y02;
  AnimatedIconStatus? _animatedIconStatusCX06Y02;
  AnimatedIconStatus? _animatedIconStatusCX08Y02;
  AnimatedIconStatus? _animatedIconStatusCX10Y02;
  AnimatedIconStatus? _animatedIconStatusCX12Y02;
  AnimatedIconStatus? _animatedIconStatusCX14Y02;
  AnimatedIconStatus? _animatedIconStatusCX16Y02;
  AnimatedIconStatus? _animatedIconStatusCX18Y02;

  AnimatedIconStatus? _animatedIconStatusDX01Y03;
  AnimatedIconStatus? _animatedIconStatusDX03Y03;
  AnimatedIconStatus? _animatedIconStatusDX05Y03;
  AnimatedIconStatus? _animatedIconStatusDX07Y03;
  AnimatedIconStatus? _animatedIconStatusDX09Y03;
  AnimatedIconStatus? _animatedIconStatusDX11Y03;
  AnimatedIconStatus? _animatedIconStatusDX13Y03;
  AnimatedIconStatus? _animatedIconStatusDX15Y03;
  AnimatedIconStatus? _animatedIconStatusDX17Y03;
  AnimatedIconStatus? _animatedIconStatusDX19Y03;

  AnimatedIconStatus? _animatedIconStatusEX00Y04;
  AnimatedIconStatus? _animatedIconStatusEX02Y04;
  AnimatedIconStatus? _animatedIconStatusEX04Y04;
  AnimatedIconStatus? _animatedIconStatusEX06Y04;
  AnimatedIconStatus? _animatedIconStatusEX08Y04;
  AnimatedIconStatus? _animatedIconStatusEX10Y04;
  AnimatedIconStatus? _animatedIconStatusEX12Y04;
  AnimatedIconStatus? _animatedIconStatusEX14Y04;
  AnimatedIconStatus? _animatedIconStatusEX16Y04;
  AnimatedIconStatus? _animatedIconStatusEX18Y04;

  AnimatedIconStatus? _animatedIconStatusFX01Y05;
  AnimatedIconStatus? _animatedIconStatusFX03Y05;
  AnimatedIconStatus? _animatedIconStatusFX05Y05;
  AnimatedIconStatus? _animatedIconStatusFX07Y05;
  AnimatedIconStatus? _animatedIconStatusFX09Y05;
  AnimatedIconStatus? _animatedIconStatusFX11Y05;
  AnimatedIconStatus? _animatedIconStatusFX13Y05;
  AnimatedIconStatus? _animatedIconStatusFX15Y05;
  AnimatedIconStatus? _animatedIconStatusFX17Y05;
  AnimatedIconStatus? _animatedIconStatusFX19Y05;

  AnimatedIconStatus? _animatedIconStatusGX00Y06;
  AnimatedIconStatus? _animatedIconStatusGX02Y06;
  AnimatedIconStatus? _animatedIconStatusGX04Y06;
  AnimatedIconStatus? _animatedIconStatusGX06Y06;
  AnimatedIconStatus? _animatedIconStatusGX08Y06;
  AnimatedIconStatus? _animatedIconStatusGX10Y06;
  AnimatedIconStatus? _animatedIconStatusGX12Y06;
  AnimatedIconStatus? _animatedIconStatusGX14Y06;
  AnimatedIconStatus? _animatedIconStatusGX16Y06;
  AnimatedIconStatus? _animatedIconStatusGX18Y06;

  AnimatedIconStatus? _animatedIconStatusHX01Y07;
  AnimatedIconStatus? _animatedIconStatusHX03Y07;
  AnimatedIconStatus? _animatedIconStatusHX05Y07;
  AnimatedIconStatus? _animatedIconStatusHX07Y07;
  AnimatedIconStatus? _animatedIconStatusHX09Y07;
  AnimatedIconStatus? _animatedIconStatusHX11Y07;
  AnimatedIconStatus? _animatedIconStatusHX13Y07;
  AnimatedIconStatus? _animatedIconStatusHX15Y07;
  AnimatedIconStatus? _animatedIconStatusHX17Y07;
  AnimatedIconStatus? _animatedIconStatusHX19Y07;

  AnimatedIconStatus? _animatedIconStatusIX00Y08;
  AnimatedIconStatus? _animatedIconStatusIX02Y08;
  AnimatedIconStatus? _animatedIconStatusIX04Y08;
  AnimatedIconStatus? _animatedIconStatusIX06Y08;
  AnimatedIconStatus? _animatedIconStatusIX08Y08;
  AnimatedIconStatus? _animatedIconStatusIX10Y08;
  AnimatedIconStatus? _animatedIconStatusIX12Y08;
  AnimatedIconStatus? _animatedIconStatusIX14Y08;
  AnimatedIconStatus? _animatedIconStatusIX16Y08;
  AnimatedIconStatus? _animatedIconStatusIX18Y08;

  AnimatedIconStatus? _animatedIconStatusJX01Y09;
  AnimatedIconStatus? _animatedIconStatusJX03Y09;
  AnimatedIconStatus? _animatedIconStatusJX05Y09;
  AnimatedIconStatus? _animatedIconStatusJX07Y09;
  AnimatedIconStatus? _animatedIconStatusJX09Y09;
  AnimatedIconStatus? _animatedIconStatusJX11Y09;
  AnimatedIconStatus? _animatedIconStatusJX13Y09;
  AnimatedIconStatus? _animatedIconStatusJX15Y09;
  AnimatedIconStatus? _animatedIconStatusJX17Y09;
  AnimatedIconStatus? _animatedIconStatusJX19Y09;

  AnimatedIconStatus? _animatedIconStatusKX00Y10;
  AnimatedIconStatus? _animatedIconStatusKX02Y10;
  AnimatedIconStatus? _animatedIconStatusKX04Y10;
  AnimatedIconStatus? _animatedIconStatusKX06Y10;
  AnimatedIconStatus? _animatedIconStatusKX08Y10;
  AnimatedIconStatus? _animatedIconStatusKX10Y10;
  AnimatedIconStatus? _animatedIconStatusKX12Y10;
  AnimatedIconStatus? _animatedIconStatusKX14Y10;
  AnimatedIconStatus? _animatedIconStatusKX16Y10;
  AnimatedIconStatus? _animatedIconStatusKX18Y10;

  AnimatedIconStatus? _animatedIconStatusLX01Y11;
  AnimatedIconStatus? _animatedIconStatusLX03Y11;
  AnimatedIconStatus? _animatedIconStatusLX05Y11;
  AnimatedIconStatus? _animatedIconStatusLX07Y11;
  AnimatedIconStatus? _animatedIconStatusLX09Y11;
  AnimatedIconStatus? _animatedIconStatusLX11Y11;
  AnimatedIconStatus? _animatedIconStatusLX13Y11;
  AnimatedIconStatus? _animatedIconStatusLX15Y11;
  AnimatedIconStatus? _animatedIconStatusLX17Y11;
  AnimatedIconStatus? _animatedIconStatusLX19Y11;

  AnimatedIconStatus? _animatedIconStatusMX00Y12;
  AnimatedIconStatus? _animatedIconStatusMX02Y12;
  AnimatedIconStatus? _animatedIconStatusMX04Y12;
  AnimatedIconStatus? _animatedIconStatusMX06Y12;
  AnimatedIconStatus? _animatedIconStatusMX08Y12;
  AnimatedIconStatus? _animatedIconStatusMX10Y12;
  AnimatedIconStatus? _animatedIconStatusMX12Y12;
  AnimatedIconStatus? _animatedIconStatusMX14Y12;
  AnimatedIconStatus? _animatedIconStatusMX16Y12;
  AnimatedIconStatus? _animatedIconStatusMX18Y12;

  AnimatedIconStatus? _animatedIconStatusNX01Y13;
  AnimatedIconStatus? _animatedIconStatusNX03Y13;
  AnimatedIconStatus? _animatedIconStatusNX05Y13;
  AnimatedIconStatus? _animatedIconStatusNX07Y13;
  AnimatedIconStatus? _animatedIconStatusNX09Y13;
  AnimatedIconStatus? _animatedIconStatusNX11Y13;
  AnimatedIconStatus? _animatedIconStatusNX13Y13;
  AnimatedIconStatus? _animatedIconStatusNX15Y13;
  AnimatedIconStatus? _animatedIconStatusNX17Y13;
  AnimatedIconStatus? _animatedIconStatusNX19Y13;

  AnimatedIconStatus? _animatedIconStatusOX00Y14;
  AnimatedIconStatus? _animatedIconStatusOX02Y14;
  AnimatedIconStatus? _animatedIconStatusOX04Y14;
  AnimatedIconStatus? _animatedIconStatusOX06Y14;
  AnimatedIconStatus? _animatedIconStatusOX08Y14;
  AnimatedIconStatus? _animatedIconStatusOX10Y14;
  AnimatedIconStatus? _animatedIconStatusOX12Y14;
  AnimatedIconStatus? _animatedIconStatusOX14Y14;
  AnimatedIconStatus? _animatedIconStatusOX16Y14;
  AnimatedIconStatus? _animatedIconStatusOX18Y14;

  AnimatedIconStatus? _animatedIconStatusPX01Y15;
  AnimatedIconStatus? _animatedIconStatusPX03Y15;
  AnimatedIconStatus? _animatedIconStatusPX05Y15;
  AnimatedIconStatus? _animatedIconStatusPX07Y15;
  AnimatedIconStatus? _animatedIconStatusPX09Y15;
  AnimatedIconStatus? _animatedIconStatusPX11Y15;
  AnimatedIconStatus? _animatedIconStatusPX13Y15;
  AnimatedIconStatus? _animatedIconStatusPX15Y15;
  AnimatedIconStatus? _animatedIconStatusPX17Y15;
  AnimatedIconStatus? _animatedIconStatusPX19Y15;

  AnimatedIconStatus? _animatedIconStatusQX00Y16;
  AnimatedIconStatus? _animatedIconStatusQX02Y16;
  AnimatedIconStatus? _animatedIconStatusQX04Y16;
  AnimatedIconStatus? _animatedIconStatusQX06Y16;
  AnimatedIconStatus? _animatedIconStatusQX08Y16;
  AnimatedIconStatus? _animatedIconStatusQX10Y16;
  AnimatedIconStatus? _animatedIconStatusQX12Y16;
  AnimatedIconStatus? _animatedIconStatusQX14Y16;
  AnimatedIconStatus? _animatedIconStatusQX16Y16;
  AnimatedIconStatus? _animatedIconStatusQX18Y16;

  AnimatedIconStatus? _animatedIconStatusRX01Y17;
  AnimatedIconStatus? _animatedIconStatusRX03Y17;
  AnimatedIconStatus? _animatedIconStatusRX05Y17;
  AnimatedIconStatus? _animatedIconStatusRX07Y17;
  AnimatedIconStatus? _animatedIconStatusRX09Y17;
  AnimatedIconStatus? _animatedIconStatusRX11Y17;
  AnimatedIconStatus? _animatedIconStatusRX13Y17;
  AnimatedIconStatus? _animatedIconStatusRX15Y17;
  AnimatedIconStatus? _animatedIconStatusRX17Y17;
  AnimatedIconStatus? _animatedIconStatusRX19Y17;

  AnimatedIconStatus? _animatedIconStatusSX00Y18;
  AnimatedIconStatus? _animatedIconStatusSX02Y18;
  AnimatedIconStatus? _animatedIconStatusSX04Y18;
  AnimatedIconStatus? _animatedIconStatusSX06Y18;
  AnimatedIconStatus? _animatedIconStatusSX08Y18;
  AnimatedIconStatus? _animatedIconStatusSX10Y18;
  AnimatedIconStatus? _animatedIconStatusSX12Y18;
  AnimatedIconStatus? _animatedIconStatusSX14Y18;
  AnimatedIconStatus? _animatedIconStatusSX16Y18;
  AnimatedIconStatus? _animatedIconStatusSX18Y18;

  AnimatedIconStatus? _animatedIconStatusTX01Y19;
  AnimatedIconStatus? _animatedIconStatusTX03Y19;
  AnimatedIconStatus? _animatedIconStatusTX05Y19;
  AnimatedIconStatus? _animatedIconStatusTX07Y19;
  AnimatedIconStatus? _animatedIconStatusTX09Y19;
  AnimatedIconStatus? _animatedIconStatusTX11Y19;
  AnimatedIconStatus? _animatedIconStatusTX13Y19;
  AnimatedIconStatus? _animatedIconStatusTX15Y19;
  AnimatedIconStatus? _animatedIconStatusTX17Y19;
  AnimatedIconStatus? _animatedIconStatusTX19Y19;

  /// -----
  /// TODO: Hướng bay
  /// -----
  BasicMovementDirection? _dinhHuongBay;
  BasicMovementDirection? get getDinhHuongBay => _dinhHuongBay;
  BasicMovementDirection get getDinhHuongBayNotNull => _dinhHuongBay ?? BasicMovementDirection.onMacDinh();
  Future<void> caiDatDinhHuongBay({required BasicMovementDirection? value}) async {
    _dinhHuongBay = value;
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  Future<void> onSetupRoot() async {
    _animatedIconStatusAX00Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 0));
    _animatedIconStatusAX02Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 0));
    _animatedIconStatusAX04Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 0));
    _animatedIconStatusAX06Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 0));
    _animatedIconStatusAX08Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 0));
    _animatedIconStatusAX10Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 0));
    _animatedIconStatusAX12Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 0));
    _animatedIconStatusAX14Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 0));
    _animatedIconStatusAX16Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 0));
    _animatedIconStatusAX18Y00 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 0));

    _animatedIconStatusBX01Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 1));
    _animatedIconStatusBX03Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 1));
    _animatedIconStatusBX05Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 1));
    _animatedIconStatusBX07Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 1));
    _animatedIconStatusBX09Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 1));
    _animatedIconStatusBX11Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 1));
    _animatedIconStatusBX13Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 1));
    _animatedIconStatusBX15Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 1));
    _animatedIconStatusBX17Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 1));
    _animatedIconStatusBX19Y01 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 1));

    _animatedIconStatusCX00Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 2));
    _animatedIconStatusCX02Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 2));
    _animatedIconStatusCX04Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 2));
    _animatedIconStatusCX06Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 2));
    _animatedIconStatusCX08Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 2));
    _animatedIconStatusCX10Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 2));
    _animatedIconStatusCX12Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 2));
    _animatedIconStatusCX14Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 2));
    _animatedIconStatusCX16Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 2));
    _animatedIconStatusCX18Y02 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 2));

    _animatedIconStatusDX01Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 3));
    _animatedIconStatusDX03Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 3));
    _animatedIconStatusDX05Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 3));
    _animatedIconStatusDX07Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 3));
    _animatedIconStatusDX09Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 3));
    _animatedIconStatusDX11Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 3));
    _animatedIconStatusDX13Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 3));
    _animatedIconStatusDX15Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 3));
    _animatedIconStatusDX17Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 3));
    _animatedIconStatusDX19Y03 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 3));

    _animatedIconStatusEX00Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 4));
    _animatedIconStatusEX02Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 4));
    _animatedIconStatusEX04Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 4));
    _animatedIconStatusEX06Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 4));
    _animatedIconStatusEX08Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 4));
    _animatedIconStatusEX10Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 4));
    _animatedIconStatusEX12Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 4));
    _animatedIconStatusEX14Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 4));
    _animatedIconStatusEX16Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 4));
    _animatedIconStatusEX18Y04 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 4));

    _animatedIconStatusFX01Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 5));
    _animatedIconStatusFX03Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 5));
    _animatedIconStatusFX05Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 5));
    _animatedIconStatusFX07Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 5));
    _animatedIconStatusFX09Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 5));
    _animatedIconStatusFX11Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 5));
    _animatedIconStatusFX13Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 5));
    _animatedIconStatusFX15Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 5));
    _animatedIconStatusFX17Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 5));
    _animatedIconStatusFX19Y05 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 5));

    _animatedIconStatusGX00Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 6));
    _animatedIconStatusGX02Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 6));
    _animatedIconStatusGX04Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 6));
    _animatedIconStatusGX06Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 6));
    _animatedIconStatusGX08Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 6));
    _animatedIconStatusGX10Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 6));
    _animatedIconStatusGX12Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 6));
    _animatedIconStatusGX14Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 6));
    _animatedIconStatusGX16Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 6));
    _animatedIconStatusGX18Y06 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 6));

    _animatedIconStatusHX01Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 7));
    _animatedIconStatusHX03Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 7));
    _animatedIconStatusHX05Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 7));
    _animatedIconStatusHX07Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 7));
    _animatedIconStatusHX09Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 7));
    _animatedIconStatusHX11Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 7));
    _animatedIconStatusHX13Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 7));
    _animatedIconStatusHX15Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 7));
    _animatedIconStatusHX17Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 7));
    _animatedIconStatusHX19Y07 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 7));

    _animatedIconStatusIX00Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 8));
    _animatedIconStatusIX02Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 8));
    _animatedIconStatusIX04Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 8));
    _animatedIconStatusIX06Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 8));
    _animatedIconStatusIX08Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 8));
    _animatedIconStatusIX10Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 8));
    _animatedIconStatusIX12Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 8));
    _animatedIconStatusIX14Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 8));
    _animatedIconStatusIX16Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 8));
    _animatedIconStatusIX18Y08 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 8));

    _animatedIconStatusJX01Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 9));
    _animatedIconStatusJX03Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 9));
    _animatedIconStatusJX05Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 9));
    _animatedIconStatusJX07Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 9));
    _animatedIconStatusJX09Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 9));
    _animatedIconStatusJX11Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 9));
    _animatedIconStatusJX13Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 9));
    _animatedIconStatusJX15Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 9));
    _animatedIconStatusJX17Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 9));
    _animatedIconStatusJX19Y09 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 9));

    _animatedIconStatusKX00Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 10));
    _animatedIconStatusKX02Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 10));
    _animatedIconStatusKX04Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 10));
    _animatedIconStatusKX06Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 10));
    _animatedIconStatusKX08Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 10));
    _animatedIconStatusKX10Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 10));
    _animatedIconStatusKX12Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 10));
    _animatedIconStatusKX14Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 10));
    _animatedIconStatusKX16Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 10));
    _animatedIconStatusKX18Y10 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 10));

    _animatedIconStatusLX01Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 11));
    _animatedIconStatusLX03Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 11));
    _animatedIconStatusLX05Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 11));
    _animatedIconStatusLX07Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 11));
    _animatedIconStatusLX09Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 11));
    _animatedIconStatusLX11Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 11));
    _animatedIconStatusLX13Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 11));
    _animatedIconStatusLX15Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 11));
    _animatedIconStatusLX17Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 11));
    _animatedIconStatusLX19Y11 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 11));

    _animatedIconStatusMX00Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 12));
    _animatedIconStatusMX02Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 12));
    _animatedIconStatusMX04Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 12));
    _animatedIconStatusMX06Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 12));
    _animatedIconStatusMX08Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 12));
    _animatedIconStatusMX10Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 12));
    _animatedIconStatusMX12Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 12));
    _animatedIconStatusMX14Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 12));
    _animatedIconStatusMX16Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 12));
    _animatedIconStatusMX18Y12 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 12));

    _animatedIconStatusNX01Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 13));
    _animatedIconStatusNX03Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 13));
    _animatedIconStatusNX05Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 13));
    _animatedIconStatusNX07Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 13));
    _animatedIconStatusNX09Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 13));
    _animatedIconStatusNX11Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 13));
    _animatedIconStatusNX13Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 13));
    _animatedIconStatusNX15Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 13));
    _animatedIconStatusNX17Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 13));
    _animatedIconStatusNX19Y13 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 13));

    _animatedIconStatusOX00Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 14));
    _animatedIconStatusOX02Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 14));
    _animatedIconStatusOX04Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 14));
    _animatedIconStatusOX06Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 14));
    _animatedIconStatusOX08Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 14));
    _animatedIconStatusOX10Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 14));
    _animatedIconStatusOX12Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 14));
    _animatedIconStatusOX14Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 14));
    _animatedIconStatusOX16Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 14));
    _animatedIconStatusOX18Y14 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 14));

    _animatedIconStatusPX01Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 15));
    _animatedIconStatusPX03Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 15));
    _animatedIconStatusPX05Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 15));
    _animatedIconStatusPX07Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 15));
    _animatedIconStatusPX09Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 15));
    _animatedIconStatusPX11Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 15));
    _animatedIconStatusPX13Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 15));
    _animatedIconStatusPX15Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 15));
    _animatedIconStatusPX17Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 15));
    _animatedIconStatusPX19Y15 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 15));

    _animatedIconStatusQX00Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 16));
    _animatedIconStatusQX02Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 16));
    _animatedIconStatusQX04Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 16));
    _animatedIconStatusQX06Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 16));
    _animatedIconStatusQX08Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 16));
    _animatedIconStatusQX10Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 16));
    _animatedIconStatusQX12Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 16));
    _animatedIconStatusQX14Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 16));
    _animatedIconStatusQX16Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 16));
    _animatedIconStatusQX18Y16 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 16));

    _animatedIconStatusRX01Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 17));
    _animatedIconStatusRX03Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 17));
    _animatedIconStatusRX05Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 17));
    _animatedIconStatusRX07Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 17));
    _animatedIconStatusRX09Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 17));
    _animatedIconStatusRX11Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 17));
    _animatedIconStatusRX13Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 17));
    _animatedIconStatusRX15Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 17));
    _animatedIconStatusRX17Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 17));
    _animatedIconStatusRX19Y17 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 17));

    _animatedIconStatusSX00Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 0, rangeDy: 18));
    _animatedIconStatusSX02Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 2, rangeDy: 18));
    _animatedIconStatusSX04Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 4, rangeDy: 18));
    _animatedIconStatusSX06Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 6, rangeDy: 18));
    _animatedIconStatusSX08Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 8, rangeDy: 18));
    _animatedIconStatusSX10Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 10, rangeDy: 18));
    _animatedIconStatusSX12Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 12, rangeDy: 18));
    _animatedIconStatusSX14Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 14, rangeDy: 18));
    _animatedIconStatusSX16Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 16, rangeDy: 18));
    _animatedIconStatusSX18Y18 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 18, rangeDy: 18));

    _animatedIconStatusTX01Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 1, rangeDy: 19));
    _animatedIconStatusTX03Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 3, rangeDy: 19));
    _animatedIconStatusTX05Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 5, rangeDy: 19));
    _animatedIconStatusTX07Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 7, rangeDy: 19));
    _animatedIconStatusTX09Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 9, rangeDy: 19));
    _animatedIconStatusTX11Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 11, rangeDy: 19));
    _animatedIconStatusTX13Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 13, rangeDy: 19));
    _animatedIconStatusTX15Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 15, rangeDy: 19));
    _animatedIconStatusTX17Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 17, rangeDy: 19));
    _animatedIconStatusTX19Y19 = AnimatedIconStatus(moHinh: BasicMovementObject(animatedBackgroundStateManagement: getAnimatedBackgroundStateManagement, rangeDx: 19, rangeDy: 19));

    /// -----
    /// -----
    /// TODO:
    /// -----
    /// -----
    _spriteAnimatedIconAX00Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX00Y00);
    _spriteAnimatedIconAX02Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX02Y00);
    _spriteAnimatedIconAX04Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX04Y00);
    _spriteAnimatedIconAX06Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX06Y00);
    _spriteAnimatedIconAX08Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX08Y00);
    _spriteAnimatedIconAX10Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX10Y00);
    _spriteAnimatedIconAX12Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX12Y00);
    _spriteAnimatedIconAX14Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX14Y00);
    _spriteAnimatedIconAX16Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX16Y00);
    _spriteAnimatedIconAX18Y00 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX18Y00);

    _spriteAnimatedIconBX01Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX01Y01);
    _spriteAnimatedIconBX03Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX03Y01);
    _spriteAnimatedIconBX05Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX05Y01);
    _spriteAnimatedIconBX07Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX07Y01);
    _spriteAnimatedIconBX09Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX09Y01);
    _spriteAnimatedIconBX11Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX11Y01);
    _spriteAnimatedIconBX13Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX13Y01);
    _spriteAnimatedIconBX15Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX15Y01);
    _spriteAnimatedIconBX17Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX17Y01);
    _spriteAnimatedIconBX19Y01 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX19Y01);

    _spriteAnimatedIconCX00Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX00Y02);
    _spriteAnimatedIconCX02Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX02Y02);
    _spriteAnimatedIconCX04Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX04Y02);
    _spriteAnimatedIconCX06Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX06Y02);
    _spriteAnimatedIconCX08Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX08Y02);
    _spriteAnimatedIconCX10Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX10Y02);
    _spriteAnimatedIconCX12Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX12Y02);
    _spriteAnimatedIconCX14Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX14Y02);
    _spriteAnimatedIconCX16Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX16Y02);
    _spriteAnimatedIconCX18Y02 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX18Y02);

    _spriteAnimatedIconDX01Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX01Y03);
    _spriteAnimatedIconDX03Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX03Y03);
    _spriteAnimatedIconDX05Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX05Y03);
    _spriteAnimatedIconDX07Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX07Y03);
    _spriteAnimatedIconDX09Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX09Y03);
    _spriteAnimatedIconDX11Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX11Y03);
    _spriteAnimatedIconDX13Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX13Y03);
    _spriteAnimatedIconDX15Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX15Y03);
    _spriteAnimatedIconDX17Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX17Y03);
    _spriteAnimatedIconDX19Y03 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX19Y03);

    _spriteAnimatedIconEX00Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX00Y04);
    _spriteAnimatedIconEX02Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX02Y04);
    _spriteAnimatedIconEX04Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX04Y04);
    _spriteAnimatedIconEX06Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX06Y04);
    _spriteAnimatedIconEX08Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX08Y04);
    _spriteAnimatedIconEX10Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX10Y04);
    _spriteAnimatedIconEX12Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX12Y04);
    _spriteAnimatedIconEX14Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX14Y04);
    _spriteAnimatedIconEX16Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX16Y04);
    _spriteAnimatedIconEX18Y04 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX18Y04);

    _spriteAnimatedIconFX01Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX01Y05);
    _spriteAnimatedIconFX03Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX03Y05);
    _spriteAnimatedIconFX05Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX05Y05);
    _spriteAnimatedIconFX07Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX07Y05);
    _spriteAnimatedIconFX09Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX09Y05);
    _spriteAnimatedIconFX11Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX11Y05);
    _spriteAnimatedIconFX13Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX13Y05);
    _spriteAnimatedIconFX15Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX15Y05);
    _spriteAnimatedIconFX17Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX17Y05);
    _spriteAnimatedIconFX19Y05 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX19Y05);

    _spriteAnimatedIconGX00Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX00Y06);
    _spriteAnimatedIconGX02Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX02Y06);
    _spriteAnimatedIconGX04Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX04Y06);
    _spriteAnimatedIconGX06Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX06Y06);
    _spriteAnimatedIconGX08Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX08Y06);
    _spriteAnimatedIconGX10Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX10Y06);
    _spriteAnimatedIconGX12Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX12Y06);
    _spriteAnimatedIconGX14Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX14Y06);
    _spriteAnimatedIconGX16Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX16Y06);
    _spriteAnimatedIconGX18Y06 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX18Y06);

    _spriteAnimatedIconHX01Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX01Y07);
    _spriteAnimatedIconHX03Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX03Y07);
    _spriteAnimatedIconHX05Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX05Y07);
    _spriteAnimatedIconHX07Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX07Y07);
    _spriteAnimatedIconHX09Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX09Y07);
    _spriteAnimatedIconHX11Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX11Y07);
    _spriteAnimatedIconHX13Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX13Y07);
    _spriteAnimatedIconHX15Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX15Y07);
    _spriteAnimatedIconHX17Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX17Y07);
    _spriteAnimatedIconHX19Y07 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX19Y07);

    _spriteAnimatedIconIX00Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX00Y08);
    _spriteAnimatedIconIX02Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX02Y08);
    _spriteAnimatedIconIX04Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX04Y08);
    _spriteAnimatedIconIX06Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX06Y08);
    _spriteAnimatedIconIX08Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX08Y08);
    _spriteAnimatedIconIX10Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX10Y08);
    _spriteAnimatedIconIX12Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX12Y08);
    _spriteAnimatedIconIX14Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX14Y08);
    _spriteAnimatedIconIX16Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX16Y08);
    _spriteAnimatedIconIX18Y08 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX18Y08);

    _spriteAnimatedIconJX01Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX01Y09);
    _spriteAnimatedIconJX03Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX03Y09);
    _spriteAnimatedIconJX05Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX05Y09);
    _spriteAnimatedIconJX07Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX07Y09);
    _spriteAnimatedIconJX09Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX09Y09);
    _spriteAnimatedIconJX11Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX11Y09);
    _spriteAnimatedIconJX13Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX13Y09);
    _spriteAnimatedIconJX15Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX15Y09);
    _spriteAnimatedIconJX17Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX17Y09);
    _spriteAnimatedIconJX19Y09 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX19Y09);

    _spriteAnimatedIconKX00Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX00Y10);
    _spriteAnimatedIconKX02Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX02Y10);
    _spriteAnimatedIconKX04Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX04Y10);
    _spriteAnimatedIconKX06Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX06Y10);
    _spriteAnimatedIconKX08Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX08Y10);
    _spriteAnimatedIconKX10Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX10Y10);
    _spriteAnimatedIconKX12Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX12Y10);
    _spriteAnimatedIconKX14Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX14Y10);
    _spriteAnimatedIconKX16Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX16Y10);
    _spriteAnimatedIconKX18Y10 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX18Y10);

    _spriteAnimatedIconLX01Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX01Y11);
    _spriteAnimatedIconLX03Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX03Y11);
    _spriteAnimatedIconLX05Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX05Y11);
    _spriteAnimatedIconLX07Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX07Y11);
    _spriteAnimatedIconLX09Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX09Y11);
    _spriteAnimatedIconLX11Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX11Y11);
    _spriteAnimatedIconLX13Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX13Y11);
    _spriteAnimatedIconLX15Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX15Y11);
    _spriteAnimatedIconLX17Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX17Y11);
    _spriteAnimatedIconLX19Y11 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX19Y11);

    _spriteAnimatedIconMX00Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX00Y12);
    _spriteAnimatedIconMX02Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX02Y12);
    _spriteAnimatedIconMX04Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX04Y12);
    _spriteAnimatedIconMX06Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX06Y12);
    _spriteAnimatedIconMX08Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX08Y12);
    _spriteAnimatedIconMX10Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX10Y12);
    _spriteAnimatedIconMX12Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX12Y12);
    _spriteAnimatedIconMX14Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX14Y12);
    _spriteAnimatedIconMX16Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX16Y12);
    _spriteAnimatedIconMX18Y12 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX18Y12);

    _spriteAnimatedIconNX01Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX01Y13);
    _spriteAnimatedIconNX03Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX03Y13);
    _spriteAnimatedIconNX05Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX05Y13);
    _spriteAnimatedIconNX07Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX07Y13);
    _spriteAnimatedIconNX09Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX09Y13);
    _spriteAnimatedIconNX11Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX11Y13);
    _spriteAnimatedIconNX13Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX13Y13);
    _spriteAnimatedIconNX15Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX15Y13);
    _spriteAnimatedIconNX17Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX17Y13);
    _spriteAnimatedIconNX19Y13 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX19Y13);

    _spriteAnimatedIconOX00Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX00Y14);
    _spriteAnimatedIconOX02Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX02Y14);
    _spriteAnimatedIconOX04Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX04Y14);
    _spriteAnimatedIconOX06Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX06Y14);
    _spriteAnimatedIconOX08Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX08Y14);
    _spriteAnimatedIconOX10Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX10Y14);
    _spriteAnimatedIconOX12Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX12Y14);
    _spriteAnimatedIconOX14Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX14Y14);
    _spriteAnimatedIconOX16Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX16Y14);
    _spriteAnimatedIconOX18Y14 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX18Y14);

    _spriteAnimatedIconPX01Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX01Y15);
    _spriteAnimatedIconPX03Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX03Y15);
    _spriteAnimatedIconPX05Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX05Y15);
    _spriteAnimatedIconPX07Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX07Y15);
    _spriteAnimatedIconPX09Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX09Y15);
    _spriteAnimatedIconPX11Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX11Y15);
    _spriteAnimatedIconPX13Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX13Y15);
    _spriteAnimatedIconPX15Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX15Y15);
    _spriteAnimatedIconPX17Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX17Y15);
    _spriteAnimatedIconPX19Y15 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX19Y15);

    _spriteAnimatedIconQX00Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX00Y16);
    _spriteAnimatedIconQX02Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX02Y16);
    _spriteAnimatedIconQX04Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX04Y16);
    _spriteAnimatedIconQX06Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX06Y16);
    _spriteAnimatedIconQX08Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX08Y16);
    _spriteAnimatedIconQX10Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX10Y16);
    _spriteAnimatedIconQX12Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX12Y16);
    _spriteAnimatedIconQX14Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX14Y16);
    _spriteAnimatedIconQX16Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX16Y16);
    _spriteAnimatedIconQX18Y16 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX18Y16);

    _spriteAnimatedIconRX01Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX01Y17);
    _spriteAnimatedIconRX03Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX03Y17);
    _spriteAnimatedIconRX05Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX05Y17);
    _spriteAnimatedIconRX07Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX07Y17);
    _spriteAnimatedIconRX09Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX09Y17);
    _spriteAnimatedIconRX11Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX11Y17);
    _spriteAnimatedIconRX13Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX13Y17);
    _spriteAnimatedIconRX15Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX15Y17);
    _spriteAnimatedIconRX17Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX17Y17);
    _spriteAnimatedIconRX19Y17 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX19Y17);

    _spriteAnimatedIconSX00Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX00Y18);
    _spriteAnimatedIconSX02Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX02Y18);
    _spriteAnimatedIconSX04Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX04Y18);
    _spriteAnimatedIconSX06Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX06Y18);
    _spriteAnimatedIconSX08Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX08Y18);
    _spriteAnimatedIconSX10Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX10Y18);
    _spriteAnimatedIconSX12Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX12Y18);
    _spriteAnimatedIconSX14Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX14Y18);
    _spriteAnimatedIconSX16Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX16Y18);
    _spriteAnimatedIconSX18Y18 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX18Y18);

    _spriteAnimatedIconTX01Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX01Y19);
    _spriteAnimatedIconTX03Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX03Y19);
    _spriteAnimatedIconTX05Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX05Y19);
    _spriteAnimatedIconTX07Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX07Y19);
    _spriteAnimatedIconTX09Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX09Y19);
    _spriteAnimatedIconTX11Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX11Y19);
    _spriteAnimatedIconTX13Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX13Y19);
    _spriteAnimatedIconTX15Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX15Y19);
    _spriteAnimatedIconTX17Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX17Y19);
    _spriteAnimatedIconTX19Y19 = BasicAnimatedIconSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX19Y19);

    animatedIconSpriteList = [
      _spriteAnimatedIconAX00Y00,
      _spriteAnimatedIconAX02Y00,
      _spriteAnimatedIconAX04Y00,
      _spriteAnimatedIconAX06Y00,
      _spriteAnimatedIconAX08Y00,
      _spriteAnimatedIconAX10Y00,
      _spriteAnimatedIconAX12Y00,
      _spriteAnimatedIconAX14Y00,
      _spriteAnimatedIconAX16Y00,
      _spriteAnimatedIconAX18Y00,

      _spriteAnimatedIconBX01Y01,
      _spriteAnimatedIconBX03Y01,
      _spriteAnimatedIconBX05Y01,
      _spriteAnimatedIconBX07Y01,
      _spriteAnimatedIconBX09Y01,
      _spriteAnimatedIconBX11Y01,
      _spriteAnimatedIconBX13Y01,
      _spriteAnimatedIconBX15Y01,
      _spriteAnimatedIconBX17Y01,
      _spriteAnimatedIconBX19Y01,

      _spriteAnimatedIconCX00Y02,
      _spriteAnimatedIconCX02Y02,
      _spriteAnimatedIconCX04Y02,
      _spriteAnimatedIconCX06Y02,
      _spriteAnimatedIconCX08Y02,
      _spriteAnimatedIconCX10Y02,
      _spriteAnimatedIconCX12Y02,
      _spriteAnimatedIconCX14Y02,
      _spriteAnimatedIconCX16Y02,
      _spriteAnimatedIconCX18Y02,

      _spriteAnimatedIconDX01Y03,
      _spriteAnimatedIconDX03Y03,
      _spriteAnimatedIconDX05Y03,
      _spriteAnimatedIconDX07Y03,
      _spriteAnimatedIconDX09Y03,
      _spriteAnimatedIconDX11Y03,
      _spriteAnimatedIconDX13Y03,
      _spriteAnimatedIconDX15Y03,
      _spriteAnimatedIconDX17Y03,
      _spriteAnimatedIconDX19Y03,

      _spriteAnimatedIconEX00Y04,
      _spriteAnimatedIconEX02Y04,
      _spriteAnimatedIconEX04Y04,
      _spriteAnimatedIconEX06Y04,
      _spriteAnimatedIconEX08Y04,
      _spriteAnimatedIconEX10Y04,
      _spriteAnimatedIconEX12Y04,
      _spriteAnimatedIconEX14Y04,
      _spriteAnimatedIconEX16Y04,
      _spriteAnimatedIconEX18Y04,

      _spriteAnimatedIconFX01Y05,
      _spriteAnimatedIconFX03Y05,
      _spriteAnimatedIconFX05Y05,
      _spriteAnimatedIconFX07Y05,
      _spriteAnimatedIconFX09Y05,
      _spriteAnimatedIconFX11Y05,
      _spriteAnimatedIconFX13Y05,
      _spriteAnimatedIconFX15Y05,
      _spriteAnimatedIconFX17Y05,
      _spriteAnimatedIconFX19Y05,

      _spriteAnimatedIconGX00Y06,
      _spriteAnimatedIconGX02Y06,
      _spriteAnimatedIconGX04Y06,
      _spriteAnimatedIconGX06Y06,
      _spriteAnimatedIconGX08Y06,
      _spriteAnimatedIconGX10Y06,
      _spriteAnimatedIconGX12Y06,
      _spriteAnimatedIconGX14Y06,
      _spriteAnimatedIconGX16Y06,
      _spriteAnimatedIconGX18Y06,

      _spriteAnimatedIconHX01Y07,
      _spriteAnimatedIconHX03Y07,
      _spriteAnimatedIconHX05Y07,
      _spriteAnimatedIconHX07Y07,
      _spriteAnimatedIconHX09Y07,
      _spriteAnimatedIconHX11Y07,
      _spriteAnimatedIconHX13Y07,
      _spriteAnimatedIconHX15Y07,
      _spriteAnimatedIconHX17Y07,
      _spriteAnimatedIconHX19Y07,

      _spriteAnimatedIconIX00Y08,
      _spriteAnimatedIconIX02Y08,
      _spriteAnimatedIconIX04Y08,
      _spriteAnimatedIconIX06Y08,
      _spriteAnimatedIconIX08Y08,
      _spriteAnimatedIconIX10Y08,
      _spriteAnimatedIconIX12Y08,
      _spriteAnimatedIconIX14Y08,
      _spriteAnimatedIconIX16Y08,
      _spriteAnimatedIconIX18Y08,

      _spriteAnimatedIconJX01Y09,
      _spriteAnimatedIconJX03Y09,
      _spriteAnimatedIconJX05Y09,
      _spriteAnimatedIconJX07Y09,
      _spriteAnimatedIconJX09Y09,
      _spriteAnimatedIconJX11Y09,
      _spriteAnimatedIconJX13Y09,
      _spriteAnimatedIconJX15Y09,
      _spriteAnimatedIconJX17Y09,
      _spriteAnimatedIconJX19Y09,

      _spriteAnimatedIconKX00Y10,
      _spriteAnimatedIconKX02Y10,
      _spriteAnimatedIconKX04Y10,
      _spriteAnimatedIconKX06Y10,
      _spriteAnimatedIconKX08Y10,
      _spriteAnimatedIconKX10Y10,
      _spriteAnimatedIconKX12Y10,
      _spriteAnimatedIconKX14Y10,
      _spriteAnimatedIconKX16Y10,
      _spriteAnimatedIconKX18Y10,

      _spriteAnimatedIconLX01Y11,
      _spriteAnimatedIconLX03Y11,
      _spriteAnimatedIconLX05Y11,
      _spriteAnimatedIconLX07Y11,
      _spriteAnimatedIconLX09Y11,
      _spriteAnimatedIconLX11Y11,
      _spriteAnimatedIconLX13Y11,
      _spriteAnimatedIconLX15Y11,
      _spriteAnimatedIconLX17Y11,
      _spriteAnimatedIconLX19Y11,

      _spriteAnimatedIconMX00Y12,
      _spriteAnimatedIconMX02Y12,
      _spriteAnimatedIconMX04Y12,
      _spriteAnimatedIconMX06Y12,
      _spriteAnimatedIconMX08Y12,
      _spriteAnimatedIconMX10Y12,
      _spriteAnimatedIconMX12Y12,
      _spriteAnimatedIconMX14Y12,
      _spriteAnimatedIconMX16Y12,
      _spriteAnimatedIconMX18Y12,

      _spriteAnimatedIconNX01Y13,
      _spriteAnimatedIconNX03Y13,
      _spriteAnimatedIconNX05Y13,
      _spriteAnimatedIconNX07Y13,
      _spriteAnimatedIconNX09Y13,
      _spriteAnimatedIconNX11Y13,
      _spriteAnimatedIconNX13Y13,
      _spriteAnimatedIconNX15Y13,
      _spriteAnimatedIconNX17Y13,
      _spriteAnimatedIconNX19Y13,

      _spriteAnimatedIconOX00Y14,
      _spriteAnimatedIconOX02Y14,
      _spriteAnimatedIconOX04Y14,
      _spriteAnimatedIconOX06Y14,
      _spriteAnimatedIconOX08Y14,
      _spriteAnimatedIconOX10Y14,
      _spriteAnimatedIconOX12Y14,
      _spriteAnimatedIconOX14Y14,
      _spriteAnimatedIconOX16Y14,
      _spriteAnimatedIconOX18Y14,

      _spriteAnimatedIconPX01Y15,
      _spriteAnimatedIconPX03Y15,
      _spriteAnimatedIconPX05Y15,
      _spriteAnimatedIconPX07Y15,
      _spriteAnimatedIconPX09Y15,
      _spriteAnimatedIconPX11Y15,
      _spriteAnimatedIconPX13Y15,
      _spriteAnimatedIconPX15Y15,
      _spriteAnimatedIconPX17Y15,
      _spriteAnimatedIconPX19Y15,

      _spriteAnimatedIconQX00Y16,
      _spriteAnimatedIconQX02Y16,
      _spriteAnimatedIconQX04Y16,
      _spriteAnimatedIconQX06Y16,
      _spriteAnimatedIconQX08Y16,
      _spriteAnimatedIconQX10Y16,
      _spriteAnimatedIconQX12Y16,
      _spriteAnimatedIconQX14Y16,
      _spriteAnimatedIconQX16Y16,
      _spriteAnimatedIconQX18Y16,

      _spriteAnimatedIconRX01Y17,
      _spriteAnimatedIconRX03Y17,
      _spriteAnimatedIconRX05Y17,
      _spriteAnimatedIconRX07Y17,
      _spriteAnimatedIconRX09Y17,
      _spriteAnimatedIconRX11Y17,
      _spriteAnimatedIconRX13Y17,
      _spriteAnimatedIconRX15Y17,
      _spriteAnimatedIconRX17Y17,
      _spriteAnimatedIconRX19Y17,

      _spriteAnimatedIconSX00Y18,
      _spriteAnimatedIconSX02Y18,
      _spriteAnimatedIconSX04Y18,
      _spriteAnimatedIconSX06Y18,
      _spriteAnimatedIconSX08Y18,
      _spriteAnimatedIconSX10Y18,
      _spriteAnimatedIconSX12Y18,
      _spriteAnimatedIconSX14Y18,
      _spriteAnimatedIconSX16Y18,
      _spriteAnimatedIconSX18Y18,

      _spriteAnimatedIconTX01Y19,
      _spriteAnimatedIconTX03Y19,
      _spriteAnimatedIconTX05Y19,
      _spriteAnimatedIconTX07Y19,
      _spriteAnimatedIconTX09Y19,
      _spriteAnimatedIconTX11Y19,
      _spriteAnimatedIconTX13Y19,
      _spriteAnimatedIconTX15Y19,
      _spriteAnimatedIconTX17Y19,
      _spriteAnimatedIconTX19Y19,
    ];

    return;
  }

  TextRenderer? _textRenderer;
  TextRenderer? get getTextRenderer => _textRenderer;
  Future<void> caiDatTextRenderer({required TextRenderer? value}) async {
    _textRenderer ??= value;
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

  onChangeColor({Color? color}) {
    for (var element in animatedIconSpriteList) {

      if (getBackgroundAnimatedIcon?.isNotEmpty == true) {
        element?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon ?? '');
      }

      element?.caiDatTextRenderer(
        value: getTextRenderer ?? TextPaint(
          style: TextStyle(
            fontFamily: 'TitanOne',
            fontSize: 50,
            fontWeight: FontWeight.w800,
            color: color ?? Color(0xFF000000).withValues(alpha: 0.8),
            shadows: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 0.25), offset: Offset(1, 1), blurRadius: 1)],
          ),
        ),
      );
    }
  }

  onChangeAngle({double? angle}) {
    for (var element in animatedIconSpriteList) {
      element?.angle -= (angle ?? 0);
    }
  }

  ///
  /// TODO: onAddRoot
  ///
  Future<void> onAddRoot() async {
    await Future.wait([
      onAddComponent(_spriteAnimatedIconAX00Y00),
      onAddComponent(_spriteAnimatedIconAX02Y00),
      onAddComponent(_spriteAnimatedIconAX04Y00),
      onAddComponent(_spriteAnimatedIconAX06Y00),
      onAddComponent(_spriteAnimatedIconAX08Y00),
      onAddComponent(_spriteAnimatedIconAX10Y00),
      onAddComponent(_spriteAnimatedIconAX12Y00),
      onAddComponent(_spriteAnimatedIconAX14Y00),
      onAddComponent(_spriteAnimatedIconAX16Y00),
      onAddComponent(_spriteAnimatedIconAX18Y00),

      onAddComponent(_spriteAnimatedIconBX01Y01),
      onAddComponent(_spriteAnimatedIconBX03Y01),
      onAddComponent(_spriteAnimatedIconBX05Y01),
      onAddComponent(_spriteAnimatedIconBX07Y01),
      onAddComponent(_spriteAnimatedIconBX09Y01),
      onAddComponent(_spriteAnimatedIconBX11Y01),
      onAddComponent(_spriteAnimatedIconBX13Y01),
      onAddComponent(_spriteAnimatedIconBX15Y01),
      onAddComponent(_spriteAnimatedIconBX17Y01),
      onAddComponent(_spriteAnimatedIconBX19Y01),

      onAddComponent(_spriteAnimatedIconCX00Y02),
      onAddComponent(_spriteAnimatedIconCX02Y02),
      onAddComponent(_spriteAnimatedIconCX04Y02),
      onAddComponent(_spriteAnimatedIconCX06Y02),
      onAddComponent(_spriteAnimatedIconCX08Y02),
      onAddComponent(_spriteAnimatedIconCX10Y02),
      onAddComponent(_spriteAnimatedIconCX12Y02),
      onAddComponent(_spriteAnimatedIconCX14Y02),
      onAddComponent(_spriteAnimatedIconCX16Y02),
      onAddComponent(_spriteAnimatedIconCX18Y02),

      onAddComponent(_spriteAnimatedIconDX01Y03),
      onAddComponent(_spriteAnimatedIconDX03Y03),
      onAddComponent(_spriteAnimatedIconDX05Y03),
      onAddComponent(_spriteAnimatedIconDX07Y03),
      onAddComponent(_spriteAnimatedIconDX09Y03),
      onAddComponent(_spriteAnimatedIconDX11Y03),
      onAddComponent(_spriteAnimatedIconDX13Y03),
      onAddComponent(_spriteAnimatedIconDX15Y03),
      onAddComponent(_spriteAnimatedIconDX17Y03),
      onAddComponent(_spriteAnimatedIconDX19Y03),

      onAddComponent(_spriteAnimatedIconEX00Y04),
      onAddComponent(_spriteAnimatedIconEX02Y04),
      onAddComponent(_spriteAnimatedIconEX04Y04),
      onAddComponent(_spriteAnimatedIconEX06Y04),
      onAddComponent(_spriteAnimatedIconEX08Y04),
      onAddComponent(_spriteAnimatedIconEX10Y04),
      onAddComponent(_spriteAnimatedIconEX12Y04),
      onAddComponent(_spriteAnimatedIconEX14Y04),
      onAddComponent(_spriteAnimatedIconEX16Y04),
      onAddComponent(_spriteAnimatedIconEX18Y04),

      onAddComponent(_spriteAnimatedIconFX01Y05),
      onAddComponent(_spriteAnimatedIconFX03Y05),
      onAddComponent(_spriteAnimatedIconFX05Y05),
      onAddComponent(_spriteAnimatedIconFX07Y05),
      onAddComponent(_spriteAnimatedIconFX09Y05),
      onAddComponent(_spriteAnimatedIconFX11Y05),
      onAddComponent(_spriteAnimatedIconFX13Y05),
      onAddComponent(_spriteAnimatedIconFX15Y05),
      onAddComponent(_spriteAnimatedIconFX17Y05),
      onAddComponent(_spriteAnimatedIconFX19Y05),

      onAddComponent(_spriteAnimatedIconGX00Y06),
      onAddComponent(_spriteAnimatedIconGX02Y06),
      onAddComponent(_spriteAnimatedIconGX04Y06),
      onAddComponent(_spriteAnimatedIconGX06Y06),
      onAddComponent(_spriteAnimatedIconGX08Y06),
      onAddComponent(_spriteAnimatedIconGX10Y06),
      onAddComponent(_spriteAnimatedIconGX12Y06),
      onAddComponent(_spriteAnimatedIconGX14Y06),
      onAddComponent(_spriteAnimatedIconGX16Y06),
      onAddComponent(_spriteAnimatedIconGX18Y06),

      onAddComponent(_spriteAnimatedIconHX01Y07),
      onAddComponent(_spriteAnimatedIconHX03Y07),
      onAddComponent(_spriteAnimatedIconHX05Y07),
      onAddComponent(_spriteAnimatedIconHX07Y07),
      onAddComponent(_spriteAnimatedIconHX09Y07),
      onAddComponent(_spriteAnimatedIconHX11Y07),
      onAddComponent(_spriteAnimatedIconHX13Y07),
      onAddComponent(_spriteAnimatedIconHX15Y07),
      onAddComponent(_spriteAnimatedIconHX17Y07),
      onAddComponent(_spriteAnimatedIconHX19Y07),

      onAddComponent(_spriteAnimatedIconIX00Y08),
      onAddComponent(_spriteAnimatedIconIX02Y08),
      onAddComponent(_spriteAnimatedIconIX04Y08),
      onAddComponent(_spriteAnimatedIconIX06Y08),
      onAddComponent(_spriteAnimatedIconIX08Y08),
      onAddComponent(_spriteAnimatedIconIX10Y08),
      onAddComponent(_spriteAnimatedIconIX12Y08),
      onAddComponent(_spriteAnimatedIconIX14Y08),
      onAddComponent(_spriteAnimatedIconIX16Y08),
      onAddComponent(_spriteAnimatedIconIX18Y08),

      onAddComponent(_spriteAnimatedIconJX01Y09),
      onAddComponent(_spriteAnimatedIconJX03Y09),
      onAddComponent(_spriteAnimatedIconJX05Y09),
      onAddComponent(_spriteAnimatedIconJX07Y09),
      onAddComponent(_spriteAnimatedIconJX09Y09),
      onAddComponent(_spriteAnimatedIconJX11Y09),
      onAddComponent(_spriteAnimatedIconJX13Y09),
      onAddComponent(_spriteAnimatedIconJX15Y09),
      onAddComponent(_spriteAnimatedIconJX17Y09),
      onAddComponent(_spriteAnimatedIconJX19Y09),

      onAddComponent(_spriteAnimatedIconKX00Y10),
      onAddComponent(_spriteAnimatedIconKX02Y10),
      onAddComponent(_spriteAnimatedIconKX04Y10),
      onAddComponent(_spriteAnimatedIconKX06Y10),
      onAddComponent(_spriteAnimatedIconKX08Y10),
      onAddComponent(_spriteAnimatedIconKX10Y10),
      onAddComponent(_spriteAnimatedIconKX12Y10),
      onAddComponent(_spriteAnimatedIconKX14Y10),
      onAddComponent(_spriteAnimatedIconKX16Y10),
      onAddComponent(_spriteAnimatedIconKX18Y10),

      onAddComponent(_spriteAnimatedIconLX01Y11),
      onAddComponent(_spriteAnimatedIconLX03Y11),
      onAddComponent(_spriteAnimatedIconLX05Y11),
      onAddComponent(_spriteAnimatedIconLX07Y11),
      onAddComponent(_spriteAnimatedIconLX09Y11),
      onAddComponent(_spriteAnimatedIconLX11Y11),
      onAddComponent(_spriteAnimatedIconLX13Y11),
      onAddComponent(_spriteAnimatedIconLX15Y11),
      onAddComponent(_spriteAnimatedIconLX17Y11),
      onAddComponent(_spriteAnimatedIconLX19Y11),

      onAddComponent(_spriteAnimatedIconMX00Y12),
      onAddComponent(_spriteAnimatedIconMX02Y12),
      onAddComponent(_spriteAnimatedIconMX04Y12),
      onAddComponent(_spriteAnimatedIconMX06Y12),
      onAddComponent(_spriteAnimatedIconMX08Y12),
      onAddComponent(_spriteAnimatedIconMX10Y12),
      onAddComponent(_spriteAnimatedIconMX12Y12),
      onAddComponent(_spriteAnimatedIconMX14Y12),
      onAddComponent(_spriteAnimatedIconMX16Y12),
      onAddComponent(_spriteAnimatedIconMX18Y12),

      onAddComponent(_spriteAnimatedIconNX01Y13),
      onAddComponent(_spriteAnimatedIconNX03Y13),
      onAddComponent(_spriteAnimatedIconNX05Y13),
      onAddComponent(_spriteAnimatedIconNX07Y13),
      onAddComponent(_spriteAnimatedIconNX09Y13),
      onAddComponent(_spriteAnimatedIconNX11Y13),
      onAddComponent(_spriteAnimatedIconNX13Y13),
      onAddComponent(_spriteAnimatedIconNX15Y13),
      onAddComponent(_spriteAnimatedIconNX17Y13),
      onAddComponent(_spriteAnimatedIconNX19Y13),

      onAddComponent(_spriteAnimatedIconOX00Y14),
      onAddComponent(_spriteAnimatedIconOX02Y14),
      onAddComponent(_spriteAnimatedIconOX04Y14),
      onAddComponent(_spriteAnimatedIconOX06Y14),
      onAddComponent(_spriteAnimatedIconOX08Y14),
      onAddComponent(_spriteAnimatedIconOX10Y14),
      onAddComponent(_spriteAnimatedIconOX12Y14),
      onAddComponent(_spriteAnimatedIconOX14Y14),
      onAddComponent(_spriteAnimatedIconOX16Y14),
      onAddComponent(_spriteAnimatedIconOX18Y14),

      onAddComponent(_spriteAnimatedIconPX01Y15),
      onAddComponent(_spriteAnimatedIconPX03Y15),
      onAddComponent(_spriteAnimatedIconPX05Y15),
      onAddComponent(_spriteAnimatedIconPX07Y15),
      onAddComponent(_spriteAnimatedIconPX09Y15),
      onAddComponent(_spriteAnimatedIconPX11Y15),
      onAddComponent(_spriteAnimatedIconPX13Y15),
      onAddComponent(_spriteAnimatedIconPX15Y15),
      onAddComponent(_spriteAnimatedIconPX17Y15),
      onAddComponent(_spriteAnimatedIconPX19Y15),

      onAddComponent(_spriteAnimatedIconQX00Y16),
      onAddComponent(_spriteAnimatedIconQX02Y16),
      onAddComponent(_spriteAnimatedIconQX04Y16),
      onAddComponent(_spriteAnimatedIconQX06Y16),
      onAddComponent(_spriteAnimatedIconQX08Y16),
      onAddComponent(_spriteAnimatedIconQX10Y16),
      onAddComponent(_spriteAnimatedIconQX12Y16),
      onAddComponent(_spriteAnimatedIconQX14Y16),
      onAddComponent(_spriteAnimatedIconQX16Y16),
      onAddComponent(_spriteAnimatedIconQX18Y16),

      onAddComponent(_spriteAnimatedIconRX01Y17),
      onAddComponent(_spriteAnimatedIconRX03Y17),
      onAddComponent(_spriteAnimatedIconRX05Y17),
      onAddComponent(_spriteAnimatedIconRX07Y17),
      onAddComponent(_spriteAnimatedIconRX09Y17),
      onAddComponent(_spriteAnimatedIconRX11Y17),
      onAddComponent(_spriteAnimatedIconRX13Y17),
      onAddComponent(_spriteAnimatedIconRX15Y17),
      onAddComponent(_spriteAnimatedIconRX17Y17),
      onAddComponent(_spriteAnimatedIconRX19Y17),

      onAddComponent(_spriteAnimatedIconSX00Y18),
      onAddComponent(_spriteAnimatedIconSX02Y18),
      onAddComponent(_spriteAnimatedIconSX04Y18),
      onAddComponent(_spriteAnimatedIconSX06Y18),
      onAddComponent(_spriteAnimatedIconSX08Y18),
      onAddComponent(_spriteAnimatedIconSX10Y18),
      onAddComponent(_spriteAnimatedIconSX12Y18),
      onAddComponent(_spriteAnimatedIconSX14Y18),
      onAddComponent(_spriteAnimatedIconSX16Y18),
      onAddComponent(_spriteAnimatedIconSX18Y18),

      onAddComponent(_spriteAnimatedIconTX01Y19),
      onAddComponent(_spriteAnimatedIconTX03Y19),
      onAddComponent(_spriteAnimatedIconTX05Y19),
      onAddComponent(_spriteAnimatedIconTX07Y19),
      onAddComponent(_spriteAnimatedIconTX09Y19),
      onAddComponent(_spriteAnimatedIconTX11Y19),
      onAddComponent(_spriteAnimatedIconTX13Y19),
      onAddComponent(_spriteAnimatedIconTX15Y19),
      onAddComponent(_spriteAnimatedIconTX17Y19),
      onAddComponent(_spriteAnimatedIconTX19Y19),
    ]);

    return;
  }

  Future<void> onAddComponent(Component? comp) async {
    try {
      if (comp != null && comp.isMounted == false) {
        await Future.delayed(Duration.zero);
        await add(comp);
      }
    } catch (e) {
      // Ghi log nếu muốn
    }
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onInitRoot() async {
    /// -----
    /// -----
    /// TODO: Phương Tiện
    /// -----
    /// -----

    return;
  }
}
