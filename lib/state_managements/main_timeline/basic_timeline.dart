import 'package:flutter/foundation.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';

///
///
///
class BasicTimeline with ExecutionCore {
  ///
  /// TODO:
  ///
  int? _seconds;
  int get getSeconds => _seconds ?? 0;
  void setSeconds({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _seconds = value;
    } else {
      _seconds ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _totalSeconds;
  int get getTotalSeconds => _totalSeconds ?? 0;
  void setTotalSeconds({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalSeconds = value;
    } else {
      _totalSeconds ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _maxTotalSeconds;
  int get getMaxTotalSeconds => _maxTotalSeconds ?? 0;
  void setMaxTotalSeconds({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _maxTotalSeconds = value;
    } else {
      _maxTotalSeconds ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _minutes;
  int get getMinutes => _minutes ?? 0;
  void setMinutes({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _minutes = value;
    } else {
      _minutes ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _totalMinutes;
  int get getTotalMinutes => _totalMinutes ?? 0;
  void setTotalMinutes({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalMinutes = value;
    } else {
      _totalMinutes ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _maxTotalMinutes;
  int get getMaxTotalMinutes => _maxTotalMinutes ?? 0;
  void setMaxTotalMinutes({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _maxTotalMinutes = value;
    } else {
      _maxTotalMinutes ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _hours;
  int get getHours => _hours ?? 0;
  void setHours({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _hours = value;
    } else {
      _hours ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _totalHours;
  int get getTotalHours => _totalHours ?? 0;
  void setTotalHours({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _totalHours = value;
    } else {
      _totalHours ??= value;
    }

    return;
  }

  ///
  /// TODO:
  ///
  int? _maxTotalHours;
  int get getMaxTotalHours => _maxTotalHours ?? 0;
  void setMaxTotalHours({required int? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _maxTotalHours = value;
    } else {
      _maxTotalHours ??= value;
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

  bool isRunning() {
    if (getIsPaused == false) {
      return true;
    }

    return false;
  }

  ///
  /// TODO:
  ///
  bool? _isMoveToNextExecution;
  bool? get getIsMoveToNextExecution => _isMoveToNextExecution;
  void setIsMoveToNextExecution({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isMoveToNextExecution = value;
    } else {
      _isMoveToNextExecution ??= value;
    }

    return;
  }

  void moveToNextExecution({required String markId}) {

    setIsMoveToNextExecution(value: true, isPriorityOverride: true);

    if (kDebugMode) {
      print('||==========|| Move To Next Execution: $markId ||==========||');
    }
  }

  bool isMoveToNextExecution() {
    if (getIsMoveToNextExecution == true) {
      return true;
    }

    return false;
  }

  void start() {
    if (getIsPaused == true) {
      setIsPaused(value: false, isPriorityOverride: true);
      if (kDebugMode) {
        print('STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||');
        print('STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||');
        print('STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||==========STARTED||');
      }
    }
  }

  void pause() {
    if (getIsPaused == false) {
      setIsPaused(value: true, isPriorityOverride: true);
      if (kDebugMode) {
        print('PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||');
        print('PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||');
        print('PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||==========PAUSED||');
      }
    }
  }

  void stop() {
    if (getIsPaused == false) {
      setIsPaused(value: true, isPriorityOverride: true);
      if (kDebugMode) {
        print('STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||');
        print('STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||');
        print('STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||==========STOPPED||');
      }
    }
  }

  void resume() {
    if (getIsPaused == true) {
      setIsPaused(value: false, isPriorityOverride: true);
      if (kDebugMode) {
        print('RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||');
        print('RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||');
        print('RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||==========RESUMED||');
      }
    }
  }

  String getTimeUnitString({bool? isSecond, bool? isMinute, bool? isHour}) {
    String timeUnitString = "00";

    int value = 0;
    if (isSecond == true) {
      value = getSeconds;
    } else if (isMinute == true) {
      value = getMinutes;
    } else if (isHour == true) {
      value = getHours;
    }

    switch (value) {
      case 0:
        {
          timeUnitString = "00";
        }
        break;
      case 1:
        {
          timeUnitString = "01";
        }
        break;
      case 2:
        {
          timeUnitString = "02";
        }
        break;
      case 3:
        {
          timeUnitString = "03";
        }
        break;
      case 4:
        {
          timeUnitString = "04";
        }
        break;
      case 5:
        {
          timeUnitString = "05";
        }
        break;
      case 6:
        {
          timeUnitString = "06";
        }
        break;
      case 7:
        {
          timeUnitString = "07";
        }
        break;
      case 8:
        {
          timeUnitString = "08";
        }
        break;
      case 9:
        {
          timeUnitString = "09";
        }
        break;
      case 10:
        {
          timeUnitString = "10";
        }
        break;
      case 11:
        {
          timeUnitString = "11";
        }
        break;
      case 12:
        {
          timeUnitString = "12";
        }
        break;
      case 13:
        {
          timeUnitString = "13";
        }
        break;
      case 14:
        {
          timeUnitString = "14";
        }
        break;
      case 15:
        {
          timeUnitString = "15";
        }
        break;
      case 16:
        {
          timeUnitString = "16";
        }
        break;
      case 17:
        {
          timeUnitString = "17";
        }
        break;
      case 18:
        {
          timeUnitString = "18";
        }
        break;
      case 19:
        {
          timeUnitString = "19";
        }
        break;
      case 20:
        {
          timeUnitString = "20";
        }
        break;
      case 21:
        {
          timeUnitString = "21";
        }
        break;
      case 22:
        {
          timeUnitString = "22";
        }
        break;
      case 23:
        {
          timeUnitString = "23";
        }
        break;
      case 24:
        {
          timeUnitString = "24";
        }
        break;
      case 25:
        {
          timeUnitString = "25";
        }
        break;
      case 26:
        {
          timeUnitString = "26";
        }
        break;
      case 27:
        {
          timeUnitString = "27";
        }
        break;
      case 28:
        {
          timeUnitString = "28";
        }
        break;
      case 29:
        {
          timeUnitString = "29";
        }
        break;
      case 30:
        {
          timeUnitString = "30";
        }
        break;
      case 31:
        {
          timeUnitString = "31";
        }
        break;
      case 32:
        {
          timeUnitString = "32";
        }
        break;
      case 33:
        {
          timeUnitString = "33";
        }
        break;
      case 34:
        {
          timeUnitString = "34";
        }
        break;
      case 35:
        {
          timeUnitString = "35";
        }
        break;
      case 36:
        {
          timeUnitString = "36";
        }
        break;
      case 37:
        {
          timeUnitString = "37";
        }
        break;
      case 38:
        {
          timeUnitString = "38";
        }
        break;
      case 39:
        {
          timeUnitString = "39";
        }
        break;
      case 40:
        {
          timeUnitString = "40";
        }
        break;
      case 41:
        {
          timeUnitString = "41";
        }
        break;
      case 42:
        {
          timeUnitString = "42";
        }
        break;
      case 43:
        {
          timeUnitString = "43";
        }
        break;
      case 44:
        {
          timeUnitString = "44";
        }
        break;
      case 45:
        {
          timeUnitString = "45";
        }
        break;
      case 46:
        {
          timeUnitString = "46";
        }
        break;
      case 47:
        {
          timeUnitString = "47";
        }
        break;
      case 48:
        {
          timeUnitString = "48";
        }
        break;
      case 49:
        {
          timeUnitString = "49";
        }
        break;
      case 50:
        {
          timeUnitString = "50";
        }
        break;
      case 51:
        {
          timeUnitString = "51";
        }
        break;
      case 52:
        {
          timeUnitString = "52";
        }
        break;
      case 53:
        {
          timeUnitString = "53";
        }
        break;
      case 54:
        {
          timeUnitString = "54";
        }
        break;
      case 55:
        {
          timeUnitString = "55";
        }
        break;
      case 56:
        {
          timeUnitString = "56";
        }
        break;
      case 57:
        {
          timeUnitString = "57";
        }
        break;
      case 58:
        {
          timeUnitString = "58";
        }
        break;
      case 59:
        {
          timeUnitString = "59";
        }
        break;
      case 60:
        {
          timeUnitString = "60";
        }
        break;
    }

    return timeUnitString;
  }

  /// -----
  /// TODO:
  /// -----
  void onUpdate() {
    if (getIsPaused == true) {
      ///
    } else if (getIsPaused == false) {
      if (getSeconds < 59) {
        int newSecondsValue = getSeconds + 1;
        int newTotalSecondsValue = getTotalSeconds + 1;
        setSeconds(value: newSecondsValue, isPriorityOverride: true);
        setTotalSeconds(value: newTotalSecondsValue, isPriorityOverride: true);
      } else if (getSeconds == 59) {
        ///  TODO: Reset Seconds
        int newSecondsValue = 0;
        int newTotalSecondsValue = getTotalSeconds + 1;
        setSeconds(value: newSecondsValue, isPriorityOverride: true);
        setTotalSeconds(value: newTotalSecondsValue, isPriorityOverride: true);

        if (getMinutes < 59) {
          /// TODO: Set Minutes
          int newMinutesValue = getMinutes + 1;
          int newTotalMinutesValue = getTotalMinutes + 1;
          setMinutes(value: newMinutesValue, isPriorityOverride: true);
          setTotalMinutes(value: newTotalMinutesValue, isPriorityOverride: true);
        } else if (getMinutes == 59) {
          ///  TODO: Reset Minutes
          int newMinutesValue = 0;
          int newTotalMinutesValue = getTotalMinutes + 1;
          setMinutes(value: newMinutesValue, isPriorityOverride: true);
          setTotalMinutes(value: newTotalMinutesValue, isPriorityOverride: true);

          /// TODO: Set Hours
          int newHoursValue = getHours + 1;
          int newTotalHoursValue = getTotalHours + 1;
          setHours(value: newHoursValue, isPriorityOverride: true);
          setTotalHours(value: newTotalHoursValue, isPriorityOverride: true);
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
      setSeconds(value: 0, isPriorityOverride: true);
      setTotalSeconds(value: 0, isPriorityOverride: true);
      setMaxTotalSeconds(value: 0, isPriorityOverride: true);

      setSeconds(value: 0, isPriorityOverride: true);
      setTotalSeconds(value: 0, isPriorityOverride: true);
      setMaxTotalSeconds(value: 0, isPriorityOverride: true);

      setHours(value: 0, isPriorityOverride: true);
      setTotalHours(value: 0, isPriorityOverride: true);
      setMaxTotalHours(value: 0, isPriorityOverride: true);

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
}
