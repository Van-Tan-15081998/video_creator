import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_data_model.dart';
import 'package:frame_creator_v2/features/01_feature_formats/01_memory_game_feature/memory_game_board/models/data/memory_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class MemoryTime with ExecutionCore {
  MemoryTime({required SystemStateManagement? systemStateManagement, required SequentialExecutionController? sequentialExecutionController}) {
    setSystemStateManagement(value: systemStateManagement);
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

  /// -----
  /// TODO: Dùng Để Lấy Thông Tin Cho Mọi Màn Hình Liên Quan
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
  /// TODO: Hiển Thị Tại Màn Hình Scene
  /// -----
  MemoryItem? _currentMemoryItemForStart;
  MemoryItem? get getCurrentMemoryItemForStart => _currentMemoryItemForStart;
  void setCurrentMemoryItemForStart({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentMemoryItemForStart = value;
    } else {
      _currentMemoryItemForStart ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Ngăn Xếp => Dùng Nhận Biết Tổng Số Lượng Đến Thời Điểm Hiện Tại
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
  /// TODO: Dùng Để Chạy Chữ
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

  void clearStack() {
    if ((getCurrentMemoryItemStack?.length ?? 0) >= 2) {
      getCurrentMemoryItemStack?.clear();
    }
  }

  bool isCanStartNewMemoryGame() {
    if ((getCurrentMemoryItemStack?.length ?? 0) < 2) {
      return true;
    }
    return false;
  }

  void continueStartNewMemoryGame() {
    clearStack();
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS001;
  MemoryItem? get getMemoryItemSS001 => _memoryItemSS001;
  void setMemoryItemSS001({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS001 = value;
    } else {
      _memoryItemSS001 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS002;
  MemoryItem? get getMemoryItemSS002 => _memoryItemSS002;
  void setMemoryItemSS002({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS002 = value;
    } else {
      _memoryItemSS002 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS003;
  MemoryItem? get getMemoryItemSS003 => _memoryItemSS003;
  void setMemoryItemSS003({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS003 = value;
    } else {
      _memoryItemSS003 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS004;
  MemoryItem? get getMemoryItemSS004 => _memoryItemSS004;
  void setMemoryItemSS004({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS004 = value;
    } else {
      _memoryItemSS004 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS005;
  MemoryItem? get getMemoryItemSS005 => _memoryItemSS005;
  void setMemoryItemSS005({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS005 = value;
    } else {
      _memoryItemSS005 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS006;
  MemoryItem? get getMemoryItemSS006 => _memoryItemSS006;
  void setMemoryItemSS006({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS006 = value;
    } else {
      _memoryItemSS006 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS007;
  MemoryItem? get getMemoryItemSS007 => _memoryItemSS007;
  void setMemoryItemSS007({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS007 = value;
    } else {
      _memoryItemSS007 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS008;
  MemoryItem? get getMemoryItemSS008 => _memoryItemSS008;
  void setMemoryItemSS008({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS008 = value;
    } else {
      _memoryItemSS008 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS009;
  MemoryItem? get getMemoryItemSS009 => _memoryItemSS009;
  void setMemoryItemSS009({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS009 = value;
    } else {
      _memoryItemSS009 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS010;
  MemoryItem? get getMemoryItemSS010 => _memoryItemSS010;
  void setMemoryItemSS010({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS010 = value;
    } else {
      _memoryItemSS010 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS011;
  MemoryItem? get getMemoryItemSS011 => _memoryItemSS011;
  void setMemoryItemSS011({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS011 = value;
    } else {
      _memoryItemSS011 ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  MemoryItem? _memoryItemSS012;
  MemoryItem? get getMemoryItemSS012 => _memoryItemSS012;
  void setMemoryItemSS012({required MemoryItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _memoryItemSS012 = value;
    } else {
      _memoryItemSS012 ??= value;
    }

    ///
    return;
  }

  void onUpdate() {
    if ((getCurrentMemoryItemStack?.length ?? 0) <= 2) {
      getMemoryItemSS001?.onUpdate();
      getMemoryItemSS002?.onUpdate();
      getMemoryItemSS003?.onUpdate();
      getMemoryItemSS004?.onUpdate();
      getMemoryItemSS005?.onUpdate();
      getMemoryItemSS006?.onUpdate();
      getMemoryItemSS007?.onUpdate();
      getMemoryItemSS008?.onUpdate();
      getMemoryItemSS009?.onUpdate();
      getMemoryItemSS010?.onUpdate();
      getMemoryItemSS011?.onUpdate();
      getMemoryItemSS012?.onUpdate();
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

      setCurrentMemoryItemStack(value: [], isPriorityOverride: true);

      setCurrentMemoryItem(
        value: MemoryItem(
          id: '[CURRENT_MEMORY_GAME]',
          totalMinutes: 12,
          currentMemoryItem: null,
          currentMemoryWordUnit: null,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }
          },
        ),
        isPriorityOverride: true,
      );
      setCurrentMemoryWordUnit(value: MemoryWordUnit(id: '[CURRENT_MEMORY_GAME]'), isPriorityOverride: true);

      setMemoryItemSS001(
        value: MemoryItem(
          id: '[MG_SS001]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS01();
          },
        ),
        isPriorityOverride: true,
      );

      setMemoryItemSS002(
        value: MemoryItem(
          id: '[MG_SS002]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS02();
          },
        ),

        isPriorityOverride: true,
      );
      setMemoryItemSS003(
        value: MemoryItem(
          id: '[MG_SS003]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS03();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS004(
        value: MemoryItem(
          id: '[MG_SS004]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS04();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS005(
        value: MemoryItem(
          id: '[MG_SS005]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS05();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS006(
        value: MemoryItem(
          id: '[MG_SS006]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS06();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS007(
        value: MemoryItem(
          id: '[MG_SS007]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS07();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS008(
        value: MemoryItem(
          id: '[MG_SS008]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS08();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS009(
        value: MemoryItem(
          id: '[MG_SS009]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS09();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS010(
        value: MemoryItem(
          id: '[MG_SS010]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS10();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS011(
        value: MemoryItem(
          id: '[MG_SS011]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS11();
          },
        ),
        isPriorityOverride: true,
      );
      setMemoryItemSS012(
        value: MemoryItem(
          id: '[MG_SS012]',
          totalMinutes: 12,
          currentMemoryItem: getCurrentMemoryItem,
          currentMemoryWordUnit: getCurrentMemoryWordUnit,
          currentMemoryItemStack: getCurrentMemoryItemStack,
          onComplete: () {
            if (kDebugMode) {
              print('Complete CURRENT_MEMORY_GAME');
            }

            getSystemStateManagement?.getMemoryScript?.onCompleteMemoryGameBoardSS12();
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

      getCurrentMemoryItem?.onSetupRoot();

      getMemoryItemSS001?.onSetupRoot();
      getMemoryItemSS002?.onSetupRoot();
      getMemoryItemSS003?.onSetupRoot();
      getMemoryItemSS004?.onSetupRoot();
      getMemoryItemSS005?.onSetupRoot();
      getMemoryItemSS006?.onSetupRoot();
      getMemoryItemSS007?.onSetupRoot();
      getMemoryItemSS008?.onSetupRoot();
      getMemoryItemSS009?.onSetupRoot();
      getMemoryItemSS010?.onSetupRoot();
      getMemoryItemSS011?.onSetupRoot();
      getMemoryItemSS012?.onSetupRoot();
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

      getCurrentMemoryItem?.onInitRoot();

      getMemoryItemSS001?.onInitRoot();
      getMemoryItemSS002?.onInitRoot();
      getMemoryItemSS003?.onInitRoot();
      getMemoryItemSS004?.onInitRoot();
      getMemoryItemSS005?.onInitRoot();
      getMemoryItemSS006?.onInitRoot();
      getMemoryItemSS007?.onInitRoot();
      getMemoryItemSS008?.onInitRoot();
      getMemoryItemSS009?.onInitRoot();
      getMemoryItemSS010?.onInitRoot();
      getMemoryItemSS011?.onInitRoot();
      getMemoryItemSS012?.onInitRoot();
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
