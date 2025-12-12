import 'package:flutter/material.dart';
import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class VocabularyScriptModel with ExecutionCore {
  VocabularyScriptModel({required SequentialExecutionController? sequentialExecutionController}) {
    setSequentialExecutionController(value: sequentialExecutionController, isPriorityOverride: true);
    setCallbackFunctionAfterCompletedBreakTimeStack(value: [], isPriorityOverride: true);

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS01 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartVocabularyDefinitionSS06();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS02 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartVocabularyDefinitionSS11();
            });
          },
        );
      });
    };

    getSequentialExecutionController?.getSequentialExecutionDetail?.onStartAfterCompletedBreakTimeSS03 = () {
      Future.delayed(Duration(seconds: 1), () {
        getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
          onDeactivatedWindowAsParameter: () {
            Future.delayed(Duration(seconds: 1), () {
              onStartVocabularyDefinitionSS16();
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

  void onStartVocabularyDefinition() {
    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS01,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS01();
          });
        },
      );
    });
  }

  void onStartVocabularyDefinitionSS01() {
    ///

    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///

    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS01?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS02() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS02?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS03() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS03?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS04() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS04?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS05() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS05?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS06() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS06?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS07() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS07?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS08() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS08?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS09() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS09?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS10() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS10?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS11() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS11?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS12() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS12?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS13() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS13?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS14() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS14?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS15() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS15?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS16() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS16?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS17() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS17?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS18() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS18?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS19() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS19?.onStart();
    }

    ///
  }

  void onStartVocabularyDefinitionSS20() {
    ///
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onActivateWindow();
    getSequentialExecutionController?.getVocabularyTitleFeature?.onActivateWindow();

    ///
    if (getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.isCanStartNewVocabulary() == true) {
      getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS20?.onStart();
    }

    ///
  }

  /// -----
  /// TODO: Complete
  /// -----

  void onCompleteVocabularyDefinitionSS01() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS02,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS02();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS02() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS03,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS03();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS03() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS04,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS04();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS04() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS05,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS05();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS05() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS06,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartVocabularyDefinitionSS06();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteVocabularyDefinitionSS06() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS07,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS07();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS07() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS08,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS08();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS08() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS09,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS09();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS09() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS10,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS10();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS10() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS11,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartVocabularyDefinitionSS11();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteVocabularyDefinitionSS11() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS12,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS12();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS12() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS13,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS13();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS13() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS14,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS14();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS14() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS15,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS15();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS15() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS16,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    // Future.delayed(Duration(seconds: 1), () {
    //   getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
    //     onDeactivatedWindowAsParameter: () {
    //       Future.delayed(Duration(seconds: 1), () {
    //         onStartVocabularyDefinitionSS16();
    //       });
    //     },
    //   );
    // });

    ///
  }

  void onCompleteVocabularyDefinitionSS16() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS17,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS17();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS17() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS18,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS18();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS18() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS19,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS19();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS19() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.setCurrentVocabularyItemForStart(
      value: getSequentialExecutionController?.getVocabularyDefinitionFeature?.getVocabularyTime?.getVocabularySS20,
      isPriorityOverride: true,
    );

    /// -----
    /// TODO:
    /// -----
    Future.delayed(Duration(seconds: 1), () {
      getSequentialExecutionController?.getVocabularySceneTransitionFeature?.onActivateWindow(
        onDeactivatedWindowAsParameter: () {
          Future.delayed(Duration(seconds: 1), () {
            onStartVocabularyDefinitionSS20();
          });
        },
      );
    });

    ///
  }

  void onCompleteVocabularyDefinitionSS20() {
    getSequentialExecutionController?.getVocabularyTitleFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyDefinitionFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyConversationFeature?.onDeactivateWindow();
    getSequentialExecutionController?.getVocabularyParagraphFeature?.onDeactivateWindow();

    /// -----
    /// TODO: Chuyển Cảnh 1/2
    /// -----

    ///
  }
}
