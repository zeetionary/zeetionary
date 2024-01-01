import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybreast extends StatelessWidget {
// blank divider
  EnglishEntrybreast({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbreast(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("breast"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts1(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She put the baby to her breast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts2(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The protective benefits of breast milk are numerous for both mother and baby."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts3(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had breast-augmentation surgery."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts4(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Getting breast implants entails major surgery."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts5(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book promoted the benefits of breast feeding to child health."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts6(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She discovered a lump in her breast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts7(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cradled the child against his breast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts8(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A row of medals was pinned to the breast of his coat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts9(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The robin has a red breast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts10(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had a cold chicken breast and a salad for lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts11(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fashion industry features both small-breasted and full-breasted models."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts12(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A feeling of love surged in his breast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts13(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As they breasted the hill, they saw the valley and lake before them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts14(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I watched him breast the wave."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts15(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts16(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts17(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts18(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts19(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts20(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts21(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts22(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts23(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts24(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts25(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbreasts26(String languageCode) async {
    // DOPSUM: CHANGE speakbreast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreasts2626"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "breast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /brest/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbreast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /brest/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbreast("en-US"),
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
کوردی: مەمک، سینگ، سنگ، چچک، بستان، (خوازە) دڵ

١. (ناو) مەمکی ژن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She put the baby to her breast."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکەی نا بە مەمکییەوە (شیری پێدا)."),
                              const CustomSizedBoxForTTS(), // Define the word "breast" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts1("en-US"),
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
                                      "The protective benefits of breast milk are numerous for both mother and baby."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سوودە پارێزەرەکانی شیری دایک زەبەندن بۆ دایک و منداڵ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts2("en-US"),
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
                                              "She had breast-augmentation surgery."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "نەشتەرگەری گەورەکردنی مەمکی کرد."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreasts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreasts3("en-US"),
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
                                              "Getting breast implants entails major surgery."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "کردنی چاندنی مەمک نەشتەرگەری دژواری دەوێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreasts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreasts4("en-US"),
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
                                              "The book promoted the benefits of breast feeding to child health."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "کتێبەکە سوودەکانی شیری دایکی بۆ تەندرووستی منداڵ دەخستە بەرچاو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreasts5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreasts5("en-US"),
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
                                              "She discovered a lump in her breast."),
                                      const ExampleSentenceKurdish(
                                          text: "گرێیەکی لە مەمکیدا دۆزییەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbreasts6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbreasts6("en-US"),
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
                          const DefinitionKurdish(text: "٢. (ناو) سنگی مرۆڤ"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He cradled the child against his breast."),
                              const ExampleSentenceKurdish(
                                  text: "منداڵەکەی گوشی بە سنگییەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ئەو بەشەی جل کە سنگ دادەپۆشێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A row of medals was pinned to the breast of his coat."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕیزێک لە مەدالیا لکێندرابوو بە سنگی قەمسەڵەکەیەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (ناو) سنگی باڵندە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The robin has a red breast."),
                              const ExampleSentenceKurdish(
                                  text: "باڵندەی ڕۆبن سنگی سوورە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) گۆشتی سنگی باڵندەیەک یان ئاژەڵێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I had a cold chicken breast and a salad for lunch."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سنگە مریشکێکی سارد و زەڵاتەم بۆ نانی نیوەڕۆ خوارد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) هەبوونی ئەو جۆرە سنگ یان مەمکەی کە باسکراوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The fashion industry features both small-breasted and full-breasted models."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پیشەسازی فاشن نمایشکارانی هەردوو مەمک بچووک و مەمک زل لەخۆدەگرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئەو بەشەی جەستە کە باوەڕ وایە هەست و سۆزی تێدایە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A feeling of love surged in his breast."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەستی خۆشەویستی لە دەروونیدا پەرەی‌سەند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) گەشتنە لوتکەی گردێک، هتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "As they breasted the hill, they saw the valley and lake before them."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە سەرکەوتن بە گردەکەدا، دۆڵەکە و دەریاچەکەیان لە پێشیان دیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ڕۆشتن بۆ پێشەوە دژ یان بەناو شتێکدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I watched him breast the wave."),
                              const ExampleSentenceKurdish(
                                  text: "سەیریم کرد بە شەپۆلەکەدا دەچوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbreasts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbreasts14("en-US"),
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
- Noun: breast (Derived forms: breasts)
1. Either of two soft fleshy milk-secreting glandular organs on the chest of a woman (= bosom)
 
2. The front of the body from the neck to the abdomen (= chest)
"he beat his breast in anger";

3. Meat carved from the breast of a fowl (= white meat)
 
4. The part of an animal's body that corresponds to a person's chest

- Verb: breast (Derived forms: breasts, breasted, breasting)
1. Meet at breast level
"The runner breasted the tape"
 
2. Reach the summit (of a mountain) (= summit)
"They breasted the mountain";

3. Confront bodily (= front)
"breast the storm";
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

  static String myVideoId = "https://youtu.be/3cxHwQl9pNM?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 401, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/S-4rhjO6xYg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 853, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/BZbChKzedEk?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 213, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/XG8b7WhANNA?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1226, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/y6GNrpcXtqM?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 138, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/8UkNOQDTb7c?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 7, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/rmULxmptzG8";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "https://youtu.be/yRD0516eE9Q?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 225, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/_ppsDRDxBgg?t=";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "https://youtu.be/hEJNSA-LkAo";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "https://youtu.be/B6oR4izFuPo?t=";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "https://youtu.be/OL01D8VPPxY?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 235, // DOPSUM: CHANGE IT
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

// end breast
