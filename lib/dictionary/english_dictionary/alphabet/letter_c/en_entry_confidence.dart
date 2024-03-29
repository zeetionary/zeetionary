import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconfidence extends StatelessWidget {
// blank divider
  EnglishEntryconfidence({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconfidence(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("confidence"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences1(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The president's actions hardly inspire confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences2(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The players all have confidence in their manager."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences3(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He believes his reforms will restore confidence in the financial markets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences4(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The survey revealed a lack of confidence in the government."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences5(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has the utmost confidence in her students' abilities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences6(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People often lose confidence when they are criticized."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences7(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He gained confidence when he went to college."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences8(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "While girls lack confidence, boys often overestimate their abilities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences9(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She answered the questions with confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences10(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He said he wished that he shared her confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences11(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They could not say with confidence that he would be able to walk again after the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences12(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "No one can predict with complete confidence what will happen in the financial markets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences13(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eva told me about their relationship in confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences14(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is in the strictest confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences15(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I really can't talk about this—she told me in confidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences16(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The girls exchanged confidences."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences17(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you keep a confidence?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences18(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences19(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences20(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences21(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences22(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences23(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences24(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences25(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences26(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences27(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences28(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences29(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences30(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences31(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences32(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences33(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences34(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences35(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences36(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences37(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences38(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences39(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences40(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences41(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences42(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences43(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences44(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences45(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences46(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences47(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences48(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfidences49(String languageCode) async {
    // DOPSUM: CHANGE speakconfidence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfidences4900"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "confidence"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnfɪdəns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconfidence("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnfɪdəns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconfidence("en-US"),
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
کوردی: باوەڕی، جێی‌باوەڕبوون، باوەڕپێ‌کراوی، متمانە، پشت‌گەرمی، پشت‌ئەستووری، دڵنیایی، بستەھی، بستەیی، یەک‌چاوبوونەوە،	لەخۆڕادیتن، لەخۆڕاپەڕموون، ڕاپەڕموون، خۆباوەڕی،	ڕاز، سڕ،	وێران، گوستاخی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) متمانە و باوەڕ بە توانا و خاسیەتی باشی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The president's actions hardly inspire confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کردارەکانی سەرۆک بە ئەستەم متمانە دەبەخشێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "confidence", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences1("en-US"),
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
                                            "The players all have confidence in their manager."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یاریزانەکان ھەموویان متمانەیان بە ڕاھێنەرەکەیان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences2("en-US"),
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
                                                    "He believes his reforms will restore confidence in the financial markets."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باوەڕی وایە چاکسازییەکانی متمانە بۆ بازاڕی ئابووری دەگێڕنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconfidences3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconfidences3("en-US"),
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
                                                    "The survey revealed a lack of confidence in the government."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕاپرسییەکە کەمی متمانەی بۆ حکومەت دەرخست."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconfidences4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconfidences4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "She has the utmost confidence in her students' abilities."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باوەڕی تەواوی بە توانای خوێندکارانی ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakconfidences5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakconfidences5("en-US"),
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
                                  "٢. (ناو) باوەڕ بە توانای خۆت کە کارێک بکەیت و سەرکەوتوو بیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "People often lose confidence when they are criticized."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خەڵکی زۆرجار خۆباوەڕی لەدەستدەدەن کە سەرزەنشت دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences6("en-US"),
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
                                            "He gained confidence when he went to college."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆباوەڕی بەدەستھێنا کە چووە کۆلێژ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences7("en-US"),
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
                                            "While girls lack confidence, boys often overestimate their abilities."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەکاتێکدا کچان خۆباوەڕیان کەمە، کوڕان زۆرجار تواناکانیان بەرز دەنرخێنن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences8("en-US"),
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
                                            "She answered the questions with confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە خۆباوەڕییەوە وەڵامی پرسیارەکانی دایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfidences9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfidences9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ھەستی دڵنیای سەبارەت بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He said he wished that he shared her confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گوتی بەھیوابوو کە ئەویش ھەمان دڵنیایی ئەوی ھەبوایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences10("en-US"),
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
                                            "They could not say with confidence that he would be able to walk again after the accident."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەیان دەتوانی بە دڵنیاییەوە بڵێن کە دەتوانێت دووبارە بە ڕێگادا بچێت لە دوای ڕووداوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences11("en-US"),
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
                                            "No one can predict with complete confidence what will happen in the financial markets."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەس ناتوانێت بە دڵنیاییەوە پێشبینی بکات چی لە بازاڕی ئابووریدا ڕوودەدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) متمانە بە کەسێک کە زانیاری بە نھێنی بھێڵێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Eva told me about their relationship in confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئێڤا وەک سڕێک پێی گوتم سەبارەت بە پەیوەندییەکەیان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences13("en-US"),
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
                                            "This is in the strictest confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە بە سڕێکی توندەوەیە (نابێت بە ھیچ کەس بڵێیت)."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences14("en-US"),
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
                                            "I really can't talk about this—she told me in confidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕاستیدا ناتوانم قسە لەسەر ئەمە بکەم، بە متمانەوە پێی گوتم ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) نھێنییەک کە بە کەسێک دەیڵێیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The girls exchanged confidences."),
                                    ExampleSentenceKurdish(
                                        text: "کچەکان نھێنییان گۆڕییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences16("en-US"),
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
                                        text: "Can you keep a confidence?"),
                                    ExampleSentenceKurdish(
                                        text: "دەتوانیت نھێنییەک بپارێزیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconfidences17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconfidences17("en-US"),
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
- Noun: confidence (derived forms: confidences)
1. Freedom from doubt; belief in yourself and your abilities (= assurance, self-assurance, self-confidence, authority, sureness)
"after that failure he lost his confidence"; "his self-confidence in his superiority did not make him popular";
 
2. A feeling of trust (in someone or something)
"I have confidence in our team"; "confidence is always borrowed, never owned"
 
3. A state of confident hopefulness that events will be favourable
"public confidence in the economy"
 
4. A trustful relationship (= trust)
"he took me into his confidence";
 
5. A secret that is confided or entrusted to another
"everyone trusted him with their confidences"; "the priest could not reveal her confidences"
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 1493,
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 318,
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
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1681,
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
    videoId: 'ozsgl_sLnHQ',
    startSeconds: 4431,
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
    videoId: 'GCjZzcpWPRM',
    startSeconds: 71,
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
    videoId: 'SAbQYy8hP3M',
    startSeconds: 774,
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
    videoId: 'zQuFPxCb-_o',
    startSeconds: 205,
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