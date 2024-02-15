import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycentre extends StatelessWidget {
  // blank divider
  EnglishEntrycentre({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcentre(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("centre"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres1(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He walked to the centre of the circle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres2(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a long table in the centre of the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres3(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The statue is in the very centre of the temple."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres4(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Aristotle believed that the Earth was at the centre of the universe."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres5(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We both work in the city centre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres6(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've bought a flat in the very centre of Cambridge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres7(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time Winchester was still a major centre of population."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres8(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university is a leading centre for scientific research."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres9(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company has recently opened a new training centre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres10(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university is recognized as an international centre of excellence for training dentists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres11(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Children like to be the centre of attention."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres12(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He could never doubt that he was the centre of her world."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres13(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Politically, she is considered to be slightly left of centre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres14(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "State occasions always centred around the king."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres15(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The debate centred on an important political issue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres16(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most of the fighting was centred in the north of the capital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres17(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Centre all the headings in this document."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres18(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres19(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres20(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres21(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres22(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres23(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres24(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcentres25(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2525"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "centre"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsentə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcentre("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsentər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcentre("en-US"),
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
                          const DefinitionKurdish(text: """
کوردی: ناوەند، نێوەند، چەق، ناوچە، مەڵبەند، ھەلێر، کورەک، ناوچەق، نێوەڕاست، ناڤین، نێوان، دڵ، جەرگە، یاریزانی نێوەڕاست، باڵی نەرم‌ڕەو، نێوەڕاستی، ناوەندی، ناوینی، نەرم‌ڕەو، باڵی نەرم‌ڕەو 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ناوەڕاستی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He walked to the centre of the circle."),
                                    ExampleSentenceKurdish(
                                        text: "ڕۆیشتە چەقی بازنەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "centre", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres1("en-US"),
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
                                            "There was a long table in the centre of the room."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مێزێکی درێژ ھەبوو لە ناوەڕاستی ژوورەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres2("en-US"),
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
                                                    "The statue is in the very centre of the temple."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پەیکەرەکە لە ناوەندی پەرستگاکەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcentres3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcentres3("en-US"),
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
                                                    "Aristotle believed that the Earth was at the centre of the universe."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەرستۆ باوەڕی وابوو زەوی لە چەقی گەردوونە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcentres4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcentres4("en-US"),
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
                                  "٢. (ناو) بەشێکی شار یان شارۆچکەیەک کە لە ناوەندە و قەرەباڵغە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We both work in the city centre."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەردووکمان لە سەنتەری شار کار دەکەین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres5("en-US"),
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
                                            "We've bought a flat in the very centre of Cambridge."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فلاتێکمان کڕیوە لە چەقی کامبریجدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شوێنێک یان ناوچەیەک کە خەڵکی زۆر تێیدا دەژین"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "At that time Winchester was still a major centre of population."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەوکات وینچستەر ھێشتا ناوەندێکی گرنگی دانیشتوان بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres7("en-US"),
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
                                            "The university is a leading centre for scientific research."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانکۆکە ناوەندی سەرەکی توێژینەوەی زانستییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بینایەک یان شێنێک کە بۆ مەبەستێک یان چالاکییەک بەکاردێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The company has recently opened a new training centre."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە تازەگی ناوەندێکی ڕاھێنانی کردووەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) شوێنێک کە کارێکی دیاریکراو زۆر بە باشی تێیدا دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The university is recognized as an international centre of excellence for training dentists."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانکۆکە ناسراوە وەک ناوەندی نایابی جیھانی بۆ ڕاھێنانی پزیشکانی ددان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئەو خاڵەی کە خەڵکی سەرنج دەخەنە سەری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Children like to be the centre of attention."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵان حەز دەکەن ناوەندی سەرنج بن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres11("en-US"),
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
                                            "He could never doubt that he was the centre of her world."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەرگیز گومانی لەوە نەبوو کە لە ناوجەرگەی جیھانی ئەودایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ئایدۆلۆژیای سیاسی کە لە نێوان چەپ و ڕاستدایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Politically, she is considered to be slightly left of centre."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕووی سیاسییەوە، وا دادەنرێت کەمێک لە چەپی نەرم‌ڕەوی بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) بوون بەو کەسە یان شتەی کە زۆرینەی چالاکییەکان لە دەوریدا ڕوودەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "State occasions always centred around the king."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆنە نەتەوەییەکان ھەمیشە لە دەوری پاشا دەخولانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres14("en-US"),
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
                                            "The debate centred on an important political issue."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیبەیتەکە لەسەر کێشیەکی سیاسی گرنگ بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) يوودان بەشێوەیەکی سەرەکی لەو شوێنەی کە باسکراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Most of the fighting was centred in the north of the capital."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆرینەی شەڕەکە لە باکووری پایتەخت چڕبوویەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) جوڵانی شتێک و دانانی لە چەقی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Centre (= put at equal distances from the left and right sides of the page) all the headings in this document."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی سەرەبابەتەکان لەم پەڕەیە بخە ناوەڕاستەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcentres17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcentres17("en-US"),
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
- Noun: centre (derived forms: centres)
Usage: Brit, Cdn (US: center)
1. An area that is approximately central within some larger region (= center [US], middle, heart [Brit], eye)
"it is in the centre of town";
 
2. The piece of ground in the outfield directly ahead of the catcher (= center field [US], centerfield [US], center [US], centre field [Brit, Cdn])
"he hit the ball to deep centre";

3. A building dedicated to a particular activity (= center [US])
"they were raising money to build a new centre for research";
 
4. A point equidistant from the ends of a line or the extremities of a figure (= center [US], midpoint)
 
5. The choicest or most essential or most vital part of some idea or experience (= kernel, substance, core, center [US], essence, gist, heart, heart and soul, inwardness, marrow, meat, nub, pith, sum, nitty-gritty)
"the centre of the prosecutor's argument";

5. The object upon which interest and attention focuses (= center [US], center of attention [US], centre of attention [Brit, Cdn])
"his stories made him the centre of the party";
 
6. A cluster of nerve cells governing a specific bodily process (= center [US], nerve center [US], nerve centre [Brit, Cdn])
"in most people the speech centre is in the left hemisphere";
 
7. (military) the middle of a military or naval formation (= center [US])
"they had to reinforce the centre";
 
8. (basketball) the person who plays centre on a basketball team (= center [US])
 
9. (football) the person who plays centre on the line of scrimmage and snaps the ball to the quarterback (= center [US], snapper)
"the centre fumbled the handoff";

10. A place where some particular activity is concentrated (= center [US])
"they received messages from several centres";
 
11. Politically moderate persons; centrists (= center [US])
 
12. (ice hockey) the person who plays centre on a hockey team (= center [US])
 
13. The sweet central portion of a piece of candy that is enclosed in chocolate or some other covering (= center [US])
 
14. Mercantile establishment consisting of a carefully landscaped complex of shops representing leading merchandisers; usually includes restaurants and a convenient parking area; a modern version of the traditional marketplace (= plaza, mall [Brit], center [US], shopping mall, shopping center [US], shopping centre [Brit, Cdn])
"a good centre should have a movie house"; "a good shopping centre should have a movie house"; "a good centre should have a movie house";
 
15. The position on a hockey team of the player who participates in the face off at the beginning of the game (= center [US])
 
16. (American football) the position of the player on the line of scrimmage who puts the ball in play (= center [US])
"it is a centre's responsibility to get the football to the quarterback";
 
17. A position on a basketball team of the player who participates in the jump that starts the game (= center [US])

- Verb: centre (derived forms: centred, centres, centring)
Usage: Brit, Cdn (US: center)
1. Centre upon (= focus on, center on [US], revolve around, revolve about, concentrate on, center [US], centre on [Brit, Cdn])
"Her entire attention centred on her children";
 
2. Hold attention and exert mental effort on something (= concentrate, focus, center [US], pore, rivet, pore over)
 
3. Move into the centre (= center [US])
"That vase in the picture is not centred";

- Adjective: centre 
Usage: Brit, Cdn (US: center)
1. Equally distant from the extremes (= center [US], halfway, middle, midway)
 
2. Of or belonging to neither the right nor the left politically or intellectually (= center [US])

- Noun: Centre
1. A low-lying region in central France (= Centre-Val de Loire)
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
    videoId: 'w3QW-9ggyDE',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'yMoV2aEurUQ',
    startSeconds: 12,
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
    videoId: '0ga1NDTQZGc',
    startSeconds: 39,
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
    videoId: 'rEdl2Uetpvo',
    startSeconds: 339,
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
    videoId: 'qQ01eLt_bxo',
    startSeconds: 709,
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
    videoId: 'qWAagS_MANg',
    startSeconds: 21,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 1463,
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
    videoId: 'R0wa9IlCA_w',
    startSeconds: 409,
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
