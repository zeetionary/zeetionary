import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bottom" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bottom - /ˈbɑːtəm/

enum TtsState { playing }

class EnglishEntrybottom extends StatelessWidget {
// blank divider
  EnglishEntrybottom({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbottom(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bottom"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms1(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Footnotes are given at the bottom of each page."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms2(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book I want is right at the bottom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms3(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wind blew through gaps at the top and bottom of the door."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms4(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He reached the bottom of the steps in no time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms5(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We rode along the bottom of the valley."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms6(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We walked to the bottom of the hill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms7(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        " The ingredients are listed on the bottom of the box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms8(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The manufacturer's name is on the bottom of the plate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms9(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Line the bottom of the cage with old newspaper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms10(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Allow the tea leaves to settle to the bottom of the cup."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms11(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I feel safe as long as I can touch the bottom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms12(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The boat sank to the bottom of the sea."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms13(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When the list came out, my name was near the bottom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms14(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I was always bottom of the class in math."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms15(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She slipped and fell on her bottom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms16(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She danced on the sand in a colorful bikini bottom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms17(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a stream at the bottom of the garden."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms18(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I went to the school at the bottom of our street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms19(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Put your clothes in the bottom drawer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms20(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bottom shelf holds the heavy books."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms21(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We came bottom with 12 points."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms22(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They finished six points ahead of bottom club Swindon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms23(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms24(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms25(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms26(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms27(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms28(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms29(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbottoms30(String languageCode) async {
    // DOPSUM: CHANGE speakbottom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bottom"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɒtəm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbottom("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɑːtəm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbottom("en-US"),
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
کوردی: خوارترین بەش، بن، ژێر، خوارەوە، بنک، تەرک، بندین، تەختاو، بنکاو، بنڕەخ، قووڵایی، سەرچاوە، بنەما، ماک، بنەڕەت، چاوگ، پشتەوە، دواوە، کنگ، پاشوو، پاشڵ، سمت، کۆتایی، دوایی، دووماھی، بنی کەشتی، لاشە یان پەیکەرەی کەشتی، ئاخرین، دوایین، ھەرەخواروو، بنەڕەتی، بنچینەیی، سەرەکی

١. (ناو) بەشی خوارەوەی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Footnotes are given at the bottom of each page."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەراوێز لە خوارەوەی ھەموو لاپەڕەیەک نووسراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms1("en-US"),
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
                                      "The book I want is right at the bottom (= of the pile)."),
                              const ExampleSentenceKurdish(
                                  text: "ئەو کتێبەی دەمەوێت لە خوارەوەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms2("en-US"),
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
                                              "The wind blew through gaps at the top and bottom of the door."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "با بە بۆشی سەرەوە و خوارەوەی دەرگاکە دەھاتە ژوورەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbottoms3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbottoms3("en-US"),
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
                                              "He reached the bottom of the steps in no time."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە خێرایی گەشتە خوارەوەی قادرمەکان."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbottoms4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbottoms4("en-US"),
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
                                              "We rode along the bottom of the valley."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە خوارەوەی دۆڵەکەدا لێمانخوڕی."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbottoms5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbottoms5("en-US"),
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
                                              "We walked to the bottom of the hill."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە ڕێکردن چووینە خوارەوەی گردەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbottoms6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbottoms6("en-US"),
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
                                  "٢. (ناو) ئەو بەشەی شتێک کە ڕووی لە خوارەوەیە و زۆرجار نابینرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      " The ingredients are listed on the bottom of the box."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕەچەتەکان لە ژێرەوەی سندووقەکە لیستکراون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms7("en-US"),
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
                                      "The manufacturer's name is on the bottom of the plate."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناوی درووستکارەکە لە ژێرەوەی دەورییەکەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بەشی خوارەوەی ڕووی ناوەوەی دەفرێک یان کاسەیەک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Line the bottom of the cage with old newspaper."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خوارەوەی قەفەزەکە بە ڕۆژنامەی کۆن داپۆشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms9("en-US"),
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
                                      "Allow the tea leaves to settle to the bottom of the cup."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بھێڵە گەڵا چاەییەکان بچنە بنی پێڵاکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) بنی دەریاچە، دەریا، حەوز، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I feel safe as long as I can touch the bottom."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەست بە سەلامەتی دەکەم ئەگەر بتوانم ھەست بە بنی ئاوەکە بکەم (قووڵی لە باڵام زیاتر نەبێت)."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms11("en-US"),
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
                                      "The boat sank to the bottom of the sea."),
                              const ExampleSentenceKurdish(
                                  text: "بەلەمەکە نغرۆبووە بنکی دەریاکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) نزمترین ئاست لە لیستێک، چین، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When the list came out, my name was near the bottom."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە لیستەکە ھاتەوە ناوم لە نزیکی خواری خوارەوە بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms13("en-US"),
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
                                      "I was always bottom of the class in math."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەمیشە لە خوارترینی پۆلەکە بووم لە بیرکاریدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) سمت؛ ئەو بەشەی جەستە کە لەسەری دادەنیشیت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She slipped and fell on her bottom."),
                              const ExampleSentenceKurdish(
                                  text: "پێی ھەڵکەوت و بە سمتیدا کەوت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) بەشی خوارەوەی جلێک کە لە دوو بەش پێکھاتووە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She danced on the sand in a colorful bikini bottom."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەسەر لمەکە سەمای کرد بە بەشی خوارەوەی جلەمەلێیەکی ڕەنگاوڕەنگەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) ئەو بەشەی شتێک کە دوورترینە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There was a stream at the bottom of the garden."),
                              const ExampleSentenceKurdish(
                                  text: "جۆگەیەک لەوپەڕی باخچەکەوە ھەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms17("en-US"),
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
                                      "I went to the school at the bottom of our street."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چوومە ئەو قوتابخانەیەی کە لە کۆتایی شەقامەکەمان بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ھاوەڵناو) لە خوارترین"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Put your clothes in the bottom drawer."),
                              const ExampleSentenceKurdish(
                                  text: "جلەکانت بخە چەکمەجەکەی خوارەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms19("en-US"),
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
                                      "The bottom shelf holds the heavy books."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕەفەی خوارەوە کتێبە قوورسەکانی تێدایە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ھاوەڵناو) لە کۆتایی لیستێک، پێشبڕکێیەک، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We came bottom with 12 points."),
                              const ExampleSentenceKurdish(
                                  text: "بە ١٢ خاڵەوە لە کۆتایی بووین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms21("en-US"),
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
                                      "They finished six points ahead of bottom club Swindon."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەواوبوون بە شەش خاڵەوە لە پێش یانەی کۆتایی کە سویندن بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbottoms22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbottoms22("en-US"),
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
- Noun: bottom 
1. The lower side of anything (= underside, undersurface, underneath)
 
2. The lowest part of anything
"they started at the bottom of the hill"
 
3. The fleshy part of the human body that you sit on (= buttocks, nates [technical], butt [N. Amer, informal], backside, bum [Brit, informal], buns [N. Amer, informal], can [N. Amer, informal], fundament, hindquarters, hind end, posterior, rear [informal], rear end [informal], rump, stern [informal], seat, tail [N. Amer, informal], tail end, tooshie [informal], tush [N. Amer, informal], behind, derriere, bahookie [UK, dialect, informal], botty [informal], heinie [US, informal], duff [N. Amer, informal], booty [N. Amer, informal], patootie [US, informal], tushy [N. Amer, informal], derrière)
"he deserves a good kick in the bottom";

4. The second half of an inning; while the home team is at bat (= bottom of the inning)
 
5. A depression forming the ground under a body of water (= bed)
"he searched for treasure on the ocean bottom";

6. Low-lying alluvial land near a river (= bottomland)
 
7. A cargo ship (= freighter, merchantman, merchant ship)
"they did much of their overseas trade in foreign bottoms";

- Verb: bottom
1. (cabinetwork) provide with a bottom or a seat
"bottom the chairs"
 
2. Strike the ground, as with a ship's bottom
 
3. Come to understand (= penetrate, fathom)
 
4. Fall to or reach the lowest point or value
"the market bottomed at a record low"

- Adjective: bottom
1. Situated at the bottom or lowest position
"the bottom drawer"

2. The lowest rank
"bottom member of the class"
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

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hFZFjoX2cGg',
    startSeconds: 416,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '_wNsZEqpKUA',
    startSeconds: 1101,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'e09xig209cQ',
    startSeconds: 30,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '8HEfIJlcFbs',
    startSeconds: 541,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'rEdl2Uetpvo',
    startSeconds: 197,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'HB0CZ_5sPPw',
    startSeconds: 1034,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '3cxHwQl9pNM',
    startSeconds: 475,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 's3B-qp3U5G0',
    startSeconds: 323,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'yjhibJ-OqxE',
    startSeconds: 450,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'jgkMFBDyzE8',
    startSeconds: 1239,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'roCX0AfBseQ',
    startSeconds: 140,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '9TugA_z5vQE',
    startSeconds: 433,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'jJL0XoNBaac',
    startSeconds: 123,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'thOifuHs6eY',
    startSeconds: 174,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'diAxiWkwlC0',
    startSeconds: 974,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'qEV9qoup2mQ',
    startSeconds: 682,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'N39uwTykTQk',
    startSeconds: 88,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'qD6bPNZRRbQ',
    startSeconds: 649,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '-46Vyiwat_Y',
    startSeconds: 239,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'gFQNPmLKj1k',
    startSeconds: 686,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

// more than one video, only first autoplay

// end bottom
