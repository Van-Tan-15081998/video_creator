import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class HelpfulAdviceDataModel with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _sentenceEng;
  String? get getSentenceEng => _sentenceEng;
  void setSentenceEng({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sentenceEng = value;
    } else {
      _sentenceEng ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _sentenceVie;
  String? get getSentenceVie => _sentenceVie;
  void setSentenceVie({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sentenceVie = value;
    } else {
      _sentenceVie ??= value;
    }

    return;
  }
}
