import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/models/data/helpful_study_advice_data_model.dart';
import 'package:frame_creator_v2/features/helpful_study_advice_related_to_topic/models/data/helpful_study_advice_related_to_topic_data_model.dart';

class VocabularyDataModel with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _word;
  String? get getWord => _word;
  void setWord({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _word = value;
    } else {
      _word ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificMeaning;
  String? get getTopicSpecificMeaning => _topicSpecificMeaning;
  void setTopicSpecificMeaning({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificMeaning = value;
    } else {
      _topicSpecificMeaning ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificImage;
  String? get getTopicSpecificImage => _topicSpecificImage;
  void setTopicSpecificImage({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificImage = value;
    } else {
      _topicSpecificImage ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _pronunciationUS;
  String? get getPronunciationUS => _pronunciationUS;
  void setPronunciationUS({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pronunciationUS = value;
    } else {
      _pronunciationUS ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _pronunciationUK;
  String? get getPronunciationUK => _pronunciationUK;
  void setPronunciationUK({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _pronunciationUK = value;
    } else {
      _pronunciationUK ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _topicSpecificMeaningInEng;
  String? get getTopicSpecificMeaningInEng => _topicSpecificMeaningInEng;
  void setTopicSpecificMeaningInEng({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topicSpecificMeaningInEng = value;
    } else {
      _topicSpecificMeaningInEng ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isExampleOnLeft;
  bool? get getIsExampleOnLeft => _isExampleOnLeft;
  void setIsExampleOnLeft({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isExampleOnLeft = value;
    } else {
      _isExampleOnLeft ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isExampleOnRight;
  bool? get getIsExampleOnRight => _isExampleOnRight;
  void setIsExampleOnRight({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isExampleOnRight = value;
    } else {
      _isExampleOnRight ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isShowExampleOnSide;
  bool? get getIsShowExampleOnSide => _isShowExampleOnSide;
  void setIsShowExampleOnSide({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isShowExampleOnSide = value;
    } else {
      _isShowExampleOnSide ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isSimplifyType;
  bool? get getIsSimplifyType => _isSimplifyType;
  void setIsSimplifyType({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isSimplifyType = value;
    } else {
      _isSimplifyType ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isNoun;
  bool? get getIsNoun => _isNoun;
  void setIsNoun({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isNoun = value;
    } else {
      _isNoun ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isPronoun;
  bool? get getIsPronoun => _isPronoun;
  void setIsPronoun({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPronoun = value;
    } else {
      _isPronoun ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isVerb;
  bool? get getIsVerb => _isVerb;
  void setIsVerb({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isVerb = value;
    } else {
      _isVerb ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isAdjective;
  bool? get getIsAdjective => _isAdjective;
  void setIsAdjective({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isAdjective = value;
    } else {
      _isAdjective ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isAdverb;
  bool? get getIsAdverb => _isAdverb;
  void setIsAdverb({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isAdverb = value;
    } else {
      _isAdverb ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isPreposition;
  bool? get getIsPreposition => _isPreposition;
  void setIsPreposition({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isPreposition = value;
    } else {
      _isPreposition ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isConjunction;
  bool? get getIsConjunction => _isConjunction;
  void setIsConjunction({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isConjunction = value;
    } else {
      _isConjunction ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isInterjection;
  bool? get getIsInterjection => _isInterjection;
  void setIsInterjection({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isInterjection = value;
    } else {
      _isInterjection ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isOtherType;
  bool? get getIsOtherType => _isOtherType;
  void setIsOtherType({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isOtherType = value;
    } else {
      _isOtherType ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleSentence? _currentVocabularyExampleSentence;
  VocabularyExampleSentence? get getCurrentVocabularyExampleSentence => _currentVocabularyExampleSentence;
  void setCurrentVocabularyExampleSentence({required VocabularyExampleSentence? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyExampleSentence = value;
    } else {
      _currentVocabularyExampleSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleSentence? _vocabularyExampleSentenceSS01;
  VocabularyExampleSentence? get getVocabularyExampleSentenceSS01 => _vocabularyExampleSentenceSS01;
  void setVocabularyExampleSentenceSS01({required VocabularyExampleSentence? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleSentenceSS01 = value;
    } else {
      _vocabularyExampleSentenceSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleSentence? _vocabularyExampleSentenceSS02;
  VocabularyExampleSentence? get getVocabularyExampleSentenceSS02 => _vocabularyExampleSentenceSS02;
  void setVocabularyExampleSentenceSS02({required VocabularyExampleSentence? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleSentenceSS02 = value;
    } else {
      _vocabularyExampleSentenceSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleSentence? _vocabularyExampleSentenceSS03;
  VocabularyExampleSentence? get getVocabularyExampleSentenceSS03 => _vocabularyExampleSentenceSS03;
  void setVocabularyExampleSentenceSS03({required VocabularyExampleSentence? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleSentenceSS03 = value;
    } else {
      _vocabularyExampleSentenceSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleParagraph? _currentVocabularyExampleParagraph;
  VocabularyExampleParagraph? get getCurrentVocabularyExampleParagraph => _currentVocabularyExampleParagraph;
  void setCurrentVocabularyExampleParagraph({required VocabularyExampleParagraph? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyExampleParagraph = value;
    } else {
      _currentVocabularyExampleParagraph ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleParagraph? _vocabularyExampleParagraphSS01;
  VocabularyExampleParagraph? get getVocabularyExampleParagraphSS01 => _vocabularyExampleParagraphSS01;
  void setVocabularyExampleParagraphSS01({required VocabularyExampleParagraph? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleParagraphSS01 = value;
    } else {
      _vocabularyExampleParagraphSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleParagraph? _vocabularyExampleParagraphSS02;
  VocabularyExampleParagraph? get getVocabularyExampleParagraphSS02 => _vocabularyExampleParagraphSS02;
  void setVocabularyExampleParagraphSS02({required VocabularyExampleParagraph? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleParagraphSS02 = value;
    } else {
      _vocabularyExampleParagraphSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleParagraph? _vocabularyExampleParagraphSS03;
  VocabularyExampleParagraph? get getVocabularyExampleParagraphSS03 => _vocabularyExampleParagraphSS03;
  void setVocabularyExampleParagraphSS03({required VocabularyExampleParagraph? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleParagraphSS03 = value;
    } else {
      _vocabularyExampleParagraphSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyExampleConversation? _vocabularyExampleConversation;
  VocabularyExampleConversation? get getVocabularyExampleConversation => _vocabularyExampleConversation;
  void setVocabularyExampleConversation({required VocabularyExampleConversation? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyExampleConversation = value;
    } else {
      _vocabularyExampleConversation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyInterestingKnowledgeConversation? _vocabularyInterestingKnowledgeConversation;
  VocabularyInterestingKnowledgeConversation? get getVocabularyInterestingKnowledgeConversation => _vocabularyInterestingKnowledgeConversation;
  void setVocabularyInterestingKnowledgeConversation({required VocabularyInterestingKnowledgeConversation? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyInterestingKnowledgeConversation = value;
    } else {
      _vocabularyInterestingKnowledgeConversation ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceDataModel? _helpfulStudyAdvice;
  HelpfulStudyAdviceDataModel? get getHelpfulStudyAdvice => _helpfulStudyAdvice;
  void setHelpfulStudyAdvice({required HelpfulStudyAdviceDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulStudyAdvice = value;
    } else {
      _helpfulStudyAdvice ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isHasHelpfulStudyAdvice;
  bool? get getIsHasHelpfulStudyAdvice => _isHasHelpfulStudyAdvice;
  void setIsHasHelpfulStudyAdvice({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isHasHelpfulStudyAdvice = value;
    } else {
      _isHasHelpfulStudyAdvice ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  HelpfulStudyAdviceRelatedToTopicDataModel? _helpfulStudyAdviceRelatedToTopic;
  HelpfulStudyAdviceRelatedToTopicDataModel? get getHelpfulStudyAdviceRelatedToTopic => _helpfulStudyAdviceRelatedToTopic;
  void setHelpfulStudyAdviceRelatedToTopic({required HelpfulStudyAdviceRelatedToTopicDataModel? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _helpfulStudyAdviceRelatedToTopic = value;
    } else {
      _helpfulStudyAdviceRelatedToTopic ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isHasHelpfulStudyAdviceRelatedToTopic;
  bool? get getIsHasHelpfulStudyAdviceRelatedToTopic => _isHasHelpfulStudyAdviceRelatedToTopic;
  void setIsHasHelpfulStudyAdviceRelatedToTopic({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isHasHelpfulStudyAdviceRelatedToTopic = value;
    } else {
      _isHasHelpfulStudyAdviceRelatedToTopic ??= value;
    }

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
      setIsSimplifyType(value: false, isPriorityOverride: true);

      /// -----
      /// TODO:
      /// -----
      setCurrentVocabularyExampleSentence(value: VocabularyExampleSentence(), isPriorityOverride: true);

      setVocabularyExampleSentenceSS01(value: VocabularyExampleSentence(), isPriorityOverride: true);
      setVocabularyExampleSentenceSS02(value: VocabularyExampleSentence(), isPriorityOverride: true);
      setVocabularyExampleSentenceSS03(value: VocabularyExampleSentence(), isPriorityOverride: true);

      setCurrentVocabularyExampleParagraph(value: VocabularyExampleParagraph(), isPriorityOverride: true);

      setVocabularyExampleParagraphSS01(value: VocabularyExampleParagraph(), isPriorityOverride: true);
      setVocabularyExampleParagraphSS02(value: VocabularyExampleParagraph(), isPriorityOverride: true);
      setVocabularyExampleParagraphSS03(value: VocabularyExampleParagraph(), isPriorityOverride: true);

      setVocabularyExampleConversation(value: VocabularyExampleConversation(), isPriorityOverride: true);

      setVocabularyInterestingKnowledgeConversation(value: VocabularyInterestingKnowledgeConversation(), isPriorityOverride: true);

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
      getCurrentVocabularyExampleSentence?.onSetupRoot();

      getVocabularyExampleSentenceSS01?.onSetupRoot();
      getVocabularyExampleSentenceSS02?.onSetupRoot();
      getVocabularyExampleSentenceSS03?.onSetupRoot();

      getCurrentVocabularyExampleParagraph?.onSetupRoot();

      getVocabularyExampleParagraphSS01?.onSetupRoot();
      getVocabularyExampleParagraphSS02?.onSetupRoot();
      getVocabularyExampleParagraphSS03?.onSetupRoot();

      getVocabularyExampleConversation?.onSetupRoot();
      getVocabularyInterestingKnowledgeConversation?.onSetupRoot();
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
      getCurrentVocabularyExampleSentence?.onInitRoot();

      getVocabularyExampleSentenceSS01?.onInitRoot();
      getVocabularyExampleSentenceSS02?.onInitRoot();
      getVocabularyExampleSentenceSS03?.onInitRoot();

      getCurrentVocabularyExampleParagraph?.onInitRoot();

      getVocabularyExampleParagraphSS01?.onInitRoot();
      getVocabularyExampleParagraphSS02?.onInitRoot();
      getVocabularyExampleParagraphSS03?.onInitRoot();

      getVocabularyExampleConversation?.onInitRoot();
      getVocabularyInterestingKnowledgeConversation?.onInitRoot();
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

class VocabularyExampleSentence with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _engSentence;
  String? get getEngSentence => _engSentence;
  void setEngSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentence = value;
    } else {
      _engSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _vieSentence;
  String? get getVieSentence => _vieSentence;
  void setVieSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vieSentence = value;
    } else {
      _vieSentence ??= value;
    }

    return;
  }
}

class VocabularyExampleParagraph with ExecutionCore {
  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _engSentenceSS01;
  String? get getEngSentenceSS01 => _engSentenceSS01;
  void setEngSentenceSS01({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentenceSS01 = value;
    } else {
      _engSentenceSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _engSentenceSS02;
  String? get getEngSentenceSS02 => _engSentenceSS02;
  void setEngSentenceSS02({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentenceSS02 = value;
    } else {
      _engSentenceSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _engSentenceSS03;
  String? get getEngSentenceSS03 => _engSentenceSS03;
  void setEngSentenceSS03({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentenceSS03 = value;
    } else {
      _engSentenceSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _vieSentence;
  String? get getVieSentence => _vieSentence;
  void setVieSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vieSentence = value;
    } else {
      _vieSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _insightVocabSS01;
  String? get getInsightVocabSS01 => _insightVocabSS01;
  void setInsightVocabSS01({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _insightVocabSS01 = value;
    } else {
      _insightVocabSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _insightVocabSS02;
  String? get getInsightVocabSS02 => _insightVocabSS02;
  void setInsightVocabSS02({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _insightVocabSS02 = value;
    } else {
      _insightVocabSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _insightVocabSS03;
  String? get getInsightVocabSS03 => _insightVocabSS03;
  void setInsightVocabSS03({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _insightVocabSS03 = value;
    } else {
      _insightVocabSS03 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _insightVocabSS04;
  String? get getInsightVocabSS04 => _insightVocabSS04;
  void setInsightVocabSS04({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _insightVocabSS04 = value;
    } else {
      _insightVocabSS04 ??= value;
    }

    return;
  }
}

class VocabularyExampleConversation with ExecutionCore {
  VocabularyExampleConversation() {
    setConversationItemList(value: [], isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyExampleConversationItem>? _conversationItemList;
  List<VocabularyExampleConversationItem>? get getConversationItemList => _conversationItemList;
  void setConversationItemList({required List<VocabularyExampleConversationItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _conversationItemList = value;
    } else {
      _conversationItemList ??= value;
    }

    return;
  }
}

class VocabularyExampleConversationItem {
  VocabularyExampleConversationItem({required bool? isLeftCharacterSS01, required bool? isRightCharacterSS02, required String? engSentence, required String? vieSentence}) {
    setIsLeftCharacterSS01(value: isLeftCharacterSS01, isPriorityOverride: true);
    setIsRightCharacterSS02(value: isRightCharacterSS02, isPriorityOverride: true);
    setEngSentence(value: engSentence, isPriorityOverride: true);
    setVieSentence(value: vieSentence, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isLeftCharacterSS01;
  bool? get getIsLeftCharacterSS01 => _isLeftCharacterSS01;
  void setIsLeftCharacterSS01({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isLeftCharacterSS01 = value;
    } else {
      _isLeftCharacterSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isRightCharacterSS02;
  bool? get getIsRightCharacterSS02 => _isRightCharacterSS02;
  void setIsRightCharacterSS02({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isRightCharacterSS02 = value;
    } else {
      _isRightCharacterSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _engSentence;
  String? get getEngSentence => _engSentence;
  void setEngSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentence = value;
    } else {
      _engSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _vieSentence;
  String? get getVieSentence => _vieSentence;
  void setVieSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vieSentence = value;
    } else {
      _vieSentence ??= value;
    }

    return;
  }
}

class VocabularyInterestingKnowledgeConversation with ExecutionCore {
  VocabularyInterestingKnowledgeConversation() {
    setInterestingKnowledgeItemList(value: [], isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  String? _title;
  String? get getTitle => _title;
  void setTitle({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _title = value;
    } else {
      _title ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  List<VocabularyInterestingKnowledgeConversationItem>? _interestingKnowledgeItemList;
  List<VocabularyInterestingKnowledgeConversationItem>? get getInterestingKnowledgeItemList => _interestingKnowledgeItemList;
  void setInterestingKnowledgeItemList({required List<VocabularyInterestingKnowledgeConversationItem>? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _interestingKnowledgeItemList = value;
    } else {
      _interestingKnowledgeItemList ??= value;
    }

    return;
  }
}

class VocabularyInterestingKnowledgeConversationItem {
  VocabularyInterestingKnowledgeConversationItem({required bool? isLeftCharacterSS01, required bool? isRightCharacterSS02, required String? engSentence, required String? vieSentence, required String? imageSource}) {
    setIsLeftCharacterSS01(value: isLeftCharacterSS01, isPriorityOverride: true);
    setIsRightCharacterSS02(value: isRightCharacterSS02, isPriorityOverride: true);
    setEngSentence(value: engSentence, isPriorityOverride: true);
    setVieSentence(value: vieSentence, isPriorityOverride: true);
    setImageSource(value: imageSource, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isLeftCharacterSS01;
  bool? get getIsLeftCharacterSS01 => _isLeftCharacterSS01;
  void setIsLeftCharacterSS01({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isLeftCharacterSS01 = value;
    } else {
      _isLeftCharacterSS01 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  bool? _isRightCharacterSS02;
  bool? get getIsRightCharacterSS02 => _isRightCharacterSS02;
  void setIsRightCharacterSS02({required bool? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _isRightCharacterSS02 = value;
    } else {
      _isRightCharacterSS02 ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Tối đa 220 ký tự
  /// -----
  String? _engSentence;
  String? get getEngSentence => _engSentence;
  void setEngSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _engSentence = value;
    } else {
      _engSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO: Tối đa 180 ký tự
  /// -----
  String? _vieSentence;
  String? get getVieSentence => _vieSentence;
  void setVieSentence({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vieSentence = value;
    } else {
      _vieSentence ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  String? _imageSource;
  String? get getImageSource => _imageSource;
  void setImageSource({required String? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _imageSource = value;
    } else {
      _imageSource ??= value;
    }

    return;
  }
}
