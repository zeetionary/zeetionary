import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "break" as TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybreak extends StatelessWidget {
// blank divider
  EnglishEntrybreak({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbreak(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("break"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks1(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the windows broke with the force of the blast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks2(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She dropped the plate and it broke into pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks3(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The boat hit a rock and broke in half."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks4(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She fell off a ladder and broke her arm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks5(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He broke the chocolate in two."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks6(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The glass broke into hundreds of pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks7(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I didn't mean to break the window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks8(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Charles is always breaking things."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks9(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My watch has broken."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks10(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think I've broken the washing machine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks11(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dog bit me but didn't break the skin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks12(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had broken the law and deserved to be punished."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks13(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People should not be allowed to break the rules."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks14(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was breaking the speed limit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks15(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had broken the conditions of her bail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks16(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've never broken my word; why should I do it now?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks17(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's break for lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks18(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Parliament breaks for recess next week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks19(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks20(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks21(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks22(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks23(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks24(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks25(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks26(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks27(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks28(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks29(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreaks30(String languageCode) async {
    // DOPSUM: CHANGE speakbreak
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreaks3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "break"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /breɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbreak("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /breɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbreak("en-US"),
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
کوردی: شکاوی، شکان، شکست، وردوخاشی، قڵیش، کون، شەبەق، درز، دابڕاوی، پساوی، پسان، پچڕان، هەڵوێستە، هەڵوەستە، پشوو، وچان، ورنگ، پێندان، پشووی خوێندن، گۆهارتن، گۆڕان، گۆڕانی ناکاو، دەرچوون، دەربازبوون، هەڵاتن، نافەرمی چانس، هەل، دەرفەت، دەلیڤە

١. (کردار) شکان یان شکاندن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All the windows broke with the force of the blast."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەموو پەنجەرەکان بە هێزی تەقینەوەکە شکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks1("en-US"),
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
                                      "She dropped the plate and it broke into pieces."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەورییەکەی بەردایەوە و پارچەپارچە بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks2("en-US"),
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
                                              "The boat hit a rock and broke in half."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بەلەمەکە لە تاشە بەردێکی دا و دووکەرت بوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks3("en-US"),
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
                                              "She fell off a ladder and broke her arm."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "لە پەیژەیەک کەوتە خوارەوە و دەستی شکا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks4("en-US"),
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
                                              "He broke the chocolate in two."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "چکلێتەکەی کرد بە دوو کەرتەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks5("en-US"),
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
                                              "The glass broke into hundreds of pieces."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "شووشەکە بوو بە سەدان پارچەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks6("en-US"),
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
                                              "I didn't mean to break the window."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "مەبەستم نەبوو پەنجەرەکە بشکێنم."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks7("en-US"),
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
                                              "Charles is always breaking things."),
                                      const ExampleSentenceKurdish(
                                          text: "چارڵس هەمیشە شت دەشکێنێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks8("en-US"),
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
                              text: "٢. (کردار) وەستان لە کارکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "My watch has broken."),
                              const ExampleSentenceKurdish(
                                  text: "کاتژمێرەکەم وەستاوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks9("en-US"),
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
                                      "I think I've broken the washing machine."),
                              const ExampleSentenceKurdish(
                                  text: "پێم‌وایە جلشۆرەکەم شکاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) بڕینی پێست و خوێن‌لێ‌هێنانی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The dog bit me but didn't break the skin."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەگەکە گازی لێ گرتم بەڵام پێستمی نەدڕی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کردنی شتێک کە دژی یاسا، بەڵین، ڕێککەوتن، هتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I had broken the law and deserved to be punished."),
                              const ExampleSentenceKurdish(
                                  text: "یاسام شکاندبوو و شایەنی سزا بووم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks12("en-US"),
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
                                      "People should not be allowed to break the rules."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خەڵکی نابێت ڕێگایان پێ بدرێت یاساکان بشکێنن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks13("en-US"),
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
                                              "He was breaking the speed limit (= travelling faster than the law allows)."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "خێراتر لە خێرایی ڕێگەپێدراو دەچوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks14("en-US"),
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
                                              "She had broken the conditions of her bail."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "مەرجەکانی ئازادکردنی بە کەفالەتی پێشێلکردبوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks15("en-US"),
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
                                              "I've never broken my word; why should I do it now?"),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "هەرگیز قسەی خۆمم نەشکاندووە، بۆچی ئێستا بیکەم؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreaks16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreaks16("en-US"),
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
                                  "٥. (کردار) وەستان لە کردنی شتێک بۆ ماوەیەک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's break for lunch."),
                              const ExampleSentenceKurdish(
                                  text: "با پشوویەک بۆ نانی نیوەڕۆ وەربگرین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks17("en-US"),
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
                                      "Parliament breaks for recess next week."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەرلەمان پشووی ساڵانەی وەردەگرێت هەفتەی داهاتوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreaks18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreaks18("en-US"),
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
- Verb: break (derived forms: broken, breaking, breaks, broke)
1. Destroy the integrity of; usually by force; cause to separate into pieces or fragments
"He broke the glass plate"; "She broke the match"
 
2. Become separated into pieces or fragments (= separate, split up, fall apart, come apart)
"The figurine broke";

3. Render inoperable or ineffective (= hose [N. Amer, informal])
"You broke the alarm clock when you took it apart!";
 
4. Ruin completely (= bust [informal])
 
5. Terminate or end (= interrupt)
"break a lucky streak"; "break the cycle of poverty";
 
6. Act in disregard of laws, rules, contracts, or promises (= transgress, offend, infract, violate, go against, breach)
"break a law";

7. Move away or escape suddenly (= break out, break away)
"The horses broke from the stable"; "Three inmates broke jail"; "Nobody can break out--this prison is high security"; "The horses broke away from the stable";
 
8. Scatter or part
"The clouds broke after the heavy downpour"
 
9. Force out or release suddenly and often violently something pent up (= burst, erupt)
"break into tears";

10. Prevent completion (= break off, discontinue, stop)
"break off the negotiations";
 
11. Enter someone's (virtual or real) property in an unauthorized manner, usually with the intent to steal or commit a violent act (= break in)
"Someone broke in while I was on vacation"; "They broke into my car and stole my radio!"; "who broke into my account last night?";
 
12. Make submissive, obedient, or useful (= break in)
"The horse was tough to break"; "I broke in the new intern";
 
13. Fail to agree with; be in violation of; as of rules or patterns (= violate, go against)
"This sentence breaks the rules of syntax";

14. Surpass in excellence (= better)
"break a record";

15. Make known to the public information that was previously known only to a few people or that was meant to be kept a secret (= unwrap, disclose, let on, bring out, reveal, discover, expose, divulge, give away, let out, uncover, lay bare)
"he broke the news to her";

16. Come into being
"light broke over the horizon"; "Voices broke in the air"
 
17. Stop operating or functioning (= fail, go bad, give way, die, give out, conk out [informal], go, break down, pack up [Brit, informal])
"The bus we travelled in broke down on the way to town"; "The coffee maker broke";
 
18. Interrupt a continued activity (= break away)
 
19. (military) make a rupture in the ranks of the enemy or one's own by quitting or fleeing
"The ranks broke"
 
20. Curl over and fall apart in surf or foam, of waves
"The surf broke"
 
21. Lessen in force or effect (= dampen, damp, soften, weaken)
"break a fall";

22. Be broken in
"If the new teacher won't break, we'll add some stress"
 
23. Come to an end
"The heat wave finally broke yesterday"
 
24. Vary or interrupt a uniformity or continuity
 
25. Cause to give up a habit
"She finally broke herself of smoking cigarettes"
 
26. Give up
"break cigarette smoking"
 
27. Come forth or begin from a state of latency
"The first winter storm broke over New York"
 
28. Happen or take place
"Things have been breaking pretty well for us in the past few months"
 
29. Cause the failure or ruin of
"His peccadilloes finally broke his marriage"; "This play will either make or break the playwright"
 
30. Invalidate by judicial action
 
31. Discontinue an association or relation; go different ways (= separate, part, split up, split, break up)
"The business partners broke over a tax question"; "The couple broke up after 25 years of marriage";
 
32. Assign to a lower position; reduce in rank (= demote, bump, relegate, kick downstairs)
 
33. Reduce to bankruptcy (= bankrupt, ruin, smash)
"My daughter's fancy wedding is going to break me!";
 
34. Change directions suddenly
 
35. Emerge from the surface of a body of water
"The whales broke"
 
36. Break down, literally or metaphorically (= collapse, fall in, cave in, give, give way, founder)
"The dam broke";
 
37. Do a break dance (= break dance, break-dance)
"Kids were break-dancing at the street corner";
 
38. Exchange for smaller units of money
"I had to break a £100 bill just to buy the candy"
 
39. Destroy the completeness of a set of related items (= break up)
"The book dealer would not break the set";

40. (billiards) make the opening shot that scatters the balls
 
41. Separate from a clinch, in boxing
"The referee broke the boxers"
 
42. Go to pieces (= wear, wear out, bust [informal], fall apart)
"The lawn mower finally broke";
 
43. Break a piece from a whole (= break off, snap off)
"break a branch from a tree";

44. Become punctured or penetrated
"The skin broke"
 
45. Pierce or penetrate
"The blade broke her skin"
 
46. Be released or become known; of news (= get out, get around)
"News of her death broke in the morning";
 
47. Cease an action temporarily (= pause, intermit)
"let's break for lunch";

48. Interrupt the flow of current in
"break a circuit"
 
49. Undergo breaking
"The simple vowels broke in many Germanic languages"
 
50. Find a flaw in
"break an alibi"; "break down a proof"
 
51. Find the solution or key to
"break the code"
 
52. Change suddenly from one tone quality or register to another
"Her voice broke to a whisper when she started to talk about her children"
 
53. Happen (= recrudesce, develop)
"These political movements break from time to time";
 
54. Become fractured; break or crack on the surface only (= crack, check)
"The glass broke when it was heated";

55. Crack; of the male voice in puberty
"his voice is breaking--he should no longer sing in the choir"
 
56. Fall sharply
"stock prices broke"
 
57. Fracture a bone of (= fracture)
"I broke my foot while playing hockey";
 
58. Diminish or discontinue abruptly
"The patient's fever broke last night"
 
59. Weaken or destroy in spirit or body
 
60. Yield information under interrogation or torture (= crack)
"They managed to break him on the third day";
 
61. Successfully decipher a code (= crack)

- Noun: break (derived forms: breaks)
1. A pause from doing something (as work) (= respite, recess, time out)
"we took a 10-minute break";

2. Some abrupt occurrence that interrupts an ongoing activity (= interruption)
"there was a break in the action when a player was hurt";
 
3. An unexpected piece of good luck (= good luck, happy chance)
"he finally got his big break";
 
4. (geology) a crack in the earth's crust resulting from the displacement of one side with respect to the other (= fault, faulting, geological fault, shift, fracture)
"they built it right over a geological break";

5. A personal or social separation (as between opposing factions) (= rupture, breach, severance, rift, falling out)
"they hoped to avoid a break in relations";

6. The act of breaking something (= breakage, breaking)
"the break was unavoidable";

7. A time interval during which there is a temporary cessation of something (= pause, intermission, interruption, suspension)
 
8. Breaking of hard tissue such as bone (= fracture)
"the break seems to have been caused by a fall";
 
9. The occurrence of breaking
"the break in the dam threatened the valley"
 
10. An abrupt change in the tone or register of the voice (as at puberty or due to emotion)
"then there was a break in her voice"
 
11. The opening shot that scatters the balls in billiards or pool
 
12. (tennis) a score consisting of winning a game when your opponent was serving (= break of serve)
"he was up two breaks in the second set";

13. An act of delaying or interrupting the continuity (= interruption, disruption, gap)
"it was presented without commercial breaks";

14. A sudden dash
"he made a break for the open door"
 
15. Any frame in which a bowler fails to make a strike or spare (= open frame)
"the break in the eighth frame cost him the match";

16. An escape from jail (= breakout, jailbreak, gaolbreak, prisonbreak, prison-breaking)
"the break was carefully planned";
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

  static String myVideoId = "https://youtu.be/_spuxXnul0U?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 904, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "https://youtu.be/e09xig209cQ?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 195, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "https://youtu.be/aHBLOkfJSYI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 48, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "https://youtu.be/PGk3qLxwmDQ?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 665, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "https://youtu.be/k3aAl92_VDE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 265, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "https://youtu.be/LAOoF2gyQaA?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 30, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "https://youtu.be/C_MDnd7px-I?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 6, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "https://youtu.be/MnExgQ81fhU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 544, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "https://youtu.be/D-2799Y07Zc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 371, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "https://youtu.be/03VAIrkmrD0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 24, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "https://youtu.be/zqllxbPWKNI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 836, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "https://youtu.be/FmEJkU6r_Rs?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 62, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// /breɪk/
// end break
