import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycoach extends StatelessWidget {
  // blank divider
  EnglishEntrycoach({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcoach(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("coach"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs1(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He is a former college football coach."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs2(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's the team coach?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs3(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("See you tomorrow, Coach."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs4(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He credited his success to his acting coach's guidance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs5(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many life coaches work from home via the telephone and internet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs6(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Travel is by coach overnight to Berlin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs7(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was seen boarding a coach to Southampton."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs8(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our seats are in Coach D."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs9(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is the old coach road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs10(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Even the company's director flies coach most of the time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs11(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has coached the team for five years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs12(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has coached hundreds of young singers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs13(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her father coached her for the Olympics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs14(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They believed the witnesses had been coached on what to say."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs15(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs16(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs17(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs18(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs19(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs20(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs21(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs22(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs23(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs24(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs25(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs26(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs27(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs28(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs29(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs30(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcoachs31(String languageCode) async {
    // DOPSUM: CHANGE speakcoach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcoachs3100"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "coach"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊtʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcoach("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊtʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcoach("en-US"),
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
کوردی: پاس (بۆ شارەوشار)،	(شەمەندەفەر) عەڕەبانە، واگۆن،	گالیسکە، ڕاھێنەر یان مامۆستای تایبەتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ڕاھێنەری تیمێکی وەرزشی یان کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He is a former college football coach."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆنە ڕاھێنەرێکی تۆپی پێیە لە کۆلێژ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "coach", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs1("en-US"),
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
                                        text: "Who's the team coach?"),
                                    ExampleSentenceKurdish(
                                        text: "ڕاھێنەری تیمەکە کێیە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs2("en-US"),
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
                                        text: "See you tomorrow, Coach."),
                                    ExampleSentenceKurdish(
                                        text: "سبەی دەتبینمەوە، ڕاھێنەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەسێک کە وانەی تایبەتی بە کەسێک دەڵێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He credited his success to his acting coach's guidance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرکەوتنی گەڕاندەوە بۆ ڕێنمایی ڕاھێنەری نمایشی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەسێک کە پارەی پێ دەدەیت بۆ ئەوەی ڕاوێژت پێ بدات لەسەر باشترکردنی ژیانت"),
                          const Row(
                            children: [
                              AlsoEnglishckb(word: "ھەروەھا: life coach"),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Many life coaches work from home via the telephone and internet."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر ڕاوێژەری ژین لە ماڵەوە لە ڕێگەی تەلەفۆن و ئینتەرنێتەوە کاردەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) پاسێک کە بۆ گەشتی دوور مەودا بەکاردێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Travel is by coach overnight to Berlin."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەشت بە پاسە لە نیوەشەودا بۆ بەرلین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs6("en-US"),
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
                                            "She was seen boarding a coach to Southampton."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بینرا کە سەرکەوتە پاسێک بۆ ساوسامپتن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەشێکی جیاکراوەی شەمەندەفەر بۆ گواستنەوەی گەشتیار"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Our seats are in Coach D."),
                                    ExampleSentenceKurdish(
                                        text: "جێگاکانمان لە واگۆنی D ـن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) گالیسکەیەکی داخراو کە لە کۆندا بە ڕاکێشانی ئەسپ بۆ گواستنەوە بەکاردەھات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "This is the old coach road."),
                                    ExampleSentenceKurdish(
                                        text: "ئەمە ڕێگا کۆنەکەی گالیسکەکانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) ھەرزانترین جێگاکانی ناو فڕۆکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Even the company's director flies coach most of the time."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنانەت بەڕێوبەری کۆمپانیاکە زۆرجار لە جێگای ھەرزان دەفڕێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ڕاھێنەری کردنی تیمێک یان کەسێک بۆ یاری وەرزشی، کردنی شتێک بە باشتر، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He has coached the team for five years."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێنج ساڵە ڕاھێنەری تیمەکەی کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs11("en-US"),
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
                                            "She has coached hundreds of young singers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕاھێنەری بە سەدا گۆرانیبێژی گەنج کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs12("en-US"),
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
                                            "Her father coached her for the Olympics."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باوکی بۆ ئۆڵۆمپیاد مەشقی پێکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پێدانی ڕێنمایی بە کەسێک کە چی بکات یان بڵێت لە دۆخێکی دیاریکراودا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They believed the witnesses had been coached on what to say."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێیان وابوو کە شایەتحاڵەکان ڕێنماییان پێدرابوو چی بڵێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcoachs14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcoachs14("en-US"),
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
- Noun: coach (derived forms: coaches)
1. (sport) someone in charge of training an athlete or a team (= manager, handler)
 
2. (singing) a person who gives private instruction (as in singing, acting, etc.) (= private instructor, tutor)
 
3. A railcar where passengers ride (= passenger car, carriage)
 
4. A vehicle carrying many passengers; used for public transport (= bus, autobus, charabanc [Brit], double-decker, jitney [N. Amer, informal], motorbus, motorcoach, omnibus, passenger vehicle)
"he always rode the coach to work";
 
5. A carriage pulled by four horses with one driver (= four-in-hand, coach-and-four)

- Verb: coach (derived forms: coaches, coaching, coached)
1. Teach and supervise (someone); act as a trainer or coach (to), as in sports (= train)
"She is coaching the crew";
 
2. (driving) drive or operate a coach or carriage
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
    videoId: '5HjFdDyzvqg',
    startSeconds: 121,
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
    videoId: 'lhmKCkZusMo',
    startSeconds: 100,
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
    videoId: '08okw37PBUE',
    startSeconds: 543,
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
    videoId: 'FHUhOafKgKo',
    startSeconds: 92,
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
    videoId: 'FPvisqTN8UY',
    startSeconds: 248,
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
    videoId: 'Bl5630CeYFs',
    startSeconds: 280,
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
    videoId: 'esfChb49_Rk',
    startSeconds: 331,
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
    videoId: 'PmlRbfSavbI',
    startSeconds: 63,
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