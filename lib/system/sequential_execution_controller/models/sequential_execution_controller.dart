import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/sequential_execution_structure.dart';
import 'package:frame_creator_v2/core/window_feature.dart';
import 'package:frame_creator_v2/features/background_image/models/background_image_feature.dart';
import 'package:frame_creator_v2/features/blackboard/models/blackboard_feature.dart';
import 'package:frame_creator_v2/features/break_time_space/models/break_time_space_feature.dart';
import 'package:frame_creator_v2/features/conversation/models/conversation_feature.dart';
import 'package:frame_creator_v2/features/countdown_timer/models/countdown_timer_feature.dart';
import 'package:frame_creator_v2/features/flame_world/models/flame_world_feature.dart';
import 'package:frame_creator_v2/features/global_announcement/models/global_announcement_feature.dart';
import 'package:frame_creator_v2/features/introduction/models/introduction_feature.dart';
import 'package:frame_creator_v2/features/introductory_conversation/models/introductory_conversation_feature.dart';
import 'package:frame_creator_v2/features/pomodoro/models/pomodoro_feature.dart';
import 'package:frame_creator_v2/features/scene_transition/models/scene_transition_feature.dart';
import 'package:frame_creator_v2/features/system_timeline/models/system_timeline_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_conversation/models/vocabulary_conversation_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/vocabulary_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_english_definition/models/vocabulary_english_definition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_paragraph/models/vocabulary_paragraph_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_list/models/vocabulary_list_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_scene_transition/models/vocabulary_scene_transition_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_subject/models/vocabulary_subject_feature.dart';
import 'package:frame_creator_v2/features/vocabulary_title/models/vocabulary_title_feature.dart';
import 'package:frame_creator_v2/state_managements/mixins/feature_mixin.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/script_models/vocabulary_script_model.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_detail.dart';

