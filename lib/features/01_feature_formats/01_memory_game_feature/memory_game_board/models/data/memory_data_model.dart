import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class MemoryDataModel with ExecutionCore {
  MemoryDataModel({required String? parentId}) {
    setParentId(value: parentId, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _parentId;
  String? get getParentId => _parentId;
  void setParentId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _parentId = value;
    } else {
      _parentId ??= value;
    }

    getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS01]', isPriorityOverride: true);
    getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS02]', isPriorityOverride: true);
    getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS03]', isPriorityOverride: true);
    getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS04]', isPriorityOverride: true);
    getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS05]', isPriorityOverride: true);
    getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS06]', isPriorityOverride: true);
    getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS07]', isPriorityOverride: true);
    getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS08]', isPriorityOverride: true);
    getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS09]', isPriorityOverride: true);
    getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS10]', isPriorityOverride: true);
    getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS11]', isPriorityOverride: true);
    getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS12]', isPriorityOverride: true);
    getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS13]', isPriorityOverride: true);
    getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS14]', isPriorityOverride: true);
    getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS15]', isPriorityOverride: true);
    getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.setId(value: '$getParentId _[MWU_SS16]', isPriorityOverride: true);

    return;
  }

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
  String? _topicSpecificImage;
  String? get getTopicSpecificImage => _topicSpecificImage;
  void setTopicSpecificImage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificImage = value;
    } else {
      _topicSpecificImage ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS01;
  MemoryWordUnit? get getMemoryWordUnitSS01 => _memoryWordUnitSS01;
  void setMemoryWordUnitSS01({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS01 = value;
    } else {
      _memoryWordUnitSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS02;
  MemoryWordUnit? get getMemoryWordUnitSS02 => _memoryWordUnitSS02;
  void setMemoryWordUnitSS02({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS02 = value;
    } else {
      _memoryWordUnitSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS03;
  MemoryWordUnit? get getMemoryWordUnitSS03 => _memoryWordUnitSS03;
  void setMemoryWordUnitSS03({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS03 = value;
    } else {
      _memoryWordUnitSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS04;
  MemoryWordUnit? get getMemoryWordUnitSS04 => _memoryWordUnitSS04;
  void setMemoryWordUnitSS04({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS04 = value;
    } else {
      _memoryWordUnitSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS05;
  MemoryWordUnit? get getMemoryWordUnitSS05 => _memoryWordUnitSS05;
  void setMemoryWordUnitSS05({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS05 = value;
    } else {
      _memoryWordUnitSS05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS06;
  MemoryWordUnit? get getMemoryWordUnitSS06 => _memoryWordUnitSS06;
  void setMemoryWordUnitSS06({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS06 = value;
    } else {
      _memoryWordUnitSS06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS07;
  MemoryWordUnit? get getMemoryWordUnitSS07 => _memoryWordUnitSS07;
  void setMemoryWordUnitSS07({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS07 = value;
    } else {
      _memoryWordUnitSS07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS08;
  MemoryWordUnit? get getMemoryWordUnitSS08 => _memoryWordUnitSS08;
  void setMemoryWordUnitSS08({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS08 = value;
    } else {
      _memoryWordUnitSS08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS09;
  MemoryWordUnit? get getMemoryWordUnitSS09 => _memoryWordUnitSS09;
  void setMemoryWordUnitSS09({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS09 = value;
    } else {
      _memoryWordUnitSS09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS10;
  MemoryWordUnit? get getMemoryWordUnitSS10 => _memoryWordUnitSS10;
  void setMemoryWordUnitSS10({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS10 = value;
    } else {
      _memoryWordUnitSS10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS11;
  MemoryWordUnit? get getMemoryWordUnitSS11 => _memoryWordUnitSS11;
  void setMemoryWordUnitSS11({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS11 = value;
    } else {
      _memoryWordUnitSS11 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS12;
  MemoryWordUnit? get getMemoryWordUnitSS12 => _memoryWordUnitSS12;
  void setMemoryWordUnitSS12({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS12 = value;
    } else {
      _memoryWordUnitSS12 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS13;
  MemoryWordUnit? get getMemoryWordUnitSS13 => _memoryWordUnitSS13;
  void setMemoryWordUnitSS13({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS13 = value;
    } else {
      _memoryWordUnitSS13 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS14;
  MemoryWordUnit? get getMemoryWordUnitSS14 => _memoryWordUnitSS14;
  void setMemoryWordUnitSS14({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS14 = value;
    } else {
      _memoryWordUnitSS14 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS15;
  MemoryWordUnit? get getMemoryWordUnitSS15 => _memoryWordUnitSS15;
  void setMemoryWordUnitSS15({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS15 = value;
    } else {
      _memoryWordUnitSS15 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnit? _memoryWordUnitSS16;
  MemoryWordUnit? get getMemoryWordUnitSS16 => _memoryWordUnitSS16;
  void setMemoryWordUnitSS16({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitSS16 = value;
    } else {
      _memoryWordUnitSS16 ??= value;
    }

    return;
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
      /// TODO:
      /// -----

      setMemoryWordUnitSS01(value: MemoryWordUnit(id: '$getParentId _[MWU_SS01]'), isPriorityOverride: true);
      setMemoryWordUnitSS02(value: MemoryWordUnit(id: '$getParentId _[MWU_SS02]'), isPriorityOverride: true);
      setMemoryWordUnitSS03(value: MemoryWordUnit(id: '$getParentId _[MWU_SS03]'), isPriorityOverride: true);
      setMemoryWordUnitSS04(value: MemoryWordUnit(id: '$getParentId _[MWU_SS04]'), isPriorityOverride: true);
      setMemoryWordUnitSS05(value: MemoryWordUnit(id: '$getParentId _[MWU_SS05]'), isPriorityOverride: true);
      setMemoryWordUnitSS06(value: MemoryWordUnit(id: '$getParentId _[MWU_SS06]'), isPriorityOverride: true);
      setMemoryWordUnitSS07(value: MemoryWordUnit(id: '$getParentId _[MWU_SS07]'), isPriorityOverride: true);
      setMemoryWordUnitSS08(value: MemoryWordUnit(id: '$getParentId _[MWU_SS08]'), isPriorityOverride: true);
      setMemoryWordUnitSS09(value: MemoryWordUnit(id: '$getParentId _[MWU_SS09]'), isPriorityOverride: true);
      setMemoryWordUnitSS10(value: MemoryWordUnit(id: '$getParentId _[MWU_SS10]'), isPriorityOverride: true);
      setMemoryWordUnitSS11(value: MemoryWordUnit(id: '$getParentId _[MWU_SS11]'), isPriorityOverride: true);
      setMemoryWordUnitSS12(value: MemoryWordUnit(id: '$getParentId _[MWU_SS12]'), isPriorityOverride: true);
      setMemoryWordUnitSS13(value: MemoryWordUnit(id: '$getParentId _[MWU_SS13]'), isPriorityOverride: true);
      setMemoryWordUnitSS14(value: MemoryWordUnit(id: '$getParentId _[MWU_SS14]'), isPriorityOverride: true);
      setMemoryWordUnitSS15(value: MemoryWordUnit(id: '$getParentId _[MWU_SS15]'), isPriorityOverride: true);
      setMemoryWordUnitSS16(value: MemoryWordUnit(id: '$getParentId _[MWU_SS16]'), isPriorityOverride: true);

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

      getMemoryWordUnitSS01?.onSetupRoot();
      getMemoryWordUnitSS02?.onSetupRoot();
      getMemoryWordUnitSS03?.onSetupRoot();
      getMemoryWordUnitSS04?.onSetupRoot();
      getMemoryWordUnitSS05?.onSetupRoot();
      getMemoryWordUnitSS06?.onSetupRoot();
      getMemoryWordUnitSS07?.onSetupRoot();
      getMemoryWordUnitSS08?.onSetupRoot();
      getMemoryWordUnitSS09?.onSetupRoot();
      getMemoryWordUnitSS10?.onSetupRoot();
      getMemoryWordUnitSS11?.onSetupRoot();
      getMemoryWordUnitSS12?.onSetupRoot();
      getMemoryWordUnitSS13?.onSetupRoot();
      getMemoryWordUnitSS14?.onSetupRoot();
      getMemoryWordUnitSS15?.onSetupRoot();
      getMemoryWordUnitSS16?.onSetupRoot();
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

      getMemoryWordUnitSS01?.onInitRoot();
      getMemoryWordUnitSS02?.onInitRoot();
      getMemoryWordUnitSS03?.onInitRoot();
      getMemoryWordUnitSS04?.onInitRoot();
      getMemoryWordUnitSS05?.onInitRoot();
      getMemoryWordUnitSS06?.onInitRoot();
      getMemoryWordUnitSS07?.onInitRoot();
      getMemoryWordUnitSS08?.onInitRoot();
      getMemoryWordUnitSS09?.onInitRoot();
      getMemoryWordUnitSS10?.onInitRoot();
      getMemoryWordUnitSS11?.onInitRoot();
      getMemoryWordUnitSS12?.onInitRoot();
      getMemoryWordUnitSS13?.onInitRoot();
      getMemoryWordUnitSS14?.onInitRoot();
      getMemoryWordUnitSS15?.onInitRoot();
      getMemoryWordUnitSS16?.onInitRoot();
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

class MemoryWordUnit with ExecutionCore {
  MemoryWordUnit({required String? id}) {
    setMemoryWordUnitDataModel(value: MemoryWordUnitDataModel(), isPriorityOverride: true);

    getMemoryWordUnitDataModel?.setId(value: id, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  MemoryWordUnitDataModel? _memoryWordUnitDataModel;
  MemoryWordUnitDataModel? get getMemoryWordUnitDataModel => _memoryWordUnitDataModel;
  void setMemoryWordUnitDataModel({required MemoryWordUnitDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryWordUnitDataModel = value;
    } else {
      _memoryWordUnitDataModel ??= value;
    }

    return;
  }
}

class MemoryWordUnitDataModel with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _id;
  String? get getId => _id;
  void setId({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _id = value;
    } else {
      _id ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _word;
  String? get getWord => _word;
  void setWord({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _word = value;
    } else {
      _word ??= value;
    }

    return;
  }

  void clear() {
    // setWord(value: '', isPriorityOverride: true);
    // setId(value: '', isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificImage;
  String? get getTopicSpecificImage => _topicSpecificImage;
  void setTopicSpecificImage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificImage = value;
    } else {
      _topicSpecificImage ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _showStatus;
  String? get getShowStatus => _showStatus;
  void setShowStatus({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _showStatus = value;
    } else {
      _showStatus ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isCompleteTotally;
  bool? get getIsCompleteTotally => _isCompleteTotally;
  void setIsCompleteTotally({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isCompleteTotally = value;
    } else {
      _isCompleteTotally ??= value;
    }

    return;
  }

  void hide() {
    if (getIsCompleteTotally != true) {
      setShowStatus(value: '[HIDE]', isPriorityOverride: true);
    }
  }

  bool isHide() {
    if (getShowStatus == '[HIDE]') {
      return true;
    }

    return false;
  }

  void hiding() {
    if (getIsCompleteTotally != true) {
      setShowStatus(value: '[HIDING]', isPriorityOverride: true);
    }
  }

  bool isHiding() {
    if (getShowStatus == '[HIDING]') {
      return true;
    }

    return false;
  }

  void show() {
    setShowStatus(value: '[SHOW]', isPriorityOverride: true);
  }

  bool isShow() {
    if (getShowStatus == '[SHOW]') {
      return true;
    }

    return false;
  }

  void showing() {
    setShowStatus(value: '[SHOWING]', isPriorityOverride: true);
  }

  bool isShowing() {
    if (getShowStatus == '[SHOWING]') {
      return true;
    }

    return false;
  }

  ///
  /// hidden underneath
  ///
  void hiddenUnderneath() {
    setShowStatus(value: '[HIDDEN_UNDERNEATH]', isPriorityOverride: true);
  }

  bool isHiddenUnderneath() {
    if (getShowStatus == '[HIDDEN_UNDERNEATH]') {
      return true;
    }

    return false;
  }

  ///
  /// un hidden underneath
  ///
  void unHiddenUnderneath() {
    setShowStatus(value: '[UNHIDDEN_UNDERNEATH]', isPriorityOverride: true);
  }

  bool isUnHiddenUnderneath() {
    if (getShowStatus == '[UNHIDDEN_UNDERNEATH]') {
      return true;
    }

    return false;
  }

  ///
  /// complete
  ///
  void showComplete() {
    setShowStatus(value: '[SHOW_COMPLETE]', isPriorityOverride: true);
  }

  bool isShowComplete() {
    if (getShowStatus == '[SHOW_COMPLETE]') {
      return true;
    }

    return false;
  }
}
