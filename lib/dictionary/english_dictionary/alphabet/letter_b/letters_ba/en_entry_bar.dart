import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bar" and provide five example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bar - replace EnglishEntrybar

// replace speakBar - /bɑː(r)/

enum TtsState { playing }

class EnglishEntrybar extends StatelessWidget {
// blank divider
  EnglishEntrybar({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBar(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bar"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars1(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We arranged to meet in a bar called the Flamingo."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars2(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hotel has a cocktail bar on the top floor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars3(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was so crowded I couldn't get to the bar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars4(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The chef cut the bar of chocolate into small pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars5(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He smashed the window with an iron bar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars6(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I typed my question into the search bar to Google it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars7(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The battery meter showed one bar of power left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars8(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His shot hit the bar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars9(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bars of sunlight slanted down from the tall windows."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars10(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time being a woman was a bar to promotion in most professions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars11(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Prisoners are barred by law from voting in general elections."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars12(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All the doors and windows were barred."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars13(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We found our way barred by rocks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars14(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The students all attended, bar two who were ill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars15(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars16(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBars17(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1717"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(
                                word: "bar"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bɑː(r)/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakBar(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bɑːr/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBar(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 15
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
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
کوردی: میلە، میل، پشکۆڵ، شیشە، ئەستوون، پارچە، تیکە، گۆڵە، نەردە، شمشێرە، تووڵک، قاڵب (سابوون)، قوڵت، کەستەک، قورسە، داڕشتە (زێڕ)، باریکە، شریت، باریکایی، تیشک، تیرێژ، لیزگ، پڕشنگ، ھێڵ، ئێلێمێنت (کارەبا)، ڕێگرتن، نەھێشتن، بەربەندی، بەربەست، لەمپەر، کۆسپ، کێشە، (موسیقا) خانە، مەودای موسیقا، مەی‌خانە، دەکە، بوتکە، کافە، جێگای تاوانبار، شوێنی تایبەتی زیندانی لە دادگادا، دادگا، (جوگرافیا) بەستاو، یەکەی پەستان، بێجگەلە، جگە، ژبلی، مەگەر ئەوەی کە

١. (ناو) شوێنی خواردنەوەی کحولی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We arranged to meet in a bar called the Flamingo."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاتمان دانا بۆ یەکتربینین لە باڕێک بە ناوی فلامینگۆ."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars1(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شوێنێک کە خواردنەوەیەکی کحولی دیاریکراو بەشێوەیەکی سەرەکی تێدایە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The hotel has a cocktail bar on the top floor."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھوتێلەکە باڕێکی کۆکتێلی تێدایە لە نھۆمی سەرەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars2(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مێزێکی دارینی درێژ کە خواردنەوەی لەسەر پێشکەش دەکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It was so crowded I couldn't get to the bar."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر قەرەباڵغ کە نەمتوانی بگەم بە مێزی خواردنەوەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars3(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پارچەیەک لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The chef cut the bar of chocolate into small pieces."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شێفەکە پارچە چکلێتەکەی پارچەپارچەکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars4(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچەیەکی درێژی ئاسن یان تەختە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He smashed the window with an iron bar."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "پەنجەرەکەی بە پارچە ئاسنێک شکاند."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars5(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) بەشێکی شاشەی کۆمپیوتەر یان موبایل کە لینک پیشان دەدات، یان تێیدا دەتوانی گەڕان بکەیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I typed my question into the search bar to Google it."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پرسیارەکەم لە بەشی گەڕانەکە نووسی بۆ ئەوەی بۆی بگەڕێم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars6(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) ڕێگەی پێوانی خێرایی ئینتەرنێت یان شەحنی موبایلێک یان کۆمپیوتەرێک کە بە چەند خەتێکی ستوونی پیشان دەدرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The battery meter showed one bar of power left."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێوەری باترییەکە تەنھا یەک خەتی ماوەی پیشاندەدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars7(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) بەشی سەرەوەی ستوونەکانی گۆڵێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "His shot hit the bar."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لێدانەکەی لە بەشی سەروەی ستوونەکەی دا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars8(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) ھێڵێک لە ڕەنگ یان ڕۆشنایی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Bars of sunlight slanted down from the tall windows."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێڵێک لە تیشکی خۆر بە پەنجەرە درێژەکاندا دەھاتە ژوورەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars9(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) شتێک کە ڕێگری لە کەسێک دەکات لە کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "At that time being a woman was a bar to promotion in most professions."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەو کاتەدا ژنبوون ڕێگرییەک بوو لە پلەبەرزبوونەوە لە زۆر پیشەدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars10(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) وەستاندنی کەسێک لە کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Prisoners are barred by law from voting in general elections."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زیندانیان بەپێی یاسا ڕێگری‌لێ‌کراون لە دەنگدان لە ھەڵبژاردنی گشتی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars11(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) کۆتکردنی شوێنێک بە شیش و ستوون"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All the doors and windows were barred."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ھەموو دەرگا و پەنجەرەکان کۆتکراون."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars12(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بەستنی ڕێگایەک بەشێوەیەک تێپەڕین ئاستەنگ دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We found our way barred by rocks."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "زانیمان ڕێگاکەمان بە بەرد بەسترابوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars13(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ئامراز) جگە لە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The students all attended, bar two who were ill."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو خوێندکاران بەژداربوون، جگە لە دووان کە نەخۆش بوون."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBars14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBars14(// REPLACE: bar
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
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
- Noun: bar (derived forms: bars)
1. A room or establishment where alcoholic drinks are served over a counter (= barroom [N. Amer], saloon, ginmill [N. Amer, informal], taproom, lounge bar [Brit], cantina, saloon bar [Brit])
"he drowned his sorrows in whiskey at the bar";
 
2. A counter where you can obtain food or drink
"he bought a hot dog and a coke at the bar"
 
3. A rigid piece of metal or wood; usually used as a fastening or obstruction or weapon
"there were bars in the windows to prevent escape"
 
4. Musical notation for a repeating pattern of musical beats (= measure)
"the orchestra omitted the last twelve bars of the song";
 
5. An obstruction (usually metal) placed at the top of a goal
"it was an excellent kick but the ball hit the bar"
 
6. The act of preventing (= prevention)
"there was no bar against leaving";
 
7. (meteorology) a unit of pressure equal to a million dynes per square centimetre
"unfortunately some writers have used bar for one dyne per square centimetre"
 
8. A submerged (or partly submerged) ridge in a river or along a shore
"the boat ran aground on a submerged bar in the river"
 
9. (law) the body of individuals qualified to practice law in a particular jurisdiction (= legal profession, legal community)
"he was admitted to the bar in New Jersey";
 
10. A narrow marking of a different colour or texture from the background (= stripe, streak)
"a green toad with small black stripes or bars";
 
11. A block of solid substance (such as soap or wax) (= cake)
"a bar of chocolate";

12. A horizontal rod that serves as a support for gymnasts as they perform exercises
 
13. [Brit] A heating element in an electric fire
"an electric fire with three bars"
 
14. (law) a railing that encloses the part of the courtroom where the judges and lawyers sit and the case is tried
"spectators were not allowed past the bar"

- Verb: bar (derived forms: barred, bars, barring)
1. Disallow membership or entry (= debar, exclude)
"He was barred from membership in the club";
 
2. Render unsuitable for passage (= barricade, block, blockade, stop, block off, block up)
"bar the streets";
 
3. Expel, as if by official decree (= banish, relegate)
"he was barred from his own country";
 
4. Secure with, or as if with, bars
"He barred the door"

- Preposition: bar
1. With the exception of (= except)

- Noun: BAR
1. A portable .30 calibre automatic rifle operated by gas pressure and fed by cartridges from a magazine; used by United States troops in World War I and in World War II and in the Korean War (= Browning automatic rifle)
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

  static String myVideoId = "DTvS9lvRxZ8";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "FHJ3CMWnVxY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 191, // DOPSUM: CHANGE IT
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

  static String myVideoId = "YOCUDD7JFws";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 938, // DOPSUM: CHANGE IT
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

  static String myVideoId = "yjhibJ-OqxE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 98, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_iz5_DuY_II";

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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "VyEf4EBXe8o";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 125, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VvJm4pQZ04s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 56, // DOPSUM: CHANGE IT
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

  static String myVideoId = "CaaJyRvvaq8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 375, // DOPSUM: CHANGE IT
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

  static String myVideoId = "uKgaVlMN7IY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 18, // DOPSUM: CHANGE IT
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

  static String myVideoId = "sV6uuMAnJUE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1212, // DOPSUM: CHANGE IT
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

  static String myVideoId = "n4bucphC9r4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 221, // DOPSUM: CHANGE IT
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

  static String myVideoId = "raSeaAeryWE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 814, // DOPSUM: CHANGE IT
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

// morethan one video, only first autoplay

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "0ST4_hmop9Y";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 114, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdTwo = "mcZdTvOqmvI";

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      startAt: 109, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdThree = "x6btmJSRueE";

  final YoutubePlayerController _controllerthree = YoutubePlayerController(
    initialVideoId: myVideoIdThree,
    flags: const YoutubePlayerFlags(
      startAt: 52, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFour = "M6XiFKB7j0w";

  final YoutubePlayerController _controllerfour = YoutubePlayerController(
    initialVideoId: myVideoIdFour,
    flags: const YoutubePlayerFlags(
      startAt: 499, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFive = "Jl0IDXkYKbk";

  final YoutubePlayerController _controllerfive = YoutubePlayerController(
    initialVideoId: myVideoIdFive,
    flags: const YoutubePlayerFlags(
      startAt: 826, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdSix = "Add5ExJocYs";

  final YoutubePlayerController _controllersix = YoutubePlayerController(
    initialVideoId: myVideoIdSix,
    flags: const YoutubePlayerFlags(
      startAt: 22, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesign(controller: _controller),
            YouTubeContainerDesign(controller: _controllertwo),
            YouTubeContainerDesign(controller: _controllerthree),
            YouTubeContainerDesign(controller: _controllerfour),
            YouTubeContainerDesign(controller: _controllerfive),
            YouTubeContainerDesign(controller: _controllersix),
          ],
        ),
      ),
    );
  }
}

// end bar// TODO Implement this library.