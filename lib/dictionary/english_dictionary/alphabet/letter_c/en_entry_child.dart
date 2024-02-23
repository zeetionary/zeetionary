import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychild extends StatelessWidget {
  // blank divider
  EnglishEntrychild({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchild(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("child"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds1(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Children grow up so quickly!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds2(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The film is not suitable for young children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds3(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I lived in London as a child."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds4(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had old-fashioned ideas on how to bring up children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds5(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's always been a problem child."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds6(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My father died while I was still a small child."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds7(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are a lot of street children in the poorer parts of the city."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds8(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He took the children to Disneyland."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds9(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They can't have children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds10(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She didn't have her first child until she was nearly forty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds11(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She couldn't imagine the pain of losing a child at birth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds12(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They are expecting a child in June."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds13(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They have two children aged 21 and 17."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds14(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Me, I'm a child of the 60s."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds15(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's such a child if he doesn't get his own way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds16(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds17(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds18(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds19(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds20(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds21(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds22(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds23(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds24(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds25(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds26(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds27(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds28(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds29(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds30(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds31(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds32(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds33(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds34(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds35(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds36(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds37(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds38(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds39(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds40(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds41(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchilds42(String languageCode) async {
    // DOPSUM: CHANGE speakchild
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchilds4200"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "child"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃaɪld/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchild("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃaɪld/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchild("en-US"),
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
کوردی: مناڵ، منداڵ، زارۆک، بەچ، بەچە، وەچ، کۆرپە، ساوا، ڕۆڵە، فرزەند،	ئاوەڵمە، کۆرپەلە، تۆل، پێزە،	(خوازە) ئەنجام، زادە، ئاکام،	مرۆ یان کەسێکی بێ‌ئەزموون یان خاو،	مرید، بەردەست 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) منداڵێک کە ھێشتا پێگەشتوو نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Children grow up so quickly!"),
                                    ExampleSentenceKurdish(
                                        text: "منداڵان زۆر خوو گەورە دەبن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "child", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds1("en-US"),
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
                                            "The film is not suitable for young children."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمەکە گونجاو نییە بۆ منداڵانی گەنج."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds2("en-US"),
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
                                                    "I lived in London as a child."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وەک منداڵێک لە لەندەن ژیام."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds3("en-US"),
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
                                                    "He had old-fashioned ideas on how to bring up children."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بیرۆکەی کۆنەباوی لەسەر گەورەکردنی منداڵ."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds4("en-US"),
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
                                                    "He's always been a problem child."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەمیشە منداڵێکی سەربەکێشە بووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds5("en-US"),
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
                                                    "My father died while I was still a small child."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باوکم کۆچی دوایی کرد کە ھێشتا من منداڵێک بووم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds6("en-US"),
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
                                                    "There are a lot of street children in the poorer parts of the city."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕێژەیەکی زۆر منداڵی سەرشەقام ھەن لە بەشە ھەژارەکانی شارەکەدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds7("en-US"),
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
                                                    "He took the children to Disneyland."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "منداڵەکانی برد بۆ دیزنی‌لاند."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds8("en-US"),
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
                              text: "٢. (ناو) کوڕ و کچی باوک و دایکێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They can't have children."),
                                    ExampleSentenceKurdish(
                                        text: "ناتوانن منداڵیان ببێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds9("en-US"),
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
                                            "She didn't have her first child until she was nearly forty."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەکەم منداڵی نەبوو تاوەکو نزیکەی تەمەنی ٤٠ ساڵی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds10("en-US"),
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
                                                    "She couldn't imagine the pain of losing a child at birth."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نەیدەتوانی خەیاڵی لەدەستدانی منداڵێکی بکات لەکاتی لەدایکبووندا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds11("en-US"),
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
                                                    "They are expecting a child in June."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە حوزەیران منداڵێکیان دەبێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds12("en-US"),
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
                                                    "They have two children aged 21 and 17."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دوو منداڵی ٢١ و ١٧ ساڵیان ھەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchilds13("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchilds13("en-US"),
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
                                  "٣. (ناو) کەسێک کە کاریگەر بوو بە سەردەمێک یان دۆخێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Me, I'm a child of the 60s."),
                                    ExampleSentenceKurdish(
                                        text: "من، من منداڵێکی ١٩٦٠ـەکانم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) پێگەشتوویەک کە وەک منداڵ ڕەفتار دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He's such a child if he doesn't get his own way."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت بە منداڵێک کە ئەوەی دەست نەکەوێت کە دەیەوێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchilds15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchilds15("en-US"),
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
- Noun: child (derived forms: children)
1. A young person of either sex (= kid [informal], youngster, minor, shaver [informal], nipper [informal], small fry [informal], tiddler [Brit, informal], tike [informal], tyke [informal], fry [archaic], nestling [informal], wean [UK, Ireland, dialect], kiddy [informal], kiddie [informal])
"she writes books for children";
 
2. A human offspring (son or daughter) of any age (= kid [informal])
"they had three children";

3. An immature childish person (= baby)
"he remained a child in practical matters as long as he lived";
 
4. A member of a clan or tribe
"the children of Israel"
 
5. (computing) an object that part of, derived from, or serving another object
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
    videoId: 'FD5tIIkccHY',
    startSeconds: 43,
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
    videoId: 'gES-AewCOAI',
    startSeconds: 1390,
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
    videoId: '36EJUmw9flU',
    startSeconds: 563,
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
    videoId: 'V5r3T6RmfTk',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '75UUiYUx1Fo',
    startSeconds: 165,
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
    videoId: 'VVq2pA6dm2A',
    startSeconds: 201,
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
    startSeconds: 151,
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
    videoId: 'gdgPAetNY5U',
    startSeconds: 360,
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
