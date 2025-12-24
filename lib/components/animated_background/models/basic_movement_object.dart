import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/components/animated_background/models/animated_background_state_management.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_active_ticker.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_existence_status.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_fly_speed.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_movement_direction.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_speed.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_spread_movement_direction.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class BasicMovementObject with ExecutionCore {
  BasicMovementObject({required AnimatedBackgroundStateManagement? animatedBackgroundStateManagement, required int? rangeDx, required int? rangeDy}) {
    setAnimatedBackgroundStateManagement(value: animatedBackgroundStateManagement);
    setRangeDx(value: rangeDx);
    setRangeDy(value: rangeDy);

    setChieuCaoManHinhPhiVatLy(value: getAnimatedBackgroundStateManagement?.getChieuCaoManHinhPhiVatLy);
    setChieuRongManHinhPhiVatLy(value: getAnimatedBackgroundStateManagement?.getChieuRongManHinhPhiVatLy);

    setDxTrongTam(value: ((getChieuRongManHinhPhiVatLy ?? 0) / 19) * (getRangeDx ?? 0));
    setDyTrongTam(value: ((getChieuCaoManHinhPhiVatLy ?? 0) / 19) * (getRangeDy ?? 0));
  }

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
    ///
    return;
  }

  AnimatedBackgroundStateManagement? _animatedBackgroundStateManagement;
  AnimatedBackgroundStateManagement? get getAnimatedBackgroundStateManagement => _animatedBackgroundStateManagement;
  Future<void> setAnimatedBackgroundStateManagement({required AnimatedBackgroundStateManagement? value}) async {
    _animatedBackgroundStateManagement = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  int? _rangeDx;
  int? get getRangeDx => _rangeDx;
  int get getRangeDxNotNull => _rangeDx ?? 0;
  Future<void> setRangeDx({required int? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _rangeDx = value;
      } else {
        _rangeDx = 0;
      }
    } else {
      _rangeDx = 0;
    }
    return;
  }

  /// -----
  /// TODO:
  /// -----
  int? _rangeDy;
  int? get getRangeDy => _rangeDy;
  int get getRangeDyNotNull => _rangeDy ?? 0;
  Future<void> setRangeDy({required int? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _rangeDy = value;
      } else {
        _rangeDy = 0;
      }
    } else {
      _rangeDy = 0;
    }
    return;
  }

  /// -----
  /// TODO: Mã định danh viên đạn
  /// -----
  String? _maDinhDanh;
  String? get getMaDinhDanh => _maDinhDanh;
  String get getMaDinhDanhNotNull => _maDinhDanh ?? '[]';
  Future<void> setMaDinhDanh({required String? value}) async {
    _maDinhDanh = value;
    return;
  }

  /// -----
  /// TODO: Mã định danh hình thức viên đạn
  /// -----
  String? _maDinhDanhHinhThuc;
  String? get getMaDinhDanhHinhThuc => _maDinhDanhHinhThuc;
  String get getMaDinhDanhHinhThucNotNull => _maDinhDanhHinhThuc ?? '[]';
  Future<void> setMaDinhDanhHinhThuc({required String? value}) async {
    _maDinhDanhHinhThuc = value;
    return;
  }

  /// -----
  /// TODO: Mã định danh Chiến đấu cơ
  /// -----
  String? _maDinhDanhChienDauCo;
  String? get getMaDinhDanhChienDauCo => _maDinhDanhChienDauCo;
  String get getMaDinhDanhChienDauCoNotNull => _maDinhDanhChienDauCo ?? '[]';
  Future<void> setMaDinhDanhChienDauCo({required String? value}) async {
    _maDinhDanhChienDauCo = value;
    return;
  }

  /// -----
  /// TODO: Trạng Thái Tồn Tại Viên Đạn
  /// -----
  BasicExistenceStatus? _trangThaiTonTai;
  BasicExistenceStatus? get getTrangThaiTonTai => _trangThaiTonTai;
  Future<void> setTrangThaiTonTai({required BasicExistenceStatus? value}) async {
    _trangThaiTonTai = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  int _chiSoTangTienTheoThoiGianThuc = 0;
  int get getChiSoTangTienTheoThoiGianThuc => _chiSoTangTienTheoThoiGianThuc;
  void onVoidCapNhatChiSoTangTienTheoThoiGianThuc() {
    if (_chiSoTangTienTheoThoiGianThuc <= 1000000) {
      _chiSoTangTienTheoThoiGianThuc += 1;
    } else {
      _chiSoTangTienTheoThoiGianThuc = 0;
    }
    return;
  }

  /// -----
  /// TODO:
  /// -----
  int _chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc = 0;
  int get getChiSoTangTienHuongTheoMucTieuTheoThoiGianThuc => _chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc;

  void onVoidCaiDatChiSoTangTienHuongTheoMucTieuTheoThoiGianThuc({required int? value}) {
    _chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc = value ?? 0;
    return;
  }

  void onVoidCapNhatChiSoTangTienHuongTheoMucTieuTheoThoiGianThuc() {
    if (_chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc <= 1000000) {
      _chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc += 1;
    } else {
      _chiSoTangTienHuongTheoMucTieuTheoThoiGianThuc = 0;
    }
    return;
  }

  /// -----
  /// TODO: Biên trái
  /// -----
  double? _bienTrai;
  double? get getBienTrai => _bienTrai;
  double get getBienTraiNotNull => _bienTrai ?? 0;
  Future<void> setBienTrai({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienTrai = value;
      } else {
        _bienTrai = 0;
      }
    } else {
      _bienTrai = 0;
    }
    return;
  }

  /// -----
  /// TODO: Biên trái lịch sử
  /// -----
  double? _lichSuBienTrai;
  double? get getLichSuBienTrai => _lichSuBienTrai;
  double get getLichSuBienTraiNotNull => _lichSuBienTrai ?? 0;
  Future<void> setLichSuBienTrai({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuBienTrai = value;
      } else {
        _lichSuBienTrai = 0;
      }
    } else {
      _lichSuBienTrai = 0;
    }
    return;
  }

  double? _lichSuDx;
  double? get getLichSuDx => _lichSuDx;
  double get getLichSuDxNotNull => _lichSuDx ?? 0;
  Future<void> setLichSuDx({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDx = value;
      } else {
        _lichSuDx = 0;
      }
    } else {
      _lichSuDx = null;
    }
    return;
  }

  /// -----
  /// TODO: Biên phải
  /// -----
  double? _bienPhai;
  double? get getBienPhai => _bienPhai;
  double get getBienPhaiNotNull => _bienPhai ?? (getBienTraiNotNull + getChieuRongThanNotNull);
  Future<void> setBienPhai({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienPhai = value;
      } else {
        _bienPhai = 0;
      }
    } else {
      _bienPhai = 0;
    }
    return;
  }

  /// -----
  /// TODO: Biên dưới
  /// -----
  double? _bienDuoi;
  double? get getBienDuoi => _bienDuoi;
  double get getBienDuoiNotNull => _bienDuoi ?? 0;
  Future<void> setBienDuoi({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienDuoi = value;
      } else {
        _bienDuoi = 0;
      }
    } else {
      _bienDuoi = 0;
    }
    return;
  }

  /// -----
  /// TODO: Biên dưới lịch sử
  /// -----
  double? _lichSuBienDuoi;
  double? get getLichSuBienDuoi => _lichSuBienDuoi;
  double get getLichSuBienDuoiNotNull => _lichSuBienDuoi ?? 0;
  Future<void> setLichSuBienDuoi({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuBienDuoi = value;
      } else {
        _lichSuBienDuoi = 0;
      }
    } else {
      _lichSuBienDuoi = 0;
    }
    return;
  }

  double? _lichSuDy;
  double? get getLichSuDy => _lichSuDy;
  double get getLichSuDyNotNull => _lichSuDy ?? 0;
  Future<void> setLichSuDy({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDy = value;
      } else {
        _lichSuDy = 0;
      }
    } else {
      _lichSuDy = null;
    }
    return;
  }

  /// -----
  /// TODO: Biên Trên
  /// -----
  double? _bienTren;
  double? get getBienTren => _bienTren;
  double get getBienTrenNotNull => _bienTren ?? (getBienDuoiNotNull + getChieuCaoThanNotNull);
  Future<void> setBienTren({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienTren = value;
      } else {
        _bienTren = 0;
      }
    } else {
      _bienTren = 0;
    }
    return;
  }

  /// -----
  /// TODO: Các Thuộc Tính Kích Thước
  /// -----
  double? _chieuRongThan;
  double? get getChieuRongThan => _chieuRongThan;
  double get getChieuRongThanNotNull => _chieuRongThan ?? 0;
  Future<void> setChieuRongThan({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _chieuRongThan = value;
      } else {
        _chieuRongThan = 0;
      }
    } else {
      _chieuRongThan = 0;
    }
    return;
  }

  double? _chieuCaoThan;
  double? get getChieuCaoThan => _chieuCaoThan;
  double get getChieuCaoThanNotNull => _chieuCaoThan ?? 0;
  Future<void> setChieuCaoThan({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _chieuCaoThan = value;
      } else {
        _chieuCaoThan = 0;
      }
    } else {
      _chieuCaoThan = 0;
    }
    return;
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
  double? _dx;
  double? get getDx => _dx;
  double get getDxNotNull => _dx ?? 0;
  Future<void> setDx({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dx = value;
      } else {
        _dx = 0;
      }
    } else {
      _dx = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dy
  /// -----
  double? _dy;
  double? get getDy => _dy;
  double get getDyNotNull => _dy ?? 0;
  Future<void> setDy({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dy = value;
      } else {
        _dy = 0;
      }
    } else {
      _dy = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dx Trọng Tâm
  /// -----
  double? _dxTrongTam;
  double? get getDxTrongTam => _dxTrongTam;
  double get getDxTrongTamNotNull => _dxTrongTam ?? 0;
  Future<void> setDxTrongTam({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxTrongTam = value;
      } else {
        _dxTrongTam = 0;
      }
    } else {
      _dxTrongTam = 0;
    }
    return;
  }

  void onVoidCaiDatDxTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxTrongTam = value;
      } else {
        _dxTrongTam = 0;
      }
    } else {
      _dxTrongTam = 0;
    }
    return;
  }

  /// -----
  /// TODO: Cài Đặt Dx Trọng Tâm Cập Nhật Biên Trái Cùng Biên Phải (Biên Theo Chiều Ngang)
  /// -----
  Future<void> setDxTrongTamCapNhatCacGiaTriBien({required double? value}) async {
    /// -----
    /// TODO: Cập Nhật Lịch Sử Dx Trọng Tâm
    /// -----
    await setLichSuDxTrongTam(value: getDxTrongTam);

    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxTrongTam = value;
      } else {
        _dxTrongTam = 0;
      }
    } else {
      _dxTrongTam = 0;
    }

    /// -----
    /// TODO: Cập Nhật Biên Trái
    /// -----

    /// -----
    /// TODO: Cập Nhật Biên Phải
    /// -----

    ///
    return;
  }

  void onVoidCaiDatDxTrongTamCapNhatCacGiaTriBien({required double? value}) {
    /// -----
    /// TODO: Cập Nhật Lịch Sử Dx Trọng Tâm
    /// -----
    onVoidCaiDatLichSuDxTrongTam(value: getDxTrongTam);

    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxTrongTam = value;
      } else {
        _dxTrongTam = 0;
      }
    } else {
      _dxTrongTam = 0;
    }

    /// -----
    /// TODO: Cập Nhật Biên Trái
    /// -----

    /// -----
    /// TODO: Cập Nhật Biên Phải
    /// -----

    ///
    return;
  }

  /// -----
  /// TODO: Lịch Sử Dx Trọng Tâm
  /// -----
  double? _lichSuDxTrongTam;
  double? get getLichSuDxTrongTam => _lichSuDxTrongTam;
  double get getLichSuDxTrongTamNotNull => _lichSuDxTrongTam ?? 0;
  Future<void> setLichSuDxTrongTam({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDxTrongTam = value;
      } else {
        _lichSuDxTrongTam = 0;
      }
    } else {
      _lichSuDxTrongTam = 0;
    }
    return;
  }

  void onVoidCaiDatLichSuDxTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDxTrongTam = value;
      } else {
        _lichSuDxTrongTam = 0;
      }
    } else {
      _lichSuDxTrongTam = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dy Trọng Tâm
  /// -----
  double? _dyTrongTam;
  double? get getDyTrongTam => _dyTrongTam;
  double get getDyTrongTamNotNull => _dyTrongTam ?? 0;
  Future<void> setDyTrongTam({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyTrongTam = value;
      } else {
        _dyTrongTam = 0;
      }
    } else {
      _dyTrongTam = 0;
    }
    return;
  }

  void onVoidCaiDatDyTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyTrongTam = value;
      } else {
        _dyTrongTam = 0;
      }
    } else {
      _dyTrongTam = 0;
    }
    return;
  }

  /// -----
  /// TODO: Cài Đặt Dy Trọng Tâm Cập Nhật Biên Trên Cùng Biên Dưới (Biên Theo Chiều Dọc)
  /// -----
  Future<void> setDyTrongTamCapNhatCacGiaTriBien({required double? value}) async {
    /// -----
    /// TODO: Cập Nhật Lịch Sử Dy Trọng Tâm
    /// -----
    await setLichSuDyTrongTam(value: getDyTrongTam);

    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyTrongTam = value;
      } else {
        _dyTrongTam = 0;
      }
    } else {
      _dyTrongTam = 0;
    }

    /// -----
    /// TODO: Cập Nhật Biên Trên
    /// -----

    /// -----
    /// TODO: Cập Nhật Biên Dưới (Tạm Thời Theo Cách Cũ)
    /// -----

    ///
    return;
  }

  void onVoidCaiDatDyTrongTamCapNhatCacGiaTriBien({required double? value}) {
    /// -----
    /// TODO: Cập Nhật Lịch Sử Dy Trọng Tâm
    /// -----
    onVoidCaiDatLichSuDyTrongTam(value: getDyTrongTam);

    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyTrongTam = value;
      } else {
        _dyTrongTam = 0;
      }
    } else {
      _dyTrongTam = 0;
    }

    /// -----
    /// TODO: Cập Nhật Biên Trên
    /// -----

    /// -----
    /// TODO: Cập Nhật Biên Dưới (Tạm Thời Theo Cách Cũ)
    /// -----

    ///
    return;
  }

  /// -----
  /// TODO: Lịch Sử Dy Trọng Tâm
  /// -----
  double? _lichSuDyTrongTam;
  double? get getLichSuDyTrongTam => _lichSuDyTrongTam;
  double get getLichSuDyTrongTamNotNull => _lichSuDyTrongTam ?? 0;
  Future<void> setLichSuDyTrongTam({required double? value}) async {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDyTrongTam = value;
      } else {
        _lichSuDyTrongTam = 0;
      }
    } else {
      _lichSuDyTrongTam = 0;
    }
    return;
  }

  void onVoidCaiDatLichSuDyTrongTam({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _lichSuDyTrongTam = value;
      } else {
        _lichSuDyTrongTam = 0;
      }
    } else {
      _lichSuDyTrongTam = 0;
    }
    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _gocXoay;
  double? get getGocXoay => _gocXoay;
  double get getGocXoayNotNull => _gocXoay ?? 0;
  void onVoidCaiDatGocXoay({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _gocXoay = value;
      } else {
        _gocXoay = 0;
      }
    } else {
      _gocXoay = 0;
    }
    return;
  }

  double? _dxViTriLayMucTieu;
  double? get getDxViTriLayMucTieu => _dxViTriLayMucTieu;
  double get getDxViTriLayMucTieuNotNull => _dxViTriLayMucTieu ?? 0;
  void onVoidCaiDatDxViTriLayMucTieu({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dxViTriLayMucTieu = value;
      } else {
        _dxViTriLayMucTieu = 0;
      }
    } else {
      _dxViTriLayMucTieu = null;
    }
    return;
  }

  double? _dyViTriLayMucTieu;
  double? get getDyViTriLayMucTieu => _dyViTriLayMucTieu;
  double get getDyViTriLayMucTieuNotNull => _dyViTriLayMucTieu ?? 0;
  void onVoidCaiDatDyViTriLayMucTieu({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _dyViTriLayMucTieu = value;
      } else {
        _dyViTriLayMucTieu = 0;
      }
    } else {
      _dyViTriLayMucTieu = null;
    }
    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _tenLuaCanhTrai;
  bool? get getTenLuaCanhTrai => _tenLuaCanhTrai;
  bool get getTenLuaCanhTraiNotNull => _tenLuaCanhTrai ?? false;
  void onVoidCaiDatTenLuaCanhTrai({required bool? value}) {
    _tenLuaCanhTrai = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _tenLuaCanhPhai;
  bool? get getTenLuaCanhPhai => _tenLuaCanhPhai;
  bool get getTenLuaCanhPhaiNotNull => _tenLuaCanhPhai ?? false;
  void onVoidCaiDatTenLuaCanhPhai({required bool? value}) {
    _tenLuaCanhPhai = value;
    return;
  }

  /// -----
  /// TODO: Biên Trái Nguyên Bản
  /// -----
  double? _bienTraiNguyenBan;
  double? get getBienTraiNguyenBan => _bienTraiNguyenBan;
  double get getBienTraiNguyenBanNotNull => _bienTraiNguyenBan ?? 0;
  void onVoidCaiDatBienTraiNguyenBan({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienTraiNguyenBan = value;
      } else {
        _bienTraiNguyenBan = 0;
      }
    } else {
      _bienTraiNguyenBan = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dx Trọng Tâm Nguyên Bản
  /// -----
  double? _dxTrongTamNguyenBan;
  double? get getDxTrongTamNguyenBan => _dxTrongTamNguyenBan;
  double get getDxTrongTamNguyenBanNotNull => _dxTrongTamNguyenBan ?? 0;
  void onVoidCaiDatDxTrongTamNguyenBan({required double? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _dxTrongTamNguyenBan = value;
    } else {
      if (value != null && value != 0) {
        if (value.isNaN == false && value.isFinite == true) {
          _dxTrongTamNguyenBan = value;
        } else {
          _dxTrongTamNguyenBan = 0;
        }
      } else {
        _dxTrongTamNguyenBan = 0;
      }
    }
    return;
  }

  /// -----
  /// TODO: Biên Dưới Nguyên Bản
  /// -----
  double? _bienDuoiNguyenBan;
  double? get getBienDuoiNguyenBan => _bienDuoiNguyenBan;
  double get getBienDuoiNguyenBanNotNull => _bienDuoiNguyenBan ?? 0;
  void onVoidCaiDatBienDuoiNguyenBan({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _bienDuoiNguyenBan = value;
      } else {
        _bienDuoiNguyenBan = 0;
      }
    } else {
      _bienDuoiNguyenBan = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dy Trọng Tâm Nguyên Bản
  /// -----
  double? _dyTrongTamNguyenBan;
  double? get getDyTrongTamNguyenBan => _dyTrongTamNguyenBan;
  double get getDyTrongTamNguyenBanNotNull => _dyTrongTamNguyenBan ?? 0;
  void onVoidCaiDatDyTrongTamNguyenBan({required double? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _dyTrongTamNguyenBan = value;
    } else {
      if (value != null && value != 0) {
        if (value.isNaN == false && value.isFinite == true) {
          _dyTrongTamNguyenBan = value;
        } else {
          _dyTrongTamNguyenBan = 0;
        }
      } else {
        _dyTrongTamNguyenBan = 0;
      }
    }
    return;
  }

  /// -----
  /// TODO: Viên Đạn Khúc Xạ Va Chạm Vật Cản
  /// -----
  bool? _vienDanKhucXaVaChamVatCan;
  bool? get getVienDanKhucXaVaChamVatCan => _vienDanKhucXaVaChamVatCan;
  void onVoidCaiDatVienDanKhucXaVaChamVatCan({required bool? value, bool? setUuTien}) async {
    if (setUuTien == true) {
      _vienDanKhucXaVaChamVatCan = value;
    } else {
      _vienDanKhucXaVaChamVatCan ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Thời Gian Kích Hoạt Bay
  /// -----
  BasicActiveTicker? _thoiGianKichHoat;
  BasicActiveTicker? get getThoiGianKichHoat => _thoiGianKichHoat;
  BasicActiveTicker get getThoiGianKichHoatNotNull => _thoiGianKichHoat ?? BasicActiveTicker.onMacDinh();
  Future<void> onVoidCaiDatThoiGianKichHoat({required BasicActiveTicker? value}) async {
    _thoiGianKichHoat = value;
    return;
  }

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
  /// TODO: Hướng Bay Lan
  /// -----
  BasicSpreadMovementDirection? _dinhHuongBayLan;
  BasicSpreadMovementDirection? get getDinhHuongBayLan => _dinhHuongBayLan;
  BasicSpreadMovementDirection get getDinhHuongBayLanNotNull => _dinhHuongBayLan ?? BasicSpreadMovementDirection.onMacDinh();
  Future<void> setDinhHuongBayLan({required BasicSpreadMovementDirection? value}) async {
    _dinhHuongBayLan = value;
    return;
  }

  /// -----
  /// TODO: Tốc độ bay ban đầu (nguyên bản) của viên đạn
  /// -----
  BasicSpeed? _tocDoBayNguyenBan;
  BasicSpeed? get getTocDoBayNguyenBan => _tocDoBayNguyenBan;
  BasicSpeed get getTocDoBayNguyenBanNotNull => _tocDoBayNguyenBan ?? BasicFlySpeed.onMacDinh();
  void onVoidCaiDatTocDoBayNguyenBan({required BasicSpeed? value}) {
    _tocDoBayNguyenBan = value;
    return;
  }

  /// -----
  /// TODO: Hàm Xử Lý Mã Định Danh Hình Thức
  /// -----
  Future<void> onXuLyMaDinhDanhHinhThuc() async {
    /// -----
    /// TODO: Tạo Ngẫu Nhiên Mã Định Danh Hình Thức:
    /// -----
    final random = Random();
    int soNgauNhien = random.nextInt(3) + 1; // tạo số từ 1 đến 3

    switch (soNgauNhien) {
      case 1:
        {
          await setMaDinhDanhHinhThuc(value: '[HINH_THUC_SS01]');
        }
        break;
      case 2:
        {
          await setMaDinhDanhHinhThuc(value: '[HINH_THUC_SS02]');
        }
        break;
      case 3:
        {
          await setMaDinhDanhHinhThuc(value: '[HINH_THUC_SS03]');
        }
        break;
    }

    return;
  }

  /// -----
  /// TODO: Hàm Cập Nhật Các Thuộc Tính Biên
  /// -----
  Future<void> onCapNhatCacGiaTriBien({
    required double? bienTrai,
    required double? bienPhai,
    required double? bienTren,
    required double? bienDuoi,
    required double? chieuRongThan,
    required double? chieuCaoThan,
  }) async {
    if (kDebugMode == true) {
      final double? bienTraiHienHanh = getBienTrai;
      final double? bienPhaiHienHanh = getBienPhai;
      final double? bienDuoiHienHanh = getBienDuoi;
      final double? bienTrenHienHanh = getBienTren;
      final double? dxHienHanh = getDx;
      final double? dyHienHanh = getDy;
    }

    /// -----
    /// TODO: Cập nhật lịch sử
    /// -----
    await setLichSuBienTrai(value: getBienTraiNotNull);
    await setLichSuBienDuoi(value: getBienDuoiNotNull);
    await setLichSuDx(value: getDxNotNull);
    await setLichSuDy(value: getDyNotNull);

    await setBienTrai(value: bienTrai ?? getBienTraiNotNull);
    await setBienPhai(value: bienPhai ?? ((bienTrai ?? getBienTraiNotNull) + (chieuRongThan ?? getChieuRongThanNotNull)));
    await setBienDuoi(value: bienDuoi ?? getBienDuoiNotNull);
    await setBienTren(value: bienTren ?? ((bienDuoi ?? getBienDuoiNotNull) + (chieuCaoThan ?? getChieuCaoThanNotNull)));
    await setChieuRongThan(value: chieuRongThan ?? getChieuRongThanNotNull);
    await setChieuCaoThan(value: chieuCaoThan ?? getChieuCaoThanNotNull);

    ///
    ///
    ///
    double dxCapNhat = getBienTraiNotNull;
    double dyCapNhat = getChieuCaoManHinhPhiVatLyNotNull - getBienTrenNotNull;
    await setDx(value: dxCapNhat);
    await setDy(value: dyCapNhat);

    if (kDebugMode == true) {
      final double? bienTraiCapNhat = getBienTrai;
      final double? bienPhaiCapNhat = getBienPhai;
      final double? bienDuoiCapNhat = getBienDuoi;
      final double? bienTrenCapNhat = getBienTren;
      final double? dxCapNhat = getDx;
      final double? dyCapNhat = getDy;
    }

    return;
  }

  ///
  /// TODO: Hàm cập nhật Tọa Độ Vị Trí
  ///
  Future<void> onCapNhatToaDoViTri() async {
    if (getChieuRongManHinhPhiVatLy != null && getChieuRongManHinhPhiVatLy != 0) {
      if (getChieuCaoManHinhPhiVatLy != null && getChieuCaoManHinhPhiVatLy != 0) {
        await setDxTrongTamCapNhatCacGiaTriBien(value: getDxTrongTam ?? 0);
        await setDyTrongTamCapNhatCacGiaTriBien(value: getDyTrongTam ?? 0);
      }
    }

    return;
  }

  /// -----
  /// TODO: Kiểm Tra Trạng Thái Tồn Tại
  /// -----
  bool onVoidKiemTraTrangThaiTonTaiDangKichHoat() {
    if (getTrangThaiTonTai?.onCheckBoolDangKichHoat() == true) {
      return true;
    }

    return false;
  }

  /// -----
  /// TODO: Kiểm Tra Viên Đạn Di Chuyển Thoát Màn Hình
  /// -----
  bool onVoidKiemTraDiChuyenThoatManHinh() {
    // if (getDuLieuJsonLamPhang['[DI_CHUYEN_HIEN_THI]'] == true) {
    //   return false;
    // }

    bool kiemTraDiChuyenThoatManHinh = false;

    double duLieuJsonBienPhai = getDxTrongTamNotNull + getChieuRongThanNotNull / 2;
    double duLieuJsonBienTrai = getDxTrongTamNotNull - getChieuRongThanNotNull / 2;
    double duLieuJsonBienTren = getDyTrongTamNotNull - getChieuCaoThanNotNull / 2;
    double duLieuJsonBienDuoi = getDyTrongTamNotNull + getChieuCaoThanNotNull / 2;
    double duLieuJsonChieuRongManHinhPhiVatLy = getChieuRongManHinhPhiVatLyNotNull;
    double duLieuJsonChieuCaoManHinhPhiVatLy = getChieuCaoManHinhPhiVatLyNotNull;

    if (duLieuJsonBienPhai < 0) {
      kiemTraDiChuyenThoatManHinh = true;
      return kiemTraDiChuyenThoatManHinh;
    }
    if (duLieuJsonBienTrai > duLieuJsonChieuRongManHinhPhiVatLy) {
      kiemTraDiChuyenThoatManHinh = true;
      return kiemTraDiChuyenThoatManHinh;
    }
    if (duLieuJsonBienTren > duLieuJsonChieuCaoManHinhPhiVatLy) {
      kiemTraDiChuyenThoatManHinh = true;
      return kiemTraDiChuyenThoatManHinh;
    }
    if (duLieuJsonBienDuoi < 0) {
      kiemTraDiChuyenThoatManHinh = true;
      return kiemTraDiChuyenThoatManHinh;
    }

    return kiemTraDiChuyenThoatManHinh;
  }

  void onDieuKhienDiChuyen({required int chiSoTangTienTheoThoiGianThuc}) {}

  void onVoidHuyTrangThaiVienDan() {
    getTrangThaiTonTai?.onVoidCaiDatHuyHoanTat();

    onVoidCaiDatDxViTriLayMucTieu(value: null);
    onVoidCaiDatDyViTriLayMucTieu(value: null);

    onVoidCaiDatDxTrongTam(value: -10000);
    onVoidCaiDatDyTrongTam(value: -10000);
  }
}
