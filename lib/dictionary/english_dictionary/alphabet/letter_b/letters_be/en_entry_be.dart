import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "be" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace be - replace EnglishEntrybe

// replace speakBe - /bi/, strong form  /biː/

enum TtsState { playing }

class EnglishEntrybe extends StatelessWidget {
// blank divider
  EnglishEntrybe({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBe(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("be"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes1(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Today is Monday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes2(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is ten years old."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes3(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be quick!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes4(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was really hot in the Spain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes5(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He thinks it's clever to make fun of people."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes6(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Is there a country called Canada?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes7(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's from Italy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes8(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The party is on Friday evening."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes9(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has been in her room for hours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes10(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll be at the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes11(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's two thirty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes12(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘How much is that dress?’ ‘Eighty dollars.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes13(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Three and three is six."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes14(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "How much is a thousand pounds in euros?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes15(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Is your jacket real leather?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes16(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The money's not yours, it's John's."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes17(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Money isn't everything."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes18(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A thousand dollars is nothing to somebody as rich as he is."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes19(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I am studying Chinese."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes20(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll be seeing him soon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes21(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You're not hungry, are you?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes22(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ben's coming, isn't he?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes23(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Where were they made?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes24(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Karen wasn't beaten in any of her games, but all the others were."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes25(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I am to call them once I reach the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes26(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You are to report this to the police."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes27(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was to regret that decision for the rest of his life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes28(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Anna was nowhere to be found."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes29(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was never to see his wife again."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes30(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If we were to offer you more money, would you stay?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes31(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Were we to offer you more money, would you stay?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes32(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've never been to Spain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes33(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I tried phoning but there was no answer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes34(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The town is three miles away."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes35(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was killed in the war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBes36(String languageCode) async {
    // DOPSUM: CHANGE speakBe
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They are to be married in June."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 22, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "be"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /bi/, strong form  /biː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBe("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /bi/, strong form  /biː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBe("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 22
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
                  VideoIconForTab(), // 15
                  VideoIconForTab(), // 16
                  VideoIconForTab(), // 17
                  VideoIconForTab(), // 18
                  VideoIconForTab(), // 19
                  VideoIconForTab(), // 20
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١. (کردار) وەک کرداری یاریدەدەر بەکاردێت بۆ ناونانی خەڵکی یان شت، یان بۆ ناساندنیان یان پێدانی زانیاریی زیاتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Today is Monday."),
                              const ExampleSentenceKurdish(
                                  text: "ئەمڕۆ دووشەممەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He is ten years old."),
                              const ExampleSentenceKurdish(
                                  text: "ئەو دە ساڵە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(text: "Be quick!"),
                              const ExampleSentenceKurdish(text: "خێرابە!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) بەشێوەی is و was بەکاردێت لەگەڵ it بۆ باسکردنی دۆخێک یان دەربڕینی بۆچوونت لەسەری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "It was really hot in the Spain."),
                              const ExampleSentenceKurdish(
                                  text: "زۆر گەرم بوو لە ئیسپانیا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He thinks it's clever to make fun of people."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وابیردەکاتەوە ئازاییە گاڵتە بە خەڵکی بکەیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) شتێک بوونی ھەبێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I tried phoning but there was no answer."),
                              const ExampleSentenceKurdish(
                                  text: "تەلەفۆنم کرد بەڵام وەڵام نەدرایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes33("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Is there a country called Canada?"),
                              const ExampleSentenceKurdish(
                                  text: "وڵاتێک ھەیە بەناوی کەنەدا؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بۆ دیاریکردنی شوێن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The town is three miles away."),
                              const ExampleSentenceKurdish(
                                  text: "شارۆچکەکە سێ میل دوورە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەکاردێت بۆ دیاریکردنی شوێنی لەدایکبوون یان شوێنی ژیانی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She's from Italy."),
                              const ExampleSentenceKurdish(
                                  text: "خەڵکی ئیتالیایە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) بەکاردێت بۆ دیاریکردنی کاتی ڕوودانی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The party is on Friday evening."),
                              const ExampleSentenceKurdish(
                                  text: "ئاھەنگەکە لە شەوی ھەینی دەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) مانەوە لە شوێنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She has been in her room for hours."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆ چەندین کاتژمێرە لە ژوورەکەی ماوەتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) بەژداربوون لە ئاھەنگێک یان ئامادەبوون لە شوێنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll be at the party."),
                              const ExampleSentenceKurdish(
                                  text: "لە ئاھەنگەکە دەبم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) بۆ وتنی کات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "It's two thirty."),
                              const ExampleSentenceKurdish(
                                  text: "کاتژمێر دوو نیوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) بۆ وتنی تێچووی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "‘How much is that dress?’ ‘Eighty dollars.’"),
                              const ExampleSentenceKurdish(
                                  text: "'ئەو کراسە بە چەندە؟' 'ھەشتا دۆلار.'"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) بۆ وتنی ئەوەی دوو شت یەکسانن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Three and three is six."),
                              const ExampleSentenceKurdish(
                                  text: "سێ و سێ شەش دەکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "How much is a thousand pounds in euros?"),
                              const ExampleSentenceKurdish(
                                  text: "ھەزار پاوەند بە یۆرۆ دەبێتە چەند؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) سەردانکردن یان پەیوەندیکردن بە شوێنێکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I've never been to Spain."),
                              const ExampleSentenceKurdish(
                                  text: "ھەرگیز نەچوومەتە ئیسپانیا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes32("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بۆ وتنی ئەوەی شتێک لە چی درووستکراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Is your jacket real leather?"),
                              const ExampleSentenceKurdish(
                                  text: "چاکەتەکەت چەرمی ئەسڵییە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (کردار) بۆ وتنی ئەوەی شتێک ھی کێیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The money's not yours, it's John's."),
                              const ExampleSentenceKurdish(
                                  text: "پارەکە ھی تۆ نییە، ھی جۆنە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (کردار) بۆ وتنی ئەوەی شتێک چەندە گرنگە بۆ کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Money isn't everything (= it is not the only important thing)."),
                              const ExampleSentenceKurdish(
                                  text: "پارە ھەموو شت نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A thousand dollars is nothing to somebody as rich as he is."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەزار دۆلار بۆ دەوڵەمەندێکی وەک ئەو ھیچ نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٦. (کاری یاریدەدەر) لەگەڵ کاری ڕانەبردووی تەواو (کردار + ing) بەکاردێت بۆ دیاریکردنی دەمی بەردەوامی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I am studying Chinese."),
                              const ExampleSentenceKurdish(
                                  text: "زمانی چینی دەخوێنم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll be seeing him soon."),
                              const ExampleSentenceKurdish(
                                  text: "بەم‌زوانە دەیبینم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٧. (کاری یاریدەدەر) بەکاردێت بۆ درووستکردنی کلکە پرسیار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "You're not hungry, are you?"),
                              const ExampleSentenceKurdish(
                                  text: "برسیت نییە، وایە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Ben's coming, isn't he?"),
                              const ExampleSentenceKurdish(
                                  text: "بێن دێت، وایە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٨. (کاری یاریدەدەر) لەگەڵ کاری ڕابردووی تەواو بەکاردێت بۆ درووستکردنی ڕستەی نادیار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was killed in the war."),
                              const ExampleSentenceKurdish(
                                  text: "لە جەنگەکە کوژرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes35("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Where were they made?"),
                              const ExampleSentenceKurdish(
                                  text: "لەکوێ درووستکران؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٩. (کاری یاریدەدەر) بۆ دووربوون لە دووبارە بەکارھێنانەوەی تەواوی کردارێک لە دەمی نادیار یان بەردەوامی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Karen wasn't beaten in any of her games, but all the others were."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارن لە ھیچ کام لە یارییەکانی شکستی پێ‌نەھێندرا، بەڵام توانرا بۆ تەواوی ئەوانی تر."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٠. (کاری یاریدەدەر) بۆ پیشاندانی ئەوەی چی دەبێت یان پێویستە بکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I am to call them once I reach the airport."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت پەیوەندییان پێوە بکەم کە دەگەمە فڕۆکەخانەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You are to report this to the police."),
                              const ExampleSentenceKurdish(
                                  text: "دەبێت ئەمە بە پۆلیس بگەیەنی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢١. (کاری یاریدەدەر) بۆ ئەوەی چی ڕێکخراوە بۆ ڕوودان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They are to be married in June."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پلان وایە لە حوزەیران ھاوسەرگیری بکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes36("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٢. (کاری یاریدەدەر) بۆ وتنی ئەوەی چی دواتر ڕوویدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was to regret that decision for the rest of his life (= he did regret it)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆ تەواوی ژیانی ماوەی خەفەتی لەو بڕیارە خوارد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٣. (کاری یاریدەدەر) بۆ وتنی ئەوەی شتێک ڕووینەدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Anna was nowhere to be found (= we could not find her anywhere)."),
                              const ExampleSentenceKurdish(
                                  text: "ئانا لە ھیچ کوێیەک نەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was never to see his wife again (= although he did not know it would be so at the time, he did not see her again)."),
                              const ExampleSentenceKurdish(
                                  text: "ھەرگیز ژنەکەی نەدییەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٤. (کاری یاریدەدەر) بۆ دەربڕینی مەرج"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "If we were to offer you more money, would you stay?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەگەر پارەی زیاترت پێ بدەین، دەمێنیتەوە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Were we to offer you more money, would you stay?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەگەر پارەی زیاترت پێ بدەین، دەمێنیتەوە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBes31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBes31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    YoutubeEmbeddedthirteen(),
                    YoutubeEmbeddeddfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddeddsixteen(),
                    YoutubeEmbeddeddseventeen(),
                    YoutubeEmbeddeddeighteen(),
                    YoutubeEmbeddeddnineteen(),
                    YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Verb: be (derived forms: am)
1. Have the quality of being; (copula, used with an adjective or a predicate noun)
"John is rich"; "This is not a good answer"
 
2. Be identical to; be someone or something
"The president of the company is John Smith"; "This is my house"
 
2. Occupy a certain position or area; be somewhere
"Where is my umbrella?"; "The toolshed is in the back"; "What is behind this behavior?"
 
4. Have reality; have an existence, be extant (= exist)
"Is there a God?";
 
5. Happen, occur, take place
"I lost my wallet; this was during the visit to my parents' house"; "There was a lot of noise in the kitchen"
 
6. Be identical or equivalent to (= equal)
"One dollar is 1,000 rubles these days!";
 
7. Form or compose (= constitute, represent, make up, comprise)
"This money is my only income"; "The stone wall was the backdrop for the performance";
 
8. Work in a specific place, with a specific subject, or in a specific function (= follow)
"He is a herpetologist"; "She is our resident philosopher";
 
9. Represent, as of a character on stage (= embody, personify)
"Derek Jacobi was Hamlet";

10. Spend or use time
"I may be an hour"
 
11. Have life, be alive (= live)
"Our great leader is no more";
 
12. To remain unmolested, undisturbed, or uninterrupted -- used only in infinitive form
"let her be"
 
13. Be priced at (= cost)

- Noun: Be (derived forms: Bes)
1. A light strong brittle grey toxic bivalent metallic element (= beryllium, glucinium, atomic number 4)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '1ypyksuijLs',
    startSeconds: 33,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'lVoGZiL-kns',
    startSeconds: 19,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'AC_15fULavo',
    startSeconds: 14,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'wrr9J7BJ6vE',
    startSeconds: 45,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hUBsxCcJeUc',
    startSeconds: 9,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Y2T_rIZ4Pho',
    startSeconds: 19,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Oq61TxejZ5g',
    startSeconds: 27,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hFZFjoX2cGg',
    startSeconds: 155,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'VrKW58MS12g',
    startSeconds: 272,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DTvS9lvRxZ8',
    startSeconds: 23,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'w98l2EFR6dE',
    startSeconds: 35,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hS2x1zl4rn0',
    startSeconds: 99,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zAGVQLHvwOY',
    startSeconds: 25,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '3MOFv_8A3S0',
    startSeconds: 191,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'FHJ3CMWnVxY',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'R_fZjGm2OrM',
    startSeconds: 336,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'iEKLFS-aKcw',
    startSeconds: 15,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'CleUrqPLCzU',
    startSeconds: 80,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ZQy89tZ-mRU',
    startSeconds: 260,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '66aG5P0kQpU',
    startSeconds: 31,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}



// end be// TODO Implement this library.
