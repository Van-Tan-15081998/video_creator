import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/helpful_study_advice_related_to_topic_animated_background_widget.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/state_managements/main_timeline/main_timeline_state_management.dart';
import 'package:frame_creator_v2/state_managements/mixins/feature_mixin.dart';
import 'package:frame_creator_v2/state_managements/music_and_sound/music_and_sound.dart';

class SystemStateManagement with ExecutionCore, FeatureMixin {
  /// -----
  /// TODO:
  /// -----
  MainTimelineStateManagement? _mainTimelineStateManagement;
  MainTimelineStateManagement? get getMainTimelineStateManagement => _mainTimelineStateManagement;
  void setMainTimelineStateManagement({required MainTimelineStateManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _mainTimelineStateManagement = value;
    } else {
      _mainTimelineStateManagement ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MusicAndSound? _musicAndSound;
  MusicAndSound? get getMusicAndSound => _musicAndSound;
  void setMusicAndSound({required MusicAndSound? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _musicAndSound = value;
    } else {
      _musicAndSound ??= value;
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
      setMainTimelineStateManagement(value: MainTimelineStateManagement());

      setMusicAndSound(value: MusicAndSound());
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
      await getMainTimelineStateManagement?.onSetupRoot();
      await getMusicAndSound?.onSetupRoot();
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
      await getMainTimelineStateManagement?.onInitRoot();
      await getMusicAndSound?.onInitRoot();
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
