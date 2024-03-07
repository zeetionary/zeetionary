import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycompany extends StatelessWidget {
// blank divider
  EnglishEntrycompany({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompany(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("company"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys1(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is the world's largest software company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys2(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She runs her own TV production company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys3(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Smoking in the workplace is against company policy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys4(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Company profits were 5 per cent lower than last year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys5(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has shares in several companies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys6(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's been working for the same company for 15 years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys7(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She joined the company in 2009."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys8(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I enjoy Jo's company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys9(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She enjoys her own company when she is travelling."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys10(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's coming with me for company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys11(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I didn't realize you had company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys12(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We're expecting company this afternoon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys13(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Those children don't know how to behave in company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys14(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's not the type of joke you'd tell in mixed company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys15(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys16(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys17(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys18(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys19(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys20(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys21(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys22(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys23(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys24(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys25(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys26(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys27(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys28(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys29(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys30(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys31(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys32(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys33(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys34(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys35(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys36(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys37(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys38(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys39(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys40(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys41(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys42(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys43(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys44(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys45(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcompanys46(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcompanys4600"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "company"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌmpəni/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompany("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌmpəni/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompany("en-US"),
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
کوردی: ڕفێقایەتی، دۆستایەتی، دراو، ڕەفێق، هاوڕێ، دۆست،	میوان، میوانان،	دۆستان، ناسیاوان، دەستە، کۆڕ، تیپ، گروپ،	کۆڕی شانۆ یان هونەری،	کۆمپانی، کۆمپانیا، نێوکۆیی، شیرکەت،	(سەربازی) بڕەک، پەل، دەستە،	(کەشتی) کارکەران
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دامەزراوەیەکی بازرگانی کە قازانج دەکات بە کڕین و فرۆشتنی کەلوپەل و خزمەتگوزاری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It is the world's largest software company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەورەترین کۆمپانیای نەرمامێرە لە جیهاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "company", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys1("en-US"),
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
                                            "She runs her own TV production company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیای بەرهەمهێنانی تەلەفیزیۆنی خۆی بەڕێوەدەبات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys2("en-US"),
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
                                            "Smoking in the workplace is against company policy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جگەرەکێشان لە شوێنی کار دژی ڕێساکانی کۆمپانیایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys3("en-US"),
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
                                                    "Company profits were 5 per cent lower than last year."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "قازانجەکانی کۆمپانیا پێنج لە سەد کەمتربوو وەک لە ساڵی پار."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompanys4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompanys4("en-US"),
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
                                                    "He has shares in several companies."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پشكی لە ژمارەیەک کۆمپانیا هەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompanys5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompanys5("en-US"),
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
                                                    "She's been working for the same company for 15 years."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆ ١٥ ساڵە بۆ هەمان کۆمپانیا کاردەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcompanys6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcompanys6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                            "She joined the company in 2009."),
                                    ExampleSentenceKurdish(
                                        text: "لە ساڵی ٢٠٠٩ چووە کۆمپانیاکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) لەگەڵ کەسێک بوون وەک لەوەی تەنها بیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I enjoy Jo's company (= I enjoy being with her)."),
                                    ExampleSentenceKurdish(
                                        text: "حەز دەکەم لەگەڵ جۆو بم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys8("en-US"),
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
                                            "She enjoys her own company (= being by herself) when she is travelling."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "حەز دەکات تەنها بێت کە گەشت دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys9("en-US"),
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
                                            "He's coming with me for company."),
                                    ExampleSentenceKurdish(
                                        text: "لەگەڵمدا دێت بۆ هاوەڵی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ناو) میوانی ماڵ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I didn't realize you had company."),
                                    ExampleSentenceKurdish(
                                        text: "نەمزانی میوانت هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys11("en-US"),
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
                                            "We're expecting company this afternoon."),
                                    ExampleSentenceKurdish(
                                        text: "ئەم نیوەڕۆیە چاوەڕێی میوانین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کۆمەڵێک کەس کە پێکەوەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Those children don't know how to behave in company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو منداڵانە نازانن چۆن ڕەفتار بکەن لەگەڵ کەسانی دیکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys13("en-US"),
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
                                            "It's not the type of joke you'd tell in mixed company (= in a group of people of both sexes)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو لەو گاڵتانەی نییە لە پێش کەسانی دیکە بیکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcompanys14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcompanys14("en-US"),
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
- Noun: company (Derived forms: companies)
1. An institution created to conduct business
"he only invests in large well-established companies"; "he started the company in his garage"
 
2. (military) small military unit; usually two or three platoons
 
3. The state of being with someone (= companionship, fellowship, society)
"he missed their company";
 
4. Organization of performers and associated personnel (especially theatrical) (= troupe)
"the travelling company all stayed at the same hotel";
 
5. A social or business visitor (= caller)
"the room was a mess because he hadn't expected company";
 
6. A social gathering of guests or companions
"the house was filled with company when I arrived"
 
7. A band of people associated temporarily in some activity (= party, posse [informal])
"the company of cooks walked into the kitchen";
 
8. Crew of a ship including the officers; the whole force or personnel of a ship (= ship's company)
 
9. A unit of firefighters including their equipment
"a hook-and-ladder company"

- Verb: company (Derived forms: companied, companying, companies)
1. Be a companion to somebody (= companion, accompany, keep company)
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
    videoId: 'j-zCKl_eda4',
    startSeconds: 469,
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
    videoId: 'i7ILviehDvw',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Vx5AHPhLzpc',
    startSeconds: 76,
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
    videoId: 'M56U4NMiiqg',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'qDg_3eqssig',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '6bLjKi6UAW4',
    startSeconds: 93,
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
    videoId: '1rzFyBdKLvU',
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

// end WORD_WEB