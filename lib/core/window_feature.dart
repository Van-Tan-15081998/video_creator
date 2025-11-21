import 'package:flutter/material.dart';

/// -----
/// TODO:
/// -----
mixin WindowFeature {
  /// -----
  /// TODO:
  /// -----
  double? _sizeDxScreen;
  double get getSizeDxScreen => _sizeDxScreen ?? 0;
  void setSizeDxScreen({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sizeDxScreen = value;
    } else {
      _sizeDxScreen ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _sizeDyScreen;
  double get getSizeDyScreen => _sizeDyScreen ?? 0;
  void setSizeDyScreen({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sizeDyScreen = value;
    } else {
      _sizeDyScreen ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _sizeDx;
  double get getSizeDx => _sizeDx ?? 0;
  void setSizeDx({required double? value, bool? isPriorityOverride, bool? isSetActiveSizeDx}) {
    if (isPriorityOverride == true) {
      _sizeDx = value;
    } else {
      _sizeDx ??= value;
    }

    if (isSetActiveSizeDx == true) {
      setActiveSizeDx(value: getSizeDx, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeSizeDx;
  double get getActiveSizeDx => _activeSizeDx ?? 0;
  void setActiveSizeDx({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeSizeDx = value;
    } else {
      _activeSizeDx ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveSizeDx;
  double get getInActiveSizeDx => _inActiveSizeDx ?? 0;
  void setInActiveSizeDx({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveSizeDx = value;
    } else {
      _inActiveSizeDx ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _sizeDy;
  double get getSizeDy => _sizeDy ?? 0;
  void setSizeDy({required double? value, bool? isPriorityOverride, bool? isSetActiveSizeDy}) {
    if (isPriorityOverride == true) {
      _sizeDy = value;
    } else {
      _sizeDy ??= value;
    }

    if (isSetActiveSizeDy == true) {
      setActiveSizeDy(value: getSizeDy, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeSizeDy;
  double get getActiveSizeDy => _activeSizeDy ?? 0;
  void setActiveSizeDy({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeSizeDy = value;
    } else {
      _activeSizeDy ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveSizeDy;
  double get getInActiveSizeDy => _inActiveSizeDy ?? 0;
  void setInActiveSizeDy({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveSizeDy = value;
    } else {
      _inActiveSizeDy ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _opacity;
  double get getOpacity => _opacity ?? 0;
  void setOpacity({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _opacity = value;
    } else {
      _opacity ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isShow;
  bool get getIsShow => _isShow ?? false;
  void setIsShow({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isShow = value;
    } else {
      _isShow ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _topPosition;
  double? get getTopPosition => _topPosition;
  void setTopPosition({required double? value, bool? isPriorityOverride, bool? isSetActiveTopPosition, bool? isSetInActiveTopPosition}) {
    if (isPriorityOverride == true) {
      _topPosition = value;
    } else {
      _topPosition ??= value;
    }

    if (isSetActiveTopPosition == true) {
      setActiveTopPosition(value: getTopPosition, isPriorityOverride: true);
    }

    if (isSetInActiveTopPosition == true) {
      setInActiveTopPosition(value: getTopPosition, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeTopPosition;
  double? get getActiveTopPosition => _activeTopPosition;
  void setActiveTopPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeTopPosition = value;
    } else {
      _activeTopPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveTopPosition;
  double? get getInActiveTopPosition => _inActiveTopPosition;
  void setInActiveTopPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveTopPosition = value;
    } else {
      _inActiveTopPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _bottomPosition;
  double? get getBottomPosition => _bottomPosition;
  void setBottomPosition({required double? value, bool? isPriorityOverride, bool? isSetActiveBottomPosition, bool? isSetInActiveBottomPosition}) {
    if (isPriorityOverride == true) {
      _bottomPosition = value;
    } else {
      _bottomPosition ??= value;
    }

    if (isSetActiveBottomPosition == true) {
      setActiveBottomPosition(value: getBottomPosition, isPriorityOverride: true);
    }

    if (isSetInActiveBottomPosition == true) {
      setInActiveBottomPosition(value: getBottomPosition, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeBottomPosition;
  double? get getActiveBottomPosition => _activeBottomPosition;
  void setActiveBottomPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeBottomPosition = value;
    } else {
      _activeBottomPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveBottomPosition;
  double? get getInActiveBottomPosition => _inActiveBottomPosition;
  void setInActiveBottomPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveBottomPosition = value;
    } else {
      _inActiveBottomPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _leftPosition;
  double? get getLeftPosition => _leftPosition;
  void setLeftPosition({required double? value, bool? isPriorityOverride, bool? isSetActiveLeftPosition, bool? isSetInActiveLeftPosition}) {
    if (isPriorityOverride == true) {
      _leftPosition = value;
    } else {
      _leftPosition ??= value;
    }

    if (isSetActiveLeftPosition == true) {
      setActiveLeftPosition(value: getLeftPosition, isPriorityOverride: true);
    }

    if (isSetInActiveLeftPosition == true) {
      setInActiveLeftPosition(value: getLeftPosition, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeLeftPosition;
  double? get getActiveLeftPosition => _activeLeftPosition;
  void setActiveLeftPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeLeftPosition = value;
    } else {
      _activeLeftPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveLeftPosition;
  double? get getInActiveLeftPosition => _inActiveLeftPosition;
  void setInActiveLeftPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveLeftPosition = value;
    } else {
      _inActiveLeftPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _rightPosition;
  double? get getRightPosition => _rightPosition;
  void setRightPosition({required double? value, bool? isPriorityOverride, bool? isSetActiveRightPosition, bool? isSetInActiveRightPosition}) {
    if (isPriorityOverride == true) {
      _rightPosition = value;
    } else {
      _rightPosition ??= value;
    }

    if (isSetActiveRightPosition == true) {
      setActiveRightPosition(value: getRightPosition, isPriorityOverride: true);
    }

    if (isSetInActiveRightPosition == true) {
      setInActiveRightPosition(value: getRightPosition, isPriorityOverride: true);
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _activeRightPosition;
  double? get getActiveRightPosition => _activeRightPosition;
  void setActiveRightPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _activeRightPosition = value;
    } else {
      _activeRightPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _inActiveRightPosition;
  double? get getInActiveRightPosition => _inActiveRightPosition;
  void setInActiveRightPosition({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _inActiveRightPosition = value;
    } else {
      _inActiveRightPosition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _conditionActiveByDirection;
  String? get getConditionActiveByDirection => _conditionActiveByDirection;
  void setConditionActiveByDirection({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _conditionActiveByDirection = value;
    } else {
      _conditionActiveByDirection ??= value;
    }

    return;
  }

  void setConditionActiveByLeftDirection() {
    setConditionActiveByDirection(value: '[LEFT]', isPriorityOverride: true);
  }

  bool isConditionActiveByLeftDirection() {
    return getConditionActiveByDirection == '[LEFT]';
  }

  void setConditionActiveByRightDirection() {
    setConditionActiveByDirection(value: '[RIGHT]', isPriorityOverride: true);
  }

  bool isConditionActiveByRightDirection() {
    return getConditionActiveByDirection == '[RIGHT]';
  }

  void setConditionActiveByTopDirection() {
    setConditionActiveByDirection(value: '[TOP]', isPriorityOverride: true);
  }

  bool isConditionActiveByTopDirection() {
    return getConditionActiveByDirection == '[TOP]';
  }

  void setConditionActiveByBottomDirection() {
    setConditionActiveByDirection(value: '[BOTTOM]', isPriorityOverride: true);
  }

  bool isConditionActiveByBottomDirection() {
    return getConditionActiveByDirection == '[BOTTOM]';
  }

  bool checkConditionActiveByDirection() {
    bool result = false;

    if (getConditionActiveByDirection == '[LEFT]') {
      if (getLeftPosition == getActiveLeftPosition) {
        result = true;
      }
    }

    if (getConditionActiveByDirection == '[RIGHT]') {

      if (getRightPosition == getActiveRightPosition) {
        result = true;
      }
    }

    if (getConditionActiveByDirection == '[TOP]') {
      if (getTopPosition == getActiveTopPosition) {
        result = true;
      }
    }

    if (getConditionActiveByDirection == '[BOTTOM]') {
      if (getBottomPosition == getActiveBottomPosition) {
        result = true;
      }
    }

    return result;
  }

  void inactiveWindow() {
    if (getConditionActiveByDirection == '[LEFT]') {
      if (getInActiveLeftPosition != null) {
        setLeftPosition(value: getInActiveLeftPosition, isPriorityOverride: true);
      } else {
        setLeftPosition(value: getSizeDx * (-1.0), isPriorityOverride: true, isSetInActiveLeftPosition: true);
      }
    }

    if (getConditionActiveByDirection == '[RIGHT]') {
      if (getInActiveRightPosition != null) {
        setRightPosition(value: getInActiveRightPosition, isPriorityOverride: true);
      } else {
        setRightPosition(value: getSizeDx * (-1.0), isPriorityOverride: true, isSetInActiveRightPosition: true);
      }
    }

    if (getConditionActiveByDirection == '[TOP]') {
      if (getInActiveTopPosition != null) {
        setTopPosition(value: getInActiveTopPosition, isPriorityOverride: true);
      } else {
        setTopPosition(value: getSizeDy * (-1.0), isPriorityOverride: true, isSetInActiveTopPosition: true);
      }
    }

    if (getConditionActiveByDirection == '[BOTTOM]') {
      if (getInActiveBottomPosition != null) {
        setBottomPosition(value: getInActiveBottomPosition, isPriorityOverride: true);
      } else {
        setBottomPosition(value: getSizeDy * (-1.0), isPriorityOverride: true, isSetInActiveBottomPosition: true);
      }
    }
  }

  void activeWindow() {
    if (getConditionActiveByDirection == '[LEFT]') {
      if (getActiveLeftPosition != null) {
        setLeftPosition(value: getActiveLeftPosition, isPriorityOverride: true);
      }
    }

    if (getConditionActiveByDirection == '[RIGHT]') {
      if (getActiveRightPosition != null) {
        setRightPosition(value: getActiveRightPosition, isPriorityOverride: true);
      }
    }

    if (getConditionActiveByDirection == '[TOP]') {
      if (getActiveTopPosition != null) {
        setTopPosition(value: getActiveTopPosition, isPriorityOverride: true);
      }
    }

    if (getConditionActiveByDirection == '[BOTTOM]') {
      if (getActiveBottomPosition != null) {
        setBottomPosition(value: getActiveBottomPosition, isPriorityOverride: true);
      }
    }
  }

  /// -----
  /// TODO:
  /// -----
  Widget? _windowWidget;
  Widget get getWindowWidget => _windowWidget ?? Container();
  void setWindowWidget({required Widget? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _windowWidget = value;
    } else {
      _windowWidget ??= value;
    }

    return;
  }
}
