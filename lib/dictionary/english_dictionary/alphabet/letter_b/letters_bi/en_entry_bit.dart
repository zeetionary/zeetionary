import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bit" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace bit - replace EnglishEntrybit

// replace speakBit - /bɪt/

enum TtsState { playing }

class EnglishEntrybit extends StatelessWidget {
// blank divider
  EnglishEntrybit({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBit(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bit"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits1(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These trousers are a bit tight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits2(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It costs a bit more than I wanted to spend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits3(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you move up a bit?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits4(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("See you in a bit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits5(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Here are some useful bits of information."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits6(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I have a bit of good news for you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits7(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I read it, but I missed out the boring bits."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits8(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Listen to the interview again and pick out the bits you want to use in the article."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits9(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It rained a fair bit during the night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits10(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I bought a 32-bit computer last week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits11(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The rider controlled the horse's movement with the bit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits12(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The drill bit tore through the wall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits13(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits14(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits15(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits16(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits17(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits18(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits19(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits20(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits21(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits22(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits23(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits24(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits25(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits26(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits27(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits28(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits29(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBits30(String languageCode) async {
    // DOPSUM: CHANGE speakBit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBits3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bit"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBit("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBit("en-US"),
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
کوردی: پەنچک، کوت، لەت، پارچە، نەختێ، تۆزقاڵێ، کەمێ، پشکێ، بڕێ، ماوەیێ، بڕێکی زۆر، لۆدە، کۆما، بەش، پشک، سکە، کۆین، تا ئەندازەیێ، تا ڕادەیێ، لەغاو، ئاوخۆری، لغاڤ (ئەسپ)، سەرمەتە، سەرەمەتە، سەرەسمۆ، سمۆ، تیغە، دەم (ڕەندە یان سمۆ)

١. (ناو) ھەندێک، کەمێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "These trousers are a bit tight."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم پانتۆڵە کەمێک تەسکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits1("en-US"),
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
                                      "It costs a bit more than I wanted to spend."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەمێک زیاتر لەوەی تێدەچێت کە دەمویست خەرجی بکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ماوەیەک یان مەودایەکی کەم"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Can you move up a bit?"),
                              const ExampleSentenceKurdish(
                                  text: "دەتوانیت کەمێک بچیتە سەرەوە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits3("en-US"),
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
                                  text: "See you in a bit."),
                              const ExampleSentenceKurdish(
                                  text: "کەمێکی تر دەگەمە لات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ڕێژەیەکی کەم لە شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Here are some useful bits of information."),
                              const ExampleSentenceKurdish(
                                  text: "ئەمە کەمێک زانیاری سوودبەخشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits5("en-US"),
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
                                  text: "I have a bit of good news for you."),
                              const ExampleSentenceKurdish(
                                  text: "ھەندێک ھەواڵی خۆشم پێیە بۆت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) بەشێک لە شتێکی گەورەتر"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I read it, but I missed out the boring bits."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خوێندمەوە، بەڵام بەشە بێزارکەرەکانیم تێپەڕاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Listen to the interview again and pick out the bits you want to use in the article."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دووبارە گوێ لە چاوپێکەوتنەکە بگرە و ئەو بەشانە ھەڵبژێرە کە لە وتارەکەت بەکاریدێنیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) ڕێژەیەکی گەورە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It rained a fair bit during the night."),
                              const ExampleSentenceKurdish(
                                  text: "تاڕادەیەک زۆر باران باری لە شەودا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بچووکترین یەکەی زانیاری لە کۆمپیوتەردا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I bought a 32-bit computer last week."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەفتەی ڕابردوو کۆمپیوتەرێکی ٣٢ بیتیم کڕی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) پارچە ئاسنێک کە لە دەمی ئەسپێک دەخرێت بۆ ئەوەی کۆنترۆڵ بکرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The rider controlled the horse's movement with the bit."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سوارەکە کۆنترۆڵی جوڵەی ئەسپەکەی دەکرد بە لەغاوەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ئامرازێک یان بەشێکی ئامرزاێک کە بۆ کونکردن بەکاردێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The drill bit tore through the wall."),
                              const ExampleSentenceKurdish(
                                  text: "دەمی دلێرەکە چوو بە دیوارەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBits12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBits12("en-US"),
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
- Noun: bit (derived forms: bits)
1. A small piece or quantity of something (= spot [informal])
"a bit of paper"; "I gave him a bit of my mind";

2. A small fragment of something broken off from the whole (= chip, flake, fleck, scrap)
"a bit of rock caught him in the eye";
 
3. An indefinitely short time (= moment, mo, minute, second)
"in just a bit";
 
4. An instance of some kind (= piece)
"he had a bit of good luck";
 
5. Piece of metal held in horse's mouth by reins and used to control the horse while riding
"the horse was not accustomed to a bit"
 
6. A unit of measurement of information (from binary + digit); the amount of information in a system having two equiprobable states
"there are 8 bits in a byte"
 
7. A small amount of solid food; a mouthful (= morsel, bite)
"all they had left was a bit of bread";
 
8. A small fragment of sound (music or speech) (= snatch)
"overheard bits of their conversation";
 
9. A short performance that is part of a longer program (= act, routine, number, turn)
"he did his bit three times every evening";

10. The part of a key that enters a lock and lifts the tumblers
 
11. The cutting part of a drill; usually pointed and threaded and is replaceable in a brace, bitstock or drill press
"he looked around for the right size bit"

- Verb: bite (derived forms: bits)
1. To grip, cut off, or tear with or as if with the teeth or jaws (= seize with teeth)
"Gunny invariably tried to bite her";

2. Cause a sharp or stinging pain or discomfort (= sting, burn)
"The sun bit his face";

3. Penetrate or cut, as with a knife
"The fork bit into the surface"
 
4. Deliver a sting to (= sting, prick)
"A bee bit my arm yesterday";
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

  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 304, // DOPSUM: CHANGE IT
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

  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 64, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1202, // DOPSUM: CHANGE IT
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

  static String myVideoId = "kNw8V_Fkw28";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 533, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 561, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_spuxXnul0U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 969, // DOPSUM: CHANGE IT
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

  static String myVideoId = "R_fZjGm2OrM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 230, // DOPSUM: CHANGE IT
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

  static String myVideoId = "OXW_1i1pA0w";

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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "FQ5hSInV9mg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 12, // DOPSUM: CHANGE IT
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

  static String myVideoId = "HOYpAgWPTps";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1241, // DOPSUM: CHANGE IT
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

  static String myVideoId = "6kVpRNlc-8w";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 319, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "kh1Hz1HIJDE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 153, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  static String myVideoId = "2IKZIWVHXvo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 77, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  static String myVideoId = "woN8pnA5_wk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 97, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  static String myVideoId = "mU8RDfWJQ-A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 116, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  static String myVideoId = "WxB1gB6K-2A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 190, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  static String myVideoId = "66aG5P0kQpU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 667, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  static String myVideoId = "veTo6eWJQrM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 512, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  static String myVideoId = "3H3uRAXGcEc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 494, // DOPSUM: CHANGE IT
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

// end bit// TODO Implement this library.
