import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/cache.dart' as cache;
import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/animated_background_unit_component.dart';

class AnimatedBackgroundWidget extends FlameGame {
  @override
  Color backgroundColor() => Colors.transparent;

  AnimatedBackgroundWidget({required double? chieuCaoManHinhPhiVatLy, required double? chieuRongManHinhPhiVatLy, required TextRenderer? textRenderer, required String? backgroundAnimatedIcon, required String? imageSpriteSource, required double? movementUnit}) {
    ///
    setChieuCaoManHinhPhiVatLy(value: chieuCaoManHinhPhiVatLy);
    setChieuRongManHinhPhiVatLy(value: chieuRongManHinhPhiVatLy);
    setTextRenderer(value: textRenderer);
    setBackgroundAnimatedIcon(value: backgroundAnimatedIcon);
    setImageSpriteSource(value: imageSpriteSource);
    setMovementUnit(value: movementUnit);
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

  double? _movementUnit;
  double? get getMovementUnit => _movementUnit;
  void setMovementUnit({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _movementUnit = value;
      } else {
        _movementUnit = 0;
      }
    } else {
      _movementUnit = 0;
    }
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
  String? _imageSpriteSource;
  String? get getImageSpriteSource => _imageSpriteSource;
  Future<void> setImageSpriteSource({required String? value}) async {
    _imageSpriteSource = value;
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

  VoidCallback? onInit;

  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentA;
  AnimatedBackgroundUnitComponent? get getAnimatedBackgroundUnitComponentA => _animatedBackgroundUnitComponentA;

  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentB;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentC;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentD;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentE;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentF;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentG;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentH;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentI;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentJ;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentK;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentL;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentM;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentN;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentO;
  AnimatedBackgroundUnitComponent? _animatedBackgroundUnitComponentP;

  double sizeUnit = 0;
  double sizeDxUnit = 0;
  double sizeDyUnit = 0;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    cache.Images images = cache.Images();
    images.prefix = '';
    await images.load('default_assets/images/empty_image.png');
    await images.load('assets/images/animated_background_symbols/symbol_01.webp');

    sizeUnit = (getChieuRongManHinhPhiVatLy ?? 0) / 10;

    sizeDxUnit = (getChieuRongManHinhPhiVatLy ?? 0) / 10;
    sizeDyUnit = (getChieuCaoManHinhPhiVatLy ?? 0) / 10;

    _animatedBackgroundUnitComponentA = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 2, dyTrongTam: sizeDyUnit * 2);
    _animatedBackgroundUnitComponentB = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 8 + (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 2);
    _animatedBackgroundUnitComponentC = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 8 + (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 8 + (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentD = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 2, dyTrongTam: sizeDyUnit * 8 + (sizeDyUnit * 6 / 19));

    _animatedBackgroundUnitComponentE = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * (-4), dyTrongTam: sizeDyUnit * (-4));
    _animatedBackgroundUnitComponentF = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 2, dyTrongTam: sizeDyUnit * (-4) - (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentG = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 8 + (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * (-4) - (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentH = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 14 + (sizeDxUnit * 6 / 19) * 2, dyTrongTam: sizeDyUnit * (-4) - (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentI = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 14 + (sizeDxUnit * 6 / 19) * 2, dyTrongTam: sizeDyUnit * 2);
    _animatedBackgroundUnitComponentJ = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 14 + (sizeDxUnit * 6 / 19) * 2, dyTrongTam: sizeDyUnit * 8 + (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentK = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 14 + (sizeDxUnit * 6 / 19) * 2, dyTrongTam: sizeDyUnit * 14 + (sizeDyUnit * 6 / 19) * 2);
    _animatedBackgroundUnitComponentL = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 8 + (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 14 + (sizeDyUnit * 6 / 19) * 2);
    _animatedBackgroundUnitComponentM = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * 2, dyTrongTam: sizeDyUnit * 14 + (sizeDyUnit * 6 / 19) * 2);
    _animatedBackgroundUnitComponentN = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * (-4) - (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 14 + (sizeDyUnit * 6 / 19) * 2);
    _animatedBackgroundUnitComponentO = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * (-4) - (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 8 + (sizeDyUnit * 6 / 19));
    _animatedBackgroundUnitComponentP = AnimatedBackgroundUnitComponent(chieuCaoManHinhPhiVatLy: sizeDyUnit * 6, chieuRongManHinhPhiVatLy: sizeDxUnit * 6, dxTrongTam: sizeDxUnit * (-4) - (sizeDxUnit * 6 / 19), dyTrongTam: sizeDyUnit * 2);

    if (_animatedBackgroundUnitComponentA != null) {
      add(_animatedBackgroundUnitComponentA!);
    }
    if (_animatedBackgroundUnitComponentB != null) {
      add(_animatedBackgroundUnitComponentB!);
    }
    if (_animatedBackgroundUnitComponentC != null) {
      add(_animatedBackgroundUnitComponentC!);
    }
    if (_animatedBackgroundUnitComponentD != null) {
      add(_animatedBackgroundUnitComponentD!);
    }

    if (_animatedBackgroundUnitComponentE != null) {
      add(_animatedBackgroundUnitComponentE!);
    }
    if (_animatedBackgroundUnitComponentF != null) {
      add(_animatedBackgroundUnitComponentF!);
    }
    if (_animatedBackgroundUnitComponentG != null) {
      add(_animatedBackgroundUnitComponentG!);
    }
    if (_animatedBackgroundUnitComponentH != null) {
      add(_animatedBackgroundUnitComponentH!);
    }
    if (_animatedBackgroundUnitComponentI != null) {
      add(_animatedBackgroundUnitComponentI!);
    }
    if (_animatedBackgroundUnitComponentJ != null) {
      add(_animatedBackgroundUnitComponentJ!);
    }
    if (_animatedBackgroundUnitComponentK != null) {
      add(_animatedBackgroundUnitComponentK!);
    }
    if (_animatedBackgroundUnitComponentL != null) {
      add(_animatedBackgroundUnitComponentL!);
    }
    if (_animatedBackgroundUnitComponentM != null) {
      add(_animatedBackgroundUnitComponentM!);
    }
    if (_animatedBackgroundUnitComponentN != null) {
      add(_animatedBackgroundUnitComponentN!);
    }
    if (_animatedBackgroundUnitComponentO != null) {
      add(_animatedBackgroundUnitComponentO!);
    }
    if (_animatedBackgroundUnitComponentP != null) {
      add(_animatedBackgroundUnitComponentP!);
    }

    _animatedBackgroundUnitComponentA?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentB?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentC?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentD?.anchor = Anchor.center;

    _animatedBackgroundUnitComponentE?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentF?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentG?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentH?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentI?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentJ?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentK?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentL?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentM?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentN?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentO?.anchor = Anchor.center;
    _animatedBackgroundUnitComponentP?.anchor = Anchor.center;

    _animatedBackgroundUnitComponentA?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentB?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentC?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentD?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentE?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentF?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentG?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentH?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentI?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentJ?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentK?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentL?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentM?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentN?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentO?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);
    _animatedBackgroundUnitComponentP?.setBackgroundAnimatedIcon(value: getBackgroundAnimatedIcon);

    ///
    ///
    ///
    _animatedBackgroundUnitComponentA?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentB?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentC?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentD?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentE?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentF?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentG?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentH?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentI?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentJ?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentK?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentL?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentM?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentN?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentO?.setTextRenderer(value: getTextRenderer);
    _animatedBackgroundUnitComponentP?.setTextRenderer(value: getTextRenderer);

    ///
    ///
    ///
    _animatedBackgroundUnitComponentA?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentB?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentC?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentD?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentE?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentF?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentG?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentH?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentI?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentJ?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentK?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentL?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentM?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentN?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentO?.setImageSpriteSource(value: getImageSpriteSource);
    _animatedBackgroundUnitComponentP?.setImageSpriteSource(value: getImageSpriteSource);

    // _animatedBackgroundUnitComponentA?.getDinhHuongBay?.setDinhHuongTheoDuoiLenTren();
    _animatedBackgroundUnitComponentA?.getDinhHuongBay?.setDinhHuongTheoDuoiTraiSangTrenPhai();

    onInit?.call();

    if (kDebugMode) {
      print('onLoad');
    }
  }

  bool updatedColor = false;

  @override
  FutureOr<void> update(double dt) async {
    super.update(dt);

    if (updatedColor == false) {
      // _animatedBackgroundUnitComponentA?.onChangeColor(color: Color(0xFFDF0029));
      // _animatedBackgroundUnitComponentB?.onChangeColor(color: Color(0xFFE33539));
      // _animatedBackgroundUnitComponentC?.onChangeColor(color: Color(0xFFEC870E));
      // _animatedBackgroundUnitComponentD?.onChangeColor(color: Color(0xFFF1AF00));
      // _animatedBackgroundUnitComponentE?.onChangeColor(color: Color(0xFFF9F400));
      // _animatedBackgroundUnitComponentF?.onChangeColor(color: Color(0xFF5BBD2B));
      // _animatedBackgroundUnitComponentG?.onChangeColor(color: Color(0xFF00A06B));
      // _animatedBackgroundUnitComponentH?.onChangeColor(color: Color(0xFF00A6AD));
      // _animatedBackgroundUnitComponentI?.onChangeColor(color: Color(0xFF205AA7));
      // _animatedBackgroundUnitComponentJ?.onChangeColor(color: Color(0xFF3A2885));
      // _animatedBackgroundUnitComponentK?.onChangeColor(color: Color(0xFF5D0C7B));
      // _animatedBackgroundUnitComponentL?.onChangeColor(color: Color(0xFFA2007C));
      // _animatedBackgroundUnitComponentM?.onChangeColor(color: Color(0xFF00BFFF));
      // _animatedBackgroundUnitComponentN?.onChangeColor(color: Color(0xFF00FFFF));
      // _animatedBackgroundUnitComponentO?.onChangeColor(color: Color(0xFF54FF9F));
      // _animatedBackgroundUnitComponentP?.onChangeColor(color: Color(0xFFFFEC8B));

      _animatedBackgroundUnitComponentA?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentB?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentC?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentD?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentE?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentF?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentG?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentH?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentI?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentJ?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentK?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentL?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentM?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentN?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentO?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));
      _animatedBackgroundUnitComponentP?.onChangeColor(color: Color(0xFF1C1C1C).withValues(alpha: 0.9));

      // await _animatedBackgroundUnitComponentA?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentB?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentC?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentD?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentE?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentF?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentG?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentH?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentI?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentJ?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentK?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentL?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentM?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentN?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentO?.onChangeImageSprite();
      // await _animatedBackgroundUnitComponentP?.onChangeImageSprite();

      updatedColor = true;
    }

