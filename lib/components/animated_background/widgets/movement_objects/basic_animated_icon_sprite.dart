import 'dart:ui';
import 'dart:async';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_icon_status.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_sprite_unit.dart';

///
/// TODO:
///
class BasicAnimatedIconSprite extends SpriteAnimationComponent with HasVisibility {

  double? rangeDx;
  double? rangeDy;

  /// -----
  /// TODO:
  /// -----
  BasicAnimatedIconSprite({required Component? parentComponent, required double? rangeDx, required double? rangeDy}) {
    caiDatParentComponent(value: parentComponent);
  }

  /// -----
  /// TODO: Init Root
  /// -----
  Future<void> onInitRoot() async {
    onVoidCaiDatKiemTraHienThi(value: true);

    await caiDatDonViSprite(value: BasicSpriteUnit(maDinhDanh: null, spriteAnimation: null, sprite: null, nguonHinhAnh: null));

    await caiDatMoHinhChiTiet();

    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  Future<void> onResetRoot() async {
    return;
  }

  /// -----
  /// TODO: DonViSpriteCoBan
  /// -----
  BasicSpriteUnit? _donViSprite;
  BasicSpriteUnit? get getDonViSprite => _donViSprite;
  Future<void> caiDatDonViSprite({required BasicSpriteUnit? value}) async {
    _donViSprite ??= value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  Component? _parentComponent;
  Component? get getParentComponent => _parentComponent;
  Future<void> caiDatParentComponent({required Component? value}) async {
    _parentComponent ??= value;
    return;
  }

  Future<void> onAddToParent() async {
    if (getParentComponent != null && isMounted == false) {
      await Future.delayed(Duration.zero);

      animation = null;
      getDonViSprite?.onVoidCaiDatSpriteAnimation(value: null);

      await getParentComponent?.add(this);
    }

    return;
  }

  void onRemoveFromParent() {

    onVoidCaiDatKiemTraHienThi(value: false);

    animation = null;
    getDonViSprite?.onVoidCaiDatSpriteAnimation(value: null);

    if (isMounted == true) {
      removeFromParent();
    }

    return;
  }

  /// -----
  /// TODO: Mã Định Danh Mô Hình Hiện Hành
  /// -----
  String? _maDinhDanhMoHinhHienHanh;
  String? get getMaDinhDanhMoHinhHienHanh => _maDinhDanhMoHinhHienHanh;
  Future<void> caiDatMaDinhDanhMoHinhHienHanh({required String? value}) async {
    _maDinhDanhMoHinhHienHanh = value;
    return;
  }

  /// -----
  /// TODO: Kiểm Tra Tần Xuất Cập Nhật
  /// -----
  int _bienTangTienGiamTanXuatCapNhat = 0;
  int get getBienTangTienGiamTanXuatCapNhat => _bienTangTienGiamTanXuatCapNhat;
  void onVoidCaiDatTuDongBienTangTienGiamTanXuatCapNhat() {
    if (_bienTangTienGiamTanXuatCapNhat < 1000000) {
      _bienTangTienGiamTanXuatCapNhat += 1;
    } else {
      _bienTangTienGiamTanXuatCapNhat = 0;
    }
    return;
  }

  bool onVoidKiemTraTanXuatCapNhat() {
    // if (getTrangThaiTongQuat?.getThietLapTongQuat?.onKiemTraChoPhepCapNhatTheoTocDoKhungHinh(
    //     maDinhDanh: '[SPRITE_ANIMATION_CHIEN_DAU_CO_CHIEN_DAU]',
    //     chiSoTangTienGiamTanXuatCapNhat: _bienTangTienGiamTanXuatCapNhat) == true) {
    //   return true;
    // }

    return true;
  }

  /// -----
  /// TODO: Kiểm Tra Hiển Thị
  /// -----
  bool? _kiemTraHienThi;
  bool? get getKiemTraHienThi => _kiemTraHienThi;
  void onVoidCaiDatKiemTraHienThi({required bool? value}) {
    _kiemTraHienThi = value;

    if (_kiemTraHienThi == false || _kiemTraHienThi == null) {
      isVisible = false;
    } else if (_kiemTraHienThi == true) {
      isVisible = true;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  void onVoidCapNhatKiemTraHienThi() {

    // if (getMoHinh?.getMoHinh?.getTrangThaiTonTai?.onCheckBoolKhoiTaoHoanTat() == true) {
    if (getMoHinh?.getMoHinh?.getTrangThaiTonTai?.onCheckBoolDangKichHoat() == true) {
      if (getDonViSprite?.getSpriteAnimation == null) {
        final random = Random();
        int randomNumber = random.nextInt(3) + 1; // tạo số từ 1 đến 3

        SpriteAnimation? spriteAnimationVienDan;

        getDonViSprite?.onVoidCaiDatSpriteAnimation(value: spriteAnimationVienDan);
        animation = getDonViSprite?.getSpriteAnimation;
      }
      onVoidCaiDatKiemTraHienThi(value: true);
    } else {
      getDonViSprite?.onVoidCaiDatSpriteAnimation(value: null);
      animation = null;
      onVoidCaiDatKiemTraHienThi(value: false);
    }
  }

  /// -----
  /// TODO: Kiểm Tra Xử Lý Hoạt Ảnh
  /// -----
  bool? _kiemTraXuLyHoatAnh;
  bool? get getKiemTraXuLyHoatAnh => _kiemTraXuLyHoatAnh;
  Future<void> caiDatKiemTraXuLyHoatAnh({required bool? value}) async {
    _kiemTraXuLyHoatAnh = value;
    return;
  }

  /// -----
  /// TODO: Mô Hình Phương Tiện
  /// -----
  AnimatedIconStatus? _moHinh;
  AnimatedIconStatus? get getMoHinh => _moHinh;
  Future<void> caiDatMoHinh({required AnimatedIconStatus? value}) async {
    _moHinh = value;

    await caiDatMaDinhDanhMoHinhHienHanh(value: getMoHinh?.getMoHinh?.getMaDinhDanh);
    return;
  }

  /// -----
  /// TODO: Cài Đặt Mô Hình Chi Tiết
  /// -----
  Future<void> caiDatMoHinhChiTiet();

  /// -----
  /// TODO: Cập Nhật Position Và Size
  /// -----
  Map<String, dynamic>? duLieuJsonLamPhangCapNhat = {};

  double dxCapNhat = 0;
  double dyCapNhat = 0;
  double chieuCaoThanCapNhat = 0;
  double chieuRongThanCapNhat = 0;
  double gocXoay = 0;

  void onVoidCapNhatPositionSizeValues()  {
    if (getKiemTraHienThi == true) {
      ///
      /// TODO:
      ///
      // duLieuJsonLamPhangCapNhat = getMoHinh?.getMoHinh?.getTrangThaiTonTai?.onCheckBoolDangKichHoat();

      dxCapNhat = duLieuJsonLamPhangCapNhat?['[DX_TRONG_TAM]'] ?? 1.0;
      dyCapNhat = duLieuJsonLamPhangCapNhat?['[DY_TRONG_TAM]'] ?? 1.0;
      chieuCaoThanCapNhat = duLieuJsonLamPhangCapNhat?['[CHIEU_CAO_THAN]'] ?? 1.0;
      chieuRongThanCapNhat = duLieuJsonLamPhangCapNhat?['[CHIEU_RONG_THAN]'] ?? 1.0;

      gocXoay = getMoHinh?.getMoHinh?.getGocXoay ?? 1.0;

      if (dxCapNhat.isNaN == false && dyCapNhat.isNaN == false && chieuCaoThanCapNhat.isNaN == false && chieuRongThanCapNhat.isNaN == false) {
        ///
        /// TODO:
        ///
        if (position.x != dxCapNhat || position.y != dyCapNhat) {
          position.setValues(dxCapNhat, dyCapNhat);
        }
        if (size.x != chieuRongThanCapNhat || size.y != chieuCaoThanCapNhat) {
          size.setValues(chieuRongThanCapNhat, chieuCaoThanCapNhat);
        }
        /// -----
        /// TODO:
        /// -----
        if (angle != gocXoay) {
          angle = gocXoay;
        }
      }
    }
  }

  /// -----
  /// TODO: Cập Nhật Trạng Thái Mô Hình
  /// -----
  void onVoidCapNhatTrangThaiMoHinh() {
    getMoHinh?.getMoHinh?.onDieuKhienDiChuyen(chiSoTangTienTheoThoiGianThuc: _bienTangTienGiamTanXuatCapNhat);
    return;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // debugMode = true;
    anchor = Anchor.center;

    await onInitRoot();
  }

  @override
  void renderTree(Canvas canvas) {
    // import 'dart:ui';
    try {
      if (getKiemTraHienThi == true && animation != null) {
        super.renderTree(canvas);
      }
    } catch (e) {
      return;
    }

    return;
  }
}