import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "begin" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace begin - replace EnglishEntrybegin

// replace speakBegin - /bɪˈɡɪn/

enum TtsState { playing }

class EnglishEntrybegin extends StatelessWidget {
// blank divider
  EnglishEntrybegin({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBegin(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("begin"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins1(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's begin at page 9."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins2(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'd like to begin with a simple question."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins3(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We began work on the project in May."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins4(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When does the concert begin?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins5(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins6(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The lecture begins at 8pm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins7(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their troubles are only beginning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins8(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Where does Europe end and Asia begin?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins9(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Use ‘an’ before words beginning with a vowel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins10(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The path begins at Livingston village."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins11(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The school began in 1920, with only ten pupils."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins12(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He began a new magazine on post-war architecture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins13(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He began as an actor, before starting to direct films."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins14(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘Ladies and gentlemen,’ he began, ‘welcome to the concert.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins15(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can't begin to thank you enough."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins16(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He didn't even begin to understand my problem."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins17(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins18(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins19(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins20(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins21(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins22(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins23(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins24(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins25(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins26(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins27(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins28(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins29(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBegins30(String languageCode) async {
    // DOPSUM: CHANGE speakBegin
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBegins3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "begin"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪˈɡɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBegin("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪˈɡɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBegin("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 18
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
١. (کردار) دەستپێکردنی کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's begin at page 9."),
                              const ExampleSentenceKurdish(
                                  text: "با لە پەڕەی نۆوە دەستپێ‌بکەین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'd like to begin with a simple question."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حەزدەکەم بە پرسیارێکی سادە دەستپێ‌بکەم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins2("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We began work on the project in May."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە مایس دەستمانکرد بە کارکردن لە پڕۆژەکەدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins3("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) دەستپێکردنی شتێک """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "When does the concert begin?"),
                              const ExampleSentenceKurdish(
                                  text: "کۆنسێرتەکە کەی دەستپێ‌دەکات؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins5("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The lecture begins at 8pm."),
                              const ExampleSentenceKurdish(
                                  text: "وانەکە لە کاتژمێر ٨ دەستپێ‌دەکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins6("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Their troubles are only beginning."),
                              const ExampleSentenceKurdish(
                                  text: "کێشەکان جارێ سەرەتایانە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins7("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ھەبوونی خاڵێک یان بەشێک وەک دەستپێکی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Where does Europe end and Asia begin?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کوێوە ئەورووپا تەواو دەبێت و ئاسیا دەستپێ‌دەکات؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins8("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Use ‘an’ before words beginning with a vowel."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وشەی ‘an’ لە پێش ئەو وشانەی کە بە بزوێن دەستپێ‌دەکەن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins9("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The path begins at Livingston village."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێگاکە لە گوندی لیڤینگستنەوە دەستپێ‌دەکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins10("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) دەستپێکردن یان کردنی شتێک بۆ یەکەم جار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The school began in 1920, with only ten pupils."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "قوتابخانەکە لە ساڵی ١٩٢٠ کرایەوە بە تەنھا ١٠ خوێندکارەوە"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins11("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He began a new magazine on post-war architecture."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گۆڤارێکی تازەی دامەزراند لەسەر بیناسازی دوای جەنگ"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بوون بە شتێک لە پێش شتێکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He began as an actor, before starting to direct films."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وەک ئەکتەرێک دەستیپێ‌کرد، پێش ئەوەی دەرھێنان بۆ فیلم بکات"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) دەستکردن بە قسەکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "‘Ladies and gentlemen,’ he began, ‘welcome to the concert.’"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەستیپێکرد بە وتنی 'خانمان و بەڕێزان، بەخێربێن بۆ کۆنسێرتەکە'"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins14("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) نەدانی ھیچ ھەوڵێک بۆ کردنی شتێک، یان نەبوونی توانا یان شانس بۆ کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I can't begin to thank you enough."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناتوانم ھێندەی پێویست سوپاست بکەم (ھەرچی بکەم ھەر کەمە)."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins15("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He didn't even begin to understand my problem."),
                              const ExampleSentenceKurdish(
                                  text: "ھەر ھەوڵیشی نەدا لە کێشەکەم تێ بگات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBegins16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBegins16("en-US"),
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
                    YoutubeEmbeddedfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddedsixteen(),
                    // YoutubeEmbeddedseventeen(),
                    // YoutubeEmbeddedeighteen(),
                    // YoutubeEmbeddednineteen(),
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
- Verb: begin (derived forms: beginning, begins, begun)
1. Take the first step or steps in carrying out an action (= get down, get, start out, start, set about, set out, commence)
"We began working at dawn"; "The first tourists began to arrive in Cambodia"; "He began early in the day";
 
2. Have a beginning, in a temporal, spatial, or evaluative sense (= start)
"The DMZ begins right over the hill"; "The second movement begins after the Allegro";
 
3. Set in motion, cause to start (= lead off, start, commence)
"The Iraqis began hostilities"; "begin a new chapter in your life";
 
4. Start speaking or saying
"'Now listen, friends', he began"
 
5. Be the first item or point, constitute the beginning or start, come first in a series
"The number 'one' begins the sequence"; "A terrible murder begins the novel"; "The convocation ceremony officially begins the semester"
 
6. Have a beginning, of a temporal event
"WW II began in 1939 when Hitler marched into Poland"; "The company's Asia tour begins next month"
 
7. Have a beginning characterized in some specified way (= start)
"My property begins with the three maple trees"; "Her day begins with a workout"; "The semester begins with a convocation ceremony"; "The novel begins with a murder";
 
8. Begin an event that is implied and limited by the nature or inherent function of the direct object (= start)
"begin a cigar";
 
9. Achieve or accomplish in the least degree, usually used in the negative
"This economic measure doesn't even begin to deal with the problem of inflation"; "You cannot even begin to understand the problem we had to deal with during the war"
 
10. Begin to speak, understand, read, and write a language
"She began Russian at an early age"; "we began French in fourth grade"

- Noun: Begin
1. Israeli statesman (born in Russia) who (as prime minister of Israel) negotiated a peace treaty with Anwar Sadat (then the president of Egypt) (1913-1992) (= Menachem Begin)
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 519, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_spuxXnul0U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 78, // DOPSUM: CHANGE IT
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

  static String myVideoId = "4J0xFUyz1nw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 25, // DOPSUM: CHANGE IT
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

  static String myVideoId = "44HXLCsdIk8";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "MnExgQ81fhU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 377, // DOPSUM: CHANGE IT
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

  static String myVideoId = "y1sF6ZeASU0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 683, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Wsije1KetVw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 131, // DOPSUM: CHANGE IT
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

  static String myVideoId = "dqcSk-EDrRo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 377, // DOPSUM: CHANGE IT
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

  static String myVideoId = "kVwp-BfarxI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 728, // DOPSUM: CHANGE IT
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

  static String myVideoId = "dXt1ftcdxNg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 388, // DOPSUM: CHANGE IT
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

  static String myVideoId = "wir7jmefyec";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 32, // DOPSUM: CHANGE IT
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

  static String myVideoId = "aCSlNrI4nhY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 202, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Up4Y5Lx0HNg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 459, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfourteen extends StatelessWidget {
  YoutubeEmbeddedfourteen({super.key});

  static String myVideoId = "eJf42cpqY-w";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 124, // DOPSUM: CHANGE IT
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

  static String myVideoId = "NHZL2Kk_EwE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 733, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedsixteen extends StatelessWidget {
  YoutubeEmbeddedsixteen({super.key});

  static String myVideoId = "Zb3F5WE6KBI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1211, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedseventeen extends StatelessWidget {
  YoutubeEmbeddedseventeen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedeighteen extends StatelessWidget {
  YoutubeEmbeddedeighteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddednineteen extends StatelessWidget {
  YoutubeEmbeddednineteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

// end begin// TODO Implement this library.
