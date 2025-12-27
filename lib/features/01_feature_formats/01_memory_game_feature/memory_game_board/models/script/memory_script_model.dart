import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class MemoryScriptModel with ExecutionCore {
  MemoryScriptModel({required SequentialExecutionController? sequentialExecutionController}) {
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);
    setCallbackFunctionAfterCompletedBreakTimeStack(value: [], isPriorityOverride: true);

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS01 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartMemoryGameBoardSS03();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS02 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartMemoryGameBoardSS05();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS03 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartMemoryGameBoardSS07();
            });
          },
        );
      });
    };
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
  /// TODO:
  /// -----
  List<VoidCallback?>? _callbackFunctionAfterCompletedBreakTimeStack;
  List<VoidCallback?>? get getCallbackFunctionAfterCompletedBreakTimeStack => _callbackFunctionAfterCompletedBreakTimeStack;
  void setCallbackFunctionAfterCompletedBreakTimeStack({required List<VoidCallback?>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _callbackFunctionAfterCompletedBreakTimeStack = value;
    } else {
      _callbackFunctionAfterCompletedBreakTimeStack ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Start
  /// -----

  void onStartMemoryGame() {
    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS001, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS01();
          });
        },
      );
    });
  }

  void onStartMemoryGameBoardSS01() {
    ///

    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///

    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS001?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS02() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS002?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS03() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS003?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS04() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS004?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS05() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS005?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS06() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS006?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS07() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS007?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS08() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS008?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS09() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS009?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS10() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS010?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS11() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS011?.onStart();
    }

    ///
  }

  void onStartMemoryGameBoardSS12() {
    ///
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.isCanStartNewMemoryGame() == true) {
      getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS012?.onStart();
    }

    ///
  }

  /// -----
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// TODO: Complete
  /// -----

  void onCompleteMemoryGameBoardSS01() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS002, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS02();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS02() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS003, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartMemoryGameBoardSS03();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteMemoryGameBoardSS03() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS004, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS04();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS04() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS005, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartMemoryGameBoardSS05();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteMemoryGameBoardSS05() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS006, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS06();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS06() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS007, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartMemoryGameBoardSS07();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteMemoryGameBoardSS07() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS008, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS08();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS08() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS009, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartMemoryGameBoardSS09();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteMemoryGameBoardSS09() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS010, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onCompleteMemoryGameBoardSS10();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteMemoryGameBoardSS10() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS011, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS11();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS11() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.setCurrentMemoryItemForStart(value: getSequentialExecutionController?.getMemoryGameBoardFeature?.getMemoryTime?.getMemoryItemSS012, isPriorityOverride: true);

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getMemoryGameBoardSceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartMemoryGameBoardSS11();
          });
        },
      );
    });

    ///
  }

  void onCompleteMemoryGameBoardSS12() {
    getSequentialExecutionController?.getMemoryGameBoardFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    ///
  }
}
