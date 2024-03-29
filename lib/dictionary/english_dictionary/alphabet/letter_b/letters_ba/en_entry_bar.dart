import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bɑː(r)/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakBar("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bɑːr/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBar("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: میلە، میل، پشکۆڵ، شیشە، ئەستوون، پارچە، تیکە، گۆڵە، نەردە، شمشێرە، تووڵک، قاڵب (سابوون)، قوڵت، کەستەک، قورسە، داڕشتە (زێڕ)، باریکە، شریت، باریکایی، تیشک، تیرێژ، لیزگ، پڕشنگ، ھێڵ، ئێلێمێنت (کارەبا)، ڕێگرتن، نەھێشتن، بەربەندی، بەربەست، لەمپەر، کۆسپ، کێشە، (میوزیک) خانە، مەودای میوزیک، مەی‌خانە، دەکە، بوتکە، کافە، جێگای تاوانبار، شوێنی تایبەتی زیندانی لە دادگادا، دادگا، (جوگرافیا) بەستاو، یەکەی پەستان، بێجگەلە، جگە، ژبلی، مەگەر ئەوەی کە
"""),
                          const DefinitionKurdish(
                              text: """١. (ناو) شوێنی خواردنەوەی کحولی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We arranged to meet in a bar called the Flamingo."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کاتمان دانا بۆ یەکتربینین لە باڕێک بە ناوی فلامینگۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars1(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شوێنێک کە خواردنەوەیەکی کحولی دیاریکراو بەشێوەیەکی سەرەکی تێدایە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The hotel has a cocktail bar on the top floor."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھوتێلەکە باڕێکی کۆکتێلی تێدایە لە نھۆمی سەرەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars2(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مێزێکی دارینی درێژ کە خواردنەوەی لەسەر پێشکەش دەکرێت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It was so crowded I couldn't get to the bar."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر قەرەباڵغ کە نەمتوانی بگەم بە مێزی خواردنەوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars3(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پارچەیەک لە شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The chef cut the bar of chocolate into small pieces."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شێفەکە پارچە چکلێتەکەی پارچەپارچەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars4(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچەیەکی درێژی ئاسن یان تەختە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He smashed the window with an iron bar."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەنجەرەکەی بە پارچە ئاسنێک شکاند."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars5(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) بەشێکی شاشەی کۆمپیوتەر یان موبایل کە لینک پیشان دەدات، یان تێیدا دەتوانی گەڕان بکەیت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I typed my question into the search bar to Google it."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پرسیارەکەم لە بەشی گەڕانەکە نووسی بۆ ئەوەی بۆی بگەڕێم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars6(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) ڕێگەی پێوانی خێرایی ئینتەرنێت یان شەحنی موبایلێک یان کۆمپیوتەرێک کە بە چەند خەتێکی ستوونی پیشان دەدرێت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The battery meter showed one bar of power left."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێوەری باترییەکە تەنھا یەک خەتی ماوەی پیشاندەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars7(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) بەشی سەرەوەی ستوونەکانی گۆڵێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "His shot hit the bar."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێدانەکەی لە بەشی سەروەی ستوونەکەی دا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars8(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) ھێڵێک لە ڕەنگ یان ڕۆشنایی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Bars of sunlight slanted down from the tall windows."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھێڵێک لە تیشکی خۆر بە پەنجەرە درێژەکاندا دەھاتە ژوورەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars9(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) شتێک کە ڕێگری لە کەسێک دەکات لە کردنی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "At that time being a woman was a bar to promotion in most professions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەو کاتەدا ژنبوون ڕێگرییەک بوو لە پلەبەرزبوونەوە لە زۆر پیشەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars10(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) وەستاندنی کەسێک لە کردنی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Prisoners are barred by law from voting in general elections."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زیندانیان بەپێی یاسا ڕێگری‌لێ‌کراون لە دەنگدان لە ھەڵبژاردنی گشتی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars11(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) کۆتکردنی شوێنێک بە شیش و ستوون"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "All the doors and windows were barred."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو دەرگا و پەنجەرەکان کۆتکراون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars12(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بەستنی ڕێگایەک بەشێوەیەک تێپەڕین ئاستەنگ دەکات"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We found our way barred by rocks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانیمان ڕێگاکەمان بە بەرد بەسترابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars13(// REPLACE: bar
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ئامراز) جگە لە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The students all attended, bar two who were ill."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو خوێندکاران بەژداربوون، جگە لە دووان کە نەخۆش بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBars14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBars14(// REPLACE: bar
                                        "en-US"),
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
                    YouTubeScroller(
                      children: [
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
    videoId: 'DTvS9lvRxZ8',
    startSeconds: 166,
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
    videoId: 'FHJ3CMWnVxY',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'YOCUDD7JFws',
    startSeconds: 938,
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
    videoId: 'yjhibJ-OqxE',
    startSeconds: 98,
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
    videoId: '_iz5_DuY_II',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'VyEf4EBXe8o',
    startSeconds: 125,
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
    videoId: 'VvJm4pQZ04s',
    startSeconds: 56,
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
    videoId: 'CaaJyRvvaq8',
    startSeconds: 375,
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
    videoId: 'uKgaVlMN7IY',
    startSeconds: 18,
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
    videoId: 'sV6uuMAnJUE',
    startSeconds: 1212,
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
    videoId: 'n4bucphC9r4',
    startSeconds: 221,
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
    videoId: 'raSeaAeryWE',
    startSeconds: 814,
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
    videoId: '0ST4_hmop9Y',
    startSeconds: 114,
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

// end bar// TODO Implement this library.