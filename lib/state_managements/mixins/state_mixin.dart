import 'package:frame_creator_v2/state_managements/system_state_management.dart';

mixin StateMixin {
  /// -----
  /// TODO:
  /// -----
  SystemStateManagement? _systemStateManagement;
  SystemStateManagement? get getSystemStateManagement => _systemStateManagement;
  void setSystemStateManagement({required SystemStateManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _systemStateManagement = value;
    } else {
      _systemStateManagement ??= value;
    }

    ///
    return;
  }
}
