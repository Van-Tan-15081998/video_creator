import 'dart:async';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_background_state_management.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_icon_status.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_movement_direction.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_movement_object.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/movement_objects/basic_animated_symbol_sprite.dart';
import 'package:google_fonts/google_fonts.dart';

/// -----
/// TODO:
/// -----
class AnimatedBackgroundUnitComponent extends PositionComponent with HasVisibility {
  /// -----
  /// TODO:
  /// -----
  AnimatedBackgroundUnitComponent({required double? chieuCaoManHinhPhiVatLy, required double? chieuRongManHinhPhiVatLy, required double? dxTrongTam, required double? dyTrongTam}) {
    setAnimatedBackgroundStateManagement(
      value: AnimatedBackgroundStateManagement(chieuCaoManHinhPhiVatLy: chieuCaoManHinhPhiVatLy, chieuRongManHinhPhiVatLy: chieuRongManHinhPhiVatLy, sizeDx: null, sizeDy: null),
    );

    ///
    setChieuCaoManHinhPhiVatLy(value: chieuCaoManHinhPhiVatLy);
    setChieuRongManHinhPhiVatLy(value: chieuRongManHinhPhiVatLy);

    ///
    setDxTrongTam(value: dxTrongTam);
    setDyTrongTam(value: dyTrongTam);

    setDinhHuongBay(value: BasicMovementDirection.onMacDinh());
  }

