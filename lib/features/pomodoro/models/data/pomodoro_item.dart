import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/pomodoro/models/data/pomodoro_status.dart';

class PomodoroItem with ExecutionCore {
  PomodoroItem({required String? id, required List<VoidCallback?>? completedCallbackFunctionStack, required double? totalMinutes, required double? totalPrepareSeconds, required this.onComplete}) {
    setId(value: id, isPriorityOverride: true);
    setTotalMinutes(value: totalMinutes, isPriorityOverride: true);
    setTotalPrepareSeconds(value: totalPrepareSeconds, isPriorityOverride: true);
    setCompletedCallbackFunctionStack(value: completedCallbackFunctionStack, isPriorityOverride: true);
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

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VoidCallback?>? _completedCallbackFunctionStack;
  List<VoidCallback?>? get getCompletedCallbackFunctionStack => _completedCallbackFunctionStack;
  void setCompletedCallbackFunctionStack({required List<VoidCallback?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _completedCallbackFunctionStack = value;
    } else {
      _completedCallbackFunctionStack ??= value;
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
  double? _totalPrepareSeconds;
  double? get getTotalPrepareSeconds => _totalPrepareSeconds;
  void setTotalPrepareSeconds({required double? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalPrepareSeconds = value;
    } else {
      _totalPrepareSeconds ??= value;
    }

    setTotalRemainingSeconds(value: getTotalSeconds, isPriorityOverride: true);

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroStatus? _status;
  PomodoroStatus? get getStatus => _status;
  void setStatus({required PomodoroStatus? value, bool? isPriorityOverride}) {
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
  bool? _isPreparing;
  bool? get getIsPreparing => _isPreparing;
  void setIsPreparing({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPreparing = value;
    } else {
      _isPreparing ??= value;
    }

    return;
  }

  void prepare() {
    setIsPreparing(value: true, isPriorityOverride: true);
  }

  bool isPreparing() {
    if (getIsPreparing == true) {
      return true;
    }

    return false;
  }

  bool isCompletedPreparing() {
    if ((getTotalPrepareSeconds ?? 0) < 500) {
      return true;
    }

    return false;
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
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    if (getIsPaused == true) {
      ///
    } else if (getIsPaused == false) {
      /// Điều Kiện Tiên Quyết => Tổng Số Giây Của Giai Đoạn Chuẩn Bị Phải = 0
      if ((getTotalPrepareSeconds ?? 0) >= 500) {
        if (isPreparing() == true) {
          double currentTotalPrepareSeconds = (getTotalPrepareSeconds ?? 0) - 1;

          setTotalPrepareSeconds(value: currentTotalPrepareSeconds, isPriorityOverride: true);
        }
      } else if (getStatus?.isActive() == true) {
        if (isCompletedPreparing() == true) {
          if ((getTotalRemainingSeconds ?? 0) > 0) {
            double updateUpdate = (getTotalRemainingSeconds ?? 0) - 1;

            setTotalRemainingSeconds(value: updateUpdate, isPriorityOverride: true);

            ///
            double percentComplete = ((getTotalSeconds ?? 1) - (getTotalRemainingSeconds ?? 1)) / (getTotalSeconds ?? 1) * 100;
            setPercentComplete(value: percentComplete, isPriorityOverride: true);
          } else if ((getTotalRemainingSeconds ?? 0) == 0) {
            getStatus?.setStatusComplete();

            ///
            setPercentComplete(value: 100, isPriorityOverride: true);

            ///
            onComplete?.call();

            ///
            if (getCompletedCallbackFunctionStack?.isNotEmpty == true) {
              getCompletedCallbackFunctionStack?.first?.call();
            }
          }

          int totalRemainingMinutes = (getTotalRemainingSeconds ?? 0) ~/ 60;
          setTotalRemainingMinutes(value: totalRemainingMinutes.toDouble(), isPriorityOverride: true);

          if (kDebugMode) {
            // print((getTotalRemainingSeconds ?? 1));
          }
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

      setStatus(value: PomodoroStatus.inActive(), isPriorityOverride: true);

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
