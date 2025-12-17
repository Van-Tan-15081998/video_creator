import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class VocabularyTopicDataModel with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _parentTopicEng;
  String? get getParentTopicEng => _parentTopicEng;
  void setParentTopicEng({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _parentTopicEng = value;
    } else {
      _parentTopicEng ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _parentTopicVie;
  String? get getParentTopicVie => _parentTopicVie;
  void setParentTopicVie({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _parentTopicVie = value;
    } else {
      _parentTopicVie ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _mainTopicEng;
  String? get getMainTopicEng => _mainTopicEng;
  void setMainTopicEng({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainTopicEng = value;
    } else {
      _mainTopicEng ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _mainTopicVie;
  String? get getMainTopicVie => _mainTopicVie;
  void setMainTopicVie({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainTopicVie = value;
    } else {
      _mainTopicVie ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalWords;
  double? get getTotalWords => _totalWords;
  void setTotalWords({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalWords = value;
    } else {
      _totalWords ??= value;
    }

    return;
  }

}
