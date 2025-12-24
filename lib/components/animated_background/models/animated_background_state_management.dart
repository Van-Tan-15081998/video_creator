class AnimatedBackgroundStateManagement {
  AnimatedBackgroundStateManagement({required double? chieuRongManHinhPhiVatLy, required double? chieuCaoManHinhPhiVatLy, required double? sizeDx, required double? sizeDy}) {
    setChieuCaoManHinhPhiVatLy(value: chieuCaoManHinhPhiVatLy);
    setChieuRongManHinhPhiVatLy(value: chieuRongManHinhPhiVatLy);
  }

  /// -----
  /// TODO: Kích Thước Màn Hình
  /// -----
  double? _chieuRongManHinhPhiVatLy;
  double? get getChieuRongManHinhPhiVatLy => _chieuRongManHinhPhiVatLy;
  double get getChieuRongManHinhPhiVatLyNotNull => _chieuRongManHinhPhiVatLy ?? 0;
  Future<void> setChieuRongManHinhPhiVatLy({required double? value}) async {
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

  double? _chieuCaoManHinhPhiVatLy;
  double? get getChieuCaoManHinhPhiVatLy => _chieuCaoManHinhPhiVatLy;
  double get getChieuCaoManHinhPhiVatLyNotNull => _chieuCaoManHinhPhiVatLy ?? 0;
  Future<void> setChieuCaoManHinhPhiVatLy({required double? value}) async {
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

  /// -----
  /// TODO: Dx
  /// -----
  double? _sizeDx;
  double? get getSizeDx => _sizeDx;
  double get getSizeDxNotNull => _sizeDx ?? 0;
  Future<void> setSizeDx({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _sizeDx = value;
      } else {
        _sizeDx = 0;
      }
    } else {
      _sizeDx = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dy
  /// -----
  double? _sizeDy;
  double? get getSizeDy => _sizeDy;
  double get getSizeDyNotNull => _sizeDy ?? 0;
  Future<void> setSizeDy({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _sizeDy = value;
      } else {
        _sizeDy = 0;
      }
    } else {
      _sizeDy = 0;
    }
    return;
  }
}
