/// -----
/// TODO:
/// -----
class BasicMovementDirection {
  /// -----
  /// TODO:
  /// -----
  String? _dinhHuong;
  String? get getDinhHuong => _dinhHuong;
  Future<void> caiDatDinhHuong({required String? value}) async {
    _dinhHuong = value;
    return;
  }

  static const String constDinhHuongTheoTrenXuongDuoi = '[DINH_HUONG_THEO_TREN_XUONG_DUOI]';
  static const String constDinhHuongTheoTrenXuongDuoiLechTrai = '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_TRAI]';
  static const String constDinhHuongTheoTrenXuongDuoiLechPhai = '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_PHAI]';
  static const String constDinhHuongTheoDuoiLenTren = '[DINH_HUONG_THEO_DUOI_LEN_TREN]';
  static const String constDinhHuongTheoTraiSangPhai = '[DINH_HUONG_THEO_TRAI_SANG_PHAI]';
  static const String constDinhHuongTheoPhaiSangTrai = '[DINH_HUONG_THEO_PHAI_SANG_TRAI]';
  static const String constDinhHuongTheoTrenTraiSangDuoiPhai = '[DINH_HUONG_THEO_TREN_TRAI_SANG_DUOI_PHAI]';
  static const String constDinhHuongTheoDuoiTraiSangTrenPhai = '[DINH_HUONG_THEO_DUOI_TRAI_SANG_TREN_PHAI]';
  static const String constDinhHuongTheoTrenPhaiSangDuoiTrai = '[DINH_HUONG_THEO_TREN_PHAI_SANG_DUOI_TRAI]';
  static const String constDinhHuongTheoDuoiPhaiSangTrenTrai = '[DINH_HUONG_THEO_DUOI_PHAI_SANG_TREN_TRAI]';
  static const String constDinhHuongTheoChiSoTangTien = '[DINH_HUONG_THEO_CHI_SO_TANG_TIEN]';
  static const String constDinhHuongTheoDoanDuongBayThuocKichBan = '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_KICH_BAN]';
  static const String constDinhHuongTheoDoanDuongBayThuocLichSuBay = '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_LICH_SU_BAY]';
  static const String constDinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh = '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CO_GIAI_DOAN_BAN_HANH_TRINH]';
  static const String constDinhHuongTheoViTriXuatPhatNguyenBanChienDauCo = '[DINH_HUONG_THEO_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]';
  static const String constDinhHuongTheoViTriChienDauChienDauCo = '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CHIEN_DAU_CO]';
  static const String constDinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo = '[DINH_HUONG_THEO_TRAI_SANG_PHAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]';
  static const String constDinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo = '[DINH_HUONG_THEO_PHAI_SANG_TRAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs01 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS01]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs02 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS02]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs03 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS03]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs04 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS04]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs05 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS05]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs06 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS06]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs07 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS07]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs08 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS08]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs09 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS09]';
  static const String constDinhHuongTheoPhuongThucXSieuCapSs10 = '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS10]';

  static const String constDinhHuongTheoViTriPhuongTienLayMucTieu = '[DINH_HUONG_THEO_VI_TRI_PHUONG_TIEN_LAY_MUC_TIEU]';
  static const String constDinhHuongTheoQuanTinhLichSuDiChuyen = '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]';

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

