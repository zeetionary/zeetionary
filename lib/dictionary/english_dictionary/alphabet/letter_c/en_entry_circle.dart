import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycircle extends StatelessWidget {
  // blank divider
  EnglishEntrycircle({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcircle(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("circle"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles1(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cut out two circles of paper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles2(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Draw a circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles3(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He traced a circle in the dust with his finger."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles4(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had dark circles around his eyes from lack of sleep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles5(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sharks were swimming in circles around her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles6(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The planets move in circles around the sun."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles7(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children stood in a circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles8(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Arrange the candles to create a circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles9(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We had seats in the circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles10(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Talk of religion was forbidden in the family circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles11(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her ideas have caused controversy in scientific circles in recent years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles12(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Respondents were asked to circle the appropriate answers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles13(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Spelling mistakes are circled in red."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles14(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The helicopter was circling slowly, very low."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles15(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Seagulls circled around above his head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles16(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles17(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles18(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles19(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles20(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles21(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles22(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles23(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles24(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles25(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles26(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles27(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles28(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles29(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles30(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles31(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcircles32(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcircles3200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "circle"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsɜːkl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcircle("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsɜːrkl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcircle("en-US"),
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
                  VideoIconForTab(),
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
کوردی: بازنە، جەغز، گاخ، خاز، ئاڵقە، چەمەرە، کەمەرە، چەرخ، دەور، گەڕ، سوور، خول،	بوار، پانتایی، مەڵبەند، ئاقار، ڕاخستە،	کۆڕ، گروپ، کۆمەڵ، دەستە،	نهۆمی سەرەوەی شانۆگا یا سینەما
"""),
                          const DefinitionKurdish(text: "١. (ناو) بازنە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Cut out two circles of paper."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوو بازنەی کاغەزی بازنەیی ببڕە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "circle", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) قەراغەکانی بازنەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Draw a circle."),
                                    ExampleSentenceKurdish(
                                        text: "بازنەیەک بکێشە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles2("en-US"),
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
                                            "He traced a circle in the dust with his finger."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە پەنجەی بازنەیەکی لە خۆڵەکەدا کێشا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles3("en-US"),
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
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He had dark circles around his eyes from lack of sleep."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بازنەی ڕەشی لە دەوری چاوەکانی هەبوو بەهۆی کەمی خەوەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcircles4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcircles4("en-US"),
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
                                                    "The sharks were swimming in circles around her."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بازنەکان بە بازنەیەک بە دەوریدا مەلەیان دەکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcircles5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcircles5("en-US"),
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
                                                    "The planets move in circles around the sun."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەسارەکان لە بازنەدا بە دەوری خۆردا دەسووڕێنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcircles6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcircles6("en-US"),
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
                                  "٣. (ناو) کۆمەڵە شتێک یان خەڵک کە بە بازنەیەکیان درووستکردووە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The children stood in a circle."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکان بە بازنەیەک وەستابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles7("en-US"),
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
                                            "Arrange the candles to create a circle."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مۆمەکان لە شێوەی بازنەیەکدا ڕیز بکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) نهۆمی سەرەوەی شانۆیەک یان سینەمایەک کە کورسییەکانی بە قەوسی دانراون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We had seats in the circle."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جێگاکانمان لە لۆژە قەوسەکەدا بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵێک کەس کە پەیوەندییان هەیە بەهۆی ئەوەی هەمان کار، حەز و خولیا، هتد ـیان هەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Talk of religion was forbidden in the family circle."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باسی ئایین قەدەغە بوو لە کۆڕە خێزانییەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles10("en-US"),
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
                                            "Her ideas have caused controversy in scientific circles in recent years."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ساڵانەی دوایی بیرۆکەکانی مشتومڕیان درووستکردووە لەناو کۆڕە زانستییەکاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) کێشانی بازنەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Respondents were asked to circle the appropriate answers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەڵامدەرەوان داوایان لێکرا بازنەیەک بکێشن بە دەوری وەڵامە گونجاوەکاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles12("en-US"),
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
                                            "Spelling mistakes are circled in red."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەڵە ڕێنووسییەکان بە سوور دەخرێنە بازنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) جوڵان لە بازنەیەکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The helicopter was circling slowly, very low."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێلیکۆپتەرەکە بەهێواشی دەسووڕایەوە زۆر بە نزمی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles14("en-US"),
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
                                            "Seagulls circled around above his head."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەورەسەکان دەسووڕانەوە لەسەر سەری."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcircles15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcircles15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
                        YoutubeEmbeddedend(),
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
- Noun: circle (Derived forms: circles)
1. Ellipse in which the two axes are of equal length; a plane curve generated by one point moving at a constant distance from a fixed point
"he calculated the circumference of the circle"
 
2. An unofficial association of people or groups (= set, band, lot)
 
3. Something approximating the shape of a circle
"the chairs were arranged in a circle"
 
4. Movement once around a course (= lap, circuit)
 
5. A road junction at which traffic streams circularly around a central island (= traffic circle [N. Amer], rotary, roundabout [Brit])
"the accident blocked all traffic at the circle";
 
6. [slang] Street name for flunitrazepam (= R-2 [slang], Mexican valium [slang], rophy [slang], rope [slang], roofy [slang], roach [slang], forget me drug [slang])
 
6. A curved section or tier of seats in a hall or theatre or opera house; usually the first tier above the orchestra (= dress circle)
"they had excellent seats in the dress circle";

7. Any circular or rotating mechanism (= round)
"the machine punched out metal circles";

- Verb: circle (Derived forms: circling, circles, circled)
1. Travel around something
"circle the globe"
 
2. Move in a circular path above (someone or something)
"the plane circled, looking for a landing spot"
 
3. Form or draw a circle around (= encircle)
"circle the errors";
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/PVQFvHuJHec?t=',
    startSeconds: 26,
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/3gKvdrexKE4?t=',
    startSeconds: 51,
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
    videoId: 'https://youtu.be/4x6ETtAwUrg?t=',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/a9WNFqo2zQI?t=',
    startSeconds: 5,
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
    videoId: 'https://youtu.be/PhNUjg9X4g8?t=',
    startSeconds: 87,
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
    videoId: 'https://youtu.be/47MNn4bsmSw?t=',
    startSeconds: 1907,
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
    videoId: 'https://youtu.be/lldCsGsdwcw?t=',
    startSeconds: 70,
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
    videoId: 'https://youtu.be/jBbiUirrCFM',
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

// end WORD_WEB
