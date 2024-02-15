import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// replace EnglishEntryaround - replace speakAround

// replace around - /əˈraʊnd/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryaround extends StatelessWidget {
  // blank divider
  EnglishEntryaround({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAround(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1058(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The house is built around a central courtyard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1100(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He put his arms around her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1106(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bus came around the bend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1107(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our house is just around the corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1109(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They walked around the lake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1112(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They walked around the town looking for a place to eat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1114(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't arrange everything around your timetable!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1115(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are a lot of questions around her motivation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1117(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cost would be somewhere around £1 500."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1118(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I could hear laughter all around."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1120(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How do you make the wheels go around?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1123(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She turned the car around and drove off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1125(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I saw an old tree that was at least ten feet around."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1128(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were papers lying around all over the floor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1130(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were several young people sitting around looking bored."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1131(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She must be somewhere around here."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAround1133(String languageCode) async {
    // DOPSUM: CHANGE speakAround
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's been around as a film director since the early 2000s."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around"); // DOPSUM: CHANGE TEXT
  // }

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
                            EntryTitle(word: "around"), // Find /əˈraʊnd/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈraʊnd/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAround("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈraʊnd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAround("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: ئەم‌بەر و ئەوبەر، ئەم‌لاو ئەولا، وەر، دەو، (بۆ) ھەر لا، بە ھەر لایێ، ئەم دەوروبەرانە، ئەم دەوروپشتە، ئەم نزیکانە، ئەم دەوروبەرە، سەرانسەری، ھەموو جێیێ، سەرتاسەری، لە دەور، دەوان‌دەوری، دەوری، دۆرمادۆری، نزیکەی، دەور، دەوروبەر، دەوروپشت، لەبەردەست
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ئامراز) دەوردراو لە ھەموو لایەکەوە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The house is built around a central courtyard."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانووەکە بە دەوری حەوشەیەکدا درووست‌کراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1058("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1058(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He put his arms around her."),
                                    ExampleSentenceKurdish(
                                        text: "دەستی‌کردە ملی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1100("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1100(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) لە لایەکی تری شوێنێک یان شتێکەوە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The bus came around the bend."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پاسەکە لە لایەکەی تری سوڕانەکەوە ھات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1106("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1106(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Our house is just around the corner."),
                                    ExampleSentenceKurdish(
                                        text: "ماڵمان لەوسەری سوچەکەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1107("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1107(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بە بازنەیی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They walked around the lake."),
                                    ExampleSentenceKurdish(
                                        text: "بەدەوری دەریاچەکەدا ڕێیان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1109("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1109(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بۆ ژمارەیەکی زۆری ناوچەیەک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They walked around the town looking for a place to eat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە شارۆچکەکەدا ڕێیان‌کرد بۆ دۆزینەوەی شوێنێک بۆ نان‌خواردن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1112("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1112(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بۆ گونجاندن لەگەڵ کەسێک/شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can't arrange everything around your timetable!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانم ھەموو شتێک لەگەڵ خشتەی کاتی تۆ بگونجێنم!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1114("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1114(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) پەیوەندیدار بە شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There are a lot of questions around her motivation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پرسیاری زۆر ھەیە پەیوەندیدار بە پاڵنەرەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1115("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1115(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) بەنزیکەیی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The cost would be somewhere around £1 500."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تێچووەکەی نزیکەی ١,٥٠٠ پاوەند دەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1117("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1117(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) لە ھەموو لایەکەوە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I could hear laughter all around."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ھەموو لایەکەوە گوێم لە پێکەنین بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1118("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1118(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە بازنەیی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "How do you make the wheels go around?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چۆن وا لە ویلەکە دەکەیت بسووڕێتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1120("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1120(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە بازنەیەک یان ھێڵێکی چەماوە و ڕووکردن لە لایەکی تر یان ئاراستەی پێچەوانە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She turned the car around and drove off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکەی سووڕاندەوە و ڕۆشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1123("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1123(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) پێوانەکردن بە بازنەیی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I saw an old tree that was at least ten feet around."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "درەختێکی کۆنم دی کە بە لایەنی کەمەوە ١٠ پێ ئەستوور بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1125("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1125(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ھاوەڵکار) لە ژمارەیەکی زۆر شوێندا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There were papers lying around all over the floor."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کاغەز بە ھەموو زەوییەکەدا کەوتبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1128("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1128(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵکار) بۆ باسکردن لەو چالاکییانەی کە ھیچ ھۆکارێکیان نییە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There were several young people sitting around looking bored."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک کەسی گەنج دانیشتبوون و بێزاربوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1130("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1130(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) بەردەست"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She must be somewhere around here."),
                                    ExampleSentenceKurdish(
                                        text: "دەبێت لە شوێنێک لێرە بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1131("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1131(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵکار) چالاک لە پیشەیەکدا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's been around as a film director since the early 2000s."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ساڵانی ٢٠٠ەوە چالاکە وەک دەرھێنەرێکی فیلم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAround1133("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAround1133(
                                        // REPLACE: around /əˈraʊnd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Adverb: around 
1. In the area or vicinity (= about)
"hanging around"; "waited around for the next flight";
 
2. By a circular or circuitous route
"He came all the way around the base"; "the road goes around the pond"
 
3. Used of movement to or among many different places or in no particular direction (= about)
"news gets around"; "travelled around in Asia"; "he needs advice from someone who's been around"; "she sleeps around";
 
4. In a circle or circular motion
"The wheels are spinning around"
 
5. (of quantities) imprecise but fairly close to correct (= approximately, about, close to, just about, some, roughly, more or less, or so, loosely)
"weighs around a hundred pounds";
 
6. In or to a reversed position or direction (= about)
"suddenly she turned around";
 
7. To a particular destination either specified or understood
"she came around to see me"; "I invited them around for supper"
 
8. All around or on all sides (= about)
"dirty clothes lying around"; "There were trees growing all around"; "she looked around her";
 
9. In circumference
"the trunk is ten feet around"; "the pond is two miles around"
 
10. From beginning to end; throughout (= round)
"frigid weather the year around";

- Preposition: around  
1. Approximately (especially of a date) (= circa)
"the church was built around 1840";
 
2. On all sides; so as to encircle (= round)
 
3. In the whole extent of; everywhere (= throughout, over, all over, all around, across, round)
"climate change will be a problem around the world";
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'WF8iaqRqI60',
    startSeconds: 59,
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 274,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 36,
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
    videoId: 'VrKW58MS12g',
    startSeconds: 27,
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
    videoId: 'a_TSR_v07m0',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DPZzrlFCD_I',
    startSeconds: 285,
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 761,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'khOUvmOQExc',
    startSeconds: 116,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_wNsZEqpKUA',
    startSeconds: 154,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Kou7ur5xt_4',
    startSeconds: 533,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'e09xig209cQ',
    startSeconds: 174,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'HDntl7yzzVI',
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

// end