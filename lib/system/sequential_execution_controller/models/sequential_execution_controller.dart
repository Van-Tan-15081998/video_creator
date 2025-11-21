import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/features/background_image/models/background_image_feature.dart';
import 'package:frame_creator_v2/features/blackboard/models/blackboard_feature.dart';
import 'package:frame_creator_v2/features/conservation/models/conservation_feature.dart';
import 'package:frame_creator_v2/features/countdown_timer/models/countdown_timer_feature.dart';
import 'package:frame_creator_v2/features/flame_world/models/flame_world_feature.dart';
import 'package:frame_creator_v2/features/global_announcement/models/global_announcement_feature.dart';
import 'package:frame_creator_v2/features/pomodoro/models/pomodoro_feature.dart';
import 'package:frame_creator_v2/features/scene_transition/models/scene_transition_feature.dart';
import 'package:frame_creator_v2/features/system_timeline/models/system_timeline_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/vocabulary_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list/models/vocabulary_list_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/models/vocabulary_subject_feature.dart';
import 'package:frame_creator_v2/state_managements/mixins/feature_mixin.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class SequentialExecutionController with ExecutionCore, FeatureMixin, WindowFeature {
  SequentialExecutionController({required SystemStateManagement? systemStateManagement, required double? sizeDx, required double? sizeDy}) {
    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
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
      getSystemStateManagement?.setCountdownTimerFeature(value: getCountdownTimerFeature);

      getSystemStateManagement?.setPomodoroFeature(value: getPomodoroFeature);

      getSystemStateManagement?.setVocabularySubjectFeature(value: getVocabularySubjectFeature);

      getSystemStateManagement?.setConservationFeature(value: getConservationFeature);

      getSystemStateManagement?.setVocabularyListFeature(value: getVocabularyListFeature);

      getSystemStateManagement?.setVocabularyDefinitionFeature(value: getVocabularyDefinitionFeature);

      getSystemStateManagement?.setGlobalAnnouncementFeature(value: getGlobalAnnouncementFeature);

      getSystemStateManagement?.setFlameWorldFeature(value: getFlameWorldFeature);

      getSystemStateManagement?.setSceneTransitionFeature(value: getSceneTransitionFeature);

      getSystemStateManagement?.setSystemTimelineFeature(value: getSystemTimelineFeature);

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
      setBackgroundImageFeature(value: BackgroundImageFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getBackgroundImageFeature?.setSizeDx(value: getSizeDx, isPriorityOverride: true, isSetActiveSizeDx: true);
      getBackgroundImageFeature?.setSizeDy(value: getSizeDy, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBackgroundImageFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBackgroundImageFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setCountdownTimerFeature(value: CountdownTimerFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getCountdownTimerFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDx: true);
      getCountdownTimerFeature?.setSizeDy(value: getSizeDy * 0.6 - (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getCountdownTimerFeature?.setTopPosition(value: 15.0 + (getSizeDy * 0.4 + 15.0), isPriorityOverride: true, isSetActiveTopPosition: true);
      getCountdownTimerFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setPomodoroFeature(value: PomodoroFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getPomodoroFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getPomodoroFeature?.setSizeDy(value: getSizeDy - (getSizeDy * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDy: true);
      getPomodoroFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getPomodoroFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setVocabularySubjectFeature(value: VocabularySubjectFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularySubjectFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularySubjectFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularySubjectFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularySubjectFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setConservationFeature(value: ConservationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getConservationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getConservationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getConservationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getConservationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyListFeature(value: VocabularyListFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyListFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyListFeature?.setSizeDy(value: getSizeDy * 1.0 - (getSizeDy * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyListFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularyListFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyDefinitionFeature(value: VocabularyDefinitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyDefinitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyDefinitionFeature?.setSizeDy(value: getSizeDy * 0.6, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyDefinitionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyDefinitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setGlobalAnnouncementFeature(value: GlobalAnnouncementFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getGlobalAnnouncementFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getGlobalAnnouncementFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getGlobalAnnouncementFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getGlobalAnnouncementFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setFlameWorldFeature(value: FlameWorldFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getFlameWorldFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getFlameWorldFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getFlameWorldFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getFlameWorldFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setSceneTransitionFeature(value: SceneTransitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getSceneTransitionFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSceneTransitionFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getSceneTransitionFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setSystemTimelineFeature(value: SystemTimelineFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getSystemTimelineFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSystemTimelineFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSystemTimelineFeature?.setTopPosition(value: 0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getSystemTimelineFeature?.setLeftPosition(value: 0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setBlackboardFeature(value: BlackboardFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getBlackboardFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getBlackboardFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBlackboardFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBlackboardFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setWindowWidget(
        value: LayoutBuilder(
          builder: (context, constraints) {

            // return Container();

            return Stack(
              children: [
                /// TODO: BlackboardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBackgroundImageFeature?.getWindowWidget ?? Container()),

                /// TODO: BlackboardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBlackboardFeature?.getWindowWidget ?? Container()),

                /// TODO: CountdownTimerFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getCountdownTimerFeature?.getWindowWidget ?? Container()),

                /// TODO: PomodoroFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getPomodoroFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularySubjectFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularySubjectFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: ConservationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getConservationFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyListFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getVocabularyListFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularyDefinitionFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularyDefinitionFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: GlobalAnnouncementFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getGlobalAnnouncementFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: FlameWorldFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFlameWorldFeature?.getWindowWidget ?? Container()),

                /// TODO: SceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: SystemTimelineFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSystemTimelineFeature?.getWindowWidget ?? Container()),
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
      await getBackgroundImageFeature?.onSetupRoot();
      await getCountdownTimerFeature?.onSetupRoot();
      await getPomodoroFeature?.onSetupRoot();
      await getVocabularySubjectFeature?.onSetupRoot();
      await getConservationFeature?.onSetupRoot();
      await getVocabularyListFeature?.onSetupRoot();
      await getVocabularyDefinitionFeature?.onSetupRoot();
      await getGlobalAnnouncementFeature?.onSetupRoot();
      await getFlameWorldFeature?.onSetupRoot();
      await getSceneTransitionFeature?.onSetupRoot();
      await getSystemTimelineFeature?.onSetupRoot();
      await getBlackboardFeature?.onSetupRoot();

      getBackgroundImageFeature
        ?..setConditionActiveByLeftDirection()
        ..inactiveWindow();
      getCountdownTimerFeature
        ?..setConditionActiveByRightDirection()
        ..inactiveWindow();
      getPomodoroFeature
        ?..setConditionActiveByBottomDirection()
        ..inactiveWindow();
      getVocabularySubjectFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getConservationFeature
        ?..setConditionActiveByLeftDirection()
        ..inactiveWindow();
      getVocabularyListFeature
        ?..setConditionActiveByBottomDirection()
        ..inactiveWindow();
      getVocabularyDefinitionFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getGlobalAnnouncementFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getFlameWorldFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getSceneTransitionFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getSystemTimelineFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
      getBlackboardFeature
        ?..setConditionActiveByTopDirection()
        ..inactiveWindow();
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
      await getBackgroundImageFeature?.onInitRoot();
      await getCountdownTimerFeature?.onInitRoot();
      await getPomodoroFeature?.onInitRoot();
      await getVocabularySubjectFeature?.onInitRoot();
      await getConservationFeature?.onInitRoot();
      await getVocabularyListFeature?.onInitRoot();
      await getVocabularyDefinitionFeature?.onInitRoot();
      await getGlobalAnnouncementFeature?.onInitRoot();
      await getFlameWorldFeature?.onInitRoot();
      await getSceneTransitionFeature?.onInitRoot();
      await getSystemTimelineFeature?.onInitRoot();
      await getBlackboardFeature?.onInitRoot();
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

  void updateSeconds() {
    getPomodoroFeature?.getPomodoroTime?.onUpdate();

    ///
    /// TODO: BackgroundImageFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      getBackgroundImageFeature?.activeWindow();
    }

    ///
    /// TODO: BlackboardFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      getBlackboardFeature?.activeWindow();
    }

    ///
    /// TODO: ConservationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      getConservationFeature?.activeWindow();
    }

    ///
    /// TODO: VocabularySubjectFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      getVocabularySubjectFeature?.activeWindow();
    }

    ///
    /// TODO: PomodoroFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      getPomodoroFeature?.activeWindow();
    }

    ///
    /// TODO: PomodoroFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      getCountdownTimerFeature?.activeWindow();
    }

    ///
    return;
  }

  void updateMilliSeconds() {
    ///
    return;
  }
}
