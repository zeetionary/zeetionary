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
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
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
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This door allows direct access from the kitchen to the garage.");
  }

  Future<void> speakdirects2(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a direct train to Leeds.");
  }

  Future<void> speakdirects3(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Isn't there a more direct route?");
  }

  Future<void> speakdirects4(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The direct way to the river would be through the park.");
  }

  Future<void> speakdirects5(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The most direct path to the summit is very steep and difficult.");
  }

  Future<void> speakdirects6(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There's a direct train connecting the airport and the city.");
  }

  Future<void> speakdirects7(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bombers scored direct hits on two ships.");
  }

  Future<void> speakdirects8(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has been in direct contact with the prime minister.");
  }

  Future<void> speakdirects9(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is a direct connection between these two phenomena.");
  }

  Future<void> speakdirects10(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He died as a direct result of his employer's actions.");
  }

  Future<void> speakdirects11(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was cleared of any direct involvement in the case.");
  }

  Future<void> speakdirects12(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Participation in sport brings many benefits, both direct and indirect.");
  }

  Future<void> speakdirects13(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You only get the disease through direct contact with contaminated blood.");
  }

  Future<void> speakdirects14(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The plant should not be placed in direct sunlight.");
  }

  Future<void> speakdirects15(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Protect your child from direct sunlight by using a sunscreen.");
  }

  Future<void> speakdirects16(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He would not give a direct answer.");
  }

  Future<void> speakdirects17(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her response is refreshingly direct.");
  }

  Future<void> speakdirects18(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'll have to get used to his direct manner.");
  }

  Future<void> speakdirects19(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their message is simple and direct: obesity kills.");
  }

  Future<void> speakdirects20(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is no direct evidence for the beneficial effects of these herbs.");
  }

  Future<void> speakdirects21(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This information has a direct bearing on the case.");
  }

  Future<void> speakdirects22(String languageCode) async {
    // DOPSUM: CHANGE speakdirect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was no direct proof of his personal involvement.");
  }

  Future<void> speakdopsum1s23(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That's the direct opposite of what you told me yesterday.");
  }

  Future<void> speakdopsum1s24(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Diana is a direct descendant of Robert Peel.");
  }

  Future<void> speakdopsum1s25(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was asked to take command and direct operations.");
  }

  Future<void> speakdopsum1s26(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A police officer was directing traffic.");
  }

  Future<void> speakdopsum1s27(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How much should the teacher guide and direct the students?");
  }

  Future<void> speakdopsum1s28(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A new manager has been appointed to direct the project.");
  }

  Future<void> speakdopsum1s29(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The campaign was carefully directed from party central office.");
  }

  Future<void> speakdopsum1s30(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She prefers to act rather than direct.");
  }

  Future<void> speakdopsum1s31(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He directed the school play.");
  }

  Future<void> speakdopsum1s32(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The film was written and directed by Sofia Coppola.");
  }

  Future<void> speakdopsum1s33(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He directed his attention to the next task.");
  }

  Future<void> speakdopsum1s34(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All our efforts should be directed towards helping those who need it.");
  }

  Future<void> speakdopsum1s35(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her criticism was directed at her own superiors.");
  }

  Future<void> speakdopsum1s36(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The book is directed at younger readers.");
  }

  Future<void> speakdopsum1s37(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's not far—I'll direct you.");
  }

  Future<void> speakdopsum1s38(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you direct me to the station?");
  }

  Future<void> speakdopsum1s39(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was directed to a table beside the window.");
  }

  Future<void> speakdopsum1s40(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The police officers had been directed to search the building.");
  }

  Future<void> speakdopsum1s41(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The judge directed that the mother be given custody of the children.");
  }

  Future<void> speakdopsum1s42(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Direct any complaints to the Customer Services department.");
  }

  Future<void> speakdopsum1s43(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We flew direct to Hong Kong.");
  }

  Future<void> speakdopsum1s44(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can now fly direct from Birmingham airport.");
  }

  Future<void> speakdopsum1s45(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I prefer to deal with him direct.");
  }

  Future<void> speakdopsum1s46(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Customers can buy produce direct from the farmer.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ڕاست، ڕاستەوخۆ، سەرڕاست، ڕاستەوانە، بێ‌نێوان، ڕاستەوڕاست، بێ‌ناوەند،	دروست، لەڕوو،	تەواو، ڕەبەق، ڕاستەوخۆ، بە شێوەیەکی ڕاستەوڕاست، یەک‌ڕاست، ڕاست
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بە شێوەی ڕاستەوخۆ؛ بەبێ وەستان یان لادان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This door allows direct access from the kitchen to the garage."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم دەرگایە ڕێگای ڕاستەوخۆ لە چێشتخانەکە بۆ گەراجەکە دابین دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "direct", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There's a direct train to Leeds (= it may stop at other stations but you do not have to change trains)."),
                    ExampleSentenceKurdish(
                        text: "شەمەندەفەری ڕاستەوخۆ ھەیە بۆ لیدز."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: "Isn't there a more direct route?"),
                            ExampleSentenceKurdish(
                                text: "ڕێگایەکی زیاتر ڕاستەوخۆ نییە؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The direct way to the river would be through the park."),
                            ExampleSentenceKurdish(
                                text:
                                    "ڕێگای ڕاستەوخۆ بۆ ڕووبارەکە بە پارکەکەدا دەبێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The most direct path to the summit is very steep and difficult."),
                            ExampleSentenceKurdish(
                                text:
                                    "ڕەستەوخۆترین ڕێگا بۆ لوتکەکە زۆر سەرەوخوار و سەختە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "There's a direct train connecting the airport and the city."),
                            ExampleSentenceKurdish(
                                text:
                                    "شەمەندەفەرێکی ڕاستەوخۆ ھەیە کە فڕۆکەخانەکە و شارەکە پێکەوە دەبەستێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects6("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The bombers scored direct hits on two ships."),
                            ExampleSentenceKurdish(
                                text:
                                    "بۆمبھاوێژەکان لێدانی ڕاستەوخۆیان دا لە کەشتی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects7("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) کە ڕوودەدات بەبێ دەستێوەردانی دەرەکی یان لەخۆگرتنی کەسی دیکە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She has been in direct contact with the prime minister."),
                    ExampleSentenceKurdish(
                        text:
                            "لە پەیوەندیی ڕاستەوخۆدا بووە لەگەڵ سەرۆک وەزیران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There is a direct connection between these two phenomena."),
                    ExampleSentenceKurdish(
                        text: "پەیوەندیی ڕاستەوخۆ ھەیە لەنێوان دوو دیاردەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He died as a direct result of his employer's actions."),
                            ExampleSentenceKurdish(
                                text:
                                    "بە ئەنجامی ڕاستەوخۆی کارەکانی خاوەن کارەکەی گیانی لەدەستدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects10("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He was cleared of any direct involvement in the case."),
                            ExampleSentenceKurdish(
                                text:
                                    "بێبەری کرا لە ھەر تێوەگلانێکی ڕاستەوخۆ لە کەیسەکەدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects11("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Participation in sport brings many benefits, both direct and indirect."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەژداری کردن لە وەرزشدا زۆر سوودی ھەیە، چی ڕاستەوخۆ یان ناڕاستەوخۆ."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects12("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "You only get the disease through direct contact with contaminated blood."),
                            ExampleSentenceKurdish(
                                text:
                                    "نەخۆشییەکە دەگریت تەنھا بە بەرکەوتنی ڕاستەوخۆ لەگەڵ خوێنی پیس."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirects13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirects13("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) بەبێ ھیچ شتێک لە نێوان سەرچاوەی گەرمی یان ڕۆشنایی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The plant should not be placed in direct sunlight."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕووەکەکە نابێت لە پێش تیشکی ڕاستەوخۆی خۆر دابنرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Protect your child from direct sunlight by using a sunscreen."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵەکەت لە تیشکی ڕاستەوخۆی خۆر بپارێزە بە دژەخۆر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) گوتنی ڕاستەوخۆی ئەوەی دەتەوێت بە ڕوونی کە ھەموان تێبگەن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He would not give a direct answer."),
                    ExampleSentenceKurdish(
                        text: "وەڵامێکی ڕاستەوخۆی نەدەدایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her response is refreshingly direct."),
                    ExampleSentenceKurdish(
                        text: "وەڵامەکەی ئاسوودەبەخشانە سەرڕاست بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You'll have to get used to his direct manner."),
                    ExampleSentenceKurdish(
                        text: "دەبێت ڕابێیت بە ڕەفتاری ڕاستەوڕاستی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Their message is simple and direct: obesity kills."),
                    ExampleSentenceKurdish(
                        text: "پەیامەکە سادە و ڕاستەوخۆیە: قەڵەوی دەتکوژێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) کە بە ڕوونی شتێک پیشان دەدات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There is no direct evidence for the beneficial effects of these herbs."),
                    ExampleSentenceKurdish(
                        text:
                            "ھیچ بەڵگەی درووست نییە بۆ کاریگەرییە بەسوودەکانی ئەم ڕووەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This information has a direct bearing on (= is closely connected with) the case."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم زانیارییە پەیوەندی ڕاستەوخۆی ھەیە لەگەڵ کەیسەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There was no direct proof of his personal involvement."),
                    ExampleSentenceKurdish(
                        text:
                            "ھیچ بەڵگەی ڕاستەوخۆ نییە سەبارەت بە تێوەگلانی کەسیی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirects22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirects22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) بە تەواوی"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "That's the direct opposite of what you told me yesterday."),
                    ExampleSentenceKurdish(
                        text: "ئەوە تەواو پێچەوانەی ئەوەیە کە دوێنێ پێت گوتم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ھاوەڵناو) خزمێک کە لە ڕێگەی دایک و باوکەوە بە یەکدی دەگەن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Diana is a direct descendant of Robert Peel."),
                    ExampleSentenceKurdish(
                        text: "دایانا خزمی ڕاستەوخۆی ڕۆبێرت پیڵە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) کۆنترۆڵکردن یان ڕاستەوخۆ بەرپرسی کەس/شتێک بیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was asked to take command and direct operations."),
                    ExampleSentenceKurdish(
                        text:
                            "داوای لێکرا فەرمانداری بگرێتە دەست و ڕابەرایەتی ئۆپەراسیۆنەکان بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A police officer was directing traffic."),
                    ExampleSentenceKurdish(
                        text: "ئەفسەرێکی پۆلیس ھاتووچۆی ڕێکدەخست."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "How much should the teacher guide and direct the students?"),
                            ExampleSentenceKurdish(
                                text:
                                    "تا چەند مامۆستا دەبێت ڕینوێنی و ئاراستەی خوێندکاران بکات؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdopsum1s27("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdopsum1s27("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "A new manager has been appointed to direct the project."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەڕێوەبەرێکی تازە دیاریکراوە کە پڕۆژەکە بەڕێوە ببات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdopsum1s28("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdopsum1s28("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The campaign was carefully directed from party central office."),
                            ExampleSentenceKurdish(
                                text:
                                    "کەمپیەنەکە بەوریایی لە ئۆفیسی سەرەکیی پارتەکەوە ڕابەرایەتی دەکرا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdopsum1s29("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdopsum1s29("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) بوون بە دەرھێنەری فیلم، شانۆ، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She prefers to act rather than direct."),
                    ExampleSentenceKurdish(
                        text: "پێی خۆشە نواندن بکات نەک دەرھێنان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He directed the school play."),
                    ExampleSentenceKurdish(text: "شانۆی قوتابخانەکەی دەرھێنا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The film was written and directed by Sofia Coppola."),
                    ExampleSentenceKurdish(
                        text:
                            "فیلمەکە لەلایەن سۆفیا کۆپۆلاوە نووسرا و دەرھێنرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) ئاراستەکردنی شتێک لە ئامانجێکی دیاریکراو"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He directed his attention to the next task."),
                    ExampleSentenceKurdish(
                        text: "سەرنجی خستە سەر ئەرکی دواتر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s33("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "All our efforts should be directed towards helping those who need it."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو ھەوڵەکانت دەبێت ڕوو لەوانە بن کە پێویستیان پێیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Her criticism was directed at her own superiors."),
                    ExampleSentenceKurdish(
                        text: "ڕەخنەکانی ڕوو لە پایەبەرزەکانی خۆی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The book is directed at younger readers."),
                    ExampleSentenceKurdish(
                        text: "کتێبەکە بۆ خوێنەرانی گەنجترە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) پیشاندانی کەسێک کە چۆن بگات بە شوێنێک یان بۆ کوێ بچێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It's not far—I'll direct you."),
                    ExampleSentenceKurdish(text: "دوور نییە ـ ئاراستەت دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Could you direct me to the station?"),
                    ExampleSentenceKurdish(
                        text: "دەتوانیت ڕێنوێنیم بکەیت بۆ وێستگەکە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was directed to a table beside the window."),
                    ExampleSentenceKurdish(
                        text: "ڕێنوێنی کرا بۆ مێزێک لە تەنیشت پەنجەرەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) دەرکردنی فەرمانێکی فەرمی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The police officers had been directed to search the building."),
                    ExampleSentenceKurdish(
                        text: "پۆلیسەکان فەرمانیان پێکرابوو بیناکە بگەڕێن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s40("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                      text:
                          "The judge directed that the mother be given custody of the children.",
                      note:
                          "British English also: The judge directed that the mother should be given custody of the children.",
                    ),
                    ExampleSentenceKurdish(
                        text:
                            "دادوەرەکە بڕیاری دا کە دایکەکە مافی چاودێری منداڵەکانی پێبدرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s41("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) ناردنی نامەیەک بۆ شوێن یان کەسێکی دیاریکراو"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Direct any complaints to the Customer Services department."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەر ڕەخنەیەک بگەیەنن بە بەشی خزمەتگوزاری بەکارھێنەران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s42("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s42("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) بەبێ گۆڕینی ڕێگا یان ئۆتۆمبێل"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We flew direct to Hong Kong."),
                    ExampleSentenceKurdish(text: "ڕاستەوخۆ بۆ ھۆنگ کۆنگ فڕین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s43("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s43("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You can now fly direct from Birmingham airport."),
                    ExampleSentenceKurdish(
                        text:
                            "دەتوانیت ڕاستەوخۆ لە فڕۆکەخانەی بێرمینگھامەوە بفڕیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s44("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s44("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٥. (کردار) بەبێ لەخۆگرتنی کەسانی دیکە، یان ئەوەی ھیچ کەس/شتێک لە نێواندا بێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I prefer to deal with him direct."),
                    ExampleSentenceKurdish(
                        text: "باشترە لام ڕاستەوخۆ مامەڵەی لەگەڵ بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s45("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s45("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Customers can buy produce direct from the farmer."),
                    ExampleSentenceKurdish(
                        text:
                            "کڕیاران دەتوانن ڕاستەوخۆ بەرھەم لە جوتیارەکە بکڕن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s46("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s46("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // dopsum1s4700"),
          // speakdopsum1s47
          // dopsum1s47("en-US"),
          // dopsum1s4800"),
          // speakdopsum1s48
          // dopsum1s48("en-US"),
          // dopsum1s4900"),
          // speakdopsum1s49
          // dopsum1s49("en-US"),
          // dopsum1s_6000"),
          // speakdopsum1s50
          // dopsum1s50("en-US"),
          // dopsum1s5100"),
          // speakdopsum1s51
          // dopsum1s51("en-US"),
          // dopsum1s5200"),
          // speakdopsum1s52
          // dopsum1s52("en-US"),
          // dopsum1s5300"),
          // speakdopsum1s53
          // dopsum1s53("en-US"),
          // dopsum1s5400"),
          // speakdopsum1s54
          // dopsum1s54("en-US"),
          // dopsum1s5500"),
          // speakdopsum1s55
          // dopsum1s55("en-US"),
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

    // Update the state to reflect that TTS is in progress
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
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 108;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1391;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 476;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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