import 'package:frame_creator_v2/components/animated_background/models/basic_increasing_decreasing_speed.dart';
import 'package:frame_creator_v2/components/animated_background/models/basic_speed.dart';

/// -----
/// TODO:
/// -----
class BasicFirstSpeed {
  /// -----
  /// TODO: Tốc Độ Cưỡng Chế
  /// -----
  BasicSpeed? _tocDoCuongChe;
  BasicSpeed? get getTocDoCuongChe => _tocDoCuongChe;
  Future<void> setTocDoBayCuongChe({required BasicSpeed? value}) async {
    _tocDoCuongChe = value;
    return;
  }

  /// -----
  /// TODO: Tốc Độ Tối Đa
  /// -----
  BasicSpeed? _tocDoToiDa;
  BasicSpeed? get getTocDoToiDa => _tocDoToiDa;
  Future<void> setTocDoToiDa({required BasicSpeed? value}) async {
    _tocDoToiDa = value;
    return;
  }

  /// -----
  /// TODO: Tốc Độ Tối Thiểu
  /// -----
  BasicSpeed? _tocDoToiThieu;
  BasicSpeed? get getTocDoToiThieu => _tocDoToiThieu;
  Future<void> setTocDoToiThieu({required BasicSpeed? value}) async {
    _tocDoToiThieu = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicIncreasingDecreasingSpeed? _heSoTangGiamTocDo;
  BasicIncreasingDecreasingSpeed? get getHeSoTangGiamTocDo => _heSoTangGiamTocDo;
  Future<void> setHeSoTangGiamTocDo({required BasicIncreasingDecreasingSpeed? value}) async {
    _heSoTangGiamTocDo = value;
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

  BasicFirstSpeed({
    required BasicSpeed? tocDoCuongChe,
    required BasicSpeed? tocDoToiDa,
    required BasicSpeed? tocDoToiThieu,
    required BasicIncreasingDecreasingSpeed? heSoTangGiamTocDo,
  }) {
    setTocDoBayCuongChe(value: tocDoCuongChe);
    setTocDoToiDa(value: tocDoToiDa);
    setTocDoToiThieu(value: tocDoToiThieu);
    setHeSoTangGiamTocDo(value: heSoTangGiamTocDo);
  }

  BasicFirstSpeed.onTangTocCoBan() {
    ///
  }
  BasicFirstSpeed.onGiamTocCoBan() {
    ///
  }
}
