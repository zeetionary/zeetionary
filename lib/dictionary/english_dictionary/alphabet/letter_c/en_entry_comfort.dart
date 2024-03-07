import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomfort extends StatelessWidget {
  // blank divider
  EnglishEntrycomfort({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomfort(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("comfort"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts1(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hotel offers a high standard of comfort and service."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts2(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I didn't want to leave the comfort of my bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts3(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had enough money to live in comfort in their old age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts4(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I dress for comfort rather than elegance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts5(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I tried to offer a few words of comfort."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts6(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His words were of little comfort in the circumstances."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts7(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If it's any comfort to you, I'm in the same situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts8(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I drew comfort from his words."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts9(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her being with me was such a comfort."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts10(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children have been a great comfort to me through all of this."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts11(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's a comfort to know that she is safe."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts12(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was a comfort to her to know that I was never far away."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts13(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The hotel has all modern comforts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts14(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The victim's widow was today being comforted by family and friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts15(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The idea that he was not alone comforted him greatly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts16(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She comforted herself with the thought that it would soon be spring."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts17(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts18(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts19(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts20(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts21(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts22(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts23(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts24(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts25(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts26(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts27(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts28(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts29(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts30(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts31(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts32(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts33(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts34(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts35(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts36(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomforts37(String languageCode) async {
    // DOPSUM: CHANGE speakcomfort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomforts3700"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "comfort"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌmfət/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomfort("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌmfərt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomfort("en-US"),
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
کوردی: تەناهی، ئاسایش، ئاسوودەیی، حەساوەیی،	دڵنەوایی، دڵخۆشی، دڵدانەوە، خەم‌ڕەوێن، مایەی دڵخۆشی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دۆخی ئاسوودەیی دوور لە ئازار"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The hotel offers a high standard of comfort and service."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هوتێلەکە ئاستێکی بەرزی ئاسوودەیی و خزمەت پێشکەش دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "comfort", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts1("en-US"),
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
                                            "I didn't want to leave the comfort of my bed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەمدەویست ئاسوودەیی جێخەوەکەم بە جێبهێڵم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts2("en-US"),
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
                                                    "They had enough money to live in comfort in their old age."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پارەی پێویستییان هەبوو کە لە ئاسوودەییدا بژین لە تەمەنی پیرییاندا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcomforts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcomforts3("en-US"),
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
                                                    "I dress for comfort rather than elegance."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بۆ ئاسوودەیی جل دەپۆشم نەک بۆ جوانی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcomforts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcomforts4("en-US"),
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
                              text: "٢. (ناو) دۆخی نەبوونی نیگەرانی و ئازار"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I tried to offer a few words of comfort."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەوڵم دا هەندێک وشەی دڵنەوایی بڵێم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts5("en-US"),
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
                                            "His words were of little comfort in the circumstances."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قسەکانی دڵدانەوەی کەم بوون لە دۆخەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts6("en-US"),
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
                                            "If it's any comfort to you, I'm in the same situation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر هیچ دڵدانەوەیک دەبێت بۆت، منیش لە هەمان دۆخدام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts7("en-US"),
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
                                                    "I drew comfort from his words."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دڵنەواییم وەرگرت لە قسەکانی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcomforts8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcomforts8("en-US"),
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
                                  "٣. (ناو) شتێک یان کەسێک کە جێگەی دڵدانەوەیە بۆت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Her being with me was such a comfort."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بوونی لەگەڵم دڵدانەوەیەکی گەورە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts9("en-US"),
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
                                            "The children have been a great comfort to me through all of this."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکان دڵنەواییەکی گەورە بوون بەدرێژایی هەموو ئەەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts10("en-US"),
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
                                            "It's a comfort to know that she is safe."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانینی ئەوەی کە سەلامەتە ئارامبەخشە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts11("en-US"),
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
                                            "It was a comfort to her to know that I was never far away."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خەم‌ڕەوێنییەک بوو بۆی کە دەیزانی هەرگیز زۆر دوور نەبووم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شتێک کە ژیانت ئاسوودە دەکات یان ئاسانتری دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The hotel has all modern comforts (/every modern comfort)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هوتێلەکە هەموو ئاسانکارییەکانی سەردەمی تێدایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) دڵنەوایی دانەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The victim's widow was today being comforted by family and friends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بێوەژنی قوربانییەکە ئەمڕۆ لەلایەن خێزان و هاوڕێیانەوە دڵنەوایی دەکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts14("en-US"),
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
                                            "The idea that he was not alone comforted him greatly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بیرکردنەوەی ئەوەی کە تەنها نەبوو زۆر ئاسوودەی دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts15("en-US"),
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
                                            "She comforted herself with the thought that it would soon be spring."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵی خۆی دەدایەوە بەوەی زوو نابا بەهار دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomforts16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomforts16("en-US"),
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
- Noun: comfort (Derived forms: comforts)
1. A state of being relaxed and feeling no pain (= comfortableness)
"he is a man who enjoys his comfort";
 
2. A feeling of freedom from worry or disappointment
 
3. The act of consoling; giving relief in affliction (= consolation, solace)
"his presence was a comfort to her";
 
4. A freedom from financial difficulty that promotes a comfortable state (= ease)
"he had all the material comforts of this world";
 
5. Satisfaction or physical well-being provided by a person or thing
"his friendship was a comfort"; "a padded chair was one of the room's few comforts"
 
6. Bedding made of two layers of cloth filled with stuffing and stitched together (= quilt, comforter, puff)
 
7. Assistance, such as that provided to an enemy or to a known criminal
"it gave comfort to the enemy"

- Verb: comfort (Derived forms: comforts, comforted, comforting)
1. Give moral or emotional strength to (= soothe, console, solace)
 
2. Lessen pain or discomfort; alleviate (= ease)
"comfort the pain in your legs";
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
    videoId: 'VZXyCwokQh8',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'SyJFybCfDZU',
    startSeconds: 45,
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
    videoId: 'FShqQfUILwM',
    startSeconds: 252,
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
    videoId: 'gUYAyZu-Wt4',
    startSeconds: 7,
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
    videoId: 'C81R24LZcDE',
    startSeconds: 8,
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
    videoId: 'Ij71DXDgvz0',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'CwzaVzIhgmk',
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