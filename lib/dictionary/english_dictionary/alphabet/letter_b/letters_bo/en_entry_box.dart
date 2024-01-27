import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "box" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

enum TtsState { playing }

class EnglishEntrybox extends StatelessWidget {
// blank divider
  EnglishEntrybox({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbox(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("box"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs1(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She kept all the letters in a box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs2(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do you know what is inside the box?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs3(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He ate a whole box of chocolates."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs4(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Put a cross in the appropriate box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs5(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They drank champagne as they watched the game from the executive box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs6(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their new house is just a box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs7(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's on the box tonight?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs8(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Only traffic turning right may enter the box junction."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs9(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I called him from the phone box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs10(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He boxed for Ireland in the Olympics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs11(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I boxed up some clothes and books to donate to charity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs12(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was fouled in the box."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs13(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs14(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs15(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs16(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs17(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs18(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs19(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs20(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs21(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs22(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs23(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs24(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs25(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs26(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs27(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs28(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboxs29(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2929"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "box"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒks/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbox("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːks/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbox("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
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
کوردی: قوتو، قاڵب، کارتۆن، سنووق، مجری، سیپ، شوێنی دادیار (دادگا)، لۆژ یان باڵاجێ (شانۆ)، خانە، چوارگۆشە، سنووقی پۆست، سنووقی پۆستی، کیوسکی تەلەفۆن، تەلەفزیۆن، قوتوی شەمچە یان شقارتە، کورسی یان سەندەڵی کالیسکەچی، کۆخ، کولیت، مستێن، شەڕەمشت، مشت‌بازی، ناوچەی پێناڵتی، ناوگەڵ‌پارێز

١. (ناو) شتێک لە شێوەی بۆ نموونە پارچە کارتؤنێک یان سندووقێک کە شتی تێدەکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She kept all the letters in a box."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەواوی نامەکانی لە کارتۆنێکدا ھەڵگرتبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Do you know what is inside the box?"),
                              const ExampleSentenceKurdish(
                                  text: "دەزانی چی لەم بۆکسەدایە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) بۆکسێک و ئەو شتانەی لە ناویەتی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He ate a whole box of chocolates."),
                              const ExampleSentenceKurdish(
                                  text: "یەک کارتۆنی تەواو چکلێتی خوارد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) چوارچێوەیەکی چوارگۆشە یان لاکێشە لەسەر پەڕەیەک یان شاشەی کۆمپیوتەر بۆ ئەوەی شتی تێدا بنووسرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Put a cross in the appropriate box."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نیشانەیەکی X بھێنە بە بۆکسی گونجاودا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ناوچەیەکی بچووک لە سینەمایەک، دادگا، یاریگای وەرزشی، ھتد کە جیاکراوەیە لە شوێنی دانیشنی کەسانی خەڵکی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They drank champagne as they watched the game from the executive box."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شامپەینیان دەخواردەوە کە لە جێگەی بەڕێوبەرەکەوە سەیری یارییەکەیان دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پەناگەیەکی بچووک کە بۆ مەبەستێکی دیاریکراو بەکاردێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their new house is just a box (= very small)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ماڵە تازەکەیان تەنھا تەنھا چواردیوارە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I called him from the phone box."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کیوسکی تەلەفۆنی سەرشەقامەکەوە پەیوەندیم پێوەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) تەلەفیزیۆن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "What's on the box tonight?"),
                              const ExampleSentenceKurdish(
                                  text: "چی لەسەر تەلەفیزیۆنە ئەمشەو؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شوێنێک کە تێیدا دوو ڕێگا یەک دەگرن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Only traffic turning right may enter the box junction."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەنھا ئەو ئۆتۆمبێلانەی کە بۆ ڕاست پێچدەکەنەوە دەبێت بچنە یەکتربڕەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) لە یاریگای وەرزشیدا ئەو بەشانەیە کە بە ھێڵ کێشراون و بۆ مەبەستی دیاریکراو بەکاردێن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was fouled in the box (= the penalty box)."),
                              const ExampleSentenceKurdish(
                                  text: "فاوڵی لەسەر گیردرا لە ناوچەی سزا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) شەڕکردن لەگەڵ کەسێک لە زۆرانبازیدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He boxed for Ireland in the Olympics."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆرانبازی بۆ ئێرلەندا دەکرد لە ئۆڵۆمپیاددا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) خستنە بۆکسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I boxed up some clothes and books to donate to charity."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەندێک جل و کتێبم خستە بۆکسێکەوە بۆ بەخشین بە ڕێکخراوی خێرخوازی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboxs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboxs11("en-US"),
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
- Noun: box (derived forms: boxes)
1. A (usually rectangular) container; may have a lid
"he rummaged through a box of spare parts"
 
2. Private area in a theatre or grandstand where a small group can watch the performance (= loge)
"the royal box was empty";

3. The quantity contained in a box (= boxful)
"he gave her a box of chocolates";
 
4. A predicament from which a skilful or graceful escape is impossible (= corner)
"his lying got him into a tight box";
 
5. A rectangular drawing
"the flowchart contained many boxes"
 
6. An evergreen shrub or tree (genus Buxus) (= boxwood)
 
7. Any one of several designated areas on a ball field where the batter, catcher or coaches are positioned
"the umpire warned the batter to stay in the batter's box"
 
8. The driver's seat on a coach (= box seat)
"an armed guard sat in the box with the driver";
 
9. Separate partitioned area in a public place for a few people
"the sentry stayed in his box to avoid the cold"
 
10. A blow with the hand (usually on the ear)
"I gave him a good box on the ear"
 
11. [Brit, informal] (television) an electronic device that receives television signals and displays them on a screen (= television receiver, television, television set, tv, tv set, idiot box [N. Amer, informal], boob tube [N. Amer, informal], telly [Brit, informal], goggle box [Brit, informal], TV)
 
12. (soccer) rectangular area in front of the goal; if a defender fouls in this area the other side are given a penalty kick (= penalty box, penalty area)

- Verb: box (derived forms: boxes, boxed, boxing)
1. Put into a box (= package)
"box the gift, please";
 
2. Hit with the fist
"I'll box your ears!"
 
3. (sport) engage in a boxing match
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
    videoId: '47ODQI0OSOA',
    startSeconds: 48,
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
    videoId: 'khOUvmOQExc',
    startSeconds: 130,
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
    videoId: 'a_TSR_v07m0',
    startSeconds: 85,
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
    videoId: 'nC6RUyMvsOI',
    // startSeconds: 246,
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
    videoId: '2ihOXaU0I8o',
    startSeconds: 242,
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
    videoId: '_GFkHA5EZdE',
    startSeconds: 256,
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
    videoId: 'n9xhJrPXop4',
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'D0x2dgpBDzc',
    startSeconds: 978,
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
    videoId: 'QL3H7CUJMDU',
    startSeconds: 130,
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
    videoId: '66aG5P0kQpU',
    startSeconds: 82,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

// more than one video, only first autoplay

// haʊʊʊʊʊʊʊ4
// end box
