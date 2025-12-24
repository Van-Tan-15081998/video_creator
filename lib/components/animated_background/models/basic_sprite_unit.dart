import 'package:flame/components.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

/// -----
/// TODO:
/// -----
class BasicSpriteUnit with ExecutionCore {
  /// -----
  /// TODO: Attach Root
  /// -----
  @override
  Future<void> onAttachRoot({required dynamic attachValue, bool? isIgnoreAttachRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Attach Root For SubCom
      /// -----
      if (isIgnoreAttachRootForSubCom == null || isIgnoreAttachRootForSubCom == false) {
        await onAttachRootForSubCom(attachValue: attachValue);
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  @override
  Future<void> onInitRoot({bool? isIgnoreInitRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreInitRootForSubCom == null || isIgnoreInitRootForSubCom == false) {
        await onInitRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  @override
  Future<void> onSetupRoot({bool? isIgnoreSetupRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (isIgnoreSetupRootForSubCom == null || isIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  @override
  Future<void> onResetRoot({bool? isIgnoreResetRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreResetRootForSubCom == null || isIgnoreResetRootForSubCom == false) {
        await onResetRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRoot]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root For SubCom
  /// -----
  @override
  Future<void> onAttachRootForSubCom({required dynamic attachValue}) async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onAttachRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root For SubCom
  /// -----
  @override
  Future<void> onSetupRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onSetupRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root For SubCom
  /// -----
  @override
  Future<void> onInitRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onInitRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root For SubCom
  /// -----
  @override
  Future<void> onResetRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom]');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Mã Định Danh
  /// -----
  String? _maDinhDanh;
  String? get getMaDinhDanh => _maDinhDanh;
  Future<void> setMaDinhDanh({required String? value}) async {
    _maDinhDanh = value;
    return;
  }

  void onVoidCaiDatMaDinhDanh({required String? value}) {
    _maDinhDanh = value;
    return;
  }

  /// -----
  /// TODO: Nguồn Hình Ảnh
  /// -----
  String? _nguonHinhAnh;
  String? get getNguonHinhAnh => _nguonHinhAnh;
  Future<void> setNguonHinhAnh({required String? value}) async {
    _nguonHinhAnh = value;
    return;
  }

  /// -----
  /// TODO: Nguồn Hình Ảnh Nguyên Bản
  /// -----
  String? _nguonHinhAnhToiUuKichThuocRS100;
  String? get getNguonHinhAnhToiUuKichThuocRS100 => _nguonHinhAnhToiUuKichThuocRS100;
  Future<void> setNguonHinhAnhToiUuKichThuocRS100({required String? value}) async {
    _nguonHinhAnhToiUuKichThuocRS100 = value;
    return;
  }

  /// -----
  /// TODO: Nguồn Hình Ảnh Tối Ưu Kích Thước 25%
  /// -----
  String? _nguonHinhAnhToiUuKichThuocRS025;
  String? get getNguonHinhAnhToiUuKichThuocRS025 => _nguonHinhAnhToiUuKichThuocRS025;
  Future<void> setNguonHinhAnhToiUuKichThuocRS025({required String? value}) async {
    _nguonHinhAnhToiUuKichThuocRS025 = value;
    return;
  }

  /// -----
  /// TODO: Nguồn Hình Ảnh Tối Ưu Kích Thước 50%
  /// -----
  String? _nguonHinhAnhToiUuKichThuocRS050;
  String? get getNguonHinhAnhToiUuKichThuocRS050 => _nguonHinhAnhToiUuKichThuocRS050;
  Future<void> setNguonHinhAnhToiUuKichThuocRS050({required String? value}) async {
    _nguonHinhAnhToiUuKichThuocRS050 = value;
    return;
  }

  /// -----
  /// TODO: Nguồn Hình Ảnh Đã Lưu Vào Vùng (Bộ) Nhớ Ứng Dụng
  /// -----
  String? _nguonHinhAnhLuuVaoStorage;
  String? get getNguonHinhAnhLuuVaoStorage => _nguonHinhAnhLuuVaoStorage;
  Future<void> setNguonHinhAnhLuuVaoStorage({required String? value, bool? setUuTien}) async {
    if (setUuTien == true) {
      _nguonHinhAnhLuuVaoStorage = value;
    } else {
      _nguonHinhAnhLuuVaoStorage ??= value;
    }

    return;
  }

  int? _tongSoLuongThanhPhanTaiNguyen = 4;
  int? get getTongSoLuongThanhPhanTaiNguyen => _tongSoLuongThanhPhanTaiNguyen;
  Future<void> onCaiDatTongSoLuongThanhPhanTaiNguyen({required int? value, bool? setUuTien}) async {
    if (setUuTien == true) {
      _tongSoLuongThanhPhanTaiNguyen = value;
    } else {
      _tongSoLuongThanhPhanTaiNguyen ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Thuộc tính
  /// -----
  // MoHinhThuocTinhDonViSprite? _thuocTinh;
  // MoHinhThuocTinhDonViSprite? get getThuocTinh => _thuocTinh;
  // Future<void> setThuocTinh({required MoHinhThuocTinhDonViSprite? value}) async {
  //   _thuocTinh = value;
  //   return;
  // }

  /// -----
  /// TODO: SpriteAnimation
  /// -----
  SpriteAnimation? _spriteAnimation;
  SpriteAnimation? get getSpriteAnimation => _spriteAnimation;
  Future<void> setSpriteAnimation({required SpriteAnimation? value}) async {
    _spriteAnimation = value;
    return;
  }

  void onVoidCaiDatSpriteAnimation({required SpriteAnimation? value}) {
    _spriteAnimation = value;
    return;
  }

  /// -----
  /// TODO: Sprite
  /// -----
  Sprite? _sprite;
  Sprite? get getSprite => _sprite;
  Future<void> setSprite({required Sprite? value}) async {
    _sprite = value;
    return;
  }

  void onVoidCaiDatSprite({required Sprite? value}) {
    _sprite = value;
    return;
  }

  ///
  /// TODO: Tổng Số Frame
  ///
  int? _tongSoFrame;
  int? get getTongSoFrame => _tongSoFrame;
  Future<void> setTongSoFrame({required int? value}) async {
    _tongSoFrame = value;
    return;
  }

  ///
  /// TODO: Tổng Số Frame Trên Hàng
  ///
  int? _tongSoFrameTrenHang;
  int? get getTongSoFrameTrenHang => _tongSoFrameTrenHang;
  Future<void> setTongSoFrameTrenHang({required int? value}) async {
    _tongSoFrameTrenHang = value;
    return;
  }

  ///
  /// TODO: Chiều Rộng Frame
  ///
  double? _chieuRongFrame;
  double? get getChieuRongFrame => _chieuRongFrame;
  Future<void> setChieuRongFrame({required double? value}) async {
    _chieuRongFrame = value;
    return;
  }

  ///
  /// TODO: Chiều Rộng Frame Nguyên Bản
  ///
  double? _chieuRongFrameRS100;
  double? get getChieuRongFrameRS100 => _chieuRongFrameRS100;
  Future<void> setChieuRongFrameRS100({required double? value}) async {
    _chieuRongFrameRS100 = value;
    return;
  }

  ///
  /// TODO: Chiều Rộng Frame Tối Ưu Hóa Kích Thước 25%
  ///
  double? _chieuRongFrameRS025;
  double? get getChieuRongFrameRS025 => _chieuRongFrameRS025;
  Future<void> setChieuRongFrameRS025({required double? value}) async {
    _chieuRongFrameRS025 = value;
    return;
  }

  ///
  /// TODO: Chiều Rộng Frame Tối Ưu Hóa Kích Thước 50%
  ///
  double? _chieuRongFrameRS050;
  double? get getChieuRongFrameRS050 => _chieuRongFrameRS050;
  Future<void> setChieuRongFrameRS050({required double? value}) async {
    _chieuRongFrameRS050 = value;
    return;
  }

  ///
  /// TODO: Chiều Cao Frame
  ///
  double? _chieuCaoFrame;
  double? get getChieuCaoFrame => _chieuCaoFrame;
  Future<void> setChieuCaoFrame({required double? value}) async {
    _chieuCaoFrame = value;
    return;
  }

  ///
  /// TODO: Chiều Cao Frame Nguyên Bản
  ///
  double? _chieuCaoFrameRS100;
  double? get getChieuCaoFrameRS100 => _chieuCaoFrameRS100;
  Future<void> setChieuCaoFrameRS100({required double? value}) async {
    _chieuCaoFrameRS100 = value;
    return;
  }

  ///
  /// TODO: Chiều Cao Frame Tối Ưu Hóa Kích Thước 25%
  ///
  double? _chieuCaoFrameRS025;
  double? get getChieuCaoFrameRS025 => _chieuCaoFrameRS025;
  Future<void> setChieuCaoFrameRS025({required double? value}) async {
    _chieuCaoFrameRS025 = value;
    return;
  }

  ///
  /// TODO: Chiều Cao Frame Tối Ưu Hóa Kích Thước 50%
  ///
  double? _chieuCaoFrameRS050;
  double? get getChieuCaoFrameRS050 => _chieuCaoFrameRS050;
  Future<void> setChieuCaoFrameRS050({required double? value}) async {
    _chieuCaoFrameRS050 = value;
    return;
  }

  /// -----
  /// TODO: Constructor
  /// -----
  BasicSpriteUnit({
    required String? maDinhDanh,
    required String? nguonHinhAnh,
    // required MoHinhThuocTinhDonViSprite? thuocTinh,
    required SpriteAnimation? spriteAnimation,
    required Sprite? sprite,
  }) {
    setMaDinhDanh(value: maDinhDanh);
    setNguonHinhAnh(value: nguonHinhAnh);
    // setThuocTinh(value: thuocTinh);
    setSpriteAnimation(value: spriteAnimation);
    setSprite(value: sprite);
  }
}