    double dxTrongTamA = _animatedBackgroundUnitComponentA?.getDxTrongTam ?? 0;
    double dyTrongTamA = _animatedBackgroundUnitComponentA?.getDyTrongTam ?? 0;

    double dxTrongTamB = _animatedBackgroundUnitComponentB?.getDxTrongTam ?? 0;
    double dyTrongTamB = _animatedBackgroundUnitComponentB?.getDyTrongTam ?? 0;

    double dxTrongTamC = _animatedBackgroundUnitComponentC?.getDxTrongTam ?? 0;
    double dyTrongTamC = _animatedBackgroundUnitComponentC?.getDyTrongTam ?? 0;

    double dxTrongTamD = _animatedBackgroundUnitComponentD?.getDxTrongTam ?? 0;
    double dyTrongTamD = _animatedBackgroundUnitComponentD?.getDyTrongTam ?? 0;

    double dxTrongTamE = _animatedBackgroundUnitComponentE?.getDxTrongTam ?? 0;
    double dyTrongTamE = _animatedBackgroundUnitComponentE?.getDyTrongTam ?? 0;

    double dxTrongTamF = _animatedBackgroundUnitComponentF?.getDxTrongTam ?? 0;
    double dyTrongTamF = _animatedBackgroundUnitComponentF?.getDyTrongTam ?? 0;