  /// -----
  /// TODO: Kích Thước Màn Hình
  /// -----
  double? _chieuCaoManHinhPhiVatLy;
  double? get getChieuCaoManHinhPhiVatLy => _chieuCaoManHinhPhiVatLy;
  double get getChieuCaoManHinhPhiVatLyNotNull => _chieuCaoManHinhPhiVatLy ?? 0;
  void setChieuCaoManHinhPhiVatLy({required double? value}) {
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
  void setChieuRongManHinhPhiVatLy({required double? value}) {
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
  void setDxTrongTam({required double? value}) {
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
  void setDyTrongTam({required double? value}) {
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
    setDxTrongTam(value: dxTrongTam);
    setDyTrongTam(value: dyTrongTam);
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
  Future<void> setAnimatedBackgroundStateManagement({required AnimatedBackgroundStateManagement? value}) async {
    _animatedBackgroundStateManagement = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX00Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX02Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX04Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX06Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX08Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX10Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX12Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX14Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX16Y00;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconAX18Y00;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX01Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX03Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX05Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX07Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX09Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX11Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX13Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX15Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX17Y01;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconBX19Y01;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX00Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX02Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX04Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX06Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX08Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX10Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX12Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX14Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX16Y02;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconCX18Y02;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX01Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX03Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX05Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX07Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX09Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX11Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX13Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX15Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX17Y03;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconDX19Y03;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX00Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX02Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX04Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX06Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX08Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX10Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX12Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX14Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX16Y04;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconEX18Y04;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX01Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX03Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX05Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX07Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX09Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX11Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX13Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX15Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX17Y05;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconFX19Y05;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX00Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX02Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX04Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX06Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX08Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX10Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX12Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX14Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX16Y06;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconGX18Y06;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX01Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX03Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX05Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX07Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX09Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX11Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX13Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX15Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX17Y07;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconHX19Y07;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX00Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX02Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX04Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX06Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX08Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX10Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX12Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX14Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX16Y08;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconIX18Y08;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX01Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX03Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX05Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX07Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX09Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX11Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX13Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX15Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX17Y09;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconJX19Y09;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX00Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX02Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX04Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX06Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX08Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX10Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX12Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX14Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX16Y10;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconKX18Y10;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX01Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX03Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX05Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX07Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX09Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX11Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX13Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX15Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX17Y11;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconLX19Y11;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX00Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX02Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX04Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX06Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX08Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX10Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX12Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX14Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX16Y12;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconMX18Y12;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX01Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX03Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX05Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX07Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX09Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX11Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX13Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX15Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX17Y13;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconNX19Y13;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX00Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX02Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX04Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX06Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX08Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX10Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX12Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX14Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX16Y14;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconOX18Y14;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX01Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX03Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX05Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX07Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX09Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX11Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX13Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX15Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX17Y15;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconPX19Y15;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX00Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX02Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX04Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX06Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX08Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX10Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX12Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX14Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX16Y16;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconQX18Y16;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX01Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX03Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX05Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX07Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX09Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX11Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX13Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX15Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX17Y17;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconRX19Y17;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX00Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX02Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX04Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX06Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX08Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX10Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX12Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX14Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX16Y18;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconSX18Y18;

  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX01Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX03Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX05Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX07Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX09Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX11Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX13Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX15Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX17Y19;
  BasicAnimatedSymbolSprite? _spriteAnimatedIconTX19Y19;

  List<BasicAnimatedSymbolSprite?> animatedIconSpriteList = [];

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
  Future<void> setDinhHuongBay({required BasicMovementDirection? value}) async {
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
    _spriteAnimatedIconAX00Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX00Y00);
    _spriteAnimatedIconAX02Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX02Y00);
    _spriteAnimatedIconAX04Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX04Y00);
    _spriteAnimatedIconAX06Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX06Y00);
    _spriteAnimatedIconAX08Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX08Y00);
    _spriteAnimatedIconAX10Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX10Y00);
    _spriteAnimatedIconAX12Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX12Y00);
    _spriteAnimatedIconAX14Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX14Y00);
    _spriteAnimatedIconAX16Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX16Y00);
    _spriteAnimatedIconAX18Y00 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusAX18Y00);

    _spriteAnimatedIconBX01Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX01Y01);
    _spriteAnimatedIconBX03Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX03Y01);
    _spriteAnimatedIconBX05Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX05Y01);
    _spriteAnimatedIconBX07Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX07Y01);
    _spriteAnimatedIconBX09Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX09Y01);
    _spriteAnimatedIconBX11Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX11Y01);
    _spriteAnimatedIconBX13Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX13Y01);
    _spriteAnimatedIconBX15Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX15Y01);
    _spriteAnimatedIconBX17Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX17Y01);
    _spriteAnimatedIconBX19Y01 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusBX19Y01);

    _spriteAnimatedIconCX00Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX00Y02);
    _spriteAnimatedIconCX02Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX02Y02);
    _spriteAnimatedIconCX04Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX04Y02);
    _spriteAnimatedIconCX06Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX06Y02);
    _spriteAnimatedIconCX08Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX08Y02);
    _spriteAnimatedIconCX10Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX10Y02);
    _spriteAnimatedIconCX12Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX12Y02);
    _spriteAnimatedIconCX14Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX14Y02);
    _spriteAnimatedIconCX16Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX16Y02);
    _spriteAnimatedIconCX18Y02 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusCX18Y02);

    _spriteAnimatedIconDX01Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX01Y03);
    _spriteAnimatedIconDX03Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX03Y03);
    _spriteAnimatedIconDX05Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX05Y03);
    _spriteAnimatedIconDX07Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX07Y03);
    _spriteAnimatedIconDX09Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX09Y03);
    _spriteAnimatedIconDX11Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX11Y03);
    _spriteAnimatedIconDX13Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX13Y03);
    _spriteAnimatedIconDX15Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX15Y03);
    _spriteAnimatedIconDX17Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX17Y03);
    _spriteAnimatedIconDX19Y03 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusDX19Y03);

    _spriteAnimatedIconEX00Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX00Y04);
    _spriteAnimatedIconEX02Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX02Y04);
    _spriteAnimatedIconEX04Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX04Y04);
    _spriteAnimatedIconEX06Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX06Y04);
    _spriteAnimatedIconEX08Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX08Y04);
    _spriteAnimatedIconEX10Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX10Y04);
    _spriteAnimatedIconEX12Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX12Y04);
    _spriteAnimatedIconEX14Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX14Y04);
    _spriteAnimatedIconEX16Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX16Y04);
    _spriteAnimatedIconEX18Y04 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusEX18Y04);

    _spriteAnimatedIconFX01Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX01Y05);
    _spriteAnimatedIconFX03Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX03Y05);
    _spriteAnimatedIconFX05Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX05Y05);
    _spriteAnimatedIconFX07Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX07Y05);
    _spriteAnimatedIconFX09Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX09Y05);
    _spriteAnimatedIconFX11Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX11Y05);
    _spriteAnimatedIconFX13Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX13Y05);
    _spriteAnimatedIconFX15Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX15Y05);
    _spriteAnimatedIconFX17Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX17Y05);
    _spriteAnimatedIconFX19Y05 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusFX19Y05);

    _spriteAnimatedIconGX00Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX00Y06);
    _spriteAnimatedIconGX02Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX02Y06);
    _spriteAnimatedIconGX04Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX04Y06);
    _spriteAnimatedIconGX06Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX06Y06);
    _spriteAnimatedIconGX08Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX08Y06);
    _spriteAnimatedIconGX10Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX10Y06);
    _spriteAnimatedIconGX12Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX12Y06);
    _spriteAnimatedIconGX14Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX14Y06);
    _spriteAnimatedIconGX16Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX16Y06);
    _spriteAnimatedIconGX18Y06 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusGX18Y06);

    _spriteAnimatedIconHX01Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX01Y07);
    _spriteAnimatedIconHX03Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX03Y07);
    _spriteAnimatedIconHX05Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX05Y07);
    _spriteAnimatedIconHX07Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX07Y07);
    _spriteAnimatedIconHX09Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX09Y07);
    _spriteAnimatedIconHX11Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX11Y07);
    _spriteAnimatedIconHX13Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX13Y07);
    _spriteAnimatedIconHX15Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX15Y07);
    _spriteAnimatedIconHX17Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX17Y07);
    _spriteAnimatedIconHX19Y07 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusHX19Y07);

    _spriteAnimatedIconIX00Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX00Y08);
    _spriteAnimatedIconIX02Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX02Y08);
    _spriteAnimatedIconIX04Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX04Y08);
    _spriteAnimatedIconIX06Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX06Y08);
    _spriteAnimatedIconIX08Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX08Y08);
    _spriteAnimatedIconIX10Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX10Y08);
    _spriteAnimatedIconIX12Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX12Y08);
    _spriteAnimatedIconIX14Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX14Y08);
    _spriteAnimatedIconIX16Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX16Y08);
    _spriteAnimatedIconIX18Y08 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusIX18Y08);

    _spriteAnimatedIconJX01Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX01Y09);
    _spriteAnimatedIconJX03Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX03Y09);
    _spriteAnimatedIconJX05Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX05Y09);
    _spriteAnimatedIconJX07Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX07Y09);
    _spriteAnimatedIconJX09Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX09Y09);
    _spriteAnimatedIconJX11Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX11Y09);
    _spriteAnimatedIconJX13Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX13Y09);
    _spriteAnimatedIconJX15Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX15Y09);
    _spriteAnimatedIconJX17Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX17Y09);
    _spriteAnimatedIconJX19Y09 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusJX19Y09);

    _spriteAnimatedIconKX00Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX00Y10);
    _spriteAnimatedIconKX02Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX02Y10);
    _spriteAnimatedIconKX04Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX04Y10);
    _spriteAnimatedIconKX06Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX06Y10);
    _spriteAnimatedIconKX08Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX08Y10);
    _spriteAnimatedIconKX10Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX10Y10);
    _spriteAnimatedIconKX12Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX12Y10);
    _spriteAnimatedIconKX14Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX14Y10);
    _spriteAnimatedIconKX16Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX16Y10);
    _spriteAnimatedIconKX18Y10 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusKX18Y10);

    _spriteAnimatedIconLX01Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX01Y11);
    _spriteAnimatedIconLX03Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX03Y11);
    _spriteAnimatedIconLX05Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX05Y11);
    _spriteAnimatedIconLX07Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX07Y11);
    _spriteAnimatedIconLX09Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX09Y11);
    _spriteAnimatedIconLX11Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX11Y11);
    _spriteAnimatedIconLX13Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX13Y11);
    _spriteAnimatedIconLX15Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX15Y11);
    _spriteAnimatedIconLX17Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX17Y11);
    _spriteAnimatedIconLX19Y11 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusLX19Y11);

    _spriteAnimatedIconMX00Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX00Y12);
    _spriteAnimatedIconMX02Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX02Y12);
    _spriteAnimatedIconMX04Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX04Y12);
    _spriteAnimatedIconMX06Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX06Y12);
    _spriteAnimatedIconMX08Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX08Y12);
    _spriteAnimatedIconMX10Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX10Y12);
    _spriteAnimatedIconMX12Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX12Y12);
    _spriteAnimatedIconMX14Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX14Y12);
    _spriteAnimatedIconMX16Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX16Y12);
    _spriteAnimatedIconMX18Y12 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusMX18Y12);

    _spriteAnimatedIconNX01Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX01Y13);
    _spriteAnimatedIconNX03Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX03Y13);
    _spriteAnimatedIconNX05Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX05Y13);
    _spriteAnimatedIconNX07Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX07Y13);
    _spriteAnimatedIconNX09Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX09Y13);
    _spriteAnimatedIconNX11Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX11Y13);
    _spriteAnimatedIconNX13Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX13Y13);
    _spriteAnimatedIconNX15Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX15Y13);
    _spriteAnimatedIconNX17Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX17Y13);
    _spriteAnimatedIconNX19Y13 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusNX19Y13);

    _spriteAnimatedIconOX00Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX00Y14);
    _spriteAnimatedIconOX02Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX02Y14);
    _spriteAnimatedIconOX04Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX04Y14);
    _spriteAnimatedIconOX06Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX06Y14);
    _spriteAnimatedIconOX08Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX08Y14);
    _spriteAnimatedIconOX10Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX10Y14);
    _spriteAnimatedIconOX12Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX12Y14);
    _spriteAnimatedIconOX14Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX14Y14);
    _spriteAnimatedIconOX16Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX16Y14);
    _spriteAnimatedIconOX18Y14 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusOX18Y14);

    _spriteAnimatedIconPX01Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX01Y15);
    _spriteAnimatedIconPX03Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX03Y15);
    _spriteAnimatedIconPX05Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX05Y15);
    _spriteAnimatedIconPX07Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX07Y15);
    _spriteAnimatedIconPX09Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX09Y15);
    _spriteAnimatedIconPX11Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX11Y15);
    _spriteAnimatedIconPX13Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX13Y15);
    _spriteAnimatedIconPX15Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX15Y15);
    _spriteAnimatedIconPX17Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX17Y15);
    _spriteAnimatedIconPX19Y15 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusPX19Y15);

    _spriteAnimatedIconQX00Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX00Y16);
    _spriteAnimatedIconQX02Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX02Y16);
    _spriteAnimatedIconQX04Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX04Y16);
    _spriteAnimatedIconQX06Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX06Y16);
    _spriteAnimatedIconQX08Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX08Y16);
    _spriteAnimatedIconQX10Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX10Y16);
    _spriteAnimatedIconQX12Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX12Y16);
    _spriteAnimatedIconQX14Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX14Y16);
    _spriteAnimatedIconQX16Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX16Y16);
    _spriteAnimatedIconQX18Y16 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusQX18Y16);

    _spriteAnimatedIconRX01Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX01Y17);
    _spriteAnimatedIconRX03Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX03Y17);
    _spriteAnimatedIconRX05Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX05Y17);
    _spriteAnimatedIconRX07Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX07Y17);
    _spriteAnimatedIconRX09Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX09Y17);
    _spriteAnimatedIconRX11Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX11Y17);
    _spriteAnimatedIconRX13Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX13Y17);
    _spriteAnimatedIconRX15Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX15Y17);
    _spriteAnimatedIconRX17Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX17Y17);
    _spriteAnimatedIconRX19Y17 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusRX19Y17);

    _spriteAnimatedIconSX00Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX00Y18);
    _spriteAnimatedIconSX02Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX02Y18);
    _spriteAnimatedIconSX04Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX04Y18);
    _spriteAnimatedIconSX06Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX06Y18);
    _spriteAnimatedIconSX08Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX08Y18);
    _spriteAnimatedIconSX10Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX10Y18);
    _spriteAnimatedIconSX12Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX12Y18);
    _spriteAnimatedIconSX14Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX14Y18);
    _spriteAnimatedIconSX16Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX16Y18);
    _spriteAnimatedIconSX18Y18 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusSX18Y18);

    _spriteAnimatedIconTX01Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX01Y19);
    _spriteAnimatedIconTX03Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX03Y19);
    _spriteAnimatedIconTX05Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX05Y19);
    _spriteAnimatedIconTX07Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX07Y19);
    _spriteAnimatedIconTX09Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX09Y19);
    _spriteAnimatedIconTX11Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX11Y19);
    _spriteAnimatedIconTX13Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX13Y19);
    _spriteAnimatedIconTX15Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX15Y19);
    _spriteAnimatedIconTX17Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX17Y19);
    _spriteAnimatedIconTX19Y19 = BasicAnimatedSymbolSprite(parentComponent: this, animatedIconStatus: _animatedIconStatusTX19Y19);

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
  Future<void> setTextRenderer({required TextRenderer? value}) async {
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

  /// -----
  /// TODO:
  /// -----
  String? _imageSpriteSource;
  String? get getImageSpriteSource => _imageSpriteSource;
  Future<void> setImageSpriteSource({required String? value}) async {
    _imageSpriteSource = value;
    return;
  }

  onChangeColor({Color? color}) {
    for (var element in animatedIconSpriteList) {
      if (getBackgroundAnimatedIcon?.isNotEmpty == true) {
        element?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon ?? '');
      }

      element?.setTextRenderer(
        value:
            getTextRenderer ??
            TextPaint(
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
  //
  // onChangeImageSprite() async {
  //   await _spriteAnimatedIconAX00Y00?.setImageSpriteSource(value: getImageSpriteSource);
  //   await _spriteAnimatedIconAX00Y00?.onChangeImageSprite();
  //
  //   for (var element in animatedIconSpriteList) {
  //     if (getBackgroundAnimatedIcon?.isNotEmpty == true) {
  //       // element?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon ?? '');
  //     }
  //
  //     // element?.setImageSpriteSource(value: getImageSpriteSource);
  //     // element?.onChangeImageSprite();
  //     if (element != _spriteAnimatedIconAX00Y00) {
  //       element?.sprite = _spriteAnimatedIconAX00Y00?.sprite;
  //     }
  //   }
  // }

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
