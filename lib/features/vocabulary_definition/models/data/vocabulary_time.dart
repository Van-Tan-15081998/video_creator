import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/models/data/helpful_study_advice_data_model.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/models/data/helpful_study_advice_related_to_topic_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_topic_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/scripts/advice_script.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/scripts/demo_script.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class VocabularyTime with ExecutionCore {
  VocabularyTime({required SystemStateManagement? systemStateManagement, required SequentialExecutionController? sequentialExecutionController}) {
    setSystemStateManagement(value: systemStateManagement);
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionController? _sequentialExecutionController;
  SequentialExecutionController? get getSequentialExecutionController => _sequentialExecutionController;
  void setSequentialExecutionController({required SequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionController = value;
    } else {
      _sequentialExecutionController ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyTopicDataModel? _vocabularyTopic;
  VocabularyTopicDataModel? get getVocabularyTopic => _vocabularyTopic;
  void setVocabularyTopic({required VocabularyTopicDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyTopic = value;
    } else {
      _vocabularyTopic ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceList? _helpfulStudyAdviceList;
  HelpfulStudyAdviceList? get getHelpfulStudyAdviceList => _helpfulStudyAdviceList;
  void setHelpfulStudyAdviceList({required HelpfulStudyAdviceList? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulStudyAdviceList = value;
    } else {
      _helpfulStudyAdviceList ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceRelatedToTopicList? _helpfulStudyAdviceRelatedToTopicList;
  HelpfulStudyAdviceRelatedToTopicList? get getHelpfulStudyAdviceRelatedToTopicList => _helpfulStudyAdviceRelatedToTopicList;
  void setHelpfulStudyAdviceRelatedToTopicList({required HelpfulStudyAdviceRelatedToTopicList? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulStudyAdviceRelatedToTopicList = value;
    } else {
      _helpfulStudyAdviceRelatedToTopicList ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceDataModel? _currentHelpfulStudyAdvice;
  HelpfulStudyAdviceDataModel? get getCurrentHelpfulStudyAdvice => _currentHelpfulStudyAdvice;
  void setCurrentHelpfulStudyAdvice({required HelpfulStudyAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentHelpfulStudyAdvice = value;
    } else {
      _currentHelpfulStudyAdvice ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceRelatedToTopicDataModel? _currentHelpfulStudyAdviceRelatedToTopic;
  HelpfulStudyAdviceRelatedToTopicDataModel? get getCurrentHelpfulStudyAdviceRelatedToTopic => _currentHelpfulStudyAdviceRelatedToTopic;
  void setCurrentHelpfulStudyAdviceRelatedToTopic({required HelpfulStudyAdviceRelatedToTopicDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentHelpfulStudyAdviceRelatedToTopic = value;
    } else {
      _currentHelpfulStudyAdviceRelatedToTopic ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _currentVocabularyItem;
  VocabularyItem? get getCurrentVocabularyItem => _currentVocabularyItem;
  void setCurrentVocabularyItem({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItem = value;
    } else {
      _currentVocabularyItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _currentVocabularyItemForStart;
  VocabularyItem? get getCurrentVocabularyItemForStart => _currentVocabularyItemForStart;
  void setCurrentVocabularyItemForStart({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItemForStart = value;
    } else {
      _currentVocabularyItemForStart ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyItem>? _currentVocabularyItemStack;
  List<VocabularyItem>? get getCurrentVocabularyItemStack => _currentVocabularyItemStack;
  void setCurrentVocabularyItemStack({required List<VocabularyItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItemStack = value;
    } else {
      _currentVocabularyItemStack ??= value;
    }

    return;
  }

  void clearStack() {
    if ((getCurrentVocabularyItemStack?.length ?? 0) >= 5) {
      getCurrentVocabularyItemStack?.clear();
    }
  }

  bool isCanStartNewVocabulary() {
    if ((getCurrentVocabularyItemStack?.length ?? 0) < 5) {
      return true;
    }
    return false;
  }

  void continueStartNewVocabulary() {
    clearStack();
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS01;
  VocabularyItem? get getVocabularySS01 => _vocabularyItemSS01;
  void setVocabularySS01({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS01 = value;
    } else {
      _vocabularyItemSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS02;
  VocabularyItem? get getVocabularySS02 => _vocabularyItemSS02;
  void setVocabularySS02({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS02 = value;
    } else {
      _vocabularyItemSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS03;
  VocabularyItem? get getVocabularySS03 => _vocabularyItemSS03;
  void setVocabularySS03({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS03 = value;
    } else {
      _vocabularyItemSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS04;
  VocabularyItem? get getVocabularySS04 => _vocabularyItemSS04;
  void setVocabularySS04({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS04 = value;
    } else {
      _vocabularyItemSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS05;
  VocabularyItem? get getVocabularySS05 => _vocabularyItemSS05;
  void setVocabularySS05({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS05 = value;
    } else {
      _vocabularyItemSS05 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS06;
  VocabularyItem? get getVocabularySS06 => _vocabularyItemSS06;
  void setVocabularySS06({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS06 = value;
    } else {
      _vocabularyItemSS06 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS07;
  VocabularyItem? get getVocabularySS07 => _vocabularyItemSS07;
  void setVocabularySS07({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS07 = value;
    } else {
      _vocabularyItemSS07 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS08;
  VocabularyItem? get getVocabularySS08 => _vocabularyItemSS08;
  void setVocabularySS08({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS08 = value;
    } else {
      _vocabularyItemSS08 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS09;
  VocabularyItem? get getVocabularySS09 => _vocabularyItemSS09;
  void setVocabularySS09({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS09 = value;
    } else {
      _vocabularyItemSS09 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS10;
  VocabularyItem? get getVocabularySS10 => _vocabularyItemSS10;
  void setVocabularySS10({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS10 = value;
    } else {
      _vocabularyItemSS10 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS11;
  VocabularyItem? get getVocabularySS11 => _vocabularyItemSS11;
  void setVocabularySS11({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS11 = value;
    } else {
      _vocabularyItemSS11 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS12;
  VocabularyItem? get getVocabularySS12 => _vocabularyItemSS12;
  void setVocabularySS12({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS12 = value;
    } else {
      _vocabularyItemSS12 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS13;
  VocabularyItem? get getVocabularySS13 => _vocabularyItemSS13;
  void setVocabularySS13({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS13 = value;
    } else {
      _vocabularyItemSS13 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS14;
  VocabularyItem? get getVocabularySS14 => _vocabularyItemSS14;
  void setVocabularySS14({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS14 = value;
    } else {
      _vocabularyItemSS14 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS15;
  VocabularyItem? get getVocabularySS15 => _vocabularyItemSS15;
  void setVocabularySS15({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS15 = value;
    } else {
      _vocabularyItemSS15 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS16;
  VocabularyItem? get getVocabularySS16 => _vocabularyItemSS16;
  void setVocabularySS16({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS16 = value;
    } else {
      _vocabularyItemSS16 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS17;
  VocabularyItem? get getVocabularySS17 => _vocabularyItemSS17;
  void setVocabularySS17({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS17 = value;
    } else {
      _vocabularyItemSS17 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS18;
  VocabularyItem? get getVocabularySS18 => _vocabularyItemSS18;
  void setVocabularySS18({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS18 = value;
    } else {
      _vocabularyItemSS18 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS19;
  VocabularyItem? get getVocabularySS19 => _vocabularyItemSS19;
  void setVocabularySS19({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS19 = value;
    } else {
      _vocabularyItemSS19 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _vocabularyItemSS20;
  VocabularyItem? get getVocabularySS20 => _vocabularyItemSS20;
  void setVocabularySS20({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyItemSS20 = value;
    } else {
      _vocabularyItemSS20 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  DemoScript? _demoScript;
  DemoScript? get getDemoScript => _demoScript;
  void setDemoScript({required DemoScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _demoScript = value;
    } else {
      _demoScript ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  AdviceScript? _adviceScript;
  AdviceScript? get getAdviceScript => _adviceScript;
  void setAdviceScript({required AdviceScript? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _adviceScript = value;
    } else {
      _adviceScript ??= value;
    }

    return;
  }

  void onUpdate() {
    if ((getCurrentVocabularyItemStack?.length ?? 0) <= 5) {
      getVocabularySS01?.onUpdate();
      getVocabularySS02?.onUpdate();
      getVocabularySS03?.onUpdate();
      getVocabularySS04?.onUpdate();
      getVocabularySS05?.onUpdate();
      getVocabularySS06?.onUpdate();
      getVocabularySS07?.onUpdate();
      getVocabularySS08?.onUpdate();
      getVocabularySS09?.onUpdate();
      getVocabularySS10?.onUpdate();

      getVocabularySS11?.onUpdate();
      getVocabularySS12?.onUpdate();
      getVocabularySS13?.onUpdate();
      getVocabularySS14?.onUpdate();
      getVocabularySS15?.onUpdate();
      getVocabularySS16?.onUpdate();
      getVocabularySS17?.onUpdate();
      getVocabularySS18?.onUpdate();
      getVocabularySS19?.onUpdate();
      getVocabularySS20?.onUpdate();
    }
  }

  void pause() {
    ///
  }

  void resume() {
    ///
  }

  void stop() {
    ///
  }

  void start() {
    ///
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

      setVocabularyTopic(value: VocabularyTopicDataModel(), isPriorityOverride: true);

      setHelpfulStudyAdviceList(value: HelpfulStudyAdviceList(), isPriorityOverride: true);
      setHelpfulStudyAdviceRelatedToTopicList(value: HelpfulStudyAdviceRelatedToTopicList(), isPriorityOverride: true);

      setCurrentHelpfulStudyAdvice(value: HelpfulStudyAdviceDataModel(), isPriorityOverride: true);
      setCurrentHelpfulStudyAdviceRelatedToTopic(value: HelpfulStudyAdviceRelatedToTopicDataModel(), isPriorityOverride: true);

      setCurrentVocabularyItem(
        value: VocabularyItem(
          id: '[CURRENT_VOCABULARY]',
          totalMinutes: 0,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_VOCABULARY');
            }
          },
          currentVocabularyItem: null,
          currentVocabularyItemStack: null,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      setCurrentVocabularyItemStack(value: [], isPriorityOverride: true);

      setVocabularySS01(
        value: VocabularyItem(
          id: '[VOCABULARY_SS01]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS01');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS01();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS02(
        value: VocabularyItem(
          id: '[VOCABULARY_SS02]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS02');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS02();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS03(
        value: VocabularyItem(
          id: '[VOCABULARY_SS03]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS03');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS03();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS04(
        value: VocabularyItem(
          id: '[VOCABULARY_SS04]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS04');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS04();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS05(
        value: VocabularyItem(
          id: '[VOCABULARY_SS05]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS05');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS05();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS06(
        value: VocabularyItem(
          id: '[VOCABULARY_SS06]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS06');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS06();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS07(
        value: VocabularyItem(
          id: '[VOCABULARY_SS07]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS07');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS07();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS08(
        value: VocabularyItem(
          id: '[VOCABULARY_SS08]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS08');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS08();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS09(
        value: VocabularyItem(
          id: '[VOCABULARY_SS09]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS09');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS09();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS10(
        value: VocabularyItem(
          id: '[VOCABULARY_SS10]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS10');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS10();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS11(
        value: VocabularyItem(
          id: '[VOCABULARY_SS11]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS11');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS11();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS12(
        value: VocabularyItem(
          id: '[VOCABULARY_SS12]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS12');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS12();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS13(
        value: VocabularyItem(
          id: '[VOCABULARY_SS13]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS13');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS13();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS14(
        value: VocabularyItem(
          id: '[VOCABULARY_SS14]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS14');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS14();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS15(
        value: VocabularyItem(
          id: '[VOCABULARY_SS15]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS15');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS15();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS16(
        value: VocabularyItem(
          id: '[VOCABULARY_SS16]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS16');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS16();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS17(
        value: VocabularyItem(
          id: '[VOCABULARY_SS17]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS17');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS17();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS18(
        value: VocabularyItem(
          id: '[VOCABULARY_SS18]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS18');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS18();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS19(
        value: VocabularyItem(
          id: '[VOCABULARY_SS19]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS19');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS19();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setVocabularySS20(
        value: VocabularyItem(
          id: '[VOCABULARY_SS20]',
          totalMinutes: 5.5,
          onComplete: () {
            if (kDebugMode) {
              print('Complete VOCABULARY_SS20');
            }

            getSystemStateManagement?.getVocabularyScript?.onCompleteVocabularyDefinitionSS20();
          },
          currentVocabularyItem: getCurrentVocabularyItem,
          currentVocabularyItemStack: getCurrentVocabularyItemStack,
          sequentialExecutionController: getSequentialExecutionController,
          currentHelpfulStudyAdvice: getCurrentHelpfulStudyAdvice,
          currentHelpfulStudyAdviceRelatedToTopic: getCurrentHelpfulStudyAdviceRelatedToTopic,
        ),
        isPriorityOverride: true,
      );

      ///
      setDemoScript(value: DemoScript(vocabularyTime: this), isPriorityOverride: true);
      setAdviceScript(value: AdviceScript(vocabularyTime: this), isPriorityOverride: true);

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

      await getHelpfulStudyAdviceList?.onSetupRoot();
      await getHelpfulStudyAdviceRelatedToTopicList?.onSetupRoot();
      await getCurrentHelpfulStudyAdvice?.onSetupRoot();
      await getCurrentHelpfulStudyAdviceRelatedToTopic?.onSetupRoot();

      await getCurrentVocabularyItem?.onSetupRoot();

      await getVocabularySS01?.onSetupRoot();
      await getVocabularySS02?.onSetupRoot();
      await getVocabularySS03?.onSetupRoot();
      await getVocabularySS04?.onSetupRoot();
      await getVocabularySS05?.onSetupRoot();
      await getVocabularySS06?.onSetupRoot();
      await getVocabularySS07?.onSetupRoot();
      await getVocabularySS08?.onSetupRoot();
      await getVocabularySS09?.onSetupRoot();
      await getVocabularySS10?.onSetupRoot();
      await getVocabularySS11?.onSetupRoot();
      await getVocabularySS12?.onSetupRoot();
      await getVocabularySS13?.onSetupRoot();
      await getVocabularySS14?.onSetupRoot();
      await getVocabularySS15?.onSetupRoot();
      await getVocabularySS16?.onSetupRoot();
      await getVocabularySS17?.onSetupRoot();
      await getVocabularySS18?.onSetupRoot();
      await getVocabularySS19?.onSetupRoot();
      await getVocabularySS20?.onSetupRoot();

      ///
      await getDemoScript?.onSetupRoot();
      await getAdviceScript?.onSetupRoot();
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

      await getHelpfulStudyAdviceList?.onInitRoot();
      await getHelpfulStudyAdviceRelatedToTopicList?.onInitRoot();
      await getCurrentHelpfulStudyAdvice?.onInitRoot();
      await getCurrentHelpfulStudyAdviceRelatedToTopic?.onInitRoot();

      await getCurrentVocabularyItem?.onInitRoot();

      await getVocabularySS01?.onInitRoot();
      await getVocabularySS02?.onInitRoot();
      await getVocabularySS03?.onInitRoot();
      await getVocabularySS04?.onInitRoot();
      await getVocabularySS05?.onInitRoot();
      await getVocabularySS06?.onInitRoot();
      await getVocabularySS07?.onInitRoot();
      await getVocabularySS08?.onInitRoot();
      await getVocabularySS09?.onInitRoot();
      await getVocabularySS10?.onInitRoot();
      await getVocabularySS11?.onInitRoot();
      await getVocabularySS12?.onInitRoot();
      await getVocabularySS13?.onInitRoot();
      await getVocabularySS14?.onInitRoot();
      await getVocabularySS15?.onInitRoot();
      await getVocabularySS16?.onInitRoot();
      await getVocabularySS17?.onInitRoot();
      await getVocabularySS18?.onInitRoot();
      await getVocabularySS19?.onInitRoot();
      await getVocabularySS20?.onInitRoot();

      ///
      await getDemoScript?.onInitRoot();
      await getAdviceScript?.onInitRoot();
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
