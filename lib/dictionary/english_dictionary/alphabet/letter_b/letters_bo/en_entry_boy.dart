import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "boy" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

enum TtsState { playing }

class EnglishEntryboy extends StatelessWidget {
// blank divider
  EnglishEntryboy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboy(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boy"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys1(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I used to play here as a boy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys2(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The older boys at school used to tease him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys3(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Now she's a teenager, she's starting to be interested in boys."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys4(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Be a good boy and get me my coat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys5(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Two teenage boys were standing outside the shop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys6(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They've had a baby boy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys7(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She gave birth to a healthy baby boy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys8(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Oliver is a popular boy's name."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys9(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They have two boys and a girl."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys10(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How old is your eldest boy?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys11(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have three boys."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys12(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our youngest boy is just starting school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys13(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their boy is small for his age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys14(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company are hiring delivery boys."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys15(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a country boy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys16(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He used to like spending Friday nights with the boys."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys17(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We must not forget our boys serving far from home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys18(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Boy, it sure is hot!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys19(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Boy, it hurts!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys20(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys21(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys22(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys23(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys24(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys25(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys26(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys27(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys28(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboys29(String languageCode) async {
    // DOPSUM: CHANGE speakboy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboys2929"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "boy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔɪ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔɪ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboy("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: پس، کوڕ، لاو، بەچە، کوڕیژگە، مناڵکار، کوڕەکان، شاگرد، بەردەست، نۆکەر، شا، تەح، ئاخ، وەی، پیاح

١. (ناو) کوڕ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I used to play here as a boy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "جاران کە تەنھا کوڕێک بووم لێرە یاریم دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The older boys at school used to tease him."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کوڕە بە تەمەنەکان لە قوتابخانە سەریان دەناوەسەری."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Now she's a teenager, she's starting to be interested in boys."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئێستا کە کچەکە پێگەشتووە، دەستیکردووە بە حەزچوون بۆ کوڕان."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Be a good boy and get me my coat."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "کوڕێکی گوێگر بە و قەمسەڵەکەم بۆ بھێنە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Two teenage boys were standing outside the shop."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "دوو کوڕی گەنج لە دەرەوەی فرۆشگاکە وەستابوون."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text: "They've had a baby boy."),
                                      const ExampleSentenceKurdish(
                                          text: "منداڵێکی کوڕیان بووە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "She gave birth to a healthy baby boy."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "منداڵێکی کوڕی تەندرووستی بوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys7("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Oliver is a popular boy's name."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئۆلیڤەر ناوێکی بەربڵاوی کوڕانە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys8("en-US"),
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
                              text: "٢. (ناو) منداڵێکی کوڕی خێزانێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They have two boys and a girl."),
                              const ExampleSentenceKurdish(
                                  text: "دوو کوڕ و کچێکیان ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "How old is your eldest boy?"),
                              const ExampleSentenceKurdish(
                                  text: "بە تەمەنترین کوڕت چەند ساڵە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys10("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text: "I have three boys."),
                                      const ExampleSentenceKurdish(
                                          text: "سێ کوڕم ھەیە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys11("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Our youngest boy is just starting school."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بچووکترین کوڕمان تازە دەچێتە قوتابخانە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys12("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Their boy is small for his age."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "کوڕەکەیان بچووکە بەپێی تەمەنی."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakboys13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakboys13("en-US"),
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
                              text: "٣. (ناو) کوڕێک یان گەنجێک کە کارێک دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The company are hiring delivery boys."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆمپانیاکە گەنج بۆ دیلیڤەری وەردەگرن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) قسەکردن لەسەر کەسێک کە خەڵکی شوێنێکە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He's a country boy."),
                              const ExampleSentenceKurdish(
                                  text: "خەڵکی لادێیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ژمارەیەک کوڕی گەنج کە پێکەوە دەچنە دەرەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He used to like spending Friday nights with the boys."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "جاران حەزی دەکرد شەوانی ھەینی لەگەڵ ھاوڕێیانی بەسەر ببات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بۆ ناوھێنانی سەربازانی وڵاتێک و ئەوەی حەزت لێیانە و گرنگیان پێ دەدەیت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We must not forget our boys serving far from home."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت ڕۆڵەکانمان لەبیر نەکەین کە دوور لە نیشتیمان خزمەت دەکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (سەرسوڕمان) بەکاردێت بۆ پیشاندانی ھەستی سەرسوڕمان، حەز، یان ئازار"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Boy, it sure is hot!"),
                              const ExampleSentenceKurdish(
                                  text: "وەی، بەدڵنیاییەوە توونە!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Boy, it hurts!"),
                              const ExampleSentenceKurdish(
                                  text: "ئاخ، ئازاری ھەیە!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboys19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboys19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
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
- Noun: boy (derived forms: boys)
1. A youthful male person (= male child)
"she made the boy brush his teeth every night"; "most soldiers are only boys in uniform"; "the baby was a boy";
 
2. A friendly informal reference to a grown man
"he likes to play golf with the boys"
 
3. A male human offspring (= son)
"his boy is taller than he is";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "zAGVQLHvwOY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 53, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "DyOlYpL-O0g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 17, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "4tBGSfDY1Tw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 69, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "q5o6SyvhLso";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 120, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "SGhPswvyJjM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 142, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "4K32WYshK6E";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1513, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "nCPIKP_84qs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 166, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "idWpZ63isMo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 244, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "WyFktKBGfIA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 15, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "87kOloSf3u8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "bYG1aBU9cI4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 110, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "ky3KiiUK_D0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 85, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// more than one video, only first autoplay

// haʊʊʊʊʊʊʊ4
// end boy
