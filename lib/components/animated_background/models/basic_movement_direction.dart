/// -----
/// TODO:
/// -----
class BasicMovementDirection {
  /// -----
  /// TODO:
  /// -----
  String? _dinhHuong;
  String? get getDinhHuong => _dinhHuong;
  void caiDatDinhHuong({required String? value}) {
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
  void onInitRoot() {
    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onResetRoot() {
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

  void caiDatDinhHuongTheoTrenXuongDuoi() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI]');
    return;
  }

  bool isDinhHuongTheoTrenXuongDuoi() {
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

  void caiDatDinhHuongTheoTrenXuongDuoiLechTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_TRAI]');
    return;
  }

  bool isDinhHuongTheoTrenXuongDuoiLechTrai() {
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

  void caiDatDinhHuongTheoTrenXuongDuoiLechPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_XUONG_DUOI_LECH_PHAI]');
    return;
  }

  bool isDinhHuongTheoTrenXuongDuoiLechPhai() {
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

  void caiDatDinhHuongTheoDuoiLenTren() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_LEN_TREN]');
    return;
  }

  bool isDinhHuongTheoDuoiLenTren() {
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

  void caiDatDinhHuongTheoTraiSangPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI]');
    return;
  }

  bool isDinhHuongTheoTraiSangPhai() {
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

  void caiDatDinhHuongTheoPhaiSangTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI]');
    return;
  }

  bool isDinhHuongTheoPhaiSangTrai() {
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

  void caiDatDinhHuongTheoTrenTraiSangDuoiPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_TRAI_SANG_DUOI_PHAI]');
    return;
  }

  bool isDinhHuongTheoTrenTraiSangDuoiPhai() {
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

  void caiDatDinhHuongTheoDuoiTraiSangTrenPhai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_TRAI_SANG_TREN_PHAI]');
    return;
  }

  bool isDinhHuongTheoDuoiTraiSangTrenPhai() {
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

  void caiDatDinhHuongTheoTrenPhaiSangDuoiTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TREN_PHAI_SANG_DUOI_TRAI]');
    return;
  }

  bool isDinhHuongTheoTrenPhaiSangDuoiTrai() {
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

  void caiDatDinhHuongTheoDuoiPhaiSangTrenTrai() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DUOI_PHAI_SANG_TREN_TRAI]');
    return;
  }

  bool isDinhHuongTheoDuoiPhaiSangTrenTrai() {
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

  void caiDatDinhHuongTheoChiSoTangTien() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_CHI_SO_TANG_TIEN]');
    return;
  }

  bool isDinhHuongTheoChiSoTangTien() {
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

  void caiDatDinhHuongTheoDoanDuongBayThuocKichBan() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_KICH_BAN]');
    return;
  }

  bool isDinhHuongTheoDoanDuongBayThuocKichBan() {
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

  void caiDatDinhHuongTheoDoanDuongBayThuocLichSuBay() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_DOAN_DUONG_BAY_THUOC_LICH_SU_BAY]');
    return;
  }

  bool isDinhHuongTheoDoanDuongBayThuocLichSuBay() {
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

  void caiDatDinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CO_GIAI_DOAN_BAN_HANH_TRINH]');
    return;
  }

  bool isDinhHuongTheoViTriChienDauCoGiaiDoanBanHanhTrinh() {
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

  void caiDatDinhHuongTheoViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  bool isDinhHuongTheoViTriXuatPhatNguyenBanChienDauCo() {
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

  void caiDatDinhHuongTheoViTriChienDauChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_CHIEN_DAU_CHIEN_DAU_CO]');
    return;
  }

  bool isDinhHuongTheoViTriChienDauChienDauCo() {
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

  void caiDatDinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_TRAI_SANG_PHAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  bool isDinhHuongTheoTraiSangPhaiViTriXuatPhatNguyenBanChienDauCo() {
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

  void caiDatDinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHAI_SANG_TRAI_VI_TRI_XUAT_PHAT_NGUYEN_BAN_CHIEN_DAU_CO]');
    return;
  }

  bool isDinhHuongTheoPhaiSangTraiViTriXuatPhatNguyenBanChienDauCo() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs01() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS01]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs01() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs02() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS02]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs02() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs03() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS03]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs03() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs04() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS04]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs04() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs05() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS05]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs05() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs06() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS06]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs06() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs07() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS07]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs07() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs08() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS08]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs08() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs09() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS09]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs09() {
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

  void caiDatDinhHuongTheoPhuongThucXSieuCapSs10() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_PHUONG_THUC_X_SIEU_CAP_SS10]');
    return;
  }

  bool isDinhHuongTheoPhuongThucXSieuCapSs10() {
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

  void caiDatDinhHuongTheoViTriPhuongTienLayMucTieu() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_VI_TRI_PHUONG_TIEN_LAY_MUC_TIEU]');
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

  void caiDatDinhHuongTheoQuanTinhLichSuDiChuyen() {
    caiDatDinhHuong(value: '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]');
    return;
  }

  bool isDinhHuongTheoQuanTinhLichSuDiChuyen() {
    if (getDinhHuong == '[DINH_HUONG_THEO_QUAN_TINH_LICH_SU_DI_CHUYEN]') {
      return true;
    }
    return false;
  }
}
