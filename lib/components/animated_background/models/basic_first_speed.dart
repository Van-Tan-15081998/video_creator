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
  Future<void> caiDatTocDoBayCuongChe({required BasicSpeed? value}) async {
    _tocDoCuongChe = value;
    return;
  }

  /// -----
  /// TODO: Tốc Độ Tối Đa
  /// -----
  BasicSpeed? _tocDoToiDa;
  BasicSpeed? get getTocDoToiDa => _tocDoToiDa;
  Future<void> caiDatTocDoToiDa({required BasicSpeed? value}) async {
    _tocDoToiDa = value;
    return;
  }

  /// -----
  /// TODO: Tốc Độ Tối Thiểu
  /// -----
  BasicSpeed? _tocDoToiThieu;
  BasicSpeed? get getTocDoToiThieu => _tocDoToiThieu;
  Future<void> caiDatTocDoToiThieu({required BasicSpeed? value}) async {
    _tocDoToiThieu = value;
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BasicIncreasingDecreasingSpeed? _heSoTangGiamTocDo;
  BasicIncreasingDecreasingSpeed? get getHeSoTangGiamTocDo => _heSoTangGiamTocDo;
  Future<void> caiDatHeSoTangGiamTocDo({required BasicIncreasingDecreasingSpeed? value}) async {
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
    caiDatTocDoBayCuongChe(value: tocDoCuongChe);
    caiDatTocDoToiDa(value: tocDoToiDa);
    caiDatTocDoToiThieu(value: tocDoToiThieu);
    caiDatHeSoTangGiamTocDo(value: heSoTangGiamTocDo);
  }

  BasicFirstSpeed.onTangTocCoBan() {
    ///
  }
  BasicFirstSpeed.onGiamTocCoBan() {
    ///
  }
}
