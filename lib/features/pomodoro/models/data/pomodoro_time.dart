import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/pomodoro/models/data/pomodoro_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class PomodoroTime with ExecutionCore {
  PomodoroTime({required SystemStateManagement? systemStateManagement}) {
    setSystemStateManagement(value: systemStateManagement);
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
  PomodoroItem? _currentPomodoroItem;
  PomodoroItem? get getCurrentPomodoroItem => _currentPomodoroItem;
  void setCurrentPomodoroItem({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentPomodoroItem = value;
    } else {
      _currentPomodoroItem ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _stayFocusedSS01;
  PomodoroItem? get getStayFocusedSS01 => _stayFocusedSS01;
  void setStayFocusedSS01({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS01 = value;
    } else {
      _stayFocusedSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _stayFocusedSS02;
  PomodoroItem? get getStayFocusedSS02 => _stayFocusedSS02;
  void setStayFocusedSS02({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS02 = value;
    } else {
      _stayFocusedSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _stayFocusedSS03;
  PomodoroItem? get getStayFocusedSS03 => _stayFocusedSS03;
  void setStayFocusedSS03({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS03 = value;
    } else {
      _stayFocusedSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _stayFocusedSS04;
  PomodoroItem? get getStayFocusedSS04 => _stayFocusedSS04;
  void setStayFocusedSS04({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _stayFocusedSS04 = value;
    } else {
      _stayFocusedSS04 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _breakTimeSS01;
  PomodoroItem? get getBreakTimeSS01 => _breakTimeSS01;
  void setBreakTimeSS01({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS01 = value;
    } else {
      _breakTimeSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _breakTimeSS02;
  PomodoroItem? get getBreakTimeSS02 => _breakTimeSS02;
  void setBreakTimeSS02({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS02 = value;
    } else {
      _breakTimeSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _breakTimeSS03;
  PomodoroItem? get getBreakTimeSS03 => _breakTimeSS03;
  void setBreakTimeSS03({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS03 = value;
    } else {
      _breakTimeSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  PomodoroItem? _breakTimeSS04;
  PomodoroItem? get getBreakTimeSS04 => _breakTimeSS04;
  void setBreakTimeSS04({required PomodoroItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _breakTimeSS04 = value;
    } else {
      _breakTimeSS04 ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  bool? _isPaused;
  bool? get getIsPaused => _isPaused ?? false;
  void setIsPaused({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPaused = value;
    } else {
      _isPaused ??= value;
    }

    return;
  }

  void onUpdate() {
    if (getIsPaused == false) {
      getStayFocusedSS01?.onUpdate();
      getStayFocusedSS02?.onUpdate();
      getStayFocusedSS03?.onUpdate();
      getStayFocusedSS04?.onUpdate();

      getBreakTimeSS01?.onUpdate();
      getBreakTimeSS02?.onUpdate();
      getBreakTimeSS03?.onUpdate();
      getBreakTimeSS04?.onUpdate();
    }
  }

  void pause() {
    setIsPaused(value: true, isPriorityOverride: true);

    if (getIsPaused == true) {
      getStayFocusedSS01?.pause();
      getStayFocusedSS02?.pause();
      getStayFocusedSS03?.pause();
      getStayFocusedSS04?.pause();

      getBreakTimeSS01?.pause();
      getBreakTimeSS02?.pause();
      getBreakTimeSS03?.pause();
      getBreakTimeSS04?.pause();
    }
  }

  void resume() {
    setIsPaused(value: false, isPriorityOverride: true);

    if (getIsPaused == false) {
      getStayFocusedSS01?.resume();
      getStayFocusedSS02?.resume();
      getStayFocusedSS03?.resume();
      getStayFocusedSS04?.resume();

      getBreakTimeSS01?.resume();
      getBreakTimeSS02?.resume();
      getBreakTimeSS03?.resume();
      getBreakTimeSS04?.resume();
    }
  }

  void stop() {
    setIsPaused(value: true, isPriorityOverride: true);

    if (getIsPaused == true) {
      getStayFocusedSS01?.stop();
      getStayFocusedSS02?.stop();
      getStayFocusedSS03?.stop();
      getStayFocusedSS04?.stop();

      getBreakTimeSS01?.stop();
      getBreakTimeSS02?.stop();
      getBreakTimeSS03?.stop();
      getBreakTimeSS04?.stop();
    }
  }

  void start() {
    setIsPaused(value: false, isPriorityOverride: true);

    if (getIsPaused == false) {
      getStayFocusedSS01?.start();
      getStayFocusedSS02?.start();
      getStayFocusedSS03?.start();
      getStayFocusedSS04?.start();

      getBreakTimeSS01?.start();
      getBreakTimeSS02?.start();
      getBreakTimeSS03?.start();
      getBreakTimeSS04?.start();
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

      setCompletedCallbackFunctionStack(value: [], isPriorityOverride: true);

      setStayFocusedSS01(
        value: PomodoroItem(
          id: '[POMODORO_STAY_FOCUSED_SS01]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS01');
            }

            getBreakTimeSS01?.onStart();
            setCurrentPomodoroItem(value: getBreakTimeSS01, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS02(
        value: PomodoroItem(
          id: '[POMODORO_STAY_FOCUSED_SS02]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS02');
            }

            getBreakTimeSS02?.onStart();
            setCurrentPomodoroItem(value: getBreakTimeSS02, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS03(
        value: PomodoroItem(
          id: '[POMODORO_STAY_FOCUSED_SS03]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS03');
            }

            getBreakTimeSS03?.onStart();
            setCurrentPomodoroItem(value: getBreakTimeSS03, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setStayFocusedSS04(
        value: PomodoroItem(
          id: '[POMODORO_STAY_FOCUSED_SS04]',
          totalMinutes: 30,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_STAY_FOCUSED_SS04');
            }

            getBreakTimeSS04?.onStart();
            setCurrentPomodoroItem(value: getBreakTimeSS04, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );

      ///
      setBreakTimeSS01(
        value: PomodoroItem(
          id: '[POMODORO_BREAK_TIME_SS01]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS01');
            }

            getStayFocusedSS02?.onStart();
            setCurrentPomodoroItem(value: getStayFocusedSS02, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS02(
        value: PomodoroItem(
          id: '[POMODORO_BREAK_TIME_SS02]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS02');
            }

            getStayFocusedSS03?.onStart();
            setCurrentPomodoroItem(value: getStayFocusedSS03, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS03(
        value: PomodoroItem(
          id: '[POMODORO_BREAK_TIME_SS03]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS03');
            }

            getStayFocusedSS04?.onStart();
            setCurrentPomodoroItem(value: getStayFocusedSS04, isPriorityOverride: true);
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );
      setBreakTimeSS04(
        value: PomodoroItem(
          id: '[POMODORO_BREAK_TIME_SS04]',
          totalMinutes: 5,
          totalPrepareSeconds: 506,
          onComplete: () {
            if (kDebugMode) {
              print('Complete POMODORO_BREAK_TIME_SS04');
            }
          },
          completedCallbackFunctionStack: [],
        ),
        isPriorityOverride: true,
      );

      ///
      ///
      ///
      ///
      ///

      /// TODO: StayFocusedSS01
      getStayFocusedSS01?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 01:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 1, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'StayFocusedSS01 End At: 01:00:00');
        });
      });

      /// TODO: BreakTimeSS01
      getBreakTimeSS01?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 02:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 2, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'BreakTimeSS01 End At: 02:00:00');
        });
      });

      /// TODO: StayFocusedSS02
      getStayFocusedSS02?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 03:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 3, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'StayFocusedSS02 End At: 03:00:00');
        });
      });

      /// TODO: BreakTimeSS02
      getBreakTimeSS02?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 04:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 4, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'BreakTimeSS02 End At: 04:00:00');
        });
      });

      /// TODO: StayFocusedSS03
      getStayFocusedSS03?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 05:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 5, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'StayFocusedSS03 End At: 05:00:00');
        });
      });

      /// TODO: BreakTimeSS03
      getBreakTimeSS03?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 06:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 6, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'BreakTimeSS03 End At: 06:00:00');
        });
      });

      /// TODO: StayFocusedSS04
      getStayFocusedSS04?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 07:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 7, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'StayFocusedSS04 End At: 07:00:00');
        });
      });

      /// TODO: BreakTimeSS04
      getBreakTimeSS04?.getCompletedCallbackFunctionStack?.add(() {
        /// Dừng Chuyển Tiếp
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.pause();

        /// TODO: End At: 08:00:00
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalHours(value: 8, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setTotalMinutes(value: 0, isPriorityOverride: true);
        getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.setSeconds(value: 0, isPriorityOverride: true);

        /// Giả Lập Chuyển Tiếp
        Future.delayed(Duration(seconds: 1), () {
          getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.moveToNextExecution(markId: 'BreakTimeSS04 End At: 08:00:00');
        });
      });

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

      await getStayFocusedSS01?.onSetupRoot();
      await getStayFocusedSS02?.onSetupRoot();
      await getStayFocusedSS03?.onSetupRoot();
      await getStayFocusedSS04?.onSetupRoot();

      await getBreakTimeSS01?.onSetupRoot();
      await getBreakTimeSS02?.onSetupRoot();
      await getBreakTimeSS03?.onSetupRoot();
      await getBreakTimeSS04?.onSetupRoot();
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

      await getStayFocusedSS01?.onInitRoot();
      await getStayFocusedSS02?.onInitRoot();
      await getStayFocusedSS03?.onInitRoot();
      await getStayFocusedSS04?.onInitRoot();

      await getBreakTimeSS01?.onInitRoot();
      await getBreakTimeSS02?.onInitRoot();
      await getBreakTimeSS03?.onInitRoot();
      await getBreakTimeSS04?.onInitRoot();
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
