import 'dart:math';

import 'package:flame_audio/flame_audio.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

class MusicAndSound with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  bool? _isPlayingVocabularyMusic;
  bool? get getIsPlayingVocabularyMusic => _isPlayingVocabularyMusic;
  void setIsPlayingVocabularyMusic({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPlayingVocabularyMusic = value;
    } else {
      _isPlayingVocabularyMusic ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isFixedBackgroundMusicVolume;
  bool? get getIsFixedBackgroundMusicVolume => _isFixedBackgroundMusicVolume;
  void setIsFixedBackgroundMusicVolume({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isFixedBackgroundMusicVolume = value;
    } else {
      _isFixedBackgroundMusicVolume ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  double? _currentBackgroundMusicVolume;
  double? get getCurrentBackgroundMusicVolume => _currentBackgroundMusicVolume;
  void setCurrentBackgroundMusicVolume({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentBackgroundMusicVolume = value;
    } else {
      _currentBackgroundMusicVolume ??= value;
    }

    ///
    return;
  }

  final Random _random = Random();

  void onPlaySFXConversationSentenceAppear() {
    String nextSFX;
    nextSFX = sFXConversationSentenceAppear[_random.nextInt(sFXConversationSentenceAppear.length)];
    FlameAudio.play(nextSFX, volume: 0.45);
  }

  final List<String> sFXConversationSentenceAppear = [
    'sfx/monster_message/monster_message_01.mp3',
    'sfx/monster_message/monster_message_02.mp3',
    'sfx/monster_message/monster_message_03.mp3',
    'sfx/monster_message/monster_message_04.mp3',
    'sfx/monster_message/monster_message_05.mp3',
    'sfx/monster_message/monster_message_06.mp3',
    'sfx/monster_message/monster_message_07.mp3',
    'sfx/monster_message/monster_message_08.mp3',
    'sfx/monster_message/monster_message_09.mp3',
    'sfx/monster_message/monster_message_10.mp3',
    'sfx/monster_message/monster_message_11.mp3',
    'sfx/monster_message/monster_message_12.mp3',
    'sfx/monster_message/monster_message_13.mp3',
    'sfx/monster_message/monster_message_14.mp3',
    'sfx/monster_message/monster_message_15.mp3',
    'sfx/monster_message/monster_message_16.mp3',
    'sfx/monster_message/monster_message_17.mp3',
    'sfx/monster_message/monster_message_18.mp3',
    'sfx/monster_message/monster_message_19.mp3',
    'sfx/monster_message/monster_message_20.mp3',
  ];

  ///
  ///
  ///

  void onPlaySFXNewVocabularyAppear() {
    String nextSFX;
    nextSFX = sFXNewVocabularyAppear[_random.nextInt(sFXNewVocabularyAppear.length)];
    FlameAudio.play(nextSFX, volume: 0.45);
  }

  final List<String> sFXNewVocabularyAppear = [
    'sfx/new_vocabulary/bloop_1.mp3', //
    'sfx/new_vocabulary/bloop_2.mp3', //
    'sfx/new_vocabulary/bloop_3.mp3', //
    'sfx/new_vocabulary/bloop_4.mp3',
  ];

  ///
  ///
  ///

  void onPlaySFXSwingWhoosh() {
    String nextSFX;
    nextSFX = sFXSwingWhoosh[_random.nextInt(sFXSwingWhoosh.length)];
    FlameAudio.play(nextSFX, volume: 0.45);
  }

  final List<String> sFXSwingWhoosh = [
    'sfx/swing_whoosh/floraphonic_swing_whoosh_1.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_2.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_3.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_4.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_5.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_6.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_7.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_8.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_9.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_10.mp3', //
    'sfx/swing_whoosh/floraphonic_swing_whoosh_11.mp3', //
  ];

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
      setIsPlayingVocabularyMusic(value: false);

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
