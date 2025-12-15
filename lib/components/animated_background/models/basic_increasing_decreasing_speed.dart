/// -----
/// TODO:
/// -----
class BasicIncreasingDecreasingSpeed {
  /// -----
  /// TODO: Tăng Giảm Tốc
  /// -----
  String? _tangGiamToc;
  String? get getTangGiamToc => _tangGiamToc;
  Future<void> caiDatTangGiamToc({required String? value}) async {
    _tangGiamToc = value;
    return;
  }

  /// -----
  /// TODO: Cấp Độ Tăng Giảm Tốc
  /// -----
  int? _capDoTangGiamToc;
  int? get getCapDoTangGiamToc => _capDoTangGiamToc;
  Future<void> caiDatCapDoTangGiamToc({required int? value}) async {
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
  Future<void> caiDatTangToc() async {
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
  Future<void> caiDatGiamToc() async {
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
    caiDatTangGiamToc(value: null);
  }

  BasicIncreasingDecreasingSpeed.tangToc({required int capDo}) {
    caiDatTangGiamToc(value: '[TANG_TOC]');
    caiDatCapDoTangGiamToc(value: capDo);
  }

  BasicIncreasingDecreasingSpeed.giamToc({required int capDo}) {
    caiDatTangGiamToc(value: '[GIAM_TOC]');
    caiDatCapDoTangGiamToc(value: capDo);
  }
}
