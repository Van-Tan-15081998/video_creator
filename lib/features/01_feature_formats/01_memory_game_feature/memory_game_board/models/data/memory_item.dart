import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_status.dart';

class MemoryItem with ExecutionCore {
  MemoryItem({
    required String? id, //
    required double? totalMinutes,
    required MemoryItem? currentMemoryItem, //
    required List<MemoryItem>? currentMemoryItemStack, //
    required this.onComplete,
  }) {
    setId(value: id, isPriorityOverride: true);
    setTotalMinutes(value: totalMinutes, isPriorityOverride: true);
    setCurrentMemoryItem(value: currentMemoryItem, isPriorityOverride: true);
  }

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

    getMemoryDataModel?.setParentId(value: getId, isPriorityOverride: true);

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
  MemoryStatus? _status;
  MemoryStatus? get getStatus => _status;
  void setStatus({required MemoryStatus? value, bool? isPriorityOverride}) {
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
  MemoryDataModel? _memoryDataModel;
  MemoryDataModel? get getMemoryDataModel => _memoryDataModel;
  void setMemoryDataModel({required MemoryDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryDataModel = value;
    } else {
      _memoryDataModel ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _currentMemoryItem;
  MemoryItem? get getCurrentMemoryItem => _currentMemoryItem;
  void setCurrentMemoryItem({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryItem = value;
    } else {
      _currentMemoryItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<MemoryItem>? _currentMemoryItemStack;
  List<MemoryItem>? get getCurrentMemoryItemStack => _currentMemoryItemStack;
  void setCurrentMemoryItemStack({required List<MemoryItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryItemStack = value;
    } else {
      _currentMemoryItemStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<MemoryItem?>? _currentMemoryItemList;
  List<MemoryItem?>? get getCurrentMemoryItemList => _currentMemoryItemList;
  void setCurrentMemoryItemList({required List<MemoryItem?> value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryItemList = value;
    } else {
      _currentMemoryItemList ??= value;
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
    getCurrentMemoryItemStack?.add(this);
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

          if (totalSeconds == 1) {
            getCurrentMemoryItem?.getCurrentMemoryItemList?.add(this);
            setIsActive(value: true, isPriorityOverride: true);

            getCurrentMemoryItem?.setId(value: getId, isPriorityOverride: true);

            getCurrentMemoryItem?.getMemoryDataModel?.setTitle(value: getMemoryDataModel?.getTitle, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.setTopicSpecificImage(value: getMemoryDataModel?.getTopicSpecificImage, isPriorityOverride: true);

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.setMemoryWordUnitDataModel(value: getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel, isPriorityOverride: true);
          }

          /// -----
          /// TODO: PhaseSS01
          /// -----
          if (totalSeconds == 1) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.show();
          }

          if (totalSeconds == 5) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 10) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 15) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 20) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 25) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 30) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 35) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 40) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 45) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }

          if (totalSeconds == 50) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 55) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 60) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 65) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 70) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }
          if (totalSeconds == 75) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hide();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.show();
            });

            ///
          }

          if (totalSeconds == 80) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hide();

            ///
          }

          if (totalSeconds == 100) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hide();

            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hide();

            ///
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

      setMemoryDataModel(value: MemoryDataModel(parentId: getId), isPriorityOverride: true);

      setStatus(value: MemoryStatus.inActive(), isPriorityOverride: true);

      setCurrentMemoryItemList(value: [], isPriorityOverride: true);

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

      await getMemoryDataModel?.onSetupRoot();
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

      await getMemoryDataModel?.onInitRoot();
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
