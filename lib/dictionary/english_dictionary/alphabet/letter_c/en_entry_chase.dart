import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychase extends StatelessWidget {
  // blank divider
  EnglishEntrychase({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchase(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chase"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases1(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My dog likes chasing rabbits."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases2(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The kids chased each other around the kitchen table."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases3(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Chase the cat out—we don't want her in the kitchen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases4(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This particular fish chases off any other fish that enters its territory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases5(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Too many people are chasing too few jobs nowadays."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases6(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team is chasing its first win in five games."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases7(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Kevin's been chasing after Jane for months."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases8(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Girls are always chasing him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases9(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I need to chase him about organizing the meeting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases10(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases10"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases11(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The thieves were caught by police after a short chase."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases12(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We lost him in the narrow streets and had to give up the chase."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases13(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Three teams are involved in the chase for the championship."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases14(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Exhausted and hungry, the hunters finally gave up the chase."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases15(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases16(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases17(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases18(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases19(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases20(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases21(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases22(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases23(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases24(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases25(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases26(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases27(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases28(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases29(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases30(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases31(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases32(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases33(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases34(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchases35(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases3500"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "chase"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃeɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃeɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchase("en-US"),
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
کوردی: شوێن‌هەڵگرتن، ڕاونان، بەدواکەوتن، بەدواداگەڕان، بەدواداچوون، شۆپاندن، دانەپەی،	ڕاو، ڕاوگە، جێ‌ڕاو،	خەنەک
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) چوون بە دوای کەسێک یان شتێک بۆ گرتنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "My dog likes chasing rabbits."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەگەکەم حەزی بە شوێنکەوتنی کەروێشکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "chase", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases1("en-US"),
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
                                            "The kids chased each other around the kitchen table."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکان شوێن یەکدی کەوتبوون بە دەوری مێزی چێشتخانەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ناچارکردنی کەسێک یان شتێک کە ڕابکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Chase the cat out—we don't want her in the kitchen."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پشیلەکە ڕاوبنێ دەرەوە، نامانەوێت لە چێشتخانەکە بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases3("en-US"),
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
                                            "This particular fish chases off any other fish that enters its territory."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم جۆرە ماسییە هەر جۆرە ماسییەکی دیکە ڕاودەنێت کە بێتە ناوچەکەیەوە ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) هەوڵدان بۆ بەدەستهێنانی شتێک، بۆ نموونە پارە، کار، یان سەرکەوتن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Too many people are chasing too few jobs nowadays."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژمارەیەکی زۆر خەڵک بەشوێن ژمارەیەکی کەمی کارەوەن ئەم ڕۆژانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases5("en-US"),
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
                                            "The team is chasing its first win in five games."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تیمەکە هەوڵی یەکەم بردنەوەی لە پێنج یاریدا دەدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) هەوڵدان بۆ ڕازیکردنی کەسێک بۆ بوونی پەیوەندی سێکسی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Kevin's been chasing after Jane for months."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کیڤن بۆ چەندین مانگە بە شوێن جەینەوەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases7("en-US"),
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
                                        text: "Girls are always chasing him."),
                                    ExampleSentenceKurdish(
                                        text: "کچان هەمیشە بەدوایەوەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ڕازیکردنی کەسێک بۆ کردنی کارێک کە دەبوو زووتر بیکردایە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I need to chase him about organizing the meeting."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویست بوو ڕێکخستنی کۆبوونەوەکە بەگوێیدا بدەمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) چوون بۆ شوێنێک بەپەلە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've been chasing around town all morning looking for a present for Sharon."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی بەیانییەکە بە شارۆچکەکەدا گەڕام بۆ دیارییەک بۆ شارۆن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) شوێنکەوتنی کەسێک یان شتێک بۆ گرتنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The thieves were caught by police after a short chase."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دزەکان لەلایەن پۆلیسەوە گیران لەدوای بەدواکەوتنێکی کورت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases11("en-US"),
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
                                            "We lost him in the narrow streets and had to give up the chase (= stop chasing him)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە شەقامە تەسکەکاندا ونمانکرد و ناچاربووین کۆتایی بە ڕاوەدوونانەکە بهێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) هەوڵدانی زۆر بە دەستخستنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Three teams are involved in the chase for the championship."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سێ تیم لە کێبڕکی دان بۆ بەدەستهێنانی پاڵەوانێتییەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) ڕاوکردنی ئاژەڵان بۆ وەرزش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Exhausted and hungry, the hunters finally gave up the chase."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماندوو و برسی، ڕاوکەرەکان لەکۆتاییدا وازیان هاورد لە ڕاوکردنەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchases14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchases14("en-US"),
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
- Verb: chase (Derived forms: chasing, chased, chases)
1. Go after with the intent to catch (= chase after, trail, tail, tag, give chase, dog, go after, track)
"The policeman chased the mugger down the alley"; "the fox chased the rabbit"; "The policeman chased after the mugger down the alley";
 
2. Pursue someone sexually or romantically (= chase after)
 
3. Cut a groove into
"chase silver"
 
4. Cut a furrow into columns (= furrow, chamfer)

- Noun: chase (Derived forms: chases)
1. The act of pursuing in an effort to overtake or capture (= pursuit, pursual, following)
"the culprit started to run and the cop took off in chase";
 
2. A rectangular metal frame used in letterpress printing to hold together the pages or columns of composed type that are printed at one time
 
3. A cavity or groove, e.g. in a wall to hold cables or pipes

- Noun: Chase 
1. United States politician and jurist who served as chief justice of the United States Supreme Court (1808-1873) (= Salmon P. Chase, Salmon Portland Chase)
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
    videoId: 'https://youtu.be/GoQkxFNk-hw',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/9b76gFIbNJs?t=',
    startSeconds: 18,
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
    videoId: 'https://youtu.be/IjOdZ0Pm85s?t=',
    startSeconds: 111,
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
    videoId: 'https://youtu.be/zqllxbPWKNI?t=',
    startSeconds: 1410,
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
    videoId: 'https://youtu.be/tsxmyL7TUJg?t=',
    startSeconds: 536,
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
    videoId: 'https://youtu.be/58XEfDtU0Z4?t=',
    startSeconds: 1149,
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
    videoId: 'https://youtu.be/3RkhZgRNC1k?t=',
    startSeconds: 1562,
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
    videoId: 'https://youtu.be/jFk-L7Wcg0g?t=',
    startSeconds: 368,
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
