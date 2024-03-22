import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycompare extends StatelessWidget {
// blank divider
  EnglishEntrycompare({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompare(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("compare"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares1(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We compared the two reports carefully."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares2(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The internet allows you to compare prices from a variety of companies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares3(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "How can you compare the two things? They are so different!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares4(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We compared the results of our study with those of other studies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares5(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My own problems seem insignificant compared with other people's."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares6(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Standards in healthcare have improved enormously compared to 40 years ago."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares7(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "About a third of American adults are obese compared with 24 per cent of Britons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares8(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This house doesn't compare with our previous one."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares9(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their prices compare favourably to those of their competitors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares10(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The region's wines compare well with those from elsewhere in Germany."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares11(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Few things compare with the joy of walking on a bright spring morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares12(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These mountains do not compare with the Himalayas."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares13(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nothing compares with the sight of your child swimming for the first time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares14(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The critics compared his work to that of Martin Amis."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares15(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In her early career she was often compared to Ella Fitzgerald."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares16(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some observers compare the situation to that of the early 1980s."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares17(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares18(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares19(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares20(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares21(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares22(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares23(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares24(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares25(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares26(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares27(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares28(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares29(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares30(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares31(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares32(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares33(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares34(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares35(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares36(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompares37(String languageCode) async {
    // DOPSUM: CHANGE speakcompare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompares3700"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "compare"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈpeə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompare("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈper/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompare("en-US"),
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
کوردی: بەراوردکاری، بەرھەڤ‌دان، ھاوبەری، پێک‌گرتن، ھەڵسەنگاندن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بەراوردکردنی شت یان کەس بۆ زانینی خاڵی ھاوبەش و جیاوازی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We compared the two reports carefully."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوو ڕاپۆرتەکەمان بەوریاییەوە بەراورد کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "compare", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares1("en-US"),
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
                                            "The internet allows you to compare prices from a variety of companies."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئینتەرنێت ڕێگات پێ دەدات نرخەکان لە ژمارەیەک کۆمپانیای جیاوازەوە بەراورد بکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares2("en-US"),
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
                                                    "How can you compare the two things? They are so different!"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چۆن دوو شتەکە بەراورد دەکەیت؟ زۆر جیاوازن!"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares3("en-US"),
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
                                                    "We compared the results of our study with those of other studies."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەنجامی توێژینەوەکەمان لەگەڵ ئەوانەی توێژینەوەکانی دیکە بەراورد کرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares4("en-US"),
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
                                                    "My own problems seem insignificant compared with other people's."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کێشەکانی من بێ‌بایەخ دەردەکەون بەراورد بەوانەی کەسانی دیکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares5("en-US"),
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
                                                    "Standards in healthcare have improved enormously compared to 40 years ago."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ستانداردی کەرتی تەندرووستی باشتربووە بەراورد بە ٤٠ ساڵی ڕابردوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares6("en-US"),
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
                                                    "About a third of American adults are obese compared with 24 per cent of Britons."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نزیکەی یەک لە سەدی پێگەشتووانی ئەمریکا کێشیان زۆرە بەروارد بە ٢٤ لە سەدی بەریتانییەکان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares7("en-US"),
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
                              text: "٢. (کردار) ھاوشێوەی شتێک یان کەسێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This house doesn't compare with our previous one (= it is not as good)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانووەک بەراورد ناکرێت بەوەی پێشووترمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares8("en-US"),
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
                                            "Their prices compare favourably to those of their competitors."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نرخەکانیان باش دەردەکەون بەراورد بەوانەی ڕکابەرەکانیان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares9("en-US"),
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
                                                    "The region's wines compare well with those from elsewhere in Germany."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شەرابەکانی ھەرێمەکە باشن بەراورد بە ئەوانەی دیکەی شوێنەکانی دیکەی ئەڵمانیا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares10("en-US"),
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
                                                    "Few things compare with the joy of walking on a bright spring morning."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کەم شت بەراورد دەکرێن بە پیاسەیەکی بەیانیانی ڕۆشنی بەھار."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares11("en-US"),
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
                                                    "These mountains do not compare with the Himalayas."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم چیایانە بەراورد ناکرێن بە زنجیرەکانی ھێمالایا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares12("en-US"),
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
                                                    "Nothing compares with the sight of your child swimming for the first time."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھیچ بەراورد نابێت بە بینینی منداڵەکەت کە بۆ یەکەمجار مەلە دەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompares13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompares13("en-US"),
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
                                  "٣. (کردار) وتن یان پیشاندانی ئەوەی کەسێک/شتێک وەک کەسێک/شتێکی دیکە وایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The critics compared his work to that of Martin Amis."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕەخنەگران کارەکەیان بەوەی مارتن ئەیمز بەراورد کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares14("en-US"),
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
                                            "In her early career she was often compared to Ella Fitzgerald."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە سەرەتای کارکردنیدا زۆرجار بە ئێلا فیتزجێراڵد بەراورد دەکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares15("en-US"),
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
                                            "Some observers compare the situation to that of the early 1980s."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک لە توێژەران دۆخەکەیان بەوەی ساڵانی سەرەتای ١٩٨٠ ـکان بەراورد دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompares16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompares16("en-US"),
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
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
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
- Verb: compare (derived forms: comparing, compared, compares)
1. Examine and note the similarities or differences of
"John compared his haircut to his friend's"; "We compared notes after we had both seen the movie"
 
2. Be comparable
"This car does not compare with our line of Mercedes"
 
3. Consider or describe as similar, equal, or analogous (= liken, equate)
"We can compare the Han dynasty to the Romans";
 
4. To form the comparative or superlative form on an adjective or adverb

- Noun: compare (derived forms: compares)
1. Qualities that are comparable (= comparison, equivalence, comparability)
"beyond compare";
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
    videoId: 'kMpe75vJB_M',
    startSeconds: 103,
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
    videoId: '9TugA_z5vQE',
    startSeconds: 874,
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
    videoId: 'wD3MruC-FTc',
    startSeconds: 15,
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
    videoId: 'Ht0IbFNbfSY',
    startSeconds: 54,
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
    videoId: 'S6yPZB9O2HU',
    startSeconds: 190,
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
    videoId: 'r-Or05EFLUM',
    startSeconds: 142,
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
    videoId: 'jaRcbpN_KlM',
    startSeconds: 310,
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