    double dxTrongTamG = _animatedBackgroundUnitComponentG?.getDxTrongTam ?? 0;
    double dyTrongTamG = _animatedBackgroundUnitComponentG?.getDyTrongTam ?? 0;

    double dxTrongTamH = _animatedBackgroundUnitComponentH?.getDxTrongTam ?? 0;
    double dyTrongTamH = _animatedBackgroundUnitComponentH?.getDyTrongTam ?? 0;

    double dxTrongTamI = _animatedBackgroundUnitComponentI?.getDxTrongTam ?? 0;
    double dyTrongTamI = _animatedBackgroundUnitComponentI?.getDyTrongTam ?? 0;

    double dxTrongTamJ = _animatedBackgroundUnitComponentJ?.getDxTrongTam ?? 0;
    double dyTrongTamJ = _animatedBackgroundUnitComponentJ?.getDyTrongTam ?? 0;

    double dxTrongTamK = _animatedBackgroundUnitComponentK?.getDxTrongTam ?? 0;
    double dyTrongTamK = _animatedBackgroundUnitComponentK?.getDyTrongTam ?? 0;

    double dxTrongTamL = _animatedBackgroundUnitComponentL?.getDxTrongTam ?? 0;
    double dyTrongTamL = _animatedBackgroundUnitComponentL?.getDyTrongTam ?? 0;

