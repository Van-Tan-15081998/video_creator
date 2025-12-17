import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_time.dart';

class AdviceScript with ExecutionCore {
  AdviceScript({required VocabularyTime? vocabularyTime}) {
    setVocabularyTime(value: vocabularyTime, isPriorityOverride: true);
  }

  /// -----
  /// TODO:
  /// -----
  VocabularyTime? _vocabularyTime;
  VocabularyTime? get getVocabularyTime => _vocabularyTime;
  void setVocabularyTime({required VocabularyTime? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _vocabularyTime = value;
    } else {
      _vocabularyTime ??= value;
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

      ///
      /// TODO: HelpfulStudyAdvice SS01
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS01?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS01?.setSentenceEng(value: '[HelpfulStudyAdvice SS01] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS01?.setSentenceVie(value: '[HelpfulStudyAdvice SS01] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS02
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS02?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS02?.setSentenceEng(value: '[HelpfulStudyAdvice SS02] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS02?.setSentenceVie(value: '[HelpfulStudyAdvice SS02] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS03
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS03?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS03?.setSentenceEng(value: '[HelpfulStudyAdvice SS03] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS03?.setSentenceVie(value: '[HelpfulStudyAdvice SS03] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS04
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS04?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS04?.setSentenceEng(value: '[HelpfulStudyAdvice SS04] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS04?.setSentenceVie(value: '[HelpfulStudyAdvice SS04] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS05
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS05?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS05?.setSentenceEng(value: '[HelpfulStudyAdvice SS05] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS05?.setSentenceVie(value: '[HelpfulStudyAdvice SS05] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS06
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS06?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS06?.setSentenceEng(value: '[HelpfulStudyAdvice SS06] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS06?.setSentenceVie(value: '[HelpfulStudyAdvice SS06] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS07
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS07?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS07?.setSentenceEng(value: '[HelpfulStudyAdvice SS07] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS07?.setSentenceVie(value: '[HelpfulStudyAdvice SS07] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS08
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS08?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS08?.setSentenceEng(value: '[HelpfulStudyAdvice SS08] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS08?.setSentenceVie(value: '[HelpfulStudyAdvice SS08] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS09
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS09?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS09?.setSentenceEng(value: '[HelpfulStudyAdvice SS09] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS09?.setSentenceVie(value: '[HelpfulStudyAdvice SS09] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS10
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS10?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS10?.setSentenceEng(value: '[HelpfulStudyAdvice SS10] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS10?.setSentenceVie(value: '[HelpfulStudyAdvice SS10] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS11
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS11?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS11?.setSentenceEng(value: '[HelpfulStudyAdvice SS11] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS11?.setSentenceVie(value: '[HelpfulStudyAdvice SS11] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS12
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS12?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS12?.setSentenceEng(value: '[HelpfulStudyAdvice SS12] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS12?.setSentenceVie(value: '[HelpfulStudyAdvice SS12] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS13
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS13?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS13?.setSentenceEng(value: '[HelpfulStudyAdvice SS13] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS13?.setSentenceVie(value: '[HelpfulStudyAdvice SS13] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS14
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS14?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS14?.setSentenceEng(value: '[HelpfulStudyAdvice SS14] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS14?.setSentenceVie(value: '[HelpfulStudyAdvice SS14] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS15
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS15?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS15?.setSentenceEng(value: '[HelpfulStudyAdvice SS15] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS15?.setSentenceVie(value: '[HelpfulStudyAdvice SS15] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS16
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS16?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS16?.setSentenceEng(value: '[HelpfulStudyAdvice SS16] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS16?.setSentenceVie(value: '[HelpfulStudyAdvice SS16] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS17
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS17?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS17?.setSentenceEng(value: '[HelpfulStudyAdvice SS17] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS17?.setSentenceVie(value: '[HelpfulStudyAdvice SS17] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS18
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS18?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS18?.setSentenceEng(value: '[HelpfulStudyAdvice SS18] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS18?.setSentenceVie(value: '[HelpfulStudyAdvice SS18] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS19
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS19?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS19?.setSentenceEng(value: '[HelpfulStudyAdvice SS19] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS19?.setSentenceVie(value: '[HelpfulStudyAdvice SS19] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      ///
      /// TODO: HelpfulStudyAdvice SS20
      ///
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS20?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS20?.setSentenceEng(value: '[HelpfulStudyAdvice SS20] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS20?.setSentenceVie(value: '[HelpfulStudyAdvice SS20] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.', isPriorityOverride: true);

      /// TODO:
      /// TODO:
      /// TODO:
      /// TODO:
      /// TODO:

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS01
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS01?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS01?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS01] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS01?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS01] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS02
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS02?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS02?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS02] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS02?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS02] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS03
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS03?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS03?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS03] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS03?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS03] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS04
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS04?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS04?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS04] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS04?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS04] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS05
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS05?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS05?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS05] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS05?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS05] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS06
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS06?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS06?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS06] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS06?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS06] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS07
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS07?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS07?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS07] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS07?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS07] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS08
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS08?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS08?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS08] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS08?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS08] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS09
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS09?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS09?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS09] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS09?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS09] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS10
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS10?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS10?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS10] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS10?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS10] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS11
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS11?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS11?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS11] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS11?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS11] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS12
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS12?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS12?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS12] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS12?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS12] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS13
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS13?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS13?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS13] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS13?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS13] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS14
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS14?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS14?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS14] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS14?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS14] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS15
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS15?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS15?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS15] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS15?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS15] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS16
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS16?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS16?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS16] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS16?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS16] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS17
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS17?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS17?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS17] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS17?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS17] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS18
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS18?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS18?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS18] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS18?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS18] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS19
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS19?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS19?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS19] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS19?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS19] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      ///
      /// TODO: HelpfulStudyAdviceRelatedToTopic SS20
      ///
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS20?.setTitle(value: 'Title', isPriorityOverride: true);
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS20?.setSentenceEng(
        value: '[HelpfulStudyAdviceRelatedToTopic SS20] Friendly monsters guide you to learn deeply, stay focused longer, and turn daily study into an enjoyable habit.',
        isPriorityOverride: true,
      );
      getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS20?.setSentenceVie(
        value: '[HelpfulStudyAdviceRelatedToTopic SS20] Những quái vật thân thiện đồng hành giúp bạn học sâu hơn, tập trung lâu hơn và biến việc học mỗi ngày thành một thói quen thú vị.',
        isPriorityOverride: true,
      );

      /// TODO:
      /// TODO:
      /// TODO:
      /// TODO:
      /// TODO:

      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS01, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS02, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS03, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS04, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS05, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS06, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS07, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS08, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS09, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS10, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS11, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS12, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS13, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS14, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS15, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS16, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS17, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS18, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS19, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel
        ?..setHelpfulStudyAdvice(value: getVocabularyTime?.getHelpfulStudyAdviceList?.getHelpfulStudyAdviceSS20, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdvice(value: true, isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS01, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS02, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS03, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS04, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS05, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS06, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS07, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS08, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS09, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS10, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS11, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS12, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS13, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS14, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS15, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS16, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS17, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS18, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS19, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel
        ?..setHelpfulStudyAdviceRelatedToTopic(value: getVocabularyTime?.getHelpfulStudyAdviceRelatedToTopicList?.getHelpfulStudyAdviceRelatedToTopicSS20, isPriorityOverride: true)
        ..setIsHasHelpfulStudyAdviceRelatedToTopic(value: true, isPriorityOverride: true);

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
