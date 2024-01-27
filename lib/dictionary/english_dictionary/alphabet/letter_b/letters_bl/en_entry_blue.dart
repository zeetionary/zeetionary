import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "blue" and for each meaning provide five example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blue - /bluː/

enum TtsState { playing }

class EnglishEntryblue extends StatelessWidget {
// blank divider
  EnglishEntryblue({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblue(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blue"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues1(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sun shone brilliantly in the clear blue sky."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues2(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His eyes were dark blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues3(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She wanted to dye her hair blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues4(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His lips were turning blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues5(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He'd been feeling blue all week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues6(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The movie is a bit too blue for children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues7(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "California has mostly been a blue state in recent history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues8(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The room was decorated in blues and yellows."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues9(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was dressed in blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues10(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm very fond of blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues11(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He’s an Oxford rugby blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues12(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues13(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues14(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues15(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues16(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues17(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues18(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues19(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues20(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues21(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues22(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues23(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues24(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues25(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblues26(String languageCode) async {
    // DOPSUM: CHANGE speakblue
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblues2626"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "blue"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bluː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblue("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bluː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblue("en-US"),
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
کوردی: شین، کەو، نیلی، ھەش، ئاسمانی، مات، خەمبار، کز، دڵتەنگ، پیس، ناشیرین، ھەرزە، (نافەرمی، بریتانیا، لە باری سیاسی‌یەوە) کۆنەپارێز، ڕەنگی شین، بەرگی شین، دەریا، زەریا، ئاسمان

١. (ھاوەڵناو) ڕەنگی شین؛ ڕەنگی ئاسمانی ساماڵ یان دەریا لە ڕۆژێکی پاکدا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The sun shone brilliantly in the clear blue sky."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆر بە ڕۆشنی لە ئاسمانی ساماڵدا دەگەشایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues1("en-US"),
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
                                        text: "His eyes were dark blue."),
                                    ExampleSentenceKurdish(
                                        text: "چاوەکانی شینی تاری بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues2("en-US"),
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
                                            "She wanted to dye her hair blue."),
                                    ExampleSentenceKurdish(
                                        text: "دەیویست پرچی بۆیەی شین بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) کەسێک کە ڕەنگی شین بووەتەوە بەھۆی تەنگەنەفەسی یان سەرما"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "His lips were turning blue."),
                                    ExampleSentenceKurdish(
                                        text: "لێوەکانی شین دەبوونەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ھاوەڵناو) دڵتەنگ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He'd been feeling blue all week."),
                                    ExampleSentenceKurdish(
                                        text: "تەواوی ھەفتەکە دڵتەنگ بووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) فیلم، نووکتە، یان چیرۆک کە دەربارەی سێکسە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The movie is a bit too blue for children."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمەکە کەمێک بەدەر لە سنوور بۆ منداڵان باسی سێکس دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) ناوچەیەکی ئەمریکا کە دەنگدەری پارتی دیموکرات تێیدا زیاترە وەک لە کۆماری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "California has mostly been a blue state in recent history."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەمێژووی نزیکدا کالیفۆرنیا زۆرجار ویلایەتێکی دەنگدەری دیموکراتەکان بووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ڕەنگی شین؛ ڕەنگی ئاسمانی ساماڵ یان دەریا لە ڕۆژێکی پاکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The room was decorated in blues and yellows."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژوورەکە بە شین و زەرد دیکۆراتی بۆ کرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues8("en-US"),
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
                                        text: "She was dressed in blue."),
                                    ExampleSentenceKurdish(
                                        text: "ڕەنگی شینی لەبەرکردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues9("en-US"),
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
                                        text: "I'm very fond of blue."),
                                    ExampleSentenceKurdish(
                                        text: "زۆرم حەز بە شینە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسێک کە یارییەکی وەرزشی دیاریکراوی بۆ زانکۆی ئۆکسفۆرد یان کامبریج کردووە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He’s an Oxford rugby blue."),
                                    ExampleSentenceKurdish(
                                        text: "یاریزانێکی ڕەگبی ئۆکسفۆردە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblues11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblues11("en-US"),
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
- Adjective: blue (derived forms: bluer, bluest)
1. Of the colour intermediate between green and violet; having a colour similar to that of a clear unclouded sky (= bluish, blueish, bluey)
"October's bright blue weather"; "a blue flame"; "blue haze of tobacco smoke";
 
2. Used to signify the Union forces in the American Civil War (who wore blue uniforms)
"a ragged blue line"
 
3. [informal] Filled with melancholy and despondency (= gloomy, grim, depressed, dispirited, down, downcast, downhearted, down in the mouth, low, low-spirited)
"lonely and blue in a strange city";

4. [informal] Characterized by profanity or cursing (= blasphemous, profane)
"blue language";

5. [informal] Suggestive of sexual impropriety (= gamy [N. Amer], gamey [N. Amer], juicy [informal], naughty, racy, risqué, spicy)
"a blue movie"; "blue jokes";

6. Belonging to or characteristic of the nobility or aristocracy (= aristocratic, aristocratical, blue-blooded, gentle [archaic], patrician)
"a blue family"; "blue blood"; "the blue-blooded aristocracy";
 
7. Morally rigorous and strict (= puritanic, puritanical)
"blue laws";

8. [informal] Causing dejection (= dark, dingy, disconsolate, dismal, gloomy, grim, sorry, drab, drear, dreary)
"a blue day";

9. [Brit, informal] Believing in or supporting tenets of the political right
- rightist, right-wing, Conservative

- Noun: blue (derived forms: blues)
1. Blue colour or pigment; resembling the colour of the clear sky in the daytime (= blueness)
"he had eyes of bright blue";

2. Blue clothing
"she was wearing blue"
 
3. Any organization or party whose uniforms or badges are blue
"the Union army was a vast blue"
 
4. The sky as viewed during daylight (= blue sky, blue air, wild blue yonder)
"he shot an arrow into the blue";

5. Used to whiten laundry, hair or give it a bluish tinge (= bluing, blueing)
 
6. The sodium salt of amobarbital that is used as a barbiturate; used as a sedative and a hypnotic (= amobarbital sodium, blue angel, blue devil, Amytal)
 
7. Any of numerous small butterflies of the family Lycaenidae
 
8. [Austral, NZ, informal] An angry dispute (= quarrel, wrangle, row[2], words, run-in [informal], dustup [informal], dust-up, bust-up [informal], slanging match [Brit, informal], ding-dong [Brit, informal], barney [Brit, informal])
"they had a blue";

9. [Austral, NZ, informal] Someone who has red hair (= redhead, redheader, red-header, carrottop [informal], ginger [informal])
 
10. [Austral, NZ, informal] An embarrassing mistake (= blunder, blooper [N. Amer, informal], bloomer [informal], bungle, pratfall [informal], foul-up, flub [N. Amer, informal], botch, boner [N. Amer, informal], boo-boo [informal], goof [informal], boob [Brit, informal])

- Verb: blue ((derived forms: blues, blued, bluing))
1. Turn blue
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 297,
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
    startSeconds: 147,
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
    videoId: '_wNsZEqpKUA',
    startSeconds: 1196,
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
    videoId: 'dJOz8SYbN28',
    startSeconds: 576,
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
    videoId: 'KJy7T24rhg0',
    startSeconds: 594,
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
    videoId: 'dqcSk-EDrRo',
    startSeconds: 826,
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
    videoId: '58XEfDtU0Z4',
    startSeconds: 698,
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
    videoId: '1p8r-2ffK_c',
    startSeconds: 28,
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
    videoId: 'Mhlpk5ZrYLM',
    startSeconds: 507,
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
    videoId: 'URv0JwrR1eQ',
    startSeconds: 1285,
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
    videoId: 'bqGa8Y6CXiY',
    startSeconds: 261,
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
    videoId: 'NTf2rki0AcI',
    startSeconds: 1317,
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

// end blue
