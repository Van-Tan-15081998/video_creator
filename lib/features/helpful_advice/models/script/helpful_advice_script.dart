import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/helpful_advice/models/data/helpful_advice_data_model.dart';

class HelpfulAdviceScript with ExecutionCore {
  HelpfulAdviceScript({HelpfulAdviceDataModel? currentHelpfulAdvice, HelpfulAdviceDataModel? helpfulAdviceSS01, HelpfulAdviceDataModel? helpfulAdviceSS02, HelpfulAdviceDataModel? helpfulAdviceSS03, HelpfulAdviceDataModel? helpfulAdviceSS04, HelpfulAdviceDataModel? helpfulAdviceSS05}) {
    setCurrentHelpfulAdvice(value: currentHelpfulAdvice, isPriorityOverride: true);
    setHelpfulAdviceSS01(value: helpfulAdviceSS01, isPriorityOverride: true);
    setHelpfulAdviceSS02(value: helpfulAdviceSS02, isPriorityOverride: true);
    setHelpfulAdviceSS03(value: helpfulAdviceSS03, isPriorityOverride: true);
    setHelpfulAdviceSS04(value: helpfulAdviceSS04, isPriorityOverride: true);
    setHelpfulAdviceSS05(value: helpfulAdviceSS05, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _currentHelpfulAdvice;
  HelpfulAdviceDataModel? get getCurrentHelpfulAdvice => _currentHelpfulAdvice;
  void setCurrentHelpfulAdvice({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentHelpfulAdvice = value;
    } else {
      _currentHelpfulAdvice ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _helpfulAdviceSS01;
  HelpfulAdviceDataModel? get getHelpfulAdviceSS01 => _helpfulAdviceSS01;
  void setHelpfulAdviceSS01({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceSS01 = value;
    } else {
      _helpfulAdviceSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _helpfulAdviceSS02;
  HelpfulAdviceDataModel? get getHelpfulAdviceSS02 => _helpfulAdviceSS02;
  void setHelpfulAdviceSS02({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceSS02 = value;
    } else {
      _helpfulAdviceSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _helpfulAdviceSS03;
  HelpfulAdviceDataModel? get getHelpfulAdviceSS03 => _helpfulAdviceSS03;
  void setHelpfulAdviceSS03({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceSS03 = value;
    } else {
      _helpfulAdviceSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _helpfulAdviceSS04;
  HelpfulAdviceDataModel? get getHelpfulAdviceSS04 => _helpfulAdviceSS04;
  void setHelpfulAdviceSS04({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceSS04 = value;
    } else {
      _helpfulAdviceSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulAdviceDataModel? _helpfulAdviceSS05;
  HelpfulAdviceDataModel? get getHelpfulAdviceSS05 => _helpfulAdviceSS05;
  void setHelpfulAdviceSS05({required HelpfulAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceSS05 = value;
    } else {
      _helpfulAdviceSS05 ??= value;
    }

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

      getHelpfulAdviceSS01?.setSentenceEng(value: '[HelpfulAdvice SS01] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getHelpfulAdviceSS01?.setSentenceVie(value: '[HelpfulAdvice SS01] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      getHelpfulAdviceSS02?.setSentenceEng(value: '[HelpfulAdvice SS02] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getHelpfulAdviceSS02?.setSentenceVie(value: '[HelpfulAdvice SS02] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      getHelpfulAdviceSS03?.setSentenceEng(value: '[HelpfulAdvice SS03] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getHelpfulAdviceSS03?.setSentenceVie(value: '[HelpfulAdvice SS03] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      getHelpfulAdviceSS04?.setSentenceEng(value: '[HelpfulAdvice SS04] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getHelpfulAdviceSS04?.setSentenceVie(value: '[HelpfulAdvice SS04] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      getHelpfulAdviceSS05?.setSentenceEng(value: '[HelpfulAdvice SS05] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getHelpfulAdviceSS05?.setSentenceVie(value: '[HelpfulAdvice SS05] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

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
}
