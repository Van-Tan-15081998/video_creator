/// -----
/// TODO:
/// -----
class BasicExistenceStatus {
  String? _trangThai;
  String? get getTrangThai => _trangThai;
  Future<void> setTrangThai({required String? value}) async {
    _trangThai = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onInitRoot() async {
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onResetRoot() async {
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicExistenceStatus.onMacDinh() {
    setNguyenBan();
  }

  /// -----
  /// TODO: Trạng Thái => Trạng Thái Nguyên Bản
  /// -----
  BasicExistenceStatus.nguyenBan() {
    setTrangThai(value: '[NGUYEN_BAN]');
  }
  Future<void> setNguyenBan() async {
    setTrangThai(value: '[NGUYEN_BAN]');
    return;
  }

  Future<bool> isNguyenBan() async {
    if (getTrangThai == '[NGUYEN_BAN]') {
      return true;
    }
    return false;
  }

  bool onCheckBoolNguyenBan() {
    if (getTrangThai == '[NGUYEN_BAN]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Trạng Thái => Khởi Tạo Hoàn Tất
  /// -----
  BasicExistenceStatus.khoiTaoHoanTat() {
    setTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
  }
  Future<void> setKhoiTaoHoanTat() async {
    setTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
    return;
  }

  void onVoidCaiDatKhoiTaoHoanTat() {
    setTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
    return;
  }

  bool onCheckBoolKhoiTaoHoanTat() {
    if (getTrangThai == '[KHOI_TAO_HOAN_TAT]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Trạng Thái => Đang Kích Hoạt
  /// -----
  BasicExistenceStatus.dangKichHoat() {
    setTrangThai(value: '[DANG_KICH_HOAT]');
  }
  Future<void> setDangKichHoat() async {
    setTrangThai(value: '[DANG_KICH_HOAT]');
    return;
  }

  void onVoidCaiDatDangKichHoat() {
    setTrangThai(value: '[DANG_KICH_HOAT]');
    return;
  }

  bool onCheckBoolDangKichHoat() {
    if (getTrangThai == '[DANG_KICH_HOAT]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Trạng Thái => Hủy Hoàn Tất
  /// -----
  BasicExistenceStatus.huyHoanTat() {
    setTrangThai(value: '[HUY_HOAN_TAT]');
  }
  Future<void> setHuyHoanTat() async {
    setTrangThai(value: '[HUY_HOAN_TAT]');
    return;
  }

  void onVoidCaiDatHuyHoanTat() {
    setTrangThai(value: '[HUY_HOAN_TAT]');
    return;
  }

  bool isHuyHoanTat() {
    if (getTrangThai == '[HUY_HOAN_TAT]') {
      return true;
    }
    return false;
  }
}