    double dxTrongTamM = _animatedBackgroundUnitComponentM?.getDxTrongTam ?? 0;
    double dyTrongTamM = _animatedBackgroundUnitComponentM?.getDyTrongTam ?? 0;

    double dxTrongTamN = _animatedBackgroundUnitComponentN?.getDxTrongTam ?? 0;
    double dyTrongTamN = _animatedBackgroundUnitComponentN?.getDyTrongTam ?? 0;

    double dxTrongTamO = _animatedBackgroundUnitComponentO?.getDxTrongTam ?? 0;
    double dyTrongTamO = _animatedBackgroundUnitComponentO?.getDyTrongTam ?? 0;

    double dxTrongTamP = _animatedBackgroundUnitComponentP?.getDxTrongTam ?? 0;
    double dyTrongTamP = _animatedBackgroundUnitComponentP?.getDyTrongTam ?? 0;

    double topLeftDx = sizeUnit * (-1.1);
    double topLeftDy = sizeUnit * (-1.1);

    double topCenterDx = 0;
    double topCenterDy = sizeUnit * (-1.1);

    double topRightDx = sizeUnit * (5.1);
    double topRightDy = sizeUnit * (-1.1);

    double leftCenterDx = sizeUnit * (-1.1);
    double leftCenterDy = 0;

    double rightCenterDx = sizeUnit * (5.1);
    double rightCenterDy = 0;

    double bottomLeftDx = sizeUnit * (-1.1);
    double bottomLeftDy = sizeUnit * (5.1);

    double bottomCenterDx = 0;
    double bottomCenterDy = sizeUnit * (5.1);

    double bottomRightDx = sizeUnit * (5.1);
    double bottomRightDy = sizeUnit * (5.1);