class SequentialExecutionController with ExecutionCore, FeatureMixin, WindowFeature {
  SequentialExecutionController({required SystemStateManagement? systemStateManagement, required double? sizeDx, required double? sizeDy}) {
    setSystemStateManagement(value: systemStateManagement);
    setSizeDx(value: sizeDx, isPriorityOverride: true);
    setSizeDy(value: sizeDy, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionDetail? _sequentialExecutionDetail;
  SequentialExecutionDetail? get getSequentialExecutionDetail => _sequentialExecutionDetail;
  void setSequentialExecutionDetail({required SequentialExecutionDetail? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionDetail = value;
    } else {
      _sequentialExecutionDetail ??= value;
    }

    ///
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
      getSystemStateManagement?.setIntroductionFeature(value: getIntroductionFeature);

      getSystemStateManagement?.setIntroductoryConversationFeature(value: getIntroductoryConversationFeature);

      getSystemStateManagement?.setCountdownTimerFeature(value: getCountdownTimerFeature);

      getSystemStateManagement?.setPomodoroFeature(value: getPomodoroFeature);

      getSystemStateManagement?.setVocabularySubjectFeature(value: getVocabularySubjectFeature);

      getSystemStateManagement?.setConversationFeature(value: getConversationFeature);

      getSystemStateManagement?.setVocabularyListFeature(value: getVocabularyListFeature);

      getSystemStateManagement?.setVocabularyDefinitionFeature(value: getVocabularyDefinitionFeature);

      getSystemStateManagement?.setVocabularyScript(value: getVocabularyScript);

      getSystemStateManagement?.setGlobalAnnouncementFeature(value: getGlobalAnnouncementFeature);

      getSystemStateManagement?.setFlameWorldFeature(value: getFlameWorldFeature);

      getSystemStateManagement?.setSceneTransitionFeature(value: getSceneTransitionFeature);

      getSystemStateManagement?.setVocabularySceneTransitionFeature(value: getVocabularySceneTransitionFeature);

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
      setSequentialExecutionDetail(value: SequentialExecutionDetail(sequentialExecutionController: this));
      setVocabularyScript(value: VocabularyScriptModel(sequentialExecutionController: this));

      /// -----
      /// TODO:
      /// -----
      setIntroductionFeature(
        value: IntroductionFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            getIntroductionFeature?.onDeactivateWindow();
          },
        ),
        isPriorityOverride: true,
      );
      getIntroductionFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getIntroductionFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getIntroductionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getIntroductionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setIntroductoryConversationFeature(
        value: IntroductoryConversationFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            ///
          },
        ),
        isPriorityOverride: true,
      );
      getIntroductoryConversationFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getIntroductoryConversationFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getIntroductoryConversationFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getIntroductoryConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      /// -----
      /// TODO:
      /// -----
      setBreakTimeSpaceFeature(
        value: BreakTimeSpaceFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            ///
          },
        ),
        isPriorityOverride: true,
      );
      getBreakTimeSpaceFeature?.setSizeDx(value: getSizeDx - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getBreakTimeSpaceFeature?.setSizeDy(value: getSizeDy - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getBreakTimeSpaceFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getBreakTimeSpaceFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

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

      setConversationFeature(value: ConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyListFeature(value: VocabularyListFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyListFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyListFeature?.setSizeDy(value: getSizeDy * 1.0 - (getSizeDy * 0.6 + 45.0), isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyListFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularyListFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyDefinitionFeature(
        value: VocabularyDefinitionFeature(systemStateManagement: getSystemStateManagement, sequentialExecutionController: this, sizeDx: null, sizeDy: null),
        isPriorityOverride: true,
      );
      getVocabularyDefinitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyDefinitionFeature?.setSizeDy(value: getSizeDy * 0.6, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyDefinitionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyDefinitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyEnglishDefinitionFeature(value: VocabularyEnglishDefinitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyEnglishDefinitionFeature?.setSizeDx(value: getSizeDx - (getSizeDx * 0.6 + 45), isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyEnglishDefinitionFeature?.setSizeDy(value: getSizeDy * 0.4, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyEnglishDefinitionFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyEnglishDefinitionFeature?.setRightPosition(value: 15.0, isPriorityOverride: true, isSetActiveRightPosition: true);

      setVocabularyConversationFeature(value: VocabularyConversationFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyConversationFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyConversationFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyConversationFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyConversationFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyParagraphFeature(value: VocabularyParagraphFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyParagraphFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyParagraphFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyParagraphFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyParagraphFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularySceneTransitionFeature(value: VocabularySceneTransitionFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularySceneTransitionFeature?.setSizeDx(value: getSizeDx * 0.6, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularySceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularySceneTransitionFeature?.setBottomPosition(value: 15.0, isPriorityOverride: true, isSetActiveBottomPosition: true);
      getVocabularySceneTransitionFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

      setVocabularyTitleFeature(value: VocabularyTitleFeature(systemStateManagement: getSystemStateManagement, sizeDx: null, sizeDy: null), isPriorityOverride: true);
      getVocabularyTitleFeature?.setSizeDx(value: getSizeDx * 0.6 - 30.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getVocabularyTitleFeature?.setSizeDy(value: getSizeDy * 0.6 - 30.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getVocabularyTitleFeature?.setTopPosition(value: 15.0, isPriorityOverride: true, isSetActiveTopPosition: true);
      getVocabularyTitleFeature?.setLeftPosition(value: 15.0, isPriorityOverride: true, isSetActiveLeftPosition: true);

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

      setSceneTransitionFeature(
        value: SceneTransitionFeature(
          systemStateManagement: getSystemStateManagement,
          sizeDx: null,
          sizeDy: null,
          onComplete: () {
            getSceneTransitionFeature?.onDeactivateWindow();
          },
        ),
        isPriorityOverride: true,
      );
      getSceneTransitionFeature?.setSizeDx(value: getSizeDx * 1.0, isPriorityOverride: true, isSetActiveSizeDx: true);
      getSceneTransitionFeature?.setSizeDy(value: getSizeDy * 1.0, isPriorityOverride: true, isSetActiveSizeDy: true);
      getSceneTransitionFeature?.setBottomPosition(value: 0, isPriorityOverride: true, isSetActiveBottomPosition: true);
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

                /// TODO: GlobalAnnouncementFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getGlobalAnnouncementFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: BlackboardFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBlackboardFeature?.getWindowWidget ?? Container()),

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

                /// TODO: ConversationFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getConversationFeature?.getWindowWidget ?? Container()),

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

                /// TODO: VocabularyEnglishDefinitionFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularyEnglishDefinitionFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: VocabularyConversationFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularyConversationFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: VocabularyParagraphFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularyParagraphFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: VocabularyTitleFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 100),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularyTitleFeature?.getWindowWidget ?? Container(),
                ),


                /// TODO: FlameWorldFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getFlameWorldFeature?.getWindowWidget ?? Container()),

                /// TODO: SceneTransitionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSceneTransitionFeature?.getWindowWidget ?? Container()),

                /// TODO: VocabularySceneTransitionFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getVocabularySceneTransitionFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: SystemTimelineFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 100), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getSystemTimelineFeature?.getWindowWidget ?? Container()),

                /// TODO: BreakTimeSpaceFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getBreakTimeSpaceFeature?.getWindowWidget ?? Container()),

                /// TODO: IntroductoryConversationFeature
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  top: 0,
                  left: 0,
                  width: getSizeDx,
                  height: getSizeDy,
                  child: getIntroductoryConversationFeature?.getWindowWidget ?? Container(),
                ),

                /// TODO: IntroductionFeature
                AnimatedPositioned(duration: const Duration(milliseconds: 500), top: 0, left: 0, width: getSizeDx, height: getSizeDy, child: getIntroductionFeature?.getWindowWidget ?? Container()),
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
      await getSequentialExecutionDetail?.onSetupRoot();
      await getVocabularyScript?.onSetupRoot();

      /// -----
      /// TODO:
      /// -----
      await getIntroductionFeature?.onSetupRoot();
      await getBreakTimeSpaceFeature?.onSetupRoot();
      await getIntroductoryConversationFeature?.onSetupRoot();
      await getBackgroundImageFeature?.onSetupRoot();
      await getCountdownTimerFeature?.onSetupRoot();
      await getPomodoroFeature?.onSetupRoot();
      await getVocabularySubjectFeature?.onSetupRoot();
      await getConversationFeature?.onSetupRoot();
      await getVocabularyListFeature?.onSetupRoot();
      await getVocabularyDefinitionFeature?.onSetupRoot();
      await getVocabularyTitleFeature?.onSetupRoot();
      await getVocabularyEnglishDefinitionFeature?.onSetupRoot();
      await getVocabularyConversationFeature?.onSetupRoot();
      await getVocabularyParagraphFeature?.onSetupRoot();
      await getVocabularySceneTransitionFeature?.onSetupRoot();
      await getGlobalAnnouncementFeature?.onSetupRoot();
      await getFlameWorldFeature?.onSetupRoot();
      await getSceneTransitionFeature?.onSetupRoot();
      await getSystemTimelineFeature?.onSetupRoot();
      await getBlackboardFeature?.onSetupRoot();

      getIntroductionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getBreakTimeSpaceFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getIntroductoryConversationFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();
      getBackgroundImageFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getCountdownTimerFeature
        ?..setConditionActiveByRightDirection()
        ..onDeactivateWindow();
      getPomodoroFeature
        ?..setConditionActiveByBottomDirection()
        ..onDeactivateWindow();
      getVocabularySubjectFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getConversationFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularyListFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getVocabularyDefinitionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularyTitleFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();

      getVocabularyEnglishDefinitionFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularyConversationFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularyParagraphFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getVocabularySceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();

      getGlobalAnnouncementFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getFlameWorldFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getSceneTransitionFeature
        ?..setConditionActiveByLeftDirection()
        ..onDeactivateWindow();
      getSystemTimelineFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
      getBlackboardFeature
        ?..setConditionActiveByTopDirection()
        ..onDeactivateWindow();
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
      await getSequentialExecutionDetail?.onInitRoot();
      await getVocabularyScript?.onInitRoot();

      /// -----
      /// TODO:
      /// -----
      await getIntroductionFeature?.onInitRoot();
      await getBreakTimeSpaceFeature?.onInitRoot();
      await getIntroductoryConversationFeature?.onInitRoot();
      await getBackgroundImageFeature?.onInitRoot();
      await getCountdownTimerFeature?.onInitRoot();
      await getPomodoroFeature?.onInitRoot();
      await getVocabularySubjectFeature?.onInitRoot();
      await getConversationFeature?.onInitRoot();
      await getVocabularyListFeature?.onInitRoot();
      await getVocabularyDefinitionFeature?.onInitRoot();
      await getVocabularyTitleFeature?.onInitRoot();
      await getVocabularyEnglishDefinitionFeature?.onInitRoot();
      await getVocabularyConversationFeature?.onInitRoot();
      await getVocabularyParagraphFeature?.onInitRoot();
      await getVocabularySceneTransitionFeature?.onInitRoot();
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

  Future<void> start() async {
    getVocabularyScript?.onStartVocabularyDefinitionSS01();

    return;

    SequentialExecutionStructure? cauTrucThucThiTuanTuSS010 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS020 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS030 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS040 = SequentialExecutionStructure.onMacDinh();
    SequentialExecutionStructure? cauTrucThucThiTuanTuSS050 = SequentialExecutionStructure.onMacDinh();

    cauTrucThucThiTuanTuSS010.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS020.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
          getPomodoroFeature?.onDeactivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS030.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 15) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS040.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
          getPomodoroFeature?.onDeactivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS050.onAddDonViThucThiTuanTu(
      onThucThiTuanTu: () async {
        if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 25) {
          getPomodoroFeature?.onActivateWindow();
        }
      },
    );

    cauTrucThucThiTuanTuSS010.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS020.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS020.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS030.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS030.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS040.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS040.onThucThiHoanTat = () async {
      await cauTrucThucThiTuanTuSS050.onThucThiTuanTu();
    };
    cauTrucThucThiTuanTuSS050.onThucThiHoanTat = () async {
      getCountdownTimerFeature?.onActivateWindow();
    };

    await cauTrucThucThiTuanTuSS010.onThucThiTuanTu(interval: const Duration(milliseconds: 1000));

    return;
  }

  void updateSeconds() {
    getPomodoroFeature?.getPomodoroTime?.onUpdate();
    // getVocabularyDefinitionFeature?.getVocabularyTime?.onUpdate();

    getSequentialExecutionDetail?.onUpdate();

    /// TODO: 00:00:05
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getCountdownTimerFeature?.onActivateWindow();
      getPomodoroFeature?.onActivateWindow();

      getBlackboardFeature?.onActivateWindow();
      getVocabularySubjectFeature?.onActivateWindow();
      getVocabularyListFeature?.onActivateWindow();
    }

    return;

    /// TODO: 00:00:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      getGlobalAnnouncementFeature?.onActivateWindow();
      getBackgroundImageFeature?.onActivateWindow();
      // getIntroductionFeature?.onActivateWindow();

      ///
    }

    /// TODO: 00:00:05
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      getCountdownTimerFeature?.onActivateWindow();
      getPomodoroFeature?.onActivateWindow();

      getPomodoroFeature?.getPomodoroTime?.pause();
      getSystemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.pause();

      // getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

      ///
    }

    /// TODO: 00:00:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      getPomodoroFeature?.getPomodoroTime?.resume();
      getSystemStateManagement?.getMainTimelineStateManagement?.getPomodoroTimeline?.resume();

      ///
    }

    /// TODO: 00:00:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:00:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:00:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:00:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:01:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    /// TODO: 00:01:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      ///
    }

    /// TODO: 00:01:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:01:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:01:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:01:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:02:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    /// TODO: 00:02:10
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 10) {
      ///
    }

    /// TODO: 00:02:20
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 20) {
      ///
    }

    /// TODO: 00:02:30
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      ///
    }

    /// TODO: 00:02:40
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 40) {
      ///
    }

    /// TODO: 00:02:50
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 50) {
      ///
    }

    /// TODO: 00:03:00
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 3 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      ///
    }

    return;

    ///
    /// TODO: GlobalAnnouncementFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getGlobalAnnouncementFeature?.onActivateWindow();
    }

    ///
    /// TODO: BackgroundImageFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getBreakTimeSpaceFeature?.onActivateWindow();
    }

    ///
    /// TODO: BackgroundImageFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      getBackgroundImageFeature?.onActivateWindow();
    }

    ///
    /// TODO: BlackboardFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getBlackboardFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyDefinitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 1) {
      // getVocabularyDefinitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyEnglishDefinitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularyEnglishDefinitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularyListFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularyListFeature?.onActivateWindow();
    }

    ///
    /// TODO: ConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getConversationFeature?.onActivateWindow();
    }

    ///
    /// TODO: VocabularySubjectFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getVocabularySubjectFeature?.onActivateWindow();
    }

    ///
    /// TODO: PomodoroFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getPomodoroFeature?.onActivateWindow();
    }

    ///
    /// TODO: CountdownTimerFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getCountdownTimerFeature?.onActivateWindow();
      getCountdownTimerFeature?.onActivateWindowOnCorner(isBottomRight: true, marginBottom: 15.0);
    }

    ///
    /// TODO: SceneTransitionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 2 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 3 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 4 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 5 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 30) {
      // getSceneTransitionFeature?.onActivateWindow();
    }

    ///
    /// TODO: IntroductoryConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 5) {
      // getIntroductoryConversationFeature?.onActivateWindow();
    }

    ///
    /// TODO: IntroductoryConversationFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 1 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 0) {
      // getIntroductoryConversationFeature?.onDeactivateWindow();
    }

    ///
    /// TODO: IntroductionFeature
    ///
    if (getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes == 0 && getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds == 15) {
      // getIntroductionFeature?.onActivateWindow();
    }

    ///
    return;
  }

  void updateMilliSeconds() {
    getVocabularyDefinitionFeature?.getVocabularyTime?.onUpdate();

    ///
    return;
  }
}
