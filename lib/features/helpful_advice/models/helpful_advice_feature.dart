import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/features/helpful_advice/models/data/helpful_advice_data_model.dart';
import 'package:frame_creator_v2/features/helpful_advice/models/script/helpful_advice_script.dart';
import 'package:frame_creator_v2/features/helpful_advice/widgets/helpful_advice_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class HelpfulAdviceFeature with ExecutionCore, WindowFeature {
  HelpfulAdviceFeature({required SystemStateManagement? systemStateManagement, required double? sizeDx, required double? sizeDy}) {
    setWindowId(value: '[helpful_advice_feature]', isPriorityOverride: true);

    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
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
  /// TODO:
  /// -----
  HelpfulAdviceScript? _helpfulAdviceScript;
  HelpfulAdviceScript? get getHelpfulAdviceScript => _helpfulAdviceScript;
  void setHelpfulAdviceScript({required HelpfulAdviceScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulAdviceScript = value;
    } else {
      _helpfulAdviceScript ??= value;
    }

    return;
  }

  void onNextHelpfulAdviceSS01() {
    setCurrentHelpfulAdvice(value: getHelpfulAdviceSS01, isPriorityOverride: true);
  }

  void onNextHelpfulAdviceSS02() {
    setCurrentHelpfulAdvice(value: getHelpfulAdviceSS02, isPriorityOverride: true);
  }

  void onNextHelpfulAdviceSS03() {
    setCurrentHelpfulAdvice(value: getHelpfulAdviceSS03, isPriorityOverride: true);
  }

  void onNextHelpfulAdviceSS04() {
    setCurrentHelpfulAdvice(value: getHelpfulAdviceSS04, isPriorityOverride: true);
  }

  void onNextHelpfulAdviceSS05() {
    setCurrentHelpfulAdvice(value: getHelpfulAdviceSS05, isPriorityOverride: true);
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
      onNextHelpfulAdviceSS01();

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
      /// TODO:
      /// -----
      setWindowWidget(
        value: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: AlignmentDirectional.center, //
              children: [
                // Text('VocabularyDefinitionFeature'), //
                HelpfulAdviceWidget(helpfulAdviceFeature: this),
              ],
            );
          },
        ),
        isPriorityOverride: true,
      );

      setCurrentHelpfulAdvice(value: HelpfulAdviceDataModel(), isPriorityOverride: true);
      setHelpfulAdviceSS01(value: HelpfulAdviceDataModel(), isPriorityOverride: true);
      setHelpfulAdviceSS02(value: HelpfulAdviceDataModel(), isPriorityOverride: true);
      setHelpfulAdviceSS03(value: HelpfulAdviceDataModel(), isPriorityOverride: true);
      setHelpfulAdviceSS04(value: HelpfulAdviceDataModel(), isPriorityOverride: true);
      setHelpfulAdviceSS05(value: HelpfulAdviceDataModel(), isPriorityOverride: true);

      setHelpfulAdviceScript(
        value: HelpfulAdviceScript(currentHelpfulAdvice: getCurrentHelpfulAdvice, helpfulAdviceSS01: getHelpfulAdviceSS01, helpfulAdviceSS02: getHelpfulAdviceSS02, helpfulAdviceSS03: getHelpfulAdviceSS03, helpfulAdviceSS04: getHelpfulAdviceSS04, helpfulAdviceSS05: getHelpfulAdviceSS05),
        isPriorityOverride: true,
      );

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
      getCurrentHelpfulAdvice?.onSetupRoot();
      getHelpfulAdviceSS01?.onSetupRoot();
      getHelpfulAdviceSS02?.onSetupRoot();
      getHelpfulAdviceSS03?.onSetupRoot();
      getHelpfulAdviceSS04?.onSetupRoot();
      getHelpfulAdviceSS05?.onSetupRoot();

      getHelpfulAdviceScript?.onSetupRoot();
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
      getCurrentHelpfulAdvice?.onInitRoot();
      getHelpfulAdviceSS01?.onInitRoot();
      getHelpfulAdviceSS02?.onInitRoot();
      getHelpfulAdviceSS03?.onInitRoot();
      getHelpfulAdviceSS04?.onInitRoot();
      getHelpfulAdviceSS05?.onInitRoot();

      getHelpfulAdviceScript?.onInitRoot();
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
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: '[onResetRootForSubCom]');
    }

    ///
    return;
  }
}
