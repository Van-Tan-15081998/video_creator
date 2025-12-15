/// -----
/// TODO:
/// -----
class BasicExistenceStatus {
  String? _trangThai;
  String? get getTrangThai => _trangThai;
  Future<void> caiDatTrangThai({required String? value}) async {
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
    caiDatNguyenBan();
  }

  /// -----
  /// TODO: Trạng Thái => Trạng Thái Nguyên Bản
  /// -----
  BasicExistenceStatus.nguyenBan() {
    caiDatTrangThai(value: '[NGUYEN_BAN]');
  }
  Future<void> caiDatNguyenBan() async {
    caiDatTrangThai(value: '[NGUYEN_BAN]');
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
    caiDatTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
  }
  Future<void> caiDatKhoiTaoHoanTat() async {
    caiDatTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
    return;
  }

  void onVoidCaiDatKhoiTaoHoanTat() {
    caiDatTrangThai(value: '[KHOI_TAO_HOAN_TAT]');
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
    caiDatTrangThai(value: '[DANG_KICH_HOAT]');
  }
  Future<void> caiDatDangKichHoat() async {
    caiDatTrangThai(value: '[DANG_KICH_HOAT]');
    return;
  }

  void onVoidCaiDatDangKichHoat() {
    caiDatTrangThai(value: '[DANG_KICH_HOAT]');
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
    caiDatTrangThai(value: '[HUY_HOAN_TAT]');
  }
  Future<void> caiDatHuyHoanTat() async {
    caiDatTrangThai(value: '[HUY_HOAN_TAT]');
    return;
  }

  void onVoidCaiDatHuyHoanTat() {
    caiDatTrangThai(value: '[HUY_HOAN_TAT]');
    return;
  }

  bool isHuyHoanTat() {
    if (getTrangThai == '[HUY_HOAN_TAT]') {
      return true;
    }
    return false;
  }
}