    double movementUnit = getMovementUnit ?? 0.5;

    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoTrenXuongDuoi() == true) {
      /// y++
      // if (dyTrongTamA < sizeUnit * 4) {
      if (dyTrongTamA < bottomCenterDy) {
        dyTrongTamA += movementUnit;
        dyTrongTamB += movementUnit;
        dyTrongTamC += movementUnit;
        dyTrongTamD += movementUnit;

        dyTrongTamE += movementUnit;
        dyTrongTamF += movementUnit;
        dyTrongTamG += movementUnit;
        dyTrongTamH += movementUnit;
        dyTrongTamI += movementUnit;
        dyTrongTamJ += movementUnit;
        dyTrongTamK += movementUnit;
        dyTrongTamL += movementUnit;
        dyTrongTamM += movementUnit;
        dyTrongTamN += movementUnit;
        dyTrongTamO += movementUnit;
        dyTrongTamP += movementUnit;
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoDuoiLenTren() == true) {
      /// y--
      // if (dyTrongTamA > 0) {
      if (dyTrongTamA > topCenterDy) {
        dyTrongTamA -= movementUnit;
        dyTrongTamB -= movementUnit;
        dyTrongTamC -= movementUnit;
        dyTrongTamD -= movementUnit;

        dyTrongTamE -= movementUnit;
        dyTrongTamF -= movementUnit;
        dyTrongTamG -= movementUnit;
        dyTrongTamH -= movementUnit;
        dyTrongTamI -= movementUnit;
        dyTrongTamJ -= movementUnit;
        dyTrongTamK -= movementUnit;
        dyTrongTamL -= movementUnit;
        dyTrongTamM -= movementUnit;
        dyTrongTamN -= movementUnit;
        dyTrongTamO -= movementUnit;
        dyTrongTamP -= movementUnit;
      } else {
        _animatedBackgroundUnitComponentA?.getDinhHuongBay?.setDinhHuongTheoPhaiSangTrai();

        // _animatedBackgroundUnitComponentA?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentB?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentC?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentD?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentE?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentF?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentG?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentH?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentI?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentJ?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentK?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentL?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentM?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentN?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentO?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentP?.onChangeAngle(angle: 0.5);

        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoTraiSangPhai() == true) {
      /// x++
      // if (dxTrongTamA < sizeUnit * 4) {
      if (dxTrongTamA < rightCenterDx) {
        dxTrongTamA += movementUnit;
        dxTrongTamB += movementUnit;
        dxTrongTamC += movementUnit;
        dxTrongTamD += movementUnit;

        dxTrongTamE += movementUnit;
        dxTrongTamF += movementUnit;
        dxTrongTamG += movementUnit;
        dxTrongTamH += movementUnit;
        dxTrongTamI += movementUnit;
        dxTrongTamJ += movementUnit;
        dxTrongTamK += movementUnit;
        dxTrongTamL += movementUnit;
        dxTrongTamM += movementUnit;
        dxTrongTamN += movementUnit;
        dxTrongTamO += movementUnit;
        dxTrongTamP += movementUnit;
      } else {
        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoPhaiSangTrai() == true) {
      /// x--
      // if (dxTrongTamA > 0) {
      if (dxTrongTamA > leftCenterDx) {
        dxTrongTamA -= movementUnit;
        dxTrongTamB -= movementUnit;
        dxTrongTamC -= movementUnit;
        dxTrongTamD -= movementUnit;

        dxTrongTamE -= movementUnit;
        dxTrongTamF -= movementUnit;
        dxTrongTamG -= movementUnit;
        dxTrongTamH -= movementUnit;
        dxTrongTamI -= movementUnit;
        dxTrongTamJ -= movementUnit;
        dxTrongTamK -= movementUnit;
        dxTrongTamL -= movementUnit;
        dxTrongTamM -= movementUnit;
        dxTrongTamN -= movementUnit;
        dxTrongTamO -= movementUnit;
        dxTrongTamP -= movementUnit;
      } else {
        _animatedBackgroundUnitComponentA?.getDinhHuongBay?.setDinhHuongTheoTrenTraiSangDuoiPhai();

        // _animatedBackgroundUnitComponentA?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentB?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentC?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentD?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentE?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentF?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentG?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentH?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentI?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentJ?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentK?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentL?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentM?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentN?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentO?.onChangeAngle(angle: 0.5);
        // _animatedBackgroundUnitComponentP?.onChangeAngle(angle: 0.5);

        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoDuoiTraiSangTrenPhai() == true) {
      /// x++ y--
      // if ((dxTrongTamA < sizeUnit * 4) && (dyTrongTamA > 0)) {
      if ((dxTrongTamA < topRightDx) && (dyTrongTamA > topRightDy)) {
        dxTrongTamA += movementUnit;
        dxTrongTamB += movementUnit;
        dxTrongTamC += movementUnit;
        dxTrongTamD += movementUnit;

        dxTrongTamE += movementUnit;
        dxTrongTamF += movementUnit;
        dxTrongTamG += movementUnit;
        dxTrongTamH += movementUnit;
        dxTrongTamI += movementUnit;
        dxTrongTamJ += movementUnit;
        dxTrongTamK += movementUnit;
        dxTrongTamL += movementUnit;
        dxTrongTamM += movementUnit;
        dxTrongTamN += movementUnit;
        dxTrongTamO += movementUnit;
        dxTrongTamP += movementUnit;

        dyTrongTamA -= movementUnit;
        dyTrongTamB -= movementUnit;
        dyTrongTamC -= movementUnit;
        dyTrongTamD -= movementUnit;

        dyTrongTamE -= movementUnit;
        dyTrongTamF -= movementUnit;
        dyTrongTamG -= movementUnit;
        dyTrongTamH -= movementUnit;
        dyTrongTamI -= movementUnit;
        dyTrongTamJ -= movementUnit;
        dyTrongTamK -= movementUnit;
        dyTrongTamL -= movementUnit;
        dyTrongTamM -= movementUnit;
        dyTrongTamN -= movementUnit;
        dyTrongTamO -= movementUnit;
        dyTrongTamP -= movementUnit;
      } else {
        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoTrenTraiSangDuoiPhai() == true) {
      /// x++ y++
      // if ((dxTrongTamA < sizeUnit * 4) && (dyTrongTamA < sizeUnit * 4)) {
      if ((dxTrongTamA < bottomRightDx) && (dyTrongTamA < bottomRightDy)) {
        dxTrongTamA += movementUnit;
        dxTrongTamB += movementUnit;
        dxTrongTamC += movementUnit;
        dxTrongTamD += movementUnit;

        dxTrongTamE += movementUnit;
        dxTrongTamF += movementUnit;
        dxTrongTamG += movementUnit;
        dxTrongTamH += movementUnit;
        dxTrongTamI += movementUnit;
        dxTrongTamJ += movementUnit;
        dxTrongTamK += movementUnit;
        dxTrongTamL += movementUnit;
        dxTrongTamM += movementUnit;
        dxTrongTamN += movementUnit;
        dxTrongTamO += movementUnit;
        dxTrongTamP += movementUnit;

        dyTrongTamA += movementUnit;
        dyTrongTamB += movementUnit;
        dyTrongTamC += movementUnit;
        dyTrongTamD += movementUnit;

        dyTrongTamE += movementUnit;
        dyTrongTamF += movementUnit;
        dyTrongTamG += movementUnit;
        dyTrongTamH += movementUnit;
        dyTrongTamI += movementUnit;
        dyTrongTamJ += movementUnit;
        dyTrongTamK += movementUnit;
        dyTrongTamL += movementUnit;
        dyTrongTamM += movementUnit;
        dyTrongTamN += movementUnit;
        dyTrongTamO += movementUnit;
        dyTrongTamP += movementUnit;
      } else {
        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoDuoiPhaiSangTrenTrai() == true) {
      /// x-- y--
      // if ((dxTrongTamA > 0) && (dyTrongTamA > 0)) {
      if ((dxTrongTamA > topLeftDx) && (dyTrongTamA > topLeftDy)) {
        dxTrongTamA -= movementUnit;
        dxTrongTamB -= movementUnit;
        dxTrongTamC -= movementUnit;
        dxTrongTamD -= movementUnit;

        dxTrongTamE -= movementUnit;
        dxTrongTamF -= movementUnit;
        dxTrongTamG -= movementUnit;
        dxTrongTamH -= movementUnit;
        dxTrongTamI -= movementUnit;
        dxTrongTamJ -= movementUnit;
        dxTrongTamK -= movementUnit;
        dxTrongTamL -= movementUnit;
        dxTrongTamM -= movementUnit;
        dxTrongTamN -= movementUnit;
        dxTrongTamO -= movementUnit;
        dxTrongTamP -= movementUnit;

        dyTrongTamA -= movementUnit;
        dyTrongTamB -= movementUnit;
        dyTrongTamC -= movementUnit;
        dyTrongTamD -= movementUnit;

        dyTrongTamE -= movementUnit;
        dyTrongTamF -= movementUnit;
        dyTrongTamG -= movementUnit;
        dyTrongTamH -= movementUnit;
        dyTrongTamI -= movementUnit;
        dyTrongTamJ -= movementUnit;
        dyTrongTamK -= movementUnit;
        dyTrongTamL -= movementUnit;
        dyTrongTamM -= movementUnit;
        dyTrongTamN -= movementUnit;
        dyTrongTamO -= movementUnit;
        dyTrongTamP -= movementUnit;
      } else {
        ///
      }

      ///
    }
    if (_animatedBackgroundUnitComponentA?.getDinhHuongBay?.isDinhHuongTheoTrenPhaiSangDuoiTrai() == true) {
      /// x-- y++
      // if ((dxTrongTamA > 0) && (dyTrongTamA < sizeUnit * 4)) {
      if ((dxTrongTamA > bottomLeftDx) && (dyTrongTamA < bottomLeftDy)) {
        dxTrongTamA -= movementUnit;
        dxTrongTamB -= movementUnit;
        dxTrongTamC -= movementUnit;
        dxTrongTamD -= movementUnit;

        dxTrongTamE -= movementUnit;
        dxTrongTamF -= movementUnit;
        dxTrongTamG -= movementUnit;
        dxTrongTamH -= movementUnit;
        dxTrongTamI -= movementUnit;
        dxTrongTamJ -= movementUnit;
        dxTrongTamK -= movementUnit;
        dxTrongTamL -= movementUnit;
        dxTrongTamM -= movementUnit;
        dxTrongTamN -= movementUnit;
        dxTrongTamO -= movementUnit;
        dxTrongTamP -= movementUnit;

        dyTrongTamA += movementUnit;
        dyTrongTamB += movementUnit;
        dyTrongTamC += movementUnit;
        dyTrongTamD += movementUnit;

        dyTrongTamE += movementUnit;
        dyTrongTamF += movementUnit;
        dyTrongTamG += movementUnit;
        dyTrongTamH += movementUnit;
        dyTrongTamI += movementUnit;
        dyTrongTamJ += movementUnit;
        dyTrongTamK += movementUnit;
        dyTrongTamL += movementUnit;
        dyTrongTamM += movementUnit;
        dyTrongTamN += movementUnit;
        dyTrongTamO += movementUnit;
        dyTrongTamP += movementUnit;
      } else {
        ///
      }

      ///
    }

    _animatedBackgroundUnitComponentA?.onCapNhatPosition(dxTrongTam: dxTrongTamA, dyTrongTam: dyTrongTamA);
    _animatedBackgroundUnitComponentB?.onCapNhatPosition(dxTrongTam: dxTrongTamB, dyTrongTam: dyTrongTamB);
    _animatedBackgroundUnitComponentC?.onCapNhatPosition(dxTrongTam: dxTrongTamC, dyTrongTam: dyTrongTamC);
    _animatedBackgroundUnitComponentD?.onCapNhatPosition(dxTrongTam: dxTrongTamD, dyTrongTam: dyTrongTamD);

    _animatedBackgroundUnitComponentE?.onCapNhatPosition(dxTrongTam: dxTrongTamE, dyTrongTam: dyTrongTamE);
    _animatedBackgroundUnitComponentF?.onCapNhatPosition(dxTrongTam: dxTrongTamF, dyTrongTam: dyTrongTamF);
    _animatedBackgroundUnitComponentG?.onCapNhatPosition(dxTrongTam: dxTrongTamG, dyTrongTam: dyTrongTamG);
    _animatedBackgroundUnitComponentH?.onCapNhatPosition(dxTrongTam: dxTrongTamH, dyTrongTam: dyTrongTamH);
    _animatedBackgroundUnitComponentI?.onCapNhatPosition(dxTrongTam: dxTrongTamI, dyTrongTam: dyTrongTamI);
    _animatedBackgroundUnitComponentJ?.onCapNhatPosition(dxTrongTam: dxTrongTamJ, dyTrongTam: dyTrongTamJ);
    _animatedBackgroundUnitComponentK?.onCapNhatPosition(dxTrongTam: dxTrongTamK, dyTrongTam: dyTrongTamK);
    _animatedBackgroundUnitComponentL?.onCapNhatPosition(dxTrongTam: dxTrongTamL, dyTrongTam: dyTrongTamL);
    _animatedBackgroundUnitComponentM?.onCapNhatPosition(dxTrongTam: dxTrongTamM, dyTrongTam: dyTrongTamM);
    _animatedBackgroundUnitComponentN?.onCapNhatPosition(dxTrongTam: dxTrongTamN, dyTrongTam: dyTrongTamN);
    _animatedBackgroundUnitComponentO?.onCapNhatPosition(dxTrongTam: dxTrongTamO, dyTrongTam: dyTrongTamO);
    _animatedBackgroundUnitComponentP?.onCapNhatPosition(dxTrongTam: dxTrongTamP, dyTrongTam: dyTrongTamP);
  }
}
