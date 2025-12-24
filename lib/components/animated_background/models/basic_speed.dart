import 'package:frame_creator_v2/components/animated_background/models/basic_first_speed.dart';

/// -----
/// TODO:
/// -----
abstract class BasicSpeed {
  double? _tocDo;
  double? get getTocDo => _tocDo;
  Future<void> setTocDo({required double? value}) async {
    _tocDo = value;

    onVoidCaiDatTocDoHienHanh(value: getTocDo ?? 1.0);

    return;
  }

  double? _tocDoHienHanh;
  double? get getTocDoHienHanh => _tocDoHienHanh;
  void onVoidCaiDatTocDoHienHanh({required double? value, bool? setUuTien}) async {
    if (setUuTien == true) {
      _tocDoHienHanh = value;
    } else {
      _tocDoHienHanh = value;
    }

    return;
  }

  void onVoidKhoiPhucTocDoHienHanh() {
    _tocDoHienHanh = getTocDo ?? 1.000;
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

  BasicSpeed();

  double getKhoangCach() {
    return getTocDo ?? 1.000;
  }

  Future<void> xuLyTangGiamTocDo({required BasicFirstSpeed? tocDoCuongChe});

  /// -----
  /// TODO: Tăng Tốc Độ Các Cấp Độ
  /// -----
  Future<void> tangTocCapDoSs01({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs02({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs03({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs04({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs05({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs06({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs07({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs08({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs09({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> tangTocCapDoSs10({required BasicFirstSpeed? tocDoCuongChe});

  /// -----
  /// TODO: Giảm Tốc Độ Các Cấp Độ
  /// -----
  Future<void> giamTocCapDoSs01({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs02({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs03({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs04({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs05({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs06({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs07({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs08({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs09({required BasicFirstSpeed? tocDoCuongChe});

  Future<void> giamTocCapDoSs10({required BasicFirstSpeed? tocDoCuongChe});
}
