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

mixin FeatureMixin {
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
  ConservationFeature? _conservationFeature;
  ConservationFeature? get getConservationFeature => _conservationFeature;
  void setConservationFeature({required ConservationFeature? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _conservationFeature = value;
    } else {
      _conservationFeature ??= value;
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
}
