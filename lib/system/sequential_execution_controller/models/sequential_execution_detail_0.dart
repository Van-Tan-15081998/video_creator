import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class SequentialExecutionDetail0 with ExecutionCore {
  SequentialExecutionDetail0({required SequentialExecutionController? sequentialExecutionController}) {
    setSequentialExecutionController(value: sequentialExecutionController);
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

  void printTerminal({required String str}) {
    if (kDebugMode) {
      print(str);
    }
  }

  void onUpdate() {
    int totalHours = getSequentialExecutionController?.getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalHours ?? 0;
    int totalMinutes = getSequentialExecutionController?.getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getTotalMinutes ?? 0;
    int seconds = getSequentialExecutionController?.getSystemStateManagement?.getMainTimelineStateManagement?.getTimeline?.getSeconds ?? 0;

    /// TODO: 00:00:00
    if (totalHours == 0 && totalMinutes == 0 && seconds == 0) {
      printTerminal(str: '00:00:00');

      ///
    }
    /// TODO: 00:00:00
    else if (totalHours == 0 && totalMinutes == 0 && seconds == 30) {
      printTerminal(str: '00:00:30');

      ///
    }
    /// TODO: 00:01:00
    else if (totalHours == 0 && totalMinutes == 1 && seconds == 0) {
      printTerminal(str: '00:01:00');

      ///
    }
    /// TODO: 00:01:30
    else if (totalHours == 0 && totalMinutes == 1 && seconds == 30) {
      printTerminal(str: '00:01:30');

      ///
    }
    /// TODO: 00:02:00
    else if (totalHours == 0 && totalMinutes == 2 && seconds == 0) {
      printTerminal(str: '00:02:00');

      ///
    }
    /// TODO: 00:02:30
    else if (totalHours == 0 && totalMinutes == 2 && seconds == 30) {
      printTerminal(str: '00:02:30');

      ///
    }
    /// TODO: 00:03:00
    else if (totalHours == 0 && totalMinutes == 3 && seconds == 0) {
      printTerminal(str: '00:03:00');

      ///
    }
    /// TODO: 00:03:30
    else if (totalHours == 0 && totalMinutes == 3 && seconds == 30) {
      printTerminal(str: '00:03:30');

      ///
    }
    /// TODO: 00:04:00
    else if (totalHours == 0 && totalMinutes == 4 && seconds == 0) {
      printTerminal(str: '00:04:00');

      ///
    }
    /// TODO: 00:04:30
    else if (totalHours == 0 && totalMinutes == 4 && seconds == 30) {
      printTerminal(str: '00:04:30');

      ///
    }
    /// TODO: 00:05:00
    else if (totalHours == 0 && totalMinutes == 5 && seconds == 0) {
      printTerminal(str: '00:05:00');

      ///
    }
    /// TODO: 00:05:30
    else if (totalHours == 0 && totalMinutes == 5 && seconds == 30) {
      printTerminal(str: '00:05:30');

      ///
    }
    /// TODO: 00:06:00
    else if (totalHours == 0 && totalMinutes == 6 && seconds == 0) {
      printTerminal(str: '00:06:00');

      ///
    }
    /// TODO: 00:06:30
    else if (totalHours == 0 && totalMinutes == 6 && seconds == 30) {
      printTerminal(str: '00:06:30');

      ///
    }
    /// TODO: 00:07:00
    else if (totalHours == 0 && totalMinutes == 7 && seconds == 0) {
      printTerminal(str: '00:07:00');

      ///
    }
    /// TODO: 00:07:30
    else if (totalHours == 0 && totalMinutes == 7 && seconds == 30) {
      printTerminal(str: '00:07:30');

      ///
    }
    /// TODO: 00:08:00
    else if (totalHours == 0 && totalMinutes == 8 && seconds == 0) {
      printTerminal(str: '00:08:00');

      ///
    }
    /// TODO: 00:08:30
    else if (totalHours == 0 && totalMinutes == 8 && seconds == 30) {
      printTerminal(str: '00:08:30');

      ///
    }
    /// TODO: 00:09:00
    else if (totalHours == 0 && totalMinutes == 9 && seconds == 0) {
      printTerminal(str: '00:09:00');

      ///
    }
    /// TODO: 00:09:30
    else if (totalHours == 0 && totalMinutes == 9 && seconds == 30) {
      printTerminal(str: '00:09:30');

      ///
    }
    /// TODO: 00:10:00
    else if (totalHours == 0 && totalMinutes == 10 && seconds == 0) {
      printTerminal(str: '00:10:00');

      ///
    }
    /// TODO: 00:10:30
    else if (totalHours == 0 && totalMinutes == 10 && seconds == 30) {
      printTerminal(str: '00:10:30');

      ///
    }
    /// TODO: 00:11:00
    else if (totalHours == 0 && totalMinutes == 11 && seconds == 0) {
      printTerminal(str: '00:11:00');

      ///
    }
    /// TODO: 00:11:30
    else if (totalHours == 0 && totalMinutes == 11 && seconds == 30) {
      printTerminal(str: '00:11:30');

      ///
    }
    /// TODO: 00:12:00
    else if (totalHours == 0 && totalMinutes == 12 && seconds == 0) {
      printTerminal(str: '00:12:00');

      ///
    }
    /// TODO: 00:12:30
    else if (totalHours == 0 && totalMinutes == 12 && seconds == 30) {
      printTerminal(str: '00:12:30');

      ///
    }
    /// TODO: 00:13:00
    else if (totalHours == 0 && totalMinutes == 13 && seconds == 0) {
      printTerminal(str: '00:13:00');

      ///
    }
    /// TODO: 00:13:30
    else if (totalHours == 0 && totalMinutes == 13 && seconds == 30) {
      printTerminal(str: '00:13:30');

      ///
    }
    /// TODO: 00:14:00
    else if (totalHours == 0 && totalMinutes == 14 && seconds == 0) {
      printTerminal(str: '00:14:00');

      ///
    }
    /// TODO: 00:14:30
    else if (totalHours == 0 && totalMinutes == 14 && seconds == 30) {
      printTerminal(str: '00:14:30');

      ///
    }
    /// TODO: 00:15:00
    else if (totalHours == 0 && totalMinutes == 15 && seconds == 0) {
      printTerminal(str: '00:15:00');

      ///
    }
    /// TODO: 00:15:30
    else if (totalHours == 0 && totalMinutes == 15 && seconds == 30) {
      printTerminal(str: '00:15:30');

      ///
    }
    /// TODO: 00:16:00
    else if (totalHours == 0 && totalMinutes == 16 && seconds == 0) {
      printTerminal(str: '00:16:00');

      ///
    }
    /// TODO: 00:16:30
    else if (totalHours == 0 && totalMinutes == 16 && seconds == 30) {
      printTerminal(str: '00:16:30');

      ///
    }
    /// TODO: 00:17:00
    else if (totalHours == 0 && totalMinutes == 17 && seconds == 0) {
      printTerminal(str: '00:17:00');

      ///
    }
    /// TODO: 00:17:30
    else if (totalHours == 0 && totalMinutes == 17 && seconds == 30) {
      printTerminal(str: '00:17:30');

      ///
    }
    /// TODO: 00:18:00
    else if (totalHours == 0 && totalMinutes == 18 && seconds == 0) {
      printTerminal(str: '00:18:00');

      ///
    }
    /// TODO: 00:18:30
    else if (totalHours == 0 && totalMinutes == 18 && seconds == 30) {
      printTerminal(str: '00:18:30');

      ///
    }
    /// TODO: 00:19:00
    else if (totalHours == 0 && totalMinutes == 19 && seconds == 0) {
      printTerminal(str: '00:19:00');

      ///
    }
    /// TODO: 00:19:30
    else if (totalHours == 0 && totalMinutes == 19 && seconds == 30) {
      printTerminal(str: '00:19:30');

      ///
    }
    /// TODO: 00:20:00
    else if (totalHours == 0 && totalMinutes == 20 && seconds == 0) {
      printTerminal(str: '00:20:00');

      ///
    }
    /// TODO: 00:20:30
    else if (totalHours == 0 && totalMinutes == 20 && seconds == 30) {
      printTerminal(str: '00:20:30');

      ///
    }
    /// TODO: 00:21:00
    else if (totalHours == 0 && totalMinutes == 21 && seconds == 0) {
      printTerminal(str: '00:21:00');

      ///
    }
    /// TODO: 00:21:30
    else if (totalHours == 0 && totalMinutes == 21 && seconds == 30) {
      printTerminal(str: '00:21:30');

      ///
    }
    /// TODO: 00:22:00
    else if (totalHours == 0 && totalMinutes == 22 && seconds == 0) {
      printTerminal(str: '00:22:00');

      ///
    }
    /// TODO: 00:22:30
    else if (totalHours == 0 && totalMinutes == 22 && seconds == 30) {
      printTerminal(str: '00:22:30');

      ///
    }
    /// TODO: 00:23:00
    else if (totalHours == 0 && totalMinutes == 23 && seconds == 0) {
      printTerminal(str: '00:23:00');

      ///
    }
    /// TODO: 00:23:30
    else if (totalHours == 0 && totalMinutes == 23 && seconds == 30) {
      printTerminal(str: '00:23:30');

      ///
    }
    /// TODO: 00:24:00
    else if (totalHours == 0 && totalMinutes == 24 && seconds == 0) {
      printTerminal(str: '00:24:00');

      ///
    }
    /// TODO: 00:24:30
    else if (totalHours == 0 && totalMinutes == 24 && seconds == 30) {
      printTerminal(str: '00:24:30');

      ///
    }
    /// TODO: 00:25:00
    else if (totalHours == 0 && totalMinutes == 25 && seconds == 0) {
      printTerminal(str: '00:25:00');

      ///
    }
    /// TODO: 00:25:30
    else if (totalHours == 0 && totalMinutes == 25 && seconds == 30) {
      printTerminal(str: '00:25:30');

      ///
    }
    /// TODO: 00:26:00
    else if (totalHours == 0 && totalMinutes == 26 && seconds == 0) {
      printTerminal(str: '00:26:00');

      ///
    }
    /// TODO: 00:26:30
    else if (totalHours == 0 && totalMinutes == 26 && seconds == 30) {
      printTerminal(str: '00:26:30');

      ///
    }
    /// TODO: 00:27:00
    else if (totalHours == 0 && totalMinutes == 27 && seconds == 0) {
      printTerminal(str: '00:27:00');

      ///
    }
    /// TODO: 00:27:30
    else if (totalHours == 0 && totalMinutes == 27 && seconds == 30) {
      printTerminal(str: '00:27:30');

      ///
    }
    /// TODO: 00:28:00
    else if (totalHours == 0 && totalMinutes == 28 && seconds == 0) {
      printTerminal(str: '00:28:00');

      ///
    }
    /// TODO: 00:28:30
    else if (totalHours == 0 && totalMinutes == 28 && seconds == 30) {
      printTerminal(str: '00:28:30');

      ///
    }
    /// TODO: 00:29:00
    else if (totalHours == 0 && totalMinutes == 29 && seconds == 0) {
      printTerminal(str: '00:29:00');

      ///
    }
    /// TODO: 00:29:30
    else if (totalHours == 0 && totalMinutes == 29 && seconds == 30) {
      printTerminal(str: '00:29:30');

      ///
    }
    /// TODO: 00:30:00
    else if (totalHours == 0 && totalMinutes == 30 && seconds == 0) {
      printTerminal(str: '00:30:00');

      ///
    }
    /// TODO: 00:30:30
    else if (totalHours == 0 && totalMinutes == 30 && seconds == 30) {
      printTerminal(str: '00:30:30');

      ///
    }
    /// TODO: 00:31:00
    else if (totalHours == 0 && totalMinutes == 31 && seconds == 0) {
      printTerminal(str: '00:31:00');

      ///
    }
    /// TODO: 00:31:30
    else if (totalHours == 0 && totalMinutes == 31 && seconds == 30) {
      printTerminal(str: '00:31:30');

      ///
    }
    /// TODO: 00:32:00
    else if (totalHours == 0 && totalMinutes == 32 && seconds == 0) {
      printTerminal(str: '00:32:00');

      ///
    }
    /// TODO: 00:32:30
    else if (totalHours == 0 && totalMinutes == 32 && seconds == 30) {
      printTerminal(str: '00:32:30');

      ///
    }
    /// TODO: 00:33:00
    else if (totalHours == 0 && totalMinutes == 33 && seconds == 0) {
      printTerminal(str: '00:33:00');

      ///
    }
    /// TODO: 00:33:30
    else if (totalHours == 0 && totalMinutes == 33 && seconds == 30) {
      printTerminal(str: '00:33:30');

      ///
    }
    /// TODO: 00:34:00
    else if (totalHours == 0 && totalMinutes == 34 && seconds == 0) {
      printTerminal(str: '00:34:00');

      ///
    }
    /// TODO: 00:34:30
    else if (totalHours == 0 && totalMinutes == 34 && seconds == 30) {
      printTerminal(str: '00:34:30');

      ///
    }
    /// TODO: 00:35:00
    else if (totalHours == 0 && totalMinutes == 35 && seconds == 0) {
      printTerminal(str: '00:35:00');

      ///
    }
    /// TODO: 00:35:30
    else if (totalHours == 0 && totalMinutes == 35 && seconds == 30) {
      printTerminal(str: '00:35:30');

      ///
    }
    /// TODO: 00:36:00
    else if (totalHours == 0 && totalMinutes == 36 && seconds == 0) {
      printTerminal(str: '00:36:00');

      ///
    }
    /// TODO: 00:36:30
    else if (totalHours == 0 && totalMinutes == 36 && seconds == 30) {
      printTerminal(str: '00:36:30');

      ///
    }
    /// TODO: 00:37:00
    else if (totalHours == 0 && totalMinutes == 37 && seconds == 0) {
      printTerminal(str: '00:37:00');

      ///
    }
    /// TODO: 00:37:30
    else if (totalHours == 0 && totalMinutes == 37 && seconds == 30) {
      printTerminal(str: '00:37:30');

      ///
    }
    /// TODO: 00:38:00
    else if (totalHours == 0 && totalMinutes == 38 && seconds == 0) {
      printTerminal(str: '00:38:00');

      ///
    }
    /// TODO: 00:38:30
    else if (totalHours == 0 && totalMinutes == 38 && seconds == 30) {
      printTerminal(str: '00:38:30');

      ///
    }
    /// TODO: 00:39:00
    else if (totalHours == 0 && totalMinutes == 39 && seconds == 0) {
      printTerminal(str: '00:39:00');

      ///
    }
    /// TODO: 00:39:30
    else if (totalHours == 0 && totalMinutes == 39 && seconds == 30) {
      printTerminal(str: '00:39:30');

      ///
    }
    /// TODO: 00:40:00
    else if (totalHours == 0 && totalMinutes == 40 && seconds == 0) {
      printTerminal(str: '00:40:00');

      ///
    }
    /// TODO: 00:40:30
    else if (totalHours == 0 && totalMinutes == 40 && seconds == 30) {
      printTerminal(str: '00:40:30');

      ///
    }
    /// TODO: 00:41:00
    else if (totalHours == 0 && totalMinutes == 41 && seconds == 0) {
      printTerminal(str: '00:41:00');

      ///
    }
    /// TODO: 00:41:30
    else if (totalHours == 0 && totalMinutes == 41 && seconds == 30) {
      printTerminal(str: '00:41:30');

      ///
    }
    /// TODO: 00:42:00
    else if (totalHours == 0 && totalMinutes == 42 && seconds == 0) {
      printTerminal(str: '00:42:00');

      ///
    }
    /// TODO: 00:42:30
    else if (totalHours == 0 && totalMinutes == 42 && seconds == 30) {
      printTerminal(str: '00:42:30');

      ///
    }
    /// TODO: 00:43:00
    else if (totalHours == 0 && totalMinutes == 43 && seconds == 0) {
      printTerminal(str: '00:43:00');

      ///
    }
    /// TODO: 00:43:30
    else if (totalHours == 0 && totalMinutes == 43 && seconds == 30) {
      printTerminal(str: '00:43:30');

      ///
    }
    /// TODO: 00:44:00
    else if (totalHours == 0 && totalMinutes == 44 && seconds == 0) {
      printTerminal(str: '00:44:00');

      ///
    }
    /// TODO: 00:44:30
    else if (totalHours == 0 && totalMinutes == 44 && seconds == 30) {
      printTerminal(str: '00:44:30');

      ///
    }
    /// TODO: 00:45:00
    else if (totalHours == 0 && totalMinutes == 45 && seconds == 0) {
      printTerminal(str: '00:45:00');

      ///
    }
    /// TODO: 00:45:30
    else if (totalHours == 0 && totalMinutes == 45 && seconds == 30) {
      printTerminal(str: '00:45:30');

      ///
    }
    /// TODO: 00:46:00
    else if (totalHours == 0 && totalMinutes == 46 && seconds == 0) {
      printTerminal(str: '00:46:00');

      ///
    }
    /// TODO: 00:46:30
    else if (totalHours == 0 && totalMinutes == 46 && seconds == 30) {
      printTerminal(str: '00:46:30');

      ///
    }
    /// TODO: 00:47:00
    else if (totalHours == 0 && totalMinutes == 47 && seconds == 0) {
      printTerminal(str: '00:47:00');

      ///
    }
    /// TODO: 00:47:30
    else if (totalHours == 0 && totalMinutes == 47 && seconds == 30) {
      printTerminal(str: '00:47:30');

      ///
    }
    /// TODO: 00:48:00
    else if (totalHours == 0 && totalMinutes == 48 && seconds == 0) {
      printTerminal(str: '00:48:00');

      ///
    }
    /// TODO: 00:48:30
    else if (totalHours == 0 && totalMinutes == 48 && seconds == 30) {
      printTerminal(str: '00:48:30');

      ///
    }
    /// TODO: 00:49:00
    else if (totalHours == 0 && totalMinutes == 49 && seconds == 0) {
      printTerminal(str: '00:49:00');

      ///
    }
    /// TODO: 00:49:30
    else if (totalHours == 0 && totalMinutes == 49 && seconds == 30) {
      printTerminal(str: '00:49:30');

      ///
    }
    /// TODO: 00:50:00
    else if (totalHours == 0 && totalMinutes == 50 && seconds == 0) {
      printTerminal(str: '00:50:00');

      ///
    }
    /// TODO: 00:50:30
    else if (totalHours == 0 && totalMinutes == 50 && seconds == 30) {
      printTerminal(str: '00:50:30');

      ///
    }
    /// TODO: 00:51:00
    else if (totalHours == 0 && totalMinutes == 51 && seconds == 0) {
      printTerminal(str: '00:51:00');

      ///
    }
    /// TODO: 00:51:30
    else if (totalHours == 0 && totalMinutes == 51 && seconds == 30) {
      printTerminal(str: '00:51:30');

      ///
    }
    /// TODO: 00:52:00
    else if (totalHours == 0 && totalMinutes == 52 && seconds == 0) {
      printTerminal(str: '00:52:00');

      ///
    }
    /// TODO: 00:52:30
    else if (totalHours == 0 && totalMinutes == 52 && seconds == 30) {
      printTerminal(str: '00:52:30');

      ///
    }
    /// TODO: 00:53:00
    else if (totalHours == 0 && totalMinutes == 53 && seconds == 0) {
      printTerminal(str: '00:53:00');

      ///
    }
    /// TODO: 00:53:30
    else if (totalHours == 0 && totalMinutes == 53 && seconds == 30) {
      printTerminal(str: '00:53:30');

      ///
    }
    /// TODO: 00:54:00
    else if (totalHours == 0 && totalMinutes == 54 && seconds == 0) {
      printTerminal(str: '00:54:00');

      ///
    }
    /// TODO: 00:54:30
    else if (totalHours == 0 && totalMinutes == 54 && seconds == 30) {
      printTerminal(str: '00:54:30');

      ///
    }
    /// TODO: 00:55:00
    else if (totalHours == 0 && totalMinutes == 55 && seconds == 0) {
      printTerminal(str: '00:55:00');

      ///
    }
    /// TODO: 00:55:30
    else if (totalHours == 0 && totalMinutes == 55 && seconds == 30) {
      printTerminal(str: '00:55:30');

      ///
    }
    /// TODO: 00:56:00
    else if (totalHours == 0 && totalMinutes == 56 && seconds == 0) {
      printTerminal(str: '00:56:00');

      ///
    }
    /// TODO: 00:56:30
    else if (totalHours == 0 && totalMinutes == 56 && seconds == 30) {
      printTerminal(str: '00:56:30');

      ///
    }
    /// TODO: 00:57:00
    else if (totalHours == 0 && totalMinutes == 57 && seconds == 0) {
      printTerminal(str: '00:57:00');

      ///
    }
    /// TODO: 00:57:30
    else if (totalHours == 0 && totalMinutes == 57 && seconds == 30) {
      printTerminal(str: '00:57:30');

      ///
    }
    /// TODO: 00:58:00
    else if (totalHours == 0 && totalMinutes == 58 && seconds == 0) {
      printTerminal(str: '00:58:00');

      ///
    }
    /// TODO: 00:58:30
    else if (totalHours == 0 && totalMinutes == 58 && seconds == 30) {
      printTerminal(str: '00:58:30');

      ///
    }
    /// TODO: 00:59:00
    else if (totalHours == 0 && totalMinutes == 59 && seconds == 0) {
      printTerminal(str: '00:59:00');

      ///
    }
    /// TODO: 00:59:30
    else if (totalHours == 0 && totalMinutes == 59 && seconds == 30) {
      printTerminal(str: '00:59:30');

      ///
    }
    /// TODO: 00:60:00
    else if (totalHours == 0 && totalMinutes == 60 && seconds == 0) {
      printTerminal(str: '00:60:00');

      ///
    }
    /// TODO: 00:60:30
    else if (totalHours == 0 && totalMinutes == 60 && seconds == 30) {
      printTerminal(str: '00:60:30');

      ///
    }

    /// TODO: 01:00:00
    /// TODO: 01:00:00
    /// TODO: 01:00:00
    /// TODO: 01:00:00
    /// TODO: 01:00:00

    /// TODO: 01:00:00
    if (totalHours == 1 && totalMinutes == 0 && seconds == 0) {
      printTerminal(str: '01:00:00');

      ///
    }

    /// TODO: 01:00:30
    if (totalHours == 1 && totalMinutes == 0 && seconds == 30) {
      printTerminal(str: '01:00:30');

      ///
    }
    /// TODO: 01:01:00
    else if (totalHours == 1 && totalMinutes == 1 && seconds == 0) {
      printTerminal(str: '01:01:00');

      ///
    }
    /// TODO: 01:01:30
    else if (totalHours == 1 && totalMinutes == 1 && seconds == 30) {
      printTerminal(str: '01:01:30');

      ///
    }
    /// TODO: 01:02:00
    else if (totalHours == 1 && totalMinutes == 2 && seconds == 0) {
      printTerminal(str: '01:02:00');

      ///
    }
    /// TODO: 01:02:30
    else if (totalHours == 1 && totalMinutes == 2 && seconds == 30) {
      printTerminal(str: '01:02:30');

      ///
    }
    /// TODO: 01:03:00
    else if (totalHours == 1 && totalMinutes == 3 && seconds == 0) {
      printTerminal(str: '01:03:00');

      ///
    }
    /// TODO: 01:03:30
    else if (totalHours == 1 && totalMinutes == 3 && seconds == 30) {
      printTerminal(str: '01:03:30');

      ///
    }
    /// TODO: 01:04:00
    else if (totalHours == 1 && totalMinutes == 4 && seconds == 0) {
      printTerminal(str: '01:04:00');

      ///
    }
    /// TODO: 01:04:30
    else if (totalHours == 1 && totalMinutes == 4 && seconds == 30) {
      printTerminal(str: '01:04:30');

      ///
    }
    /// TODO: 01:05:00
    else if (totalHours == 1 && totalMinutes == 5 && seconds == 0) {
      printTerminal(str: '01:05:00');

      ///
    }
    /// TODO: 01:05:30
    else if (totalHours == 1 && totalMinutes == 5 && seconds == 30) {
      printTerminal(str: '01:05:30');

      ///
    }
    /// TODO: 01:06:00
    else if (totalHours == 1 && totalMinutes == 6 && seconds == 0) {
      printTerminal(str: '01:06:00');

      ///
    }
    /// TODO: 01:06:30
    else if (totalHours == 1 && totalMinutes == 6 && seconds == 30) {
      printTerminal(str: '01:06:30');

      ///
    }
    /// TODO: 01:07:00
    else if (totalHours == 1 && totalMinutes == 7 && seconds == 0) {
      printTerminal(str: '01:07:00');

      ///
    }
    /// TODO: 01:07:30
    else if (totalHours == 1 && totalMinutes == 7 && seconds == 30) {
      printTerminal(str: '01:07:30');

      ///
    }
    /// TODO: 01:08:00
    else if (totalHours == 1 && totalMinutes == 8 && seconds == 0) {
      printTerminal(str: '01:08:00');

      ///
    }
    /// TODO: 01:08:30
    else if (totalHours == 1 && totalMinutes == 8 && seconds == 30) {
      printTerminal(str: '01:08:30');

      ///
    }
    /// TODO: 01:09:00
    else if (totalHours == 1 && totalMinutes == 9 && seconds == 0) {
      printTerminal(str: '01:09:00');

      ///
    }
    /// TODO: 01:09:30
    else if (totalHours == 1 && totalMinutes == 9 && seconds == 30) {
      printTerminal(str: '01:09:30');

      ///
    }
    /// TODO: 01:10:00
    else if (totalHours == 1 && totalMinutes == 10 && seconds == 0) {
      printTerminal(str: '01:10:00');

      ///
    }
    /// TODO: 01:10:30
    else if (totalHours == 1 && totalMinutes == 10 && seconds == 30) {
      printTerminal(str: '01:10:30');

      ///
    }
    /// TODO: 01:11:00
    else if (totalHours == 1 && totalMinutes == 11 && seconds == 0) {
      printTerminal(str: '01:11:00');

      ///
    }
    /// TODO: 01:11:30
    else if (totalHours == 1 && totalMinutes == 11 && seconds == 30) {
      printTerminal(str: '01:11:30');

      ///
    }
    /// TODO: 01:12:00
    else if (totalHours == 1 && totalMinutes == 12 && seconds == 0) {
      printTerminal(str: '01:12:00');

      ///
    }
    /// TODO: 01:12:30
    else if (totalHours == 1 && totalMinutes == 12 && seconds == 30) {
      printTerminal(str: '01:12:30');

      ///
    }
    /// TODO: 01:13:00
    else if (totalHours == 1 && totalMinutes == 13 && seconds == 0) {
      printTerminal(str: '01:13:00');

      ///
    }
    /// TODO: 01:13:30
    else if (totalHours == 1 && totalMinutes == 13 && seconds == 30) {
      printTerminal(str: '01:13:30');

      ///
    }
    /// TODO: 01:14:00
    else if (totalHours == 1 && totalMinutes == 14 && seconds == 0) {
      printTerminal(str: '01:14:00');

      ///
    }
    /// TODO: 01:14:30
    else if (totalHours == 1 && totalMinutes == 14 && seconds == 30) {
      printTerminal(str: '01:14:30');

      ///
    }
    /// TODO: 01:15:00
    else if (totalHours == 1 && totalMinutes == 15 && seconds == 0) {
      printTerminal(str: '01:15:00');

      ///
    }
    /// TODO: 01:15:30
    else if (totalHours == 1 && totalMinutes == 15 && seconds == 30) {
      printTerminal(str: '01:15:30');

      ///
    }
    /// TODO: 01:16:00
    else if (totalHours == 1 && totalMinutes == 16 && seconds == 0) {
      printTerminal(str: '01:16:00');

      ///
    }
    /// TODO: 01:16:30
    else if (totalHours == 1 && totalMinutes == 16 && seconds == 30) {
      printTerminal(str: '01:16:30');

      ///
    }
    /// TODO: 01:17:00
    else if (totalHours == 1 && totalMinutes == 17 && seconds == 0) {
      printTerminal(str: '01:17:00');

      ///
    }
    /// TODO: 01:17:30
    else if (totalHours == 1 && totalMinutes == 17 && seconds == 30) {
      printTerminal(str: '01:17:30');

      ///
    }
    /// TODO: 01:18:00
    else if (totalHours == 1 && totalMinutes == 18 && seconds == 0) {
      printTerminal(str: '01:18:00');

      ///
    }
    /// TODO: 01:18:30
    else if (totalHours == 1 && totalMinutes == 18 && seconds == 30) {
      printTerminal(str: '01:18:30');

      ///
    }
    /// TODO: 01:19:00
    else if (totalHours == 1 && totalMinutes == 19 && seconds == 0) {
      printTerminal(str: '01:19:00');

      ///
    }
    /// TODO: 01:19:30
    else if (totalHours == 1 && totalMinutes == 19 && seconds == 30) {
      printTerminal(str: '01:19:30');

      ///
    }
    /// TODO: 01:20:00
    else if (totalHours == 1 && totalMinutes == 20 && seconds == 0) {
      printTerminal(str: '01:20:00');

      ///
    }
    /// TODO: 01:20:30
    else if (totalHours == 1 && totalMinutes == 20 && seconds == 30) {
      printTerminal(str: '01:20:30');

      ///
    }
    /// TODO: 01:21:00
    else if (totalHours == 1 && totalMinutes == 21 && seconds == 0) {
      printTerminal(str: '01:21:00');

      ///
    }
    /// TODO: 01:21:30
    else if (totalHours == 1 && totalMinutes == 21 && seconds == 30) {
      printTerminal(str: '01:21:30');

      ///
    }
    /// TODO: 01:22:00
    else if (totalHours == 1 && totalMinutes == 22 && seconds == 0) {
      printTerminal(str: '01:22:00');

      ///
    }
    /// TODO: 01:22:30
    else if (totalHours == 1 && totalMinutes == 22 && seconds == 30) {
      printTerminal(str: '01:22:30');

      ///
    }
    /// TODO: 01:23:00
    else if (totalHours == 1 && totalMinutes == 23 && seconds == 0) {
      printTerminal(str: '01:23:00');

      ///
    }
    /// TODO: 01:23:30
    else if (totalHours == 1 && totalMinutes == 23 && seconds == 30) {
      printTerminal(str: '01:23:30');

      ///
    }
    /// TODO: 01:24:00
    else if (totalHours == 1 && totalMinutes == 24 && seconds == 0) {
      printTerminal(str: '01:24:00');

      ///
    }
    /// TODO: 01:24:30
    else if (totalHours == 1 && totalMinutes == 24 && seconds == 30) {
      printTerminal(str: '01:24:30');

      ///
    }
    /// TODO: 01:25:00
    else if (totalHours == 1 && totalMinutes == 25 && seconds == 0) {
      printTerminal(str: '01:25:00');

      ///
    }
    /// TODO: 01:25:30
    else if (totalHours == 1 && totalMinutes == 25 && seconds == 30) {
      printTerminal(str: '01:25:30');

      ///
    }
    /// TODO: 01:26:00
    else if (totalHours == 1 && totalMinutes == 26 && seconds == 0) {
      printTerminal(str: '01:26:00');

      ///
    }
    /// TODO: 01:26:30
    else if (totalHours == 1 && totalMinutes == 26 && seconds == 30) {
      printTerminal(str: '01:26:30');

      ///
    }
    /// TODO: 01:27:00
    else if (totalHours == 1 && totalMinutes == 27 && seconds == 0) {
      printTerminal(str: '01:27:00');

      ///
    }
    /// TODO: 01:27:30
    else if (totalHours == 1 && totalMinutes == 27 && seconds == 30) {
      printTerminal(str: '01:27:30');

      ///
    }
    /// TODO: 01:28:00
    else if (totalHours == 1 && totalMinutes == 28 && seconds == 0) {
      printTerminal(str: '01:28:00');

      ///
    }
    /// TODO: 01:28:30
    else if (totalHours == 1 && totalMinutes == 28 && seconds == 30) {
      printTerminal(str: '01:28:30');

      ///
    }
    /// TODO: 01:29:00
    else if (totalHours == 1 && totalMinutes == 29 && seconds == 0) {
      printTerminal(str: '01:29:00');

      ///
    }
    /// TODO: 01:29:30
    else if (totalHours == 1 && totalMinutes == 29 && seconds == 30) {
      printTerminal(str: '01:29:30');

      ///
    }
    /// TODO: 01:30:00
    else if (totalHours == 1 && totalMinutes == 30 && seconds == 0) {
      printTerminal(str: '01:30:00');

      ///
    }
    /// TODO: 01:30:30
    else if (totalHours == 1 && totalMinutes == 30 && seconds == 30) {
      printTerminal(str: '01:30:30');

      ///
    }
    /// TODO: 01:31:00
    else if (totalHours == 1 && totalMinutes == 31 && seconds == 0) {
      printTerminal(str: '01:31:00');

      ///
    }
    /// TODO: 01:31:30
    else if (totalHours == 1 && totalMinutes == 31 && seconds == 30) {
      printTerminal(str: '01:31:30');

      ///
    }
    /// TODO: 01:32:00
    else if (totalHours == 1 && totalMinutes == 32 && seconds == 0) {
      printTerminal(str: '01:32:00');

      ///
    }
    /// TODO: 01:32:30
    else if (totalHours == 1 && totalMinutes == 32 && seconds == 30) {
      printTerminal(str: '01:32:30');

      ///
    }
    /// TODO: 01:33:00
    else if (totalHours == 1 && totalMinutes == 33 && seconds == 0) {
      printTerminal(str: '01:33:00');

      ///
    }
    /// TODO: 01:33:30
    else if (totalHours == 1 && totalMinutes == 33 && seconds == 30) {
      printTerminal(str: '01:33:30');

      ///
    }
    /// TODO: 01:34:00
    else if (totalHours == 1 && totalMinutes == 34 && seconds == 0) {
      printTerminal(str: '01:34:00');

      ///
    }
    /// TODO: 01:34:30
    else if (totalHours == 1 && totalMinutes == 34 && seconds == 30) {
      printTerminal(str: '01:34:30');

      ///
    }
    /// TODO: 01:35:00
    else if (totalHours == 1 && totalMinutes == 35 && seconds == 0) {
      printTerminal(str: '01:35:00');

      ///
    }
    /// TODO: 01:35:30
    else if (totalHours == 1 && totalMinutes == 35 && seconds == 30) {
      printTerminal(str: '01:35:30');

      ///
    }
    /// TODO: 01:36:00
    else if (totalHours == 1 && totalMinutes == 36 && seconds == 0) {
      printTerminal(str: '01:36:00');

      ///
    }
    /// TODO: 01:36:30
    else if (totalHours == 1 && totalMinutes == 36 && seconds == 30) {
      printTerminal(str: '01:36:30');

      ///
    }
    /// TODO: 01:37:00
    else if (totalHours == 1 && totalMinutes == 37 && seconds == 0) {
      printTerminal(str: '01:37:00');

      ///
    }
    /// TODO: 01:37:30
    else if (totalHours == 1 && totalMinutes == 37 && seconds == 30) {
      printTerminal(str: '01:37:30');

      ///
    }
    /// TODO: 01:38:00
    else if (totalHours == 1 && totalMinutes == 38 && seconds == 0) {
      printTerminal(str: '01:38:00');

      ///
    }
    /// TODO: 01:38:30
    else if (totalHours == 1 && totalMinutes == 38 && seconds == 30) {
      printTerminal(str: '01:38:30');

      ///
    }
    /// TODO: 01:39:00
    else if (totalHours == 1 && totalMinutes == 39 && seconds == 0) {
      printTerminal(str: '01:39:00');

      ///
    }
    /// TODO: 01:39:30
    else if (totalHours == 1 && totalMinutes == 39 && seconds == 30) {
      printTerminal(str: '01:39:30');

      ///
    }
    /// TODO: 01:40:00
    else if (totalHours == 1 && totalMinutes == 40 && seconds == 0) {
      printTerminal(str: '01:40:00');

      ///
    }
    /// TODO: 01:40:30
    else if (totalHours == 1 && totalMinutes == 40 && seconds == 30) {
      printTerminal(str: '01:40:30');

      ///
    }
    /// TODO: 01:41:00
    else if (totalHours == 1 && totalMinutes == 41 && seconds == 0) {
      printTerminal(str: '01:41:00');

      ///
    }
    /// TODO: 01:41:30
    else if (totalHours == 1 && totalMinutes == 41 && seconds == 30) {
      printTerminal(str: '01:41:30');

      ///
    }
    /// TODO: 01:42:00
    else if (totalHours == 1 && totalMinutes == 42 && seconds == 0) {
      printTerminal(str: '01:42:00');

      ///
    }
    /// TODO: 01:42:30
    else if (totalHours == 1 && totalMinutes == 42 && seconds == 30) {
      printTerminal(str: '01:42:30');

      ///
    }
    /// TODO: 01:43:00
    else if (totalHours == 1 && totalMinutes == 43 && seconds == 0) {
      printTerminal(str: '01:43:00');

      ///
    }
    /// TODO: 01:43:30
    else if (totalHours == 1 && totalMinutes == 43 && seconds == 30) {
      printTerminal(str: '01:43:30');

      ///
    }
    /// TODO: 01:44:00
    else if (totalHours == 1 && totalMinutes == 44 && seconds == 0) {
      printTerminal(str: '01:44:00');

      ///
    }
    /// TODO: 01:44:30
    else if (totalHours == 1 && totalMinutes == 44 && seconds == 30) {
      printTerminal(str: '01:44:30');

      ///
    }
    /// TODO: 01:45:00
    else if (totalHours == 1 && totalMinutes == 45 && seconds == 0) {
      printTerminal(str: '01:45:00');

      ///
    }
    /// TODO: 01:45:30
    else if (totalHours == 1 && totalMinutes == 45 && seconds == 30) {
      printTerminal(str: '01:45:30');

      ///
    }
    /// TODO: 01:46:00
    else if (totalHours == 1 && totalMinutes == 46 && seconds == 0) {
      printTerminal(str: '01:46:00');

      ///
    }
    /// TODO: 01:46:30
    else if (totalHours == 1 && totalMinutes == 46 && seconds == 30) {
      printTerminal(str: '01:46:30');

      ///
    }
    /// TODO: 01:47:00
    else if (totalHours == 1 && totalMinutes == 47 && seconds == 0) {
      printTerminal(str: '01:47:00');

      ///
    }
    /// TODO: 01:47:30
    else if (totalHours == 1 && totalMinutes == 47 && seconds == 30) {
      printTerminal(str: '01:47:30');

      ///
    }
    /// TODO: 01:48:00
    else if (totalHours == 1 && totalMinutes == 48 && seconds == 0) {
      printTerminal(str: '01:48:00');

      ///
    }
    /// TODO: 01:48:30
    else if (totalHours == 1 && totalMinutes == 48 && seconds == 30) {
      printTerminal(str: '01:48:30');

      ///
    }
    /// TODO: 01:49:00
    else if (totalHours == 1 && totalMinutes == 49 && seconds == 0) {
      printTerminal(str: '01:49:00');

      ///
    }
    /// TODO: 01:49:30
    else if (totalHours == 1 && totalMinutes == 49 && seconds == 30) {
      printTerminal(str: '01:49:30');

      ///
    }
    /// TODO: 01:50:00
    else if (totalHours == 1 && totalMinutes == 50 && seconds == 0) {
      printTerminal(str: '01:50:00');

      ///
    }
    /// TODO: 01:50:30
    else if (totalHours == 1 && totalMinutes == 50 && seconds == 30) {
      printTerminal(str: '01:50:30');

      ///
    }
    /// TODO: 01:51:00
    else if (totalHours == 1 && totalMinutes == 51 && seconds == 0) {
      printTerminal(str: '01:51:00');

      ///
    }
    /// TODO: 01:51:30
    else if (totalHours == 1 && totalMinutes == 51 && seconds == 30) {
      printTerminal(str: '01:51:30');

      ///
    }
    /// TODO: 01:52:00
    else if (totalHours == 1 && totalMinutes == 52 && seconds == 0) {
      printTerminal(str: '01:52:00');

      ///
    }
    /// TODO: 01:52:30
    else if (totalHours == 1 && totalMinutes == 52 && seconds == 30) {
      printTerminal(str: '01:52:30');

      ///
    }
    /// TODO: 01:53:00
    else if (totalHours == 1 && totalMinutes == 53 && seconds == 0) {
      printTerminal(str: '01:53:00');

      ///
    }
    /// TODO: 01:53:30
    else if (totalHours == 1 && totalMinutes == 53 && seconds == 30) {
      printTerminal(str: '01:53:30');

      ///
    }
    /// TODO: 01:54:00
    else if (totalHours == 1 && totalMinutes == 54 && seconds == 0) {
      printTerminal(str: '01:54:00');

      ///
    }
    /// TODO: 01:54:30
    else if (totalHours == 1 && totalMinutes == 54 && seconds == 30) {
      printTerminal(str: '01:54:30');

      ///
    }
    /// TODO: 01:55:00
    else if (totalHours == 1 && totalMinutes == 55 && seconds == 0) {
      printTerminal(str: '01:55:00');

      ///
    }
    /// TODO: 01:55:30
    else if (totalHours == 1 && totalMinutes == 55 && seconds == 30) {
      printTerminal(str: '01:55:30');

      ///
    }
    /// TODO: 01:56:00
    else if (totalHours == 1 && totalMinutes == 56 && seconds == 0) {
      printTerminal(str: '01:56:00');

      ///
    }
    /// TODO: 01:56:30
    else if (totalHours == 1 && totalMinutes == 56 && seconds == 30) {
      printTerminal(str: '01:56:30');

      ///
    }
    /// TODO: 01:57:00
    else if (totalHours == 1 && totalMinutes == 57 && seconds == 0) {
      printTerminal(str: '01:57:00');

      ///
    }
    /// TODO: 01:57:30
    else if (totalHours == 1 && totalMinutes == 57 && seconds == 30) {
      printTerminal(str: '01:57:30');

      ///
    }
    /// TODO: 01:58:00
    else if (totalHours == 1 && totalMinutes == 58 && seconds == 0) {
      printTerminal(str: '01:58:00');

      ///
    }
    /// TODO: 01:58:30
    else if (totalHours == 1 && totalMinutes == 58 && seconds == 30) {
      printTerminal(str: '01:58:30');

      ///
    }
    /// TODO: 01:59:00
    else if (totalHours == 1 && totalMinutes == 59 && seconds == 0) {
      printTerminal(str: '01:59:00');

      ///
    }
    /// TODO: 01:59:30
    else if (totalHours == 1 && totalMinutes == 59 && seconds == 30) {
      printTerminal(str: '01:59:30');

      ///
    }
    /// TODO: 01:60:00
    else if (totalHours == 1 && totalMinutes == 60 && seconds == 0) {
      printTerminal(str: '01:60:00');

      ///
    }
    /// TODO: 01:60:30
    else if (totalHours == 1 && totalMinutes == 60 && seconds == 30) {
      printTerminal(str: '01:60:30');

      ///
    }
  }
}
