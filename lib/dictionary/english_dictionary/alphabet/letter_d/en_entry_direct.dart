import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydirect extends StatefulWidget {
  const EnglishEntrydirect({super.key});

  @override
  State<EnglishEntrydirect> createState() => _EnglishEntrydirectState();
}

class _EnglishEntrydirectState extends State<EnglishEntrydirect> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "direct");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: direct");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /dəˈrekt/,  /daɪˈrekt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("direct");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdirect("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /dəˈrekt/,  /daɪˈrekt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("direct");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdirect("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This door allows direct access from the kitchen to the garage.");
  }

  Future<void> speakdirects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's a direct train to Leeds.");
  }

  Future<void> speakdirects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Isn't there a more direct route?");
  }

  Future<void> speakdirects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The direct way to the river would be through the park.");
  }

  Future<void> speakdirects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The most direct path to the summit is very steep and difficult.");
  }

  Future<void> speakdirects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There's a direct train connecting the airport and the city.");
  }

  Future<void> speakdirects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The bombers scored direct hits on two ships.");
  }

  Future<void> speakdirects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She has been in direct contact with the prime minister.");
  }

  Future<void> speakdirects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There is a direct connection between these two phenomena.");
  }

  Future<void> speakdirects10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He died as a direct result of his employer's actions.");
  }

  Future<void> speakdirects11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was cleared of any direct involvement in the case.");
  }

  Future<void> speakdirects12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Participation in sport brings many benefits, both direct and indirect.");
  }

  Future<void> speakdirects13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You only get the disease through direct contact with contaminated blood.");
  }

  Future<void> speakdirects14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The plant should not be placed in direct sunlight.");
  }

  Future<void> speakdirects15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Protect your child from direct sunlight by using a sunscreen.");
  }

  Future<void> speakdirects16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He would not give a direct answer.");
  }

  Future<void> speakdirects17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her response is refreshingly direct.");
  }

  Future<void> speakdirects18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You'll have to get used to his direct manner.");
  }

  Future<void> speakdirects19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their message is simple and direct: obesity kills.");
  }

  Future<void> speakdirects20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is no direct evidence for the beneficial effects of these herbs.");
  }

  Future<void> speakdirects21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This information has a direct bearing on the case.");
  }

  Future<void> speakdirects22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was no direct proof of his personal involvement.");
  }

  Future<void> speakdopsum1s23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("That's the direct opposite of what you told me yesterday.");
  }

  Future<void> speakdopsum1s24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Diana is a direct descendant of Robert Peel.");
  }

  Future<void> speakdopsum1s25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was asked to take command and direct operations.");
  }

  Future<void> speakdopsum1s26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A police officer was directing traffic.");
  }

  Future<void> speakdopsum1s27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("How much should the teacher guide and direct the students?");
  }

  Future<void> speakdopsum1s28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A new manager has been appointed to direct the project.");
  }

  Future<void> speakdopsum1s29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The campaign was carefully directed from party central office.");
  }

  Future<void> speakdopsum1s30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She prefers to act rather than direct.");
  }

  Future<void> speakdopsum1s31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He directed the school play.");
  }

  Future<void> speakdopsum1s32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The film was written and directed by Sofia Coppola.");
  }

  Future<void> speakdopsum1s33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He directed his attention to the next task.");
  }

  Future<void> speakdopsum1s34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All our efforts should be directed towards helping those who need it.");
  }

  Future<void> speakdopsum1s35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her criticism was directed at her own superiors.");
  }

  Future<void> speakdopsum1s36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book is directed at younger readers.");
  }

  Future<void> speakdopsum1s37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's not far—I'll direct you.");
  }

  Future<void> speakdopsum1s38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Could you direct me to the station?");
  }

  Future<void> speakdopsum1s39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was directed to a table beside the window.");
  }

  Future<void> speakdopsum1s40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The police officers had been directed to search the building.");
  }

  Future<void> speakdopsum1s41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The judge directed that the mother be given custody of the children.");
  }

  Future<void> speakdopsum1s42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Direct any complaints to the Customer Services department.");
  }

  Future<void> speakdopsum1s43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We flew direct to Hong Kong.");
  }

  Future<void> speakdopsum1s44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can now fly direct from Birmingham airport.");
  }

  Future<void> speakdopsum1s45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I prefer to deal with him direct.");
  }

  Future<void> speakdopsum1s46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Customers can buy produce direct from the farmer.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ڕاست، ڕاستەوخۆ، سەرڕاست، ڕاستەوانە، بێ‌نێوان، ڕاستەوڕاست، بێ‌ناوەند،	دروست، لەڕوو،	تەواو، ڕەبەق، ڕاستەوخۆ، بە شێوەیەکی ڕاستەوڕاست، یەک‌ڕاست، ڕاست
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بە شێوەی ڕاستەوخۆ؛ بەبێ وەستان یان لادان"),
          SentencesRow(
            englishText:
                "This door allows direct access from the kitchen to the garage.",
            kurdishText:
                "ئەم دەرگایە ڕێگای ڕاستەوخۆ لە چێشتخانەکە بۆ گەراجەکە دابین دەکات.",
            onPressedBritish: () => speakdirects1("en-GB"),
            onPressedAmerican: () => speakdirects1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There's a direct train to Leeds (= it may stop at other stations but you do not have to change trains).",
            kurdishText: "شەمەندەفەری ڕاستەوخۆ ھەیە بۆ لیدز.",
            onPressedBritish: () => speakdirects2("en-GB"),
            onPressedAmerican: () => speakdirects2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "Isn't there a more direct route?",
                    kurdishText: "ڕێگایەکی زیاتر ڕاستەوخۆ نییە؟",
                    onPressedBritish: () => speakdirects3("en-GB"),
                    onPressedAmerican: () => speakdirects3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The direct way to the river would be through the park.",
                    kurdishText:
                        "ڕێگای ڕاستەوخۆ بۆ ڕووبارەکە بە پارکەکەدا دەبێت.",
                    onPressedBritish: () => speakdirects4("en-GB"),
                    onPressedAmerican: () => speakdirects4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The most direct path to the summit is very steep and difficult.",
                    kurdishText:
                        "ڕەستەوخۆترین ڕێگا بۆ لوتکەکە زۆر سەرەوخوار و سەختە.",
                    onPressedBritish: () => speakdirects5("en-GB"),
                    onPressedAmerican: () => speakdirects5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "There's a direct train connecting the airport and the city.",
                    kurdishText:
                        "شەمەندەفەرێکی ڕاستەوخۆ ھەیە کە فڕۆکەخانەکە و شارەکە پێکەوە دەبەستێت.",
                    onPressedBritish: () => speakdirects6("en-GB"),
                    onPressedAmerican: () => speakdirects6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The bombers scored direct hits on two ships.",
                    kurdishText:
                        "بۆمبھاوێژەکان لێدانی ڕاستەوخۆیان دا لە کەشتی.",
                    onPressedBritish: () => speakdirects7("en-GB"),
                    onPressedAmerican: () => speakdirects7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) کە ڕوودەدات بەبێ دەستێوەردانی دەرەکی یان لەخۆگرتنی کەسی دیکە"),
          SentencesRow(
            englishText:
                "She has been in direct contact with the prime minister.",
            kurdishText: "لە پەیوەندیی ڕاستەوخۆدا بووە لەگەڵ سەرۆک وەزیران.",
            onPressedBritish: () => speakdirects8("en-GB"),
            onPressedAmerican: () => speakdirects8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There is a direct connection between these two phenomena.",
            kurdishText: "پەیوەندیی ڕاستەوخۆ ھەیە لەنێوان دوو دیاردەکە.",
            onPressedBritish: () => speakdirects9("en-GB"),
            onPressedAmerican: () => speakdirects9("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "He died as a direct result of his employer's actions.",
                    kurdishText:
                        "بە ئەنجامی ڕاستەوخۆی کارەکانی خاوەن کارەکەی گیانی لەدەستدا.",
                    onPressedBritish: () => speakdirects10("en-GB"),
                    onPressedAmerican: () => speakdirects10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "He was cleared of any direct involvement in the case.",
                    kurdishText:
                        "بێبەری کرا لە ھەر تێوەگلانێکی ڕاستەوخۆ لە کەیسەکەدا.",
                    onPressedBritish: () => speakdirects11("en-GB"),
                    onPressedAmerican: () => speakdirects11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Participation in sport brings many benefits, both direct and indirect.",
                    kurdishText:
                        "بەژداری کردن لە وەرزشدا زۆر سوودی ھەیە، چی ڕاستەوخۆ یان ناڕاستەوخۆ.",
                    onPressedBritish: () => speakdirects12("en-GB"),
                    onPressedAmerican: () => speakdirects12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "You only get the disease through direct contact with contaminated blood.",
                    kurdishText:
                        "نەخۆشییەکە دەگریت تەنھا بە بەرکەوتنی ڕاستەوخۆ لەگەڵ خوێنی پیس.",
                    onPressedBritish: () => speakdirects13("en-GB"),
                    onPressedAmerican: () => speakdirects13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) بەبێ ھیچ شتێک لە نێوان سەرچاوەی گەرمی یان ڕۆشنایی"),
          SentencesRow(
            englishText: "The plant should not be placed in direct sunlight.",
            kurdishText: "ڕووەکەکە نابێت لە پێش تیشکی ڕاستەوخۆی خۆر دابنرێت.",
            onPressedBritish: () => speakdirects14("en-GB"),
            onPressedAmerican: () => speakdirects14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Protect your child from direct sunlight by using a sunscreen.",
            kurdishText: "منداڵەکەت لە تیشکی ڕاستەوخۆی خۆر بپارێزە بە دژەخۆر.",
            onPressedBritish: () => speakdirects15("en-GB"),
            onPressedAmerican: () => speakdirects15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) گوتنی ڕاستەوخۆی ئەوەی دەتەوێت بە ڕوونی کە ھەموان تێبگەن"),
          SentencesRow(
            englishText: "He would not give a direct answer.",
            kurdishText: "وەڵامێکی ڕاستەوخۆی نەدەدایەوە.",
            onPressedBritish: () => speakdirects16("en-GB"),
            onPressedAmerican: () => speakdirects16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her response is refreshingly direct.",
            kurdishText: "وەڵامەکەی ئاسوودەبەخشانە سەرڕاست بوو.",
            onPressedBritish: () => speakdirects17("en-GB"),
            onPressedAmerican: () => speakdirects17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You'll have to get used to his direct manner.",
            kurdishText: "دەبێت ڕابێیت بە ڕەفتاری ڕاستەوڕاستی.",
            onPressedBritish: () => speakdirects18("en-GB"),
            onPressedAmerican: () => speakdirects18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Their message is simple and direct: obesity kills.",
            kurdishText: "پەیامەکە سادە و ڕاستەوخۆیە: قەڵەوی دەتکوژێت.",
            onPressedBritish: () => speakdirects19("en-GB"),
            onPressedAmerican: () => speakdirects19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) کە بە ڕوونی شتێک پیشان دەدات"),
          SentencesRow(
            englishText:
                "There is no direct evidence for the beneficial effects of these herbs.",
            kurdishText:
                "ھیچ بەڵگەی درووست نییە بۆ کاریگەرییە بەسوودەکانی ئەم ڕووەکە.",
            onPressedBritish: () => speakdirects20("en-GB"),
            onPressedAmerican: () => speakdirects20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This information has a direct bearing on (= is closely connected with) the case.",
            kurdishText: "ئەم زانیارییە پەیوەندی ڕاستەوخۆی ھەیە لەگەڵ کەیسەکە.",
            onPressedBritish: () => speakdirects21("en-GB"),
            onPressedAmerican: () => speakdirects21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was no direct proof of his personal involvement.",
            kurdishText: "ھیچ بەڵگەی ڕاستەوخۆ نییە سەبارەت بە تێوەگلانی کەسیی.",
            onPressedBritish: () => speakdirects22("en-GB"),
            onPressedAmerican: () => speakdirects22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) بە تەواوی"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "That's the direct opposite of what you told me yesterday.",
            kurdishText: "ئەوە تەواو پێچەوانەی ئەوەیە کە دوێنێ پێت گوتم.",
            onPressedBritish: () => speakdopsum1s23("en-GB"),
            onPressedAmerican: () => speakdopsum1s23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ھاوەڵناو) خزمێک کە لە ڕێگەی دایک و باوکەوە بە یەکدی دەگەن"),
          SentencesRow(
            englishText: "Diana is a direct descendant of Robert Peel.",
            kurdishText: "دایانا خزمی ڕاستەوخۆی ڕۆبێرت پیڵە.",
            onPressedBritish: () => speakdopsum1s24("en-GB"),
            onPressedAmerican: () => speakdopsum1s24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) کۆنترۆڵکردن یان ڕاستەوخۆ بەرپرسی کەس/شتێک بیت"),
          SentencesRow(
            englishText: "He was asked to take command and direct operations.",
            kurdishText:
                "داوای لێکرا فەرمانداری بگرێتە دەست و ڕابەرایەتی ئۆپەراسیۆنەکان بکات.",
            onPressedBritish: () => speakdopsum1s25("en-GB"),
            onPressedAmerican: () => speakdopsum1s25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A police officer was directing traffic.",
            kurdishText: "ئەفسەرێکی پۆلیس ھاتووچۆی ڕێکدەخست.",
            onPressedBritish: () => speakdopsum1s26("en-GB"),
            onPressedAmerican: () => speakdopsum1s26("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "How much should the teacher guide and direct the students?",
                    kurdishText:
                        "تا چەند مامۆستا دەبێت ڕینوێنی و ئاراستەی خوێندکاران بکات؟",
                    onPressedBritish: () => speakdopsum1s27("en-GB"),
                    onPressedAmerican: () => speakdopsum1s27("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "A new manager has been appointed to direct the project.",
                    kurdishText:
                        "بەڕێوەبەرێکی تازە دیاریکراوە کە پڕۆژەکە بەڕێوە ببات.",
                    onPressedBritish: () => speakdopsum1s28("en-GB"),
                    onPressedAmerican: () => speakdopsum1s28("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The campaign was carefully directed from party central office.",
                    kurdishText:
                        "کەمپیەنەکە بەوریایی لە ئۆفیسی سەرەکیی پارتەکەوە ڕابەرایەتی دەکرا.",
                    onPressedBritish: () => speakdopsum1s29("en-GB"),
                    onPressedAmerican: () => speakdopsum1s29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) بوون بە دەرھێنەری فیلم، شانۆ، ھتد"),
          SentencesRow(
            englishText: "She prefers to act rather than direct.",
            kurdishText: "پێی خۆشە نواندن بکات نەک دەرھێنان.",
            onPressedBritish: () => speakdopsum1s30("en-GB"),
            onPressedAmerican: () => speakdopsum1s30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He directed the school play.",
            kurdishText: "شانۆی قوتابخانەکەی دەرھێنا.",
            onPressedBritish: () => speakdopsum1s31("en-GB"),
            onPressedAmerican: () => speakdopsum1s31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The film was written and directed by Sofia Coppola.",
            kurdishText: "فیلمەکە لەلایەن سۆفیا کۆپۆلاوە نووسرا و دەرھێنرا.",
            onPressedBritish: () => speakdopsum1s32("en-GB"),
            onPressedAmerican: () => speakdopsum1s32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) ئاراستەکردنی شتێک لە ئامانجێکی دیاریکراو"),
          SentencesRow(
            englishText: "He directed his attention to the next task.",
            kurdishText: "سەرنجی خستە سەر ئەرکی دواتر.",
            onPressedBritish: () => speakdopsum1s33("en-GB"),
            onPressedAmerican: () => speakdopsum1s33("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All our efforts should be directed towards helping those who need it.",
            kurdishText:
                "ھەموو ھەوڵەکانت دەبێت ڕوو لەوانە بن کە پێویستیان پێیەتی.",
            onPressedBritish: () => speakdopsum1s34("en-GB"),
            onPressedAmerican: () => speakdopsum1s34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her criticism was directed at her own superiors.",
            kurdishText: "ڕەخنەکانی ڕوو لە پایەبەرزەکانی خۆی بوو.",
            onPressedBritish: () => speakdopsum1s35("en-GB"),
            onPressedAmerican: () => speakdopsum1s35("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The book is directed at younger readers.",
            kurdishText: "کتێبەکە بۆ خوێنەرانی گەنجترە.",
            onPressedBritish: () => speakdopsum1s36("en-GB"),
            onPressedAmerican: () => speakdopsum1s36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) پیشاندانی کەسێک کە چۆن بگات بە شوێنێک یان بۆ کوێ بچێت"),
          SentencesRow(
            englishText: "It's not far—I'll direct you.",
            kurdishText: "دوور نییە ـ ئاراستەت دەکەم.",
            onPressedBritish: () => speakdopsum1s37("en-GB"),
            onPressedAmerican: () => speakdopsum1s37("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Could you direct me to the station?",
            kurdishText: "دەتوانیت ڕێنوێنیم بکەیت بۆ وێستگەکە؟",
            onPressedBritish: () => speakdopsum1s38("en-GB"),
            onPressedAmerican: () => speakdopsum1s38("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was directed to a table beside the window.",
            kurdishText: "ڕێنوێنی کرا بۆ مێزێک لە تەنیشت پەنجەرەکە.",
            onPressedBritish: () => speakdopsum1s39("en-GB"),
            onPressedAmerican: () => speakdopsum1s39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) دەرکردنی فەرمانێکی فەرمی"),
          SentencesRow(
            englishText:
                "The police officers had been directed to search the building.",
            kurdishText: "پۆلیسەکان فەرمانیان پێکرابوو بیناکە بگەڕێن.",
            onPressedBritish: () => speakdopsum1s40("en-GB"),
            onPressedAmerican: () => speakdopsum1s40("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The judge directed that the mother be given custody of the children.",
            englishNote:
                "British English also: The judge directed that the mother should be given custody of the children.",
            kurdishText:
                "دادوەرەکە بڕیاری دا کە دایکەکە مافی چاودێری منداڵەکانی پێبدرێت.",
            onPressedBritish: () => speakdopsum1s41("en-GB"),
            onPressedAmerican: () => speakdopsum1s41("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) ناردنی نامەیەک بۆ شوێن یان کەسێکی دیاریکراو"),
          SentencesRow(
            englishText:
                "Direct any complaints to the Customer Services department.",
            kurdishText:
                "ھەر ڕەخنەیەک بگەیەنن بە بەشی خزمەتگوزاری بەکارھێنەران.",
            onPressedBritish: () => speakdopsum1s42("en-GB"),
            onPressedAmerican: () => speakdopsum1s42("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) بەبێ گۆڕینی ڕێگا یان ئۆتۆمبێل"),
          const DividerSentences(),
          SentencesRow(
            englishText: "We flew direct to Hong Kong.",
            kurdishText: "ڕاستەوخۆ بۆ ھۆنگ کۆنگ فڕین.",
            onPressedBritish: () => speakdopsum1s43("en-GB"),
            onPressedAmerican: () => speakdopsum1s43("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You can now fly direct from Birmingham airport.",
            kurdishText: "دەتوانیت ڕاستەوخۆ لە فڕۆکەخانەی بێرمینگھامەوە بفڕیت.",
            onPressedBritish: () => speakdopsum1s44("en-GB"),
            onPressedAmerican: () => speakdopsum1s44("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٥. (کردار) بەبێ لەخۆگرتنی کەسانی دیکە، یان ئەوەی ھیچ کەس/شتێک لە نێواندا بێت"),
          SentencesRow(
            englishText: "I prefer to deal with him direct.",
            kurdishText: "باشترە لام ڕاستەوخۆ مامەڵەی لەگەڵ بکەم.",
            onPressedBritish: () => speakdopsum1s45("en-GB"),
            onPressedAmerican: () => speakdopsum1s45("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Customers can buy produce direct from the farmer.",
            kurdishText: "کڕیاران دەتوانن ڕاستەوخۆ بەرھەم لە جوتیارەکە بکڕن.",
            onPressedBritish: () => speakdopsum1s46("en-GB"),
            onPressedAmerican: () => speakdopsum1s46("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: direct (derived forms: directed, directing, directs)
1. Command with authority
"He directed the children to do their homework"
 
2. Intend (something) to move towards a certain goal, or direct to a specific place or group of people (= target, aim, place, point)
"criticism directed at her superior"; "direct your anger towards others, not towards yourself";
 
3. (performing arts) guide the actors in (plays and films)
 
4. Govern or manage
 
5. Accompany somebody somewhere to show them the way (= lead, take, conduct, guide)
"we directed him to our chief";
 
6. Cause to go somewhere (= send)
"He directed all his energies into his dissertation";
 
7. Point or cause to go (blows, weapons, or objects such as photographic equipment) towards (= aim, take, train, take aim)
 
8. (music) Have the leading position, as in the performance of a composition (= conduct, lead)
"direct an orchestra";
 
9. Give directions to; point somebody into a certain direction
"I directed them towards the town hall"
 
10. Specifically design a product, event, or activity for a certain public (= calculate, aim)
 
11. Determine the direction of travelling (= steer, maneuver [US], manoeuver [non-standard], manoeuvre [Brit, Cdn], point, head, guide, channelize, channelise [Brit])
 
12. Put an address on (an envelope) (= address)
 
13. Plan and control how a complex undertaking is done (= mastermind, engineer, organize, organise [Brit], orchestrate)
"he directed the robbery";

- Adjective: direct 
1. Having no intervening persons, agents, conditions (= unmediated)
"in direct contact with the voters"; "direct exposure to the disease"; "a direct link"; "the direct cause of the accident"; "direct vote"; "in direct sunlight";
 
2. Proceeding without deviation or interruption; straight and short
"a direct route"; "a direct flight"; "a direct hit"
 
3. Being an immediate result or consequence
"a direct result of the accident"
 
4. In precisely the same words used by a writer or speaker (= verbatim)
"a direct quotation";
 
5. Lacking compromising or mitigating elements; exact
"the direct opposite"
 
6. Straightforward in means, manner, behaviour, language or action
"a direct question"; "a direct response"; "a direct approach"
 
7. In a straight unbroken line of descent from parent to child (= lineal)
"a direct descendant of the king"; "direct heredity";
 
8. (astronomy) moving from west to east on the celestial sphere; or--for planets--around the sun in the same direction as the Earth
 
9. (mathematics) similar in nature, effect or relation to another quantity
"a term is in direct proportion to another term if it increases (or decreases) as the other increases (or decreases)"
 
10. (of a current) flowing in one direction only
"direct current"

- Adverb: direct 
1. Without deviation (= directly, straight)
"went direct to the office";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 108;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 1063;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1391;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1296;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '0zwNZJbM-Gw';
  final double _startSeconds = 75;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1409;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 476;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
        // YoutubeEmbeddedeight(),
        // YoutubeEmbeddednine(),
        // YoutubeEmbeddedten(),
        // YoutubeEmbeddedeleven(),
        // YoutubeEmbeddedtwelve(),
        // YoutubeEmbeddedthirteen(),
        // YoutubeEmbeddeddfourteen(),
        // YoutubeEmbeddedfifteen(),
        // YoutubeEmbeddeddsixteen(),
        // YoutubeEmbeddeddseventeen(),
        // YoutubeEmbeddeddeighteen(),
        // YoutubeEmbeddeddnineteen(),
        // YoutubeEmbeddedtwenty(),
        // YoutubeEmbeddedmulti(),
        YoutubeEmbeddedend(),
      ],
    );
  }
}

// end WORD_WEB