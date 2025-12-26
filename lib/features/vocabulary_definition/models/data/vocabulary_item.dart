import 'dart:math';

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/models/data/helpful_study_advice_data_model.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/models/data/helpful_study_advice_related_to_topic_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_status.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class VocabularyItem with ExecutionCore {
  VocabularyItem({
    required SequentialExecutionController? sequentialExecutionController,
    required String? id,
    required double? totalMinutes,
    required VocabularyItem? currentVocabularyItem,
    required List<VocabularyItem>? currentVocabularyItemStack,
    required HelpfulStudyAdviceDataModel? currentHelpfulStudyAdvice,
    required HelpfulStudyAdviceRelatedToTopicDataModel? currentHelpfulStudyAdviceRelatedToTopic,

    required this.onComplete,
  }) {
    setId(value: id, isPriorityOverride: true);
    setTotalMinutes(value: totalMinutes, isPriorityOverride: true);
    setCurrentVocabularyItem(value: currentVocabularyItem, isPriorityOverride: true);
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);

    setCurrentVocabularyItemStack(value: currentVocabularyItemStack, isPriorityOverride: true);
    setCurrentHelpfulStudyAdvice(value: currentHelpfulStudyAdvice, isPriorityOverride: true);
    setCurrentHelpfulStudyAdviceRelatedToTopic(value: currentHelpfulStudyAdviceRelatedToTopic, isPriorityOverride: true);
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

  VoidCallback? onAdviceCallback;

  VoidCallback? onStartPhaseSS01AsShow; // Show
  VoidCallback? onCompletedPhaseSS01AsShow; // Show

  VoidCallback? onStartPhaseSS02; // Example Sentence
  VoidCallback? onCompletedPhaseSS02; // Example Sentence

  VoidCallback? onStartPhaseSS02AsExampleSentenceSS01; // Example Sentence SS01
  VoidCallback? onCompletedPhaseSS02AsExampleSentenceSS01; // Example Sentence SS01

  VoidCallback? onStartPhaseSS02AsExampleSentenceSS02; // Example Sentence SS02
  VoidCallback? onCompletedPhaseSS02AsExampleSentenceSS02; // Example Sentence SS02

  VoidCallback? onStartPhaseSS02AsExampleSentenceSS03; // Example Sentence SS03
  VoidCallback? onCompletedPhaseSS02AsExampleSentenceSS03; // Example Sentence SS03

  VoidCallback? onStartPhaseSS03; // Example Paragraph
  VoidCallback? onCompletedPhaseSS03; // Example Paragraph

  VoidCallback? onStartPhaseSS03AsExampleParagraphSS01; // Example Paragraph SS01
  VoidCallback? onCompletedPhaseSS03AsExampleParagraphSS01; // Example Paragraph SS01

  VoidCallback? onStartPhaseSS03AsExampleParagraphSS02; // Example Paragraph SS02
  VoidCallback? onCompletedPhaseSS03AsExampleParagraphSS02; // Example Paragraph SS02

  VoidCallback? onStartPhaseSS03AsExampleParagraphSS03; // Example Paragraph SS03
  VoidCallback? onCompletedPhaseSS03AsExampleParagraphSS03; // Example Paragraph SS03

  VoidCallback? onStartPhaseSS04AsExampleConversation; // Example Conversation
  VoidCallback? onCompletedPhaseSS04AsExampleConversation; // Example Conversation

  VoidCallback? onCompletedAll; // Complete All

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
  double? _totalMinutes;
  double? get getTotalMinutes => _totalMinutes;
  void setTotalMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalMinutes = value;
    } else {
      _totalMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalRemainingMinutes;
  double? get getTotalRemainingMinutes => _totalRemainingMinutes;
  void setTotalRemainingMinutes({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingMinutes = value;
    } else {
      _totalRemainingMinutes ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalSeconds;
  double? get getTotalSeconds => _totalSeconds;
  void setTotalSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalSeconds = value;
    } else {
      _totalSeconds ??= value;
    }

    setTotalRemainingSeconds(value: getTotalSeconds, isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _totalRemainingSeconds;
  double? get getTotalRemainingSeconds => _totalRemainingSeconds;
  void setTotalRemainingSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalRemainingSeconds = value;
    } else {
      _totalRemainingSeconds ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _percentComplete;
  double? get getPercentComplete => _percentComplete;
  void setPercentComplete({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _percentComplete = value;
    } else {
      _percentComplete ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyStatus? _status;
  VocabularyStatus? get getStatus => _status;
  void setStatus({required VocabularyStatus? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _status = value;
    } else {
      _status ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isPaused;
  bool get getIsPaused => _isPaused ?? false;
  void setIsPaused({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPaused = value;
    } else {
      _isPaused ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyDataModel? _vocabularyDataModel;
  VocabularyDataModel? get getVocabularyDataModel => _vocabularyDataModel;
  void setVocabularyDataModel({required VocabularyDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyDataModel = value;
    } else {
      _vocabularyDataModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyItem?>? _currentVocabularyItemList;
  List<VocabularyItem?>? get getCurrentVocabularyItemList => _currentVocabularyItemList;
  void setCurrentVocabularyItemList({required List<VocabularyItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItemList = value;
    } else {
      _currentVocabularyItemList ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyItem?>? _topicVocabularyItemList;
  List<VocabularyItem?>? get getTopicVocabularyItemList => _topicVocabularyItemList;
  void setTopicVocabularyItemList({required List<VocabularyItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicVocabularyItemList = value;
    } else {
      _topicVocabularyItemList ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isActive;
  bool get getIsActive => _isActive ?? false;
  void setIsActive({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isActive = value;
    } else {
      _isActive ??= value;
    }

    return;
  }

  void start() {
    setIsPaused(value: false, isPriorityOverride: true);
  }

  void pause() {
    setIsPaused(value: true, isPriorityOverride: true);
  }

  void stop() {
    setIsPaused(value: true, isPriorityOverride: true);
  }

  void resume() {
    setIsPaused(value: false, isPriorityOverride: true);
  }

  VoidCallback? onComplete;

  /// -----
  /// TODO:
  /// -----
  void onStart() {
    getStatus?.setStatusActive();
    getCurrentVocabularyItemStack?.add(this);
  }

  final List<String> longBgmList = [
    'bgm/youtube_studio/Catch_Up_Dan_Lebowitz.mp3',
    'bgm/youtube_studio/Clouds_Lifting_Telecasted.mp3',
    'bgm/youtube_studio/Come_With_Us_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'bgm/youtube_studio/Communicator_Reed_Mathis.mp3',
    'bgm/youtube_studio/Country_Sky_Telecasted.mp3',
    'bgm/youtube_studio/Cuckoos_Nest_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'bgm/youtube_studio/Denver_Avenue_Reed_Mathis.mp3',
    'bgm/youtube_studio/Fog_Kiss_The_Peat_Dan_Lebo_Lebowitz_Tone_Seeker.mp3',
    'bgm/youtube_studio/Forgiven_Fate_Dan_Lebowitz.mp3',
    'bgm/youtube_studio/From_Here_on_In_Everet_Almond.mp3',
    'bgm/youtube_studio/Future_King_of_Heaven_Zachariah_Hickman.mp3',
    'bgm/youtube_studio/Girasol_Quincas_Moreira.mp3',
    'bgm/youtube_studio/Gold_in_Them_Hills_Nathan_Moore.mp3',
    'bgm/youtube_studio/Hickory_Hollow_Dan_Lebowitz.mp3',
    'bgm/youtube_studio/Hulu_Ukulele_Chris_Haugen.mp3',
    'bgm/youtube_studio/Juneberry_Junction_Chris_Haugen.mp3',
    'bgm/youtube_studio/Leaning_On_the_Everlasting_Arms_Zachariah_Hickman.mp3',
    'bgm/youtube_studio/Lets_Do_This_Nat_Keefe_&_Hot_Buttered_Rum.mp3',
    'bgm/youtube_studio/Moonrise_Reed_Mathis.mp3',
    'bgm/youtube_studio/Oceanside_Bonfire_The_Great_North_Sound_Society.mp3',
    'bgm/youtube_studio/Outlaws_Farewell_Reed_Mathis.mp3',
    'bgm/youtube_studio/Sky_Map_Reed_Mathis.mp3',
    'bgm/youtube_studio/Take_Your_Time_Dan_Lebowitz.mp3',
    'bgm/youtube_studio/Tell_Em_What_They_Wanna_Hear_Everet_Almond.mp3',
    'bgm/youtube_studio/The_Slow_Rabbit_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'bgm/youtube_studio/There_Are_Chirping_Birdies_In_My_Soul_Reed_Mathis.mp3',
    'bgm/youtube_studio/Top_Of_The_Morning_TrackTribe.mp3',
    'bgm/youtube_studio/Twilight_Train_Dan_Lebowitz.mp3',
    'bgm/youtube_studio/Under_The_Sun_Everet_Almond.mp3',
    'bgm/youtube_studio/Wager_With_Angels_Nathan_Moore.mp3',
    'bgm/youtube_studio/When_Irish_Eyes_Are_Smiling_Freedom_Trail_Studio.mp3',
    'bgm/youtube_studio/With_You_Everet_Almond.mp3',
    'bgm/youtube_studio/You_and_I_Telecasted.mp3',
    'bgm/youtube_studio/Your_Love_Yung_Logos.mp3',
  ];

  final List<String> longBgmList2 = [
    'audio/bgm/youtube_studio/Catch_Up_Dan_Lebowitz.mp3',
    'audio/bgm/youtube_studio/Clouds_Lifting_Telecasted.mp3',
    'audio/bgm/youtube_studio/Come_With_Us_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'audio/bgm/youtube_studio/Communicator_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Country_Sky_Telecasted.mp3',
    'audio/bgm/youtube_studio/Cuckoos_Nest_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'audio/bgm/youtube_studio/Denver_Avenue_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Fog_Kiss_The_Peat_Dan_Lebo_Lebowitz_Tone_Seeker.mp3',
    'audio/bgm/youtube_studio/Forgiven_Fate_Dan_Lebowitz.mp3',
    'audio/bgm/youtube_studio/From_Here_on_In_Everet_Almond.mp3',
    'audio/bgm/youtube_studio/Future_King_of_Heaven_Zachariah_Hickman.mp3',
    'audio/bgm/youtube_studio/Girasol_Quincas_Moreira.mp3',
    'audio/bgm/youtube_studio/Gold_in_Them_Hills_Nathan_Moore.mp3',
    'audio/bgm/youtube_studio/Hickory_Hollow_Dan_Lebowitz.mp3',
    'audio/bgm/youtube_studio/Hulu_Ukulele_Chris_Haugen.mp3',
    'audio/bgm/youtube_studio/Juneberry_Junction_Chris_Haugen.mp3',
    'audio/bgm/youtube_studio/Leaning_On_the_Everlasting_Arms_Zachariah_Hickman.mp3',
    'audio/bgm/youtube_studio/Lets_Do_This_Nat_Keefe_&_Hot_Buttered_Rum.mp3',
    'audio/bgm/youtube_studio/Moonrise_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Oceanside_Bonfire_The_Great_North_Sound_Society.mp3',
    'audio/bgm/youtube_studio/Outlaws_Farewell_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Sky_Map_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Take_Your_Time_Dan_Lebowitz.mp3',
    'audio/bgm/youtube_studio/Tell_Em_What_They_Wanna_Hear_Everet_Almond.mp3',
    'audio/bgm/youtube_studio/The_Slow_Rabbit_Nat_Keefe_Hot_Buttered_Rum.mp3',
    'audio/bgm/youtube_studio/There_Are_Chirping_Birdies_In_My_Soul_Reed_Mathis.mp3',
    'audio/bgm/youtube_studio/Top_Of_The_Morning_TrackTribe.mp3',
    'audio/bgm/youtube_studio/Twilight_Train_Dan_Lebowitz.mp3',
    'audio/bgm/youtube_studio/Under_The_Sun_Everet_Almond.mp3',
    'audio/bgm/youtube_studio/Wager_With_Angels_Nathan_Moore.mp3',
    'audio/bgm/youtube_studio/When_Irish_Eyes_Are_Smiling_Freedom_Trail_Studio.mp3',
    'audio/bgm/youtube_studio/With_You_Everet_Almond.mp3',
    'audio/bgm/youtube_studio/You_and_I_Telecasted.mp3',
    'audio/bgm/youtube_studio/Your_Love_Yung_Logos.mp3',
  ];

  final Random _random = Random();
  Future<void> playRandomSFX() async {
    String nextBgm;
    nextBgm = longBgmList[_random.nextInt(longBgmList.length)];
    FlameAudio.play(nextBgm, volume: 0.15);

    getSequentialExecutionController?.getSystemStateManagement?.getMusicAndSound?.setIsFixedBackgroundMusicVolume(value: true, isPriorityOverride: true);
    fadeOutBGM(duration: 5);
  }

  final AudioPlayer _player = AudioPlayer();
  Future<void> playRandomSFXAudioPlayer() async {

    getSequentialExecutionController?.getSystemStateManagement?.getMusicAndSound?.setIsFixedBackgroundMusicVolume(value: true, isPriorityOverride: true);
    _player.onPlayerComplete.listen((_) {
      getSequentialExecutionController?.getSystemStateManagement?.getMusicAndSound?.setIsFixedBackgroundMusicVolume(value: false, isPriorityOverride: true);
    });

    String nextBgm;
    nextBgm = longBgmList2[_random.nextInt(longBgmList2.length)];
    _player.play(AssetSource(nextBgm), volume: 0.15);
    fadeOutBGM(duration: 2);
  }

  /// Giảm Âm Lượng Âm Thanh Trước Khi Tắt Hẳn
  Future<void> fadeOutBGM({double duration = 1.5}) async {
    final player = FlameAudio.bgm.audioPlayer;

    double current = getSequentialExecutionController?.getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1; // Volume hiện tại
    const int stepCount = 20; // số bước giảm
    final double step = (current / stepCount);
    final int delay = (duration * 1000 ~/ stepCount);

    for (int i = 0; i < stepCount; i++) {
      /// Không tắt hẳn
      if (current >= 0.05) {
        current -= step;

        if (current < 0.05) {
          current = 0;
        }

        await player.setVolume(current);
        getSequentialExecutionController?.getSystemStateManagement?.getMusicAndSound?.setCurrentBackgroundMusicVolume(value: current, isPriorityOverride: true);

        await Future.delayed(Duration(milliseconds: delay));
        if (kDebugMode) {
          // print('[FlameAudio-delay_decrease] $current - $step');
        }
      }
    }
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    if (getIsPaused == true) {
      ///
    } else if (getIsPaused == false) {
      if (getStatus?.isActive() == true) {
        if ((getTotalRemainingSeconds ?? 0) > 0) {
          double totalRemainingSecondsUpdate = (getTotalRemainingSeconds ?? 0) - 1;

          setTotalRemainingSeconds(value: totalRemainingSecondsUpdate, isPriorityOverride: true);

          ///
          double percentComplete = ((getTotalSeconds ?? 1) - (getTotalRemainingSeconds ?? 1)) / (getTotalSeconds ?? 1) * 100;
          setPercentComplete(value: percentComplete, isPriorityOverride: true);

          double totalSeconds = ((getTotalSeconds ?? 0) - (getTotalRemainingSeconds ?? 0)).abs();

          if (kDebugMode) {
            print('totalSeconds: $totalSeconds');
          }

          /// -----
          /// TODO: PhaseSS01
          /// -----
          if (totalSeconds == 1) {
            // playRandomSFX();

            if (kDebugMode) {
              print('[onStart_PhaseSS01_AsShow]');
            }

            getCurrentVocabularyItem?.getCurrentVocabularyItemList?.add(this);
            setIsActive(value: true, isPriorityOverride: true);

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: getVocabularyDataModel?.getIsExampleOnLeft, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: getVocabularyDataModel?.getIsExampleOnRight, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsShowExampleOnSide(value: false, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.setPronunciationUK(value: getVocabularyDataModel?.getPronunciationUK, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setPronunciationUS(value: getVocabularyDataModel?.getPronunciationUS, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(value: getVocabularyDataModel?.getTopicSpecificMeaningInEng, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsSimplifyType(value: getVocabularyDataModel?.getIsSimplifyType, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.setVocabularyExampleConversation(value: getVocabularyDataModel?.getVocabularyExampleConversation, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setVocabularyInterestingKnowledgeConversation(value: getVocabularyDataModel?.getVocabularyInterestingKnowledgeConversation, isPriorityOverride: true);

            /// -----
            /// TODO:
            /// -----
            if (getVocabularyDataModel?.getIsHasHelpfulStudyAdvice == true) {
              getCurrentHelpfulStudyAdvice?.setTitle(value: getVocabularyDataModel?.getHelpfulStudyAdvice?.getTitle, isPriorityOverride: true);
              getCurrentHelpfulStudyAdvice?.setSentenceEng(value: getVocabularyDataModel?.getHelpfulStudyAdvice?.getSentenceEng, isPriorityOverride: true);
              getCurrentHelpfulStudyAdvice?.setSentenceVie(value: getVocabularyDataModel?.getHelpfulStudyAdvice?.getSentenceVie, isPriorityOverride: true);
            }

            if (getVocabularyDataModel?.getIsHasHelpfulStudyAdviceRelatedToTopic == true) {
              getCurrentHelpfulStudyAdviceRelatedToTopic?.setTitle(value: getVocabularyDataModel?.getHelpfulStudyAdviceRelatedToTopic?.getTitle, isPriorityOverride: true);
              getCurrentHelpfulStudyAdviceRelatedToTopic?.setSentenceEng(value: getVocabularyDataModel?.getHelpfulStudyAdviceRelatedToTopic?.getSentenceEng, isPriorityOverride: true);
              getCurrentHelpfulStudyAdviceRelatedToTopic?.setSentenceVie(value: getVocabularyDataModel?.getHelpfulStudyAdviceRelatedToTopic?.getSentenceVie, isPriorityOverride: true);
            }

            ///
            getSequentialExecutionController?.getVocabularyListFeature?.onActivateWindow();

            onStartPhaseSS01AsShow?.call();
          }
          if (totalSeconds == 29) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS01_AsShow]');
            }

            onCompletedPhaseSS01AsShow?.call();
          }

          /// -----
          /// TODO:
          /// -----
          if (totalSeconds == 2) {
            if (kDebugMode) {
              print('[onStart_]');
            }

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setWord(value: getVocabularyDataModel?.getWord, isPriorityOverride: true);
          }
          if (totalSeconds == 3) {
            if (kDebugMode) {
              print('[onStart_]');
            }

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsNoun(value: getVocabularyDataModel?.getIsNoun, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsPronoun(value: getVocabularyDataModel?.getIsPronoun, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsVerb(value: getVocabularyDataModel?.getIsVerb, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsAdjective(value: getVocabularyDataModel?.getIsAdjective, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsAdverb(value: getVocabularyDataModel?.getIsAdverb, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsPreposition(value: getVocabularyDataModel?.getIsPreposition, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsConjunction(value: getVocabularyDataModel?.getIsConjunction, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsInterjection(value: getVocabularyDataModel?.getIsInterjection, isPriorityOverride: true);
          }
          if (totalSeconds == 4) {
            if (kDebugMode) {
              print('[onStart_]');
            }

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setTopicSpecificMeaning(value: getVocabularyDataModel?.getTopicSpecificMeaning, isPriorityOverride: true);
          }

          /// -----
          /// TODO: PhaseSS01A
          /// -----
          if (totalSeconds == 5) {
            if (kDebugMode) {
              print('[onStart_PhaseSS01A]');
            }

            ///
            getSequentialExecutionController?.getVocabularySubjectFeature?.onDeactivateWindow();
            getSequentialExecutionController?.getBlackboardFeature?.onDeactivateWindow();
          }
          if (totalSeconds == 6) {
            if (kDebugMode) {
              print('[onStart_PhaseSS01A]');
            }

            ///
            getSequentialExecutionController?.getVocabularyEnglishDefinitionFeature?.onActivateWindow();
          }
          if (totalSeconds == 7) {
            // playRandomSFX();
            playRandomSFXAudioPlayer();
          }

          /// -----
          /// TODO: PhaseSS01A
          /// -----
          if (totalSeconds == 220) {
            if (kDebugMode) {
              print('[onStart_PhaseSS01A]');
            }

            ///
            getSequentialExecutionController?.getVocabularyEnglishDefinitionFeature?.onDeactivateWindow();
          }
          if (totalSeconds == 221) {
            if (kDebugMode) {
              print('[onStart_PhaseSS01A]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.setPronunciationUK(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setPronunciationUS(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(value: '', isPriorityOverride: true);

            ///
            getSequentialExecutionController?.getBlackboardFeature?.onActivateWindow();
            getSequentialExecutionController?.getVocabularySubjectFeature?.onActivateWindow();
          }

          /// -----
          /// TODO: PhaseSS02
          /// -----
          if (totalSeconds == 30) {
            if (kDebugMode) {
              print('[onStart_PhaseSS02_AsExampleSentenceSS01]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsShowExampleOnSide(value: true, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.getEngSentence, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.getVieSentence, isPriorityOverride: true);

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: getVocabularyDataModel?.getIsExampleOnLeft, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: getVocabularyDataModel?.getIsExampleOnRight, isPriorityOverride: true);

            onStartPhaseSS02AsExampleSentenceSS01?.call();
          }
          if (totalSeconds == 69) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS02_AsExampleSentenceSS01]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: '', isPriorityOverride: true);

            onCompletedPhaseSS02AsExampleSentenceSS01?.call();
          }

          if (totalSeconds == 70) {
            if (kDebugMode) {
              print('[onStart_PhaseSS02_AsExampleSentenceSS02]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.getEngSentence, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.getVieSentence, isPriorityOverride: true);

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: getVocabularyDataModel?.getIsExampleOnLeft, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: getVocabularyDataModel?.getIsExampleOnRight, isPriorityOverride: true);

            onStartPhaseSS02AsExampleSentenceSS02?.call();
          }
          if (totalSeconds == 109) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS02_AsExampleSentenceSS02]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: '', isPriorityOverride: true);

            onCompletedPhaseSS02AsExampleSentenceSS02?.call();
          }

          if (totalSeconds == 110) {
            if (kDebugMode) {
              print('[onStart_PhaseSS02_AsExampleSentenceSS03]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.getEngSentence, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.getVieSentence, isPriorityOverride: true);

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: getVocabularyDataModel?.getIsExampleOnLeft, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: getVocabularyDataModel?.getIsExampleOnRight, isPriorityOverride: true);

            onStartPhaseSS02AsExampleSentenceSS03?.call();
          }
          if (totalSeconds == 148) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS02_AsExampleSentenceSS03]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setEngSentence(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleSentence?.setVieSentence(value: '', isPriorityOverride: true);

            /// TODO: Close Examples
            // getCurrentVocabularyItem?.getVocabularyDataModel?.setIsShowExampleOnSide(value: false, isPriorityOverride: true);
            // getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
            // getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

            onCompletedPhaseSS02AsExampleSentenceSS03?.call();
          }

          if (totalSeconds == 149) {
            /// TODO: Close Current Window
            getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
            getSequentialExecutionController?.getVocabularyListFeature?.onDeactivateWindow();
          }
          if (totalSeconds == 150) {
            /// TODO: Open Next Window

            getSequentialExecutionController?.getVocabularyParagraphFeature?.onActivateWindow();

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsSimplifyType(value: true, isPriorityOverride: true);

            ///
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsShowExampleOnSide(value: false, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);
          }

          /// -----
          /// TODO: PhaseSS02.1 : Các Khung Advice
          /// -----

          if (totalSeconds == 49) {
            // if (totalSeconds == 5) {
            if (getVocabularyDataModel?.getIsHasHelpfulStudyAdvice == true) {
              getSequentialExecutionController?.getVocabularyListFeature?.onDeactivateWindow();

              /// TEST
              // getSequentialExecutionController?.getHelpfulStudyAdviceFeature?.onActivateWindow();
            }
          }
          if (totalSeconds == 50) {
            if (getVocabularyDataModel?.getIsHasHelpfulStudyAdvice == true) {
              getSequentialExecutionController?.getHelpfulStudyAdviceFeature?.onActivateWindow();
            }
          }

          if (totalSeconds == 99) {
            getSequentialExecutionController?.getHelpfulStudyAdviceFeature?.onDeactivateWindow();
          }

          if (totalSeconds == 100) {
            if (getVocabularyDataModel?.getIsHasHelpfulStudyAdviceRelatedToTopic == true) {
              getSequentialExecutionController?.getHelpfulStudyAdviceRelatedToTopicFeature?.onActivateWindow();
            }
          }
          if (totalSeconds == 149) {
            getSequentialExecutionController?.getHelpfulStudyAdviceRelatedToTopicFeature?.onDeactivateWindow();
          }

          /// -----
          /// TODO: PhaseSS03
          /// -----
          if (totalSeconds == 151) {
            if (kDebugMode) {
              print('[onStart_PhaseSS03_AsExampleParagraphSS01]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getEngSentenceSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getEngSentenceSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getEngSentenceSS03, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getInsightVocabSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getInsightVocabSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getInsightVocabSS03, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.getInsightVocabSS04, isPriorityOverride: true);

            onStartPhaseSS03AsExampleParagraphSS01?.call();
          }
          if (totalSeconds == 179) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS03_AsExampleParagraphSS01]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: '', isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: '', isPriorityOverride: true);

            onCompletedPhaseSS03AsExampleParagraphSS01?.call();
          }

          if (totalSeconds == 180) {
            if (kDebugMode) {
              print('[onStart_PhaseSS03_AsExampleParagraphSS02]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getEngSentenceSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getEngSentenceSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getEngSentenceSS03, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getInsightVocabSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getInsightVocabSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getInsightVocabSS03, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.getInsightVocabSS04, isPriorityOverride: true);

            onStartPhaseSS03AsExampleParagraphSS02?.call();
          }
          if (totalSeconds == 209) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS03_AsExampleParagraphSS02]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: '', isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: '', isPriorityOverride: true);

            onCompletedPhaseSS03AsExampleParagraphSS02?.call();
          }

          if (totalSeconds == 210) {
            if (kDebugMode) {
              print('[onStart_PhaseSS03_AsExampleParagraphSS03]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getTitle, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getEngSentenceSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getEngSentenceSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getEngSentenceSS03, isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getInsightVocabSS01, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getInsightVocabSS02, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getInsightVocabSS03, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.getInsightVocabSS04, isPriorityOverride: true);

            onStartPhaseSS03AsExampleParagraphSS03?.call();
          }
          if (totalSeconds == 238) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS03_AsExampleParagraphSS03]');
            }

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setTitle(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setEngSentenceSS03(value: '', isPriorityOverride: true);

            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS01(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS02(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS03(value: '', isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.getCurrentVocabularyExampleParagraph?.setInsightVocabSS04(value: '', isPriorityOverride: true);

            onCompletedPhaseSS03AsExampleParagraphSS03?.call();
          }

          if (totalSeconds == 239) {
            /// TODO: Close Current Window
            getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();
          }
          if (totalSeconds == 240) {
            /// TODO: Open Next Window

            getSequentialExecutionController?.getVocabularyConversationFeature?.onActivateWindow();
          }

          /// -----
          /// TODO: PhaseSS04
          /// -----
          if (totalSeconds == 241) {
            if (kDebugMode) {
              print('[onStart_PhaseSS04_AsExampleConversation]');
            }

            onStartPhaseSS04AsExampleConversation?.call();
          }
          if (totalSeconds == 299) {
            if (kDebugMode) {
              print('[onCompleted_PhaseSS04_AsExampleConversation]');
            }

            getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();

            onCompletedPhaseSS04AsExampleConversation?.call();
          }

          /// -----
          /// TODO: PhaseSS05
          /// -----

          if (totalSeconds == 300) {
            getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
            // getSequentialExecutionController?.getVocabularyListOverallFeature?.onActivateWindow();
            getSequentialExecutionController?.getInterestingKnowledgeConversationFeature?.onActivateWindow();
          }

          if (totalSeconds == 302) {
            ///
            if (kDebugMode) {
              print('a');
            }
          }

          if (totalSeconds == 329) {
            /// TODO: Open Next Window

            // getSequentialExecutionController?.getVocabularyListOverallFeature?.onDeactivateWindow();
            getSequentialExecutionController?.getInterestingKnowledgeConversationFeature?.onDeactivateWindow();
          }

          if (totalSeconds == 330) {
            /// TODO: Open Next Window

            setIsActive(value: false, isPriorityOverride: true);

            /// TODO: Tuyệt đối quan trọng => Mở comment
            ///
            /// TODO: RESET
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsNoun(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsPronoun(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsVerb(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsAdjective(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsAdverb(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsPreposition(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsConjunction(value: null, isPriorityOverride: true);
            getCurrentVocabularyItem?.getVocabularyDataModel?.setIsInterjection(value: null, isPriorityOverride: true);
          }
        } else if ((getTotalRemainingSeconds ?? 0) == 0) {
          getStatus?.setStatusComplete();

          ///
          setPercentComplete(value: 100, isPriorityOverride: true);

          ///
          onComplete?.call();
        }

        int totalRemainingMinutes = (getTotalRemainingSeconds ?? 0) ~/ 60;
        setTotalRemainingMinutes(value: totalRemainingMinutes.toDouble(), isPriorityOverride: true);

        if (kDebugMode) {
          print((getTotalRemainingSeconds ?? 1));
        }
      }
    }
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

      setTotalSeconds(value: (getTotalMinutes ?? 0) * 60);
      setTotalRemainingSeconds(value: getTotalSeconds);

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

      setVocabularyDataModel(value: VocabularyDataModel(), isPriorityOverride: true);

      setStatus(value: VocabularyStatus.inActive(), isPriorityOverride: true);

      setCurrentVocabularyItemList(value: [], isPriorityOverride: true);
      setTopicVocabularyItemList(value: [], isPriorityOverride: true);

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

      await getVocabularyDataModel?.onSetupRoot();
      await getStatus?.onSetupRoot();
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

      await getVocabularyDataModel?.onInitRoot();
      await getStatus?.onInitRoot();
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