  BasicMovementDirection.onMacDinh() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI]');
  }

  /// -----
  /// TODO: Định Hướng Theo Trên Xuống Dưới
  /// -----
  BasicMovementDirection.dinhHuongTheoTrenXuongDuoi() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI]');
  }

  Future<void> caiDatDinhHuongTheoTrenXuongDuoi() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI]');
    return;
  }

  Future<bool> isDinhHuongTheoTrenXuongDuoi() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TREN_XUONG_DUOI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Trên Xuống Dưới Lệch Trái
  /// -----
  BasicMovementDirection.dinhHuongTheoTrenXuongDuoiLechTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_TRAI]');
  }

  Future<void> caiDatDinhHuongTheoTrenXuongDuoiLechTrai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_TRAI]');
    return;
  }

  Future<bool> isDinhHuongTheoTrenXuongDuoiLechTrai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_TRAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Trên Xuống Dưới Lệch Phải
  /// -----
  BasicMovementDirection.dinhHuongTheoTrenXuongDuoiLechPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_PHAI]');
  }

  Future<void> caiDatDinhHuongTheoTrenXuongDuoiLechPhai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_PHAI]');
    return;
  }

  Future<bool> isDinhHuongTheoTrenXuongDuoiLechPhai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_PHAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Dưới Lên Trên
  /// -----
  BasicMovementDirection.dinhHuongTheoDuoiLenTren() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_LEN_TREN]');
  }

  Future<void> caiDatDinhHuongTheoDuoiLenTren() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_LEN_TREN]');
    return;
  }

  Future<bool> isDinhHuongTheoDuoiLenTren() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_DUOI_LEN_TREN]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Trái Sang Phải
  /// -----
  BasicMovementDirection.dinhHuongTheoTraiSangPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI]');
  }

  Future<void> caiDatDinhHuongTheoTraiSangPhai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI]');
    return;
  }

  Future<bool> isDinhHuongTheoTraiSangPhai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TRAI_SANG_PHAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phải Sang Trái
  /// -----
  BasicMovementDirection.dinhHuongTheoPhaiSangTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI]');
  }

  Future<void> caiDatDinhHuongTheoPhaiSangTrai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI]');
    return;
  }

  Future<bool> isDinhHuongTheoPhaiSangTrai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHAI_SANG_TRAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo [Trên Trái] Sang [Dưới Phải]
  /// -----
  BasicMovementDirection.dinhHuongTheoTrenTraiSangDuoiPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_TRAI_SANG_DUOI_PHAI]');
  }

  Future<void> caiDatDinhHuongTheoTrenTraiSangDuoiPhai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_TRAI_SANG_DUOI_PHAI]');
    return;
  }

  Future<bool> isDinhHuongTheoTrenTraiSangDuoiPhai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TREN_TRAI_SANG_DUOI_PHAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo [Dưới Trái] Sang [Trên Phải]
  /// -----
  BasicMovementDirection.dinhHuongTheoDuoiTraiSangTrenPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_TRAI_SANG_TREN_PHAI]');
  }

  Future<void> caiDatDinhHuongTheoDuoiTraiSangTrenPhai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_TRAI_SANG_TREN_PHAI]');
    return;
  }

  Future<bool> isDinhHuongTheoDuoiTraiSangTrenPhai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_DUOI_TRAI_SANG_TREN_PHAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo [Trên Phải] Sang [Dưới Trái]
  /// -----
  BasicMovementDirection.dinhHuongTheoTrenPhaiSangDuoiTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_PHAI_SANG_DUOI_TRAI]');
  }

  Future<void> caiDatDinhHuongTheoTrenPhaiSangDuoiTrai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_PHAI_SANG_DUOI_TRAI]');
    return;
  }

  Future<bool> isDinhHuongTheoTrenPhaiSangDuoiTrai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TREN_PHAI_SANG_DUOI_TRAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo [Dưới Phải] Sang [Trên Trái]
  /// -----
  BasicMovementDirection.dinhHuongTheoDuoiPhaiSangTrenTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_PHAI_SANG_TREN_TRAI]');
  }

  Future<void> caiDatDinhHuongTheoDuoiPhaiSangTrenTrai() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_PHAI_SANG_TREN_TRAI]');
    return;
  }

  Future<bool> isDinhHuongTheoDuoiPhaiSangTrenTrai() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_DUOI_PHAI_SANG_TREN_TRAI]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Dựa Theo Chỉ Số Tăng Tiến
  /// -----
  BasicMovementDirection.dinhHuongTheoChiSoTangTien() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_CHI_SO_TANG_TIEN]');
  }

  Future<void> caiDatDinhHuongTheoChiSoTangTien() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_CHI_SO_TANG_TIEN]');
    return;
  }

  Future<bool> isDinhHuongTheoChiSoTangTien() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_CHI_SO_TANG_TIEN]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Của Phương Tiện
  /// TODO: Định Hướng Theo Đoạn Đường Bay Thuộc Kịch Bản
  /// -----
  BasicMovementDirection.dinhHuongTheoDoanDuongBayThuocKichBan() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_KICH_BAN]');
  }

  Future<void> caiDatDinhHuongTheoDoanDuongBayThuocKichBan() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_KICH_BAN]');
    return;
  }

  Future<bool> isDinhHuongTheoDoanDuongBayThuocKichBan() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_KICH_BAN]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Của Phương Tiện
  /// TODO: Định Hướng Theo Đoạn Đường Bay Thuộc Lịch Sử Bay
  /// -----
  BasicMovementDirection.dinhHuongTheoDoanDuongBayThuocLichSuBay() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_LICH_SU_BAY]');
  }

  Future<void> caiDatDinhHuongTheoDoanDuongBayThuocLichSuBay() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_LICH_SU_BAY]');
    return;
  }

  Future<bool> isDinhHuongTheoDoanDuongBayThuocLichSuBay() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_LICH_SU_BAY]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Vị Trí Chiến Đấu Cơ Giai Đoạn Bắt Đầu Bán Hành Trình
  /// -----
  BasicMovementDirection.dinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CO_GIAI_DOAN_BAN_HANH_TRINH]');
  }

  Future<void> caiDatDinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CO_GIAI_DOAN_BAN_HANH_TRINH]');
    return;
  }

  Future<bool> isDinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CO_GIAI_DOAN_BAN_HANH_TRINH]') {
      return true;
    }
    return false;
  }

  /// -----
  /// -----
  /// TODO: Định Hướng Của Chiến Đấu Cơ
  /// -----
  /// -----

  /// -----
  /// TODO: Định Hướng Theo Vị Trí Xuất Phát Nguyên Bản Của Chiến Đấu Cơ
  /// -----
  BasicMovementDirection.dinhHuongTheoViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
  }

  Future<void> caiDatDinhHuongTheoViTriXuatPhatNguyenBanChienDauCo() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  Future<bool> isDinhHuongTheoViTriXuatPhatNguyenBanChienDauCo() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Vị Trí Chiến Đấu Của Chiến Đấu Cơ
  /// -----
  BasicMovementDirection.dinhHuongTheoViTriChienDauChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CHIEN_DAU_CO]');
  }

  Future<void> caiDatDinhHuongTheoViTriChienDauChienDauCo() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CHIEN_DAU_CO]');
    return;
  }

  Future<bool> isDinhHuongTheoViTriChienDauChienDauCo() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CHIEN_DAU_CO]') {
      return true;
    }
    return false;
  }

  /// -----
  /// -----
  /// -----
  BasicMovementDirection.dinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
  }

  Future<void> caiDatDinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  Future<bool> isDinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_TRAI_SANG_PHAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]') {
      return true;
    }
    return false;
  }

  /// -----
  /// -----
  /// -----
  BasicMovementDirection.dinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
  }

  Future<void> caiDatDinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  Future<bool> isDinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHAI_SANG_TRAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]') {
      return true;
    }
    return false;
  }

  /// -----
  /// -----
  /// TODO: Định Hướng Của Phương Thức X
  /// -----
  /// -----

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS01
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs01() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS01]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs01() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS01]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs01() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS01]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS02
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs02() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS02]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs02() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS02]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs02() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS02]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS03
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs03() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS03]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs03() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS03]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs03() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS03]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS04
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs04() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS04]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs04() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS04]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs04() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS04]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS05
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs05() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS05]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs05() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS05]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs05() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS05]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS06
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs06() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS06]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs06() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS06]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs06() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS06]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS07
  /// -----v
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs07() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS07]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs07() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS07]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs07() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS07]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS08
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs08() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS08]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs08() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS08]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs08() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS08]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS06
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs09() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS09]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs09() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS09]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs09() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS09]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Phương Thức X Siêu Cấp SS10
  /// -----
  BasicMovementDirection.dinhHuongTheoPhuongThucXSieuCapSs10() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS10]');
  }

  Future<void> caiDatDinhHuongTheoPhuongThucXSieuCapSs10() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS10]');
    return;
  }

  Future<bool> isDinhHuongTheoPhuongThucXSieuCapSs10() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS10]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Vị Trí Phương Tiện Lấy Mục Tiêu
  /// -----
  BasicMovementDirection.dinhHuongTheoViTriPhuongTienLayMucTieu() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_PHUONG_TIEN_LAY_MUC_TIEU]');
  }

  Future<void> caiDatDinhHuongTheoViTriPhuongTienLayMucTieu() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_PHUONG_TIEN_LAY_MUC_TIEU]');
    return;
  }

  bool onCheckBoolXacDinhViTriPhuongTienHoatDongLayMucTieu() {
    if (getDinhHuong == '[DINH_HUONG_THEO_VI_TRI_PHUONG_TIEN_LAY_MUC_TIEU]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Định Hướng Theo Quán Tính Lịch Sử Di Chuyển
  /// -----
  BasicMovementDirection.dinhHuongTheoQuanTinhLichSuDiChuyen() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]');
  }

  Future<void> caiDatDinhHuongTheoQuanTinhLichSuDiChuyen() async {
    await caiDatDinhHuong(value: '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]');
    return;
  }

  Future<bool> isDinhHuongTheoQuanTinhLichSuDiChuyen() async {
    if (getDinhHuong == '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]') {
      return true;
    }
    return false;
  }
}
