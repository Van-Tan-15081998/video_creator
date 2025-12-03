import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_time.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/widgets/vocabulary_definition_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class VocabularyDefinitionFeature with ExecutionCore, WindowFeature {
  VocabularyDefinitionFeature({
    required SystemStateManagement? systemStateManagement,
    required SequentialExecutionController? sequentialExecutionController,
    required double? sizeDx,
    required double? sizeDy,
  }) {
    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
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

  ///
  VoidCallback? onActivateLeftCharacter;
  VoidCallback? onDeActivateLeftCharacter;
  VoidCallback? onActiveLeftExampleSS01;
  VoidCallback? onActiveLeftExampleSS02;
  VoidCallback? onActiveLeftExampleSS03;

  ///
  VoidCallback? onActivateRightCharacter;
  VoidCallback? onDeactivateRightCharacter;
  VoidCallback? onActiveRightExampleSS01;
  VoidCallback? onActiveRightExampleSS02;
  VoidCallback? onActiveRightExampleSS03;

  /// -----
  /// TODO:
  /// -----
  VocabularyTime? _vocabularyTime;
  VocabularyTime? get getVocabularyTime => _vocabularyTime;
  void setVocabularyTime({required VocabularyTime? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyTime = value;
    } else {
      _vocabularyTime ??= value;
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
      // getVocabularyTime?.getVocabularySS01?.onStart();

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
      setVocabularyTime(
        value: VocabularyTime(systemStateManagement: getSystemStateManagement, sequentialExecutionController: getSequentialExecutionController),
      );

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
                VocabularyDefinitionWidget(
                  vocabularyDefinitionFeature: this,
                  onComplete: () {
                    return;
                  },
                ),
              ],
            );
          },
        ),
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
      await getVocabularyTime?.onSetupRoot();
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
      await getVocabularyTime?.onInitRoot();
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
