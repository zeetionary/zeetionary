import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycause extends StatelessWidget {
  // blank divider
  EnglishEntrycause({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcause(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cause"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses1(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Unemployment is a major cause of poverty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses2(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The report ignores the root cause of the problem."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses3(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Smoking is the leading cause of lung cancer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses4(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Drinking and driving is one of the most common causes of traffic accidents"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses5(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was impossible to determine the cause of death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses6(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is no cause for concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses7(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The food was excellent—I had no cause for complaint."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses8(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has long championed the cause of civil liberties."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses9(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has taken up the cause of animal rights."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses10(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The different groups support a common cause."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses11(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do they know what caused the fire?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses12(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Are you causing trouble again?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses13(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors say her condition is causing some concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses14(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Recently there have been several deaths caused by dangerous driving."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses15(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The drought is causing problems for many farmers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses16(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses17(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses18(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses19(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses20(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses21(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses22(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses23(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses24(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses25(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses26(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses27(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses28(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses29(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses30(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses31(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses32(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses33(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses34(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses35(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses36(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses37(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses38(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses39(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses40(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses4040"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcauses41(String languageCode) async {
    // DOPSUM: CHANGE speakcause
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcauses4141"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cause"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɔːz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcause("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɔːz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcause("en-US"),
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
کوردی: ھۆ، ھۆکار، ئەگەر، سەدەم، مایە، ماک، بنەما، دۆز، کێشە، بەڵگە، ئامانج، مەبەست، (ماف) داواکاری، دادخوازی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کەسێک یان شتێک وادەکات شتێک ڕووبدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Unemployment is a major cause of poverty."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بێکاری ھۆکارێکی گەورەی ھەژارییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "cause", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses1("en-US"),
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
                                            "The report ignores the root cause of the problem."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕاپۆرتەکە ھۆکاری بنچینەیی کێشەکە پشتگوێ دەخات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses2("en-US"),
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
                                                    "Smoking is the leading cause of lung cancer."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "جگەرەکێشان ھۆکاری سەرەکیی شێرپەنجەی سییەکانە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses3("en-US"),
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
                                                    "Drinking and driving is one of the most common causes of traffic accidents"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خواردنەوە و شۆفێری‌کردن یەکێکە لە باوترین ھۆکارەکانی ڕووداوەکانی ھاتووچۆ."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses4("en-US"),
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
                                                    "It was impossible to determine the cause of death."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەستەم بوو ھۆکاری مردنەکە دیاری بکرێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses5("en-US"),
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
                                  "٢. (ناو) ھۆکارێک کە دەبێتەھۆی ھەستێک یان ھەڵسوکەوتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "There is no cause for concern."),
                                    ExampleSentenceKurdish(
                                        text: "ھیچ ھۆیەک نییە بۆ نیگەرانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses6("en-US"),
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
                                            "The food was excellent—I had no cause for complaint."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خواردنەکە ناوازە بوو، ھیچ بیانووم نەبوو بۆ گازندە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دامەزراوەیەک یان بیرۆکەیەک کە خەڵکی پشتگیری دەکەن یان شەڕی بۆ دەکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has long championed the cause of civil liberties."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماوەیەکی درێژە شەڕی کردووە بۆ دۆزی ئازادییە مەدەنییەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses8("en-US"),
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
                                            "She has taken up the cause of animal rights."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەیوەندی کردووە بە دۆزی مافی ئاژەڵانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses9("en-US"),
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
                                            "The different groups support a common cause."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرووپە جیاوازەکان پشتگیری دۆزێکی ھاوبەش دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) واکردن لەوەی شتێک ڕووبدات یان کەسێک شتێک بکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Do they know what caused the fire?"),
                                    ExampleSentenceKurdish(
                                        text: "دەزانیت چی بوو بەھۆی ئاگرەکە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses11("en-US"),
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
                                        text: "Are you causing trouble again?"),
                                    ExampleSentenceKurdish(
                                        text: "دووبارە کێشە دەنێیتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcauses12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcauses12("en-US"),
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
                                                    "Doctors say her condition is causing some concern."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پزیشکەکان دەڵێن دۆخەکەی جێگەی کەمێک نیگەرانییە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses13("en-US"),
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
                                                    "Recently there have been several deaths caused by dangerous driving."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تازەگی ژمارەیەک گیان‌لەدەستدان بەھۆی شۆفێریکردنی مەترسیدارەوە ھەبووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses14("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses14("en-US"),
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
                                                    "The drought is causing problems for many farmers."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وشکە‌ساڵییەکە بووە بە کێشە بۆ ژمارەیەکی زۆر جوتیار."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcauses15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcauses15("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
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
- Verb: cause (derived forms: caused, causing, causes)
1. Give rise to; cause to happen or occur, not always intentionally (= do, make, engender)
"cause a commotion"; "cause an accident";

2. Make someone or something act in a particular way or do a particular thing (= induce, stimulate, have, get, make)
"The ads caused me to buy a VCR";

- Noun: cause 
1. Events that provide the generative force that is the origin of something
"they are trying to determine the cause of the crash"
 
2. A justification for something existing or happening (= reason, grounds)
"he had no cause to complain";
 
3. A series of actions advancing a principle or tending toward a particular end (= campaign, crusade, drive, movement, effort)
"they worked in the cause of world peace";

4. Any entity that produces an effect or is responsible for events or results (= causal agent, causal agency)
 
5. (law) a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy (= lawsuit, suit, case, causa)
"the family brought cause against the landlord";
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
    videoId: 'VaBCiio8XZs',
    startSeconds: 78,
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
    videoId: 'nhPhhBGpzD0',
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
    videoId: 'EiVv2Q01N9E',
    startSeconds: 10,
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
    videoId: 'u40o9AyxoxA',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'UKxQTvqcpSg',
    startSeconds: 62,
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
    videoId: '4gZkv6MU-4Y',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'RuUlWUMEPWg',
    startSeconds: 429,
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 404,
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
