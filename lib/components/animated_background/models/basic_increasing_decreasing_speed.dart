/// -----
/// TODO:
/// -----
class BasicIncreasingDecreasingSpeed {
  /// -----
  /// TODO: Tăng Giảm Tốc
  /// -----
  String? _tangGiamToc;
  String? get getTangGiamToc => _tangGiamToc;
  Future<void> setTangGiamToc({required String? value}) async {
    _tangGiamToc = value;
    return;
  }

  /// -----
  /// TODO: Cấp Độ Tăng Giảm Tốc
  /// -----
  int? _capDoTangGiamToc;
  int? get getCapDoTangGiamToc => _capDoTangGiamToc;
  Future<void> setCapDoTangGiamToc({required int? value}) async {
    _capDoTangGiamToc = value;
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
  /// TODO: Cài Đặt Tăng Tốc
  /// -----
  Future<void> setTangToc() async {
    _tangGiamToc = '[TANG_TOC]';
    return;
  }

  Future<bool> isTangToc() async {
    if (getTangGiamToc == '[TANG_TOC]') {
      return true;
    }
    return false;
  }

  /// -----
  /// TODO: Cài Đặt Giảm Tốc
  /// -----
  Future<void> setGiamToc() async {
    _tangGiamToc = '[GIAM_TOC]';
    return;
  }

  Future<bool> isGiamToc() async {
    if (getTangGiamToc == '[GIAM_TOC]') {
      return true;
    }
    return false;
  }

  BasicIncreasingDecreasingSpeed.onMacDinh() {
    setTangGiamToc(value: null);
  }

  BasicIncreasingDecreasingSpeed.tangToc({required int capDo}) {
    setTangGiamToc(value: '[TANG_TOC]');
    setCapDoTangGiamToc(value: capDo);
  }

  BasicIncreasingDecreasingSpeed.giamToc({required int capDo}) {
    setTangGiamToc(value: '[GIAM_TOC]');
    setCapDoTangGiamToc(value: capDo);
  }
}
