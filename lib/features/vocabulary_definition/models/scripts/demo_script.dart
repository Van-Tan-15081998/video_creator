import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_data_model.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_time.dart';

class DemoScript with ExecutionCore {
  DemoScript({required VocabularyTime? vocabularyTime}) {
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

      getVocabularyTime?.getVocabularyTopic?.setParentTopicEng(value: 'Parent Topic', isPriorityOverride: true);
      getVocabularyTime?.getVocabularyTopic?.setParentTopicVie(value: 'Chủ đề cha', isPriorityOverride: true);

      getVocabularyTime?.getVocabularyTopic?.setMainTopicEng(value: 'Main Topic', isPriorityOverride: true);
      getVocabularyTime?.getVocabularyTopic?.setMainTopicVie(value: 'Chủ đề chính', isPriorityOverride: true);

      getVocabularyTime?.getVocabularyTopic?.setTotalWords(value: 20, isPriorityOverride: true);

      /// -----
      /// TODO: VocabularySS01
      /// -----
      // getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS01');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setWord(value: 'Vocabulary');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS01');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: 'Sunny weather offers excellent conditions for outdoor activities, but it can also increase the risk of dehydration if proper care is not taken.');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: 'Thời tiết nắng mang lại điều kiện tuyệt vời cho các hoạt động ngoài trời, nhưng cũng có thể làm tăng nguy cơ mất nước nếu không chú ý chăm sóc cơ thể.');

      ///
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '_ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS01] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '_ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS01] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01] [VocabularySS01]');
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS01', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(value: '[VocabSS01] Overcast describes weather in which the sky is completely covered with clouds, blocking direct sunlight and creating a uniformly gray appearance.', isPriorityOverride: true);

      /// TODO: Conversation
      /// Item 1
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 2
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: false, //
          isRightCharacterSS02: true, //
          engSentence: '[isRightCharacterSS02] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isRightCharacterSS02] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 3
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 4
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: false, //
          isRightCharacterSS02: true, //
          engSentence: '[isRightCharacterSS02] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isRightCharacterSS02] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 5
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 6
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: false, //
          isRightCharacterSS02: true, //
          engSentence: '[isRightCharacterSS02] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isRightCharacterSS02] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 7
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 8
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: false, //
          isRightCharacterSS02: true, //
          engSentence: '[isRightCharacterSS02] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isRightCharacterSS02] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 9
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// Item 10
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyExampleConversation?.getConversationItemList?.add(
        VocabularyExampleConversationItem(
          isLeftCharacterSS01: false, //
          isRightCharacterSS02: true, //
          engSentence: '[isRightCharacterSS02] Learning daily builds _confidence and long term success.', //
          vieSentence: '[isRightCharacterSS02] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
        ),
      );

      /// TODO: Interesting Knowledge Conversation

      /// Item 1
      getVocabularyTime?.getVocabularySS01?.getVocabularyDataModel?.getVocabularyInterestingKnowledgeConversation?.getInterestingKnowledgeItemList?.add(
        VocabularyInterestingKnowledgeConversationItem(
          isLeftCharacterSS01: true, //
          isRightCharacterSS02: false, //
          engSentence: '[isLeftCharacterSS01] Learning daily builds _confidence and long term success. Learning daily builds _confidence and long term success. Learning daily builds _confidence and long term success. Learning daily builds _confidence and long term success.', //
          vieSentence: '[isLeftCharacterSS01] Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài. Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài. Học mỗi ngày sẽ xây dựng _sự _tự _tin và tạo nên thành công lâu dài.', //
          imageSource: 'assets/images/interesting_knowledge/knowledge_01.jpg',
        ),
      );

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS01);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS02
      /// -----
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS02');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS02');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setIsVerb(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS02] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS02] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS02] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS02] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS02] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS02] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02] [VocabularySS02]');
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS02', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS02?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS02] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS02);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS03
      /// -----
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS03');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS03');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS03] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS03] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS03] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS03] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS03] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS03] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03] [VocabularySS03]');
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS03', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS03?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS03] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS03);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS04
      /// -----
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS04');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS04');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS04] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS04] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS04] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS04] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS04] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS04] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04] [VocabularySS04]');
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS04', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS04', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS04?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS04] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS04);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS05
      /// -----
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS05');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS05');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS05] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS05] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS05] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS05] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS05] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS05] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05] [VocabularySS05]');
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS05', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS05', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS05?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS05] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS05);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS06
      /// -----
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS06');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS06');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS06] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS06] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS06] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS06] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS06] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS06] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06] [VocabularySS06]');
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS06', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS06', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS06?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS06] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS06);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS07
      /// -----
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS07');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS07');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS07] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS07] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS07] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS07] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS07] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS07] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07] [VocabularySS07]');
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS07', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS07', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS07?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS07] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS07);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS08
      /// -----
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS08');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS08');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS08] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS08] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS08] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS08] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS08] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS08] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08] [VocabularySS08]');
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS08', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS08', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS08?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS08] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS08);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS09
      /// -----
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS09');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS09');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS09] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS09] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS09] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS09] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS09] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS09] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09] [VocabularySS09]');
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS09', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS09', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS09?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS09] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS09);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS10
      /// -----
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS10');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS10');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS10] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS10] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS10] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS10] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS10] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS10] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10] [VocabularySS10]');
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS10', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS10', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS10?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS10] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS10);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS11
      /// -----
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS11');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS11');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS11] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS11] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS11] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS11] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS11] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS11] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11] [VocabularySS11]');
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS11', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS11', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS11?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS11] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS11);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS12
      /// -----
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS12');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS12');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS12] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS12] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS12] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS12] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS12] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS12] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12] [VocabularySS12]');
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS12', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS12', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS12?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS12] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS12);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS13
      /// -----
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS13');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS13');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS13] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS13] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS13] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS13] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS13] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS13] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13] [VocabularySS13]');
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS13', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS13', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS13?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS13] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS13);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS14
      /// -----
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS14');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS14');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS14] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS14] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS14] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS14] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS14] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS14] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14] [VocabularySS14]');
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS14', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS14', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS14?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS14] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS14);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS15
      /// -----
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS15');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS15');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS15] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS15] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS15] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS15] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS15] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS15] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15] [VocabularySS15]');
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS15', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS15', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS15?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS15] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS15);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS16
      /// -----
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS16');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS16');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS16] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS16] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS16] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS16] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS16] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS16] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16] [VocabularySS16]');
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS16', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS16', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS16?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS16] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS16);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS17
      /// -----
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS17');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS17');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS17] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS17] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS17] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS17] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS17] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS17] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17] [VocabularySS17]');
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS17', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS17', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS17?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS17] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS17);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS18
      /// -----
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS18');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS18');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS18] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS18] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS18] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS18] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS18] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS18] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18] [VocabularySS18]');
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS18', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS18', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS18?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS18] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS18);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS19
      /// -----
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS19');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS19');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS19] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS19] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS19] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS19] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS19] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS19] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setIsExampleOnLeft(value: false, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setIsExampleOnRight(value: true, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19] [VocabularySS19]');
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS19', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS19', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS19?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS19] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS19);

      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// TODO: [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]
      /// ----- [=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]_[=====]

      /// -----
      /// TODO: VocabularySS20
      /// -----
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setWord(value: 'Vocabulary_SS20');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setTopicSpecificMeaning(value: 'Nghĩa vocabulary_SS20');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setIsNoun(value: true);

      /// TODO: Sentence
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setTitle(value: 'Example: 1/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setEngSentence(value: '[VocabularySS20] _ExampleSentenceSS01: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS01?.setVieSentence(value: '[VocabularySS20] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setTitle(value: 'Example: 2/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setEngSentence(value: '[VocabularySS20] _ExampleSentenceSS02: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS02?.setVieSentence(value: '[VocabularySS20] Tiếp tục nhé, bạn đang làm rất tốt.');

      ///
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setTitle(value: 'Example: 3/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setEngSentence(value: '[VocabularySS20] _ExampleSentenceSS03: Keep going, you\'re doing great.');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleSentenceSS03?.setVieSentence(value: '[VocabularySS20] Tiếp tục nhé, bạn đang làm rất tốt.');

      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setIsExampleOnLeft(value: true, isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setIsExampleOnRight(value: false, isPriorityOverride: true);

      /// TODO: Paragraph
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setTitle(value: 'Paragraph: 1/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS01(value: 'ExampleParagraphSS01 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS02(value: 'ExampleParagraphSS01 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setEngSentenceSS03(value: 'ExampleParagraphSS01 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS01(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS02(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS03(value: 'ExampleParagraphSS01', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS01?.setInsightVocabSS04(value: 'ExampleParagraphSS01', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setTitle(value: 'Paragraph: 2/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS01(value: 'ExampleParagraphSS02 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS02(value: 'ExampleParagraphSS02 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setEngSentenceSS03(value: 'ExampleParagraphSS02 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS01(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS02(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS03(value: 'ExampleParagraphSS02', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS02?.setInsightVocabSS04(value: 'ExampleParagraphSS02', isPriorityOverride: true);

      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setTitle(value: 'Paragraph: 3/3');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS01(value: 'ExampleParagraphSS03 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS02(value: 'ExampleParagraphSS03 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setEngSentenceSS03(value: 'ExampleParagraphSS03 [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20] [VocabularySS20]');
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS01(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS02(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS03(value: 'ExampleParagraphSS03', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.getVocabularyExampleParagraphSS03?.setInsightVocabSS04(value: 'ExampleParagraphSS03', isPriorityOverride: true);

      /// TODO: Pronunciation
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setPronunciationUK(value: 'PronunciationUK VocabSS20', isPriorityOverride: true);
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setPronunciationUS(value: 'PronunciationUS VocabSS20', isPriorityOverride: true);

      /// TODO: MeaningInEng
      getVocabularyTime?.getVocabularySS20?.getVocabularyDataModel?.setTopicSpecificMeaningInEng(
        value:
            '[VocabSS20] Every small step you take today is building the future you dream about. Even when progress feels slow, you’re moving forward, gaining strength, and becoming someone more capable than yesterday. Challenges will come, but they are proof that you’re growing, not signs that you should stop. Believe in the value of consistency — showing up, learning, and trying again. You don’t need to be perfect; you just need to keep going. Trust your effort, stay patient with yourself, and remember that great achievements come from ordinary days filled with determination. You are much stronger than you think.',
        isPriorityOverride: true,
      );

      /// TODO: Conversation

      ///
      getVocabularyTime?.getCurrentVocabularyItem?.getTopicVocabularyItemList?.add(getVocabularyTime?.getVocabularySS20);

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
