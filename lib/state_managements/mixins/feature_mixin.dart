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
import 'package:frame_creator_v2/system/sequential_execution_controller/models/script_models/vocabulary_script_model.dart';

mixin FeatureMixin {
  /// -----
  /// TODO:
  /// -----
  IntroductionFeature? _introductionFeature;
  IntroductionFeature? get getIntroductionFeature => _introductionFeature;
  void setIntroductionFeature({required IntroductionFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _introductionFeature = value;
    } else {
      _introductionFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  IntroductoryConversationFeature? _introductoryConversationFeature;
  IntroductoryConversationFeature? get getIntroductoryConversationFeature => _introductoryConversationFeature;
  void setIntroductoryConversationFeature({required IntroductoryConversationFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _introductoryConversationFeature = value;
    } else {
      _introductoryConversationFeature ??= value;
    }

    ///
    return;
  }



  /// -----
  /// TODO:
  /// -----
  BackgroundImageFeature? _backgroundImageFeature;
  BackgroundImageFeature? get getBackgroundImageFeature => _backgroundImageFeature;
  void setBackgroundImageFeature({required BackgroundImageFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _backgroundImageFeature = value;
    } else {
      _backgroundImageFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BreakTimeSpaceFeature? _breakTimeSpaceFeature;
  BreakTimeSpaceFeature? get getBreakTimeSpaceFeature => _breakTimeSpaceFeature;
  void setBreakTimeSpaceFeature({required BreakTimeSpaceFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSpaceFeature = value;
    } else {
      _breakTimeSpaceFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  CountdownTimerFeature? _countdownTimerFeature;
  CountdownTimerFeature? get getCountdownTimerFeature => _countdownTimerFeature;
  void setCountdownTimerFeature({required CountdownTimerFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _countdownTimerFeature = value;
    } else {
      _countdownTimerFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroFeature? _pomodoroFeature;
  PomodoroFeature? get getPomodoroFeature => _pomodoroFeature;
  void setPomodoroFeature({required PomodoroFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pomodoroFeature = value;
    } else {
      _pomodoroFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularySubjectFeature? _vocabularySubjectFeature;
  VocabularySubjectFeature? get getVocabularySubjectFeature => _vocabularySubjectFeature;
  void setVocabularySubjectFeature({required VocabularySubjectFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularySubjectFeature = value;
    } else {
      _vocabularySubjectFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  ConversationFeature? _conversationFeature;
  ConversationFeature? get getConversationFeature => _conversationFeature;
  void setConversationFeature({required ConversationFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _conversationFeature = value;
    } else {
      _conversationFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyListFeature? _vocabularyListFeature;
  VocabularyListFeature? get getVocabularyListFeature => _vocabularyListFeature;
  void setVocabularyListFeature({required VocabularyListFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyListFeature = value;
    } else {
      _vocabularyListFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyDefinitionFeature? _vocabularyDefinitionFeature;
  VocabularyDefinitionFeature? get getVocabularyDefinitionFeature => _vocabularyDefinitionFeature;
  void setVocabularyDefinitionFeature({required VocabularyDefinitionFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyDefinitionFeature = value;
    } else {
      _vocabularyDefinitionFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyEnglishDefinitionFeature? _vocabularyEnglishDefinitionFeature;
  VocabularyEnglishDefinitionFeature? get getVocabularyEnglishDefinitionFeature => _vocabularyEnglishDefinitionFeature;
  void setVocabularyEnglishDefinitionFeature({required VocabularyEnglishDefinitionFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyEnglishDefinitionFeature = value;
    } else {
      _vocabularyEnglishDefinitionFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyConversationFeature? _vocabularyConversationFeature;
  VocabularyConversationFeature? get getVocabularyConversationFeature => _vocabularyConversationFeature;
  void setVocabularyConversationFeature({required VocabularyConversationFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyConversationFeature = value;
    } else {
      _vocabularyConversationFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyParagraphFeature? _vocabularyParagraphFeature;
  VocabularyParagraphFeature? get getVocabularyParagraphFeature => _vocabularyParagraphFeature;
  void setVocabularyParagraphFeature({required VocabularyParagraphFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyParagraphFeature = value;
    } else {
      _vocabularyParagraphFeature ??= value;
    }

    ///
    return;
  }
  /// -----
  /// TODO:
  /// -----
  VocabularySceneTransitionFeature? _vocabularySceneTransitionFeature;
  VocabularySceneTransitionFeature? get getVocabularySceneTransitionFeature => _vocabularySceneTransitionFeature;
  void setVocabularySceneTransitionFeature({required VocabularySceneTransitionFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularySceneTransitionFeature = value;
    } else {
      _vocabularySceneTransitionFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyTitleFeature? _vocabularyTitleFeature;
  VocabularyTitleFeature? get getVocabularyTitleFeature => _vocabularyTitleFeature;
  void setVocabularyTitleFeature({required VocabularyTitleFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyTitleFeature = value;
    } else {
      _vocabularyTitleFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  GlobalAnnouncementFeature? _globalAnnouncementFeature;
  GlobalAnnouncementFeature? get getGlobalAnnouncementFeature => _globalAnnouncementFeature;
  void setGlobalAnnouncementFeature({required GlobalAnnouncementFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _globalAnnouncementFeature = value;
    } else {
      _globalAnnouncementFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  FlameWorldFeature? _flameWorldFeature;
  FlameWorldFeature? get getFlameWorldFeature => _flameWorldFeature;
  void setFlameWorldFeature({required FlameWorldFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _flameWorldFeature = value;
    } else {
      _flameWorldFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  SceneTransitionFeature? _sceneTransitionFeature;
  SceneTransitionFeature? get getSceneTransitionFeature => _sceneTransitionFeature;
  void setSceneTransitionFeature({required SceneTransitionFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sceneTransitionFeature = value;
    } else {
      _sceneTransitionFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  SystemTimelineFeature? _systemTimelineFeature;
  SystemTimelineFeature? get getSystemTimelineFeature => _systemTimelineFeature;
  void setSystemTimelineFeature({required SystemTimelineFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _systemTimelineFeature = value;
    } else {
      _systemTimelineFeature ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  BlackboardFeature? _blackboardFeature;
  BlackboardFeature? get getBlackboardFeature => _blackboardFeature;
  void setBlackboardFeature({required BlackboardFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _blackboardFeature = value;
    } else {
      _blackboardFeature ??= value;
    }

    ///
    return;
  }


  /// -----
  /// TODO:
  /// -----
  VocabularyScriptModel? _vocabularyScript;
  VocabularyScriptModel? get getVocabularyScript => _vocabularyScript;
  void setVocabularyScript({required VocabularyScriptModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyScript = value;
    } else {
      _vocabularyScript ??= value;
    }

    ///
    return;
  }
}
