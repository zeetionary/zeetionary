import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycloud extends StatelessWidget {
  // blank divider
  EnglishEntrycloud({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcloud(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cloud"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds1(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dark clouds were gathering in the west."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds2(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sun went behind a cloud."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds3(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was scorching and there wasn't a cloud in the sky."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds4(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plane was flying in cloud most of the way."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds5(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bees flew out of their hives, forming a thick black cloud."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds6(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I saw an enormous cloud of smoke rising over the city."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds7(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her father's illness cast a cloud over her wedding day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds8(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the photographs are kept on the cloud rather than on hard drives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds9(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doubts were beginning to cloud my mind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds10(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His judgement was clouded by jealousy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds11(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her face clouded over with anger."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds12(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Suspicion clouded his face."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds13(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cost factors should not be allowed to cloud the issue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds14(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "That day, the skies had clouded and it had become cool."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds15(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sky clouded over and it started to rain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds16(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His last years were clouded by financial worries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds17(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her eyes clouded with tears."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds18(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Steam had clouded the mirror."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds19(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds20(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds21(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds22(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds23(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds24(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds25(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds26(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds27(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds28(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclouds29(String languageCode) async {
    // DOPSUM: CHANGE speakcloud
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclouds2900"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cloud"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klaʊd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcloud("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klaʊd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcloud("en-US"),
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
کوردی: ھەور، عەور،	کۆمەڵ، کەڵەکە، تۆپەڵە، چڕایی، ڕەشایی، پۆل،	لکە، پەڵە، پنکە، پنۆک، لێڵی، تەڵخی، ڕەگە،	نەڕوونی، یەکلایی‌نەکرا(نە)وەیی،	سێبەر
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ھەور یان تۆپەڵە ھەور"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Dark clouds were gathering in the west."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەوری ڕەش لە ڕۆژئاوا کۆدەبوونەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "cloud", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds1("en-US"),
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
                                        text: "The sun went behind a cloud."),
                                    ExampleSentenceKurdish(
                                        text: "خۆر کەوتە پشتی تۆپەڵە ھەورێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds2("en-US"),
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
                                                    "It was scorching and there wasn't a cloud in the sky."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "زۆر گەرم بوو و ھیچ ھەورێک لە ئاسماندا نەبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclouds3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclouds3("en-US"),
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
                                                    "The plane was flying in cloud most of the way."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "فڕۆکەکە زۆرینەی ماوەکە لە ناو ھەوردا گەشتی دەکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclouds4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclouds4("en-US"),
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
                                  "٢. (ناو) تۆپەڵێکی گەورە لە شتێک لە ئاسماندا، بۆ نموونە دووکەڵ یان خۆڵ، یان ژمارەیەکی زۆر لە مێروو کە پێکەوە دەفڕن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The bees flew out of their hives, forming a thick black cloud."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مێشەنگەکان لە پوورەھەنگەکەیان فڕین و تۆپەڵێکی ڕەشی گەورەیان درووستکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds5("en-US"),
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
                                            "I saw an enormous cloud of smoke rising over the city."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تۆپەڵە دووکەڵێکی گەورەم بینی بەسەر شارەکەدا بەرزدەبووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) شتێک کە دڵتەنگ یان بێزارت دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Her father's illness cast a cloud over her wedding day."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشییەکەی باوکی خەمناکییەکی کێشا بەسەر ڕۆژی ھاوسەرگیرییەکەیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) تۆڕێک لە سێرڤەر کە تێیدا زانیاری و نەرمامێر کۆگا کراون و بەکارھێنەران لە ڕێگەی ئینتەرنێتەوە بەکاریدێنن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "All the photographs are kept on the cloud rather than on hard drives."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو وێنەکان لەسەر کلاود پارێزراون نەک لەسەر ھارد درایڤ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) سەختکردنی بیرکەوتنەوە یان تێگەشتن لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Doubts were beginning to cloud my mind."),
                                    ExampleSentenceKurdish(
                                        text: "گومان ھزرمیان تەڵخ کردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds9("en-US"),
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
                                            "His judgement was clouded by jealousy."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڕیاردانی کوێربوو بوو بە حەسوودی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) پیشاندانی دڵتەنگی، ترس، تووڕەیی، ھتد یان وا بکەیت کەسێک ئەم ھەستانە پیشان بدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Her face clouded over with anger."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووخساری ھاواری دەکرد لە تووڕەییدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds11("en-US"),
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
                                        text: "Suspicion clouded his face."),
                                    ExampleSentenceKurdish(
                                        text: "گومان باڵی بەسەریدا کێشابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ناڕوونکردنی شتێک کە باسی دەکەیت یان بیری لێ دەکەیتەوە، بەتایبەتی بە باسکردنی شتی دیکە کە پەیوەندی نییە پێوەی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Cost factors should not be allowed to cloud the issue."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فاکتەری تێچوون نابێت بابەتەکە بەلاڕێدا بەرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) پڕبوون لە ھەور یان تۆپەڵە ھەور"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "That day, the skies had clouded and it had become cool."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو ڕۆژە، ئاسمان ھەوراوی بووبوو و ساردبووبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds14("en-US"),
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
                                            "The sky clouded over and it started to rain."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاسمان پڕ لە ھەور بوو و دەستی بە باران کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) ناخۆشکردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His last years were clouded by financial worries."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ساڵانی کۆتایی بە نیگەرانی دارایی تاڵ بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) تەڵخ بوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Her eyes clouded with tears."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چاوەکانی تەڵخ بوون لە فرمێسکدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds17("en-US"),
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
                                        text: "Steam had clouded the mirror."),
                                    ExampleSentenceKurdish(
                                        text: "ھەڵم ئاوێنەکەی تەڵخ کردبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclouds18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclouds18("en-US"),
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
- Noun: cloud (derived forms: clouds)
1. A visible mass of water or ice particles suspended at a considerable altitude
 
2. Any collection of particles (e.g., smoke or dust) or gases that is visible
 
3. Out of touch with reality
"his head was in the clouds"
 
4. A cause of worry, gloom or trouble
"the only cloud on the horizon was the possibility of dissent by the French"
 
5. Suspicion affecting your reputation
"after that mistake he was under a cloud"
 
6. A group of many things in the air or on the ground (= swarm)
"clouds of blossoms"; "it discharged a cloud of spores";
 
7. (internet) the internet for connection to remote servers regarded as a space for processing and storage, the focus of cloud computing

- Verb: cloud (derived forms: clouded, clouding, clouds)
1. Make cloudy (= overcast)
"Fall weather often clouds our beaches";
 
2. Make less visible or unclear (= obscure, befog, becloud, obnubilate, haze over, fog, mist)
"The stars are obscured by the clouds";
 
3. Billow up in the form of a cloud
"The smoke clouded above the houses"
 
4. Make gloomy or depressed
"Their faces were clouded with sadness"
 
5. (of someone's image or good reputation) damage, place under suspicion or cast doubt upon (= defile, sully, corrupt, taint, tarnish, soil, stain)
"cloud someone's reputation";
 
6. Make less clear
"the stroke clouded memories of her youth"
 
7. Colour with streaks or blotches of different shades (= mottle, dapple)
 
8. Make milky or dull
"The chemical clouded the liquid to which it was added"
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
    videoId: '_cj_8_upaVo',
    startSeconds: 33,
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
    videoId: 'EK_UOLsN72Q',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'o7Xkx8q_jnw',
    startSeconds: 55,
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
    videoId: 'Kllz_AcDnRc',
    startSeconds: 11,
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
    videoId: '8GI02MZ-7_c',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DxKbAXLg0s8',
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
    videoId: 'IuWQGpswvyY',
    startSeconds: 652,
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
    videoId: '_wNsZEqpKUA',
    startSeconds: 1179,
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