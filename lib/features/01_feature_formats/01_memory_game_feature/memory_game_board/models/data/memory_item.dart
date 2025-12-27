import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_status.dart';

class MemoryItem with ExecutionCore {
  MemoryItem({
    required String? id, //
    required double? totalMinutes,
    required MemoryItem? currentMemoryItem, //
    required MemoryWordUnit? currentMemoryWordUnit, //
    required List<MemoryItem>? currentMemoryItemStack, //
    required this.onComplete,
  }) {
    setId(value: id, isPriorityOverride: true);
    setTotalMinutes(value: totalMinutes, isPriorityOverride: true);
    setCurrentMemoryItem(value: currentMemoryItem, isPriorityOverride: true);
    setCurrentMemoryWordUnit(value: currentMemoryWordUnit, isPriorityOverride: true);
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
  MemoryWordUnit? _currentMemoryWordUnit;
  MemoryWordUnit? get getCurrentMemoryWordUnit => _currentMemoryWordUnit;
  void setCurrentMemoryWordUnit({required MemoryWordUnit? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryWordUnit = value;
    } else {
      _currentMemoryWordUnit ??= value;
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
          if (totalSeconds == 30) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.show();

            getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel, isPriorityOverride: true);
          }

          if (totalSeconds == 35) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 40) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 45) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 50) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 55) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 60) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 65) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 70) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 85) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }

          if (totalSeconds == 90) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 95) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 100) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 105) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 110) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }
          if (totalSeconds == 115) {
            Future.delayed(Duration(seconds: 0), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hide();
              getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();
            });
            Future.delayed(Duration(seconds: 1), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.show();
              getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel, isPriorityOverride: true);
            });

            ///
          }

          if (totalSeconds == 120) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hide();
            getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();

            ///
          }

          // 130,165,200,235,270,305,340,375,410,445,480,515,550,585,620,655

          int hookTimeStartMemoryWordUnitSS01 = 130;
          int hookTimeStartMemoryWordUnitSS02 = 165;
          int hookTimeStartMemoryWordUnitSS03 = 200;
          int hookTimeStartMemoryWordUnitSS04 = 235;
          int hookTimeStartMemoryWordUnitSS05 = 270;
          int hookTimeStartMemoryWordUnitSS06 = 305;
          int hookTimeStartMemoryWordUnitSS07 = 340;
          int hookTimeStartMemoryWordUnitSS08 = 375;
          int hookTimeStartMemoryWordUnitSS09 = 410;
          int hookTimeStartMemoryWordUnitSS10 = 445;
          int hookTimeStartMemoryWordUnitSS11 = 480;
          int hookTimeStartMemoryWordUnitSS12 = 515;
          int hookTimeStartMemoryWordUnitSS13 = 550;
          int hookTimeStartMemoryWordUnitSS14 = 585;
          int hookTimeStartMemoryWordUnitSS15 = 620;
          int hookTimeStartMemoryWordUnitSS16 = 655;

          ///
          /// TODO: START MemoryWordUnit SS01
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS01) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS01 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS01 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS01 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS02
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS02) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS02 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS02 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS02 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS03
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS03) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS03 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS03 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS03 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS04
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS04) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS04 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS04 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS04 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS05
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS05) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS05 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS05 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS05 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS06
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS06) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS06 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS06 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS06 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS07
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS07) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS07 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS07 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS07 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS08
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS08) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS08 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS08 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS08 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS09
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS09) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS09 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS09 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS09 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS10
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS10) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS10 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS10 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS10 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS11
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS11) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS11 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS11 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS11 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS12
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS12) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS12 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS12 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS12 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS13
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS13) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS13 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS13 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS13 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS14
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS14) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS14 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS14 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS14 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS15
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS15) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS15 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS15 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS15 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          ///
          /// TODO: START MemoryWordUnit SS16
          ///
          if (totalSeconds == hookTimeStartMemoryWordUnitSS16) {
            onRandomMemoryWordUnit();

            ///
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS16 + 20) {
            /// Chuẩn Bị Show Đáp Án
            prepareShowAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS16 + 25) {
            /// Show Đáp Án
            showAnswer();
          }
          if (totalSeconds == hookTimeStartMemoryWordUnitSS16 + 30) {
            /// Về Trạng Thái Chuẩn Bị
            returnToPrepare();
          }

          if (totalSeconds == 900) {
            Future.delayed(Duration(milliseconds: 100), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 200), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 300), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 400), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 500), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 600), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hiddenUnderneath();
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
            Future.delayed(Duration(milliseconds: 700), () {
              getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            });
          }

          if (totalSeconds == 900) {
            _randomMemoryWordUnit?.getMemoryWordUnitDataModel?.setIsCompleteTotally(value: true, isPriorityOverride: true);
            _randomMemoryWordUnit?.getMemoryWordUnitDataModel?.showComplete();
          }

          if (totalSeconds == 900) {
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hiddenUnderneath();
            getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hiddenUnderneath();

            getCurrentMemoryWordUnit?.getMemoryWordUnitDataModel?.clear();

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

  void prepareShowAnswer() {
    Future.delayed(Duration(milliseconds: 100), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.hiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 700), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.hiddenUnderneath();
    });
  }

  void showAnswer() {
    _randomMemoryWordUnit?.getMemoryWordUnitDataModel?.setIsCompleteTotally(value: true, isPriorityOverride: true);
    _randomMemoryWordUnit?.getMemoryWordUnitDataModel?.showComplete();
  }

  void returnToPrepare() {
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    // getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.unHiddenUnderneath();

    Future.delayed(Duration(milliseconds: 700), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 600), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 500), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 400), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 300), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 200), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
    Future.delayed(Duration(milliseconds: 100), () {
      getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16?.getMemoryWordUnitDataModel?.unHiddenUnderneath();
    });
  }

  MemoryWordUnit? _randomMemoryWordUnit;
  void onRandomMemoryWordUnit() {
    try {
      List<MemoryWordUnit?> memoryWordUnitList = [
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS01,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS02,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS03,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS04,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS05,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS06,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS07,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS08,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS09,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS10,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS11,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS12,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS13,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS14,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS15,
        getCurrentMemoryItem?.getMemoryDataModel?.getMemoryWordUnitSS16,
      ];

      List<MemoryWordUnit?> memoryWordUnitListNew = [];

      for (MemoryWordUnit? item in memoryWordUnitList) {
        if (item?.getMemoryWordUnitDataModel?.getIsCompleteTotally != true) {
          memoryWordUnitListNew.add(item);
        }
      }

      final Random random = Random();

      _randomMemoryWordUnit = memoryWordUnitListNew[random.nextInt(memoryWordUnitListNew.length)];

      getCurrentMemoryWordUnit?.setMemoryWordUnitDataModel(value: _randomMemoryWordUnit?.getMemoryWordUnitDataModel, isPriorityOverride: true);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

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
