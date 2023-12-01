import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

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
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            Expanded(
                              child: Text(
                                "around", // DOPSUM: CHANGE WORD ENTRY - Find /əˈraʊnd/
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Text(
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUK: /əˈraʊnd/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAround(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUS: /əˈraʊnd/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAround(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: const [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14,
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                ],
                indicator: BoxDecoration(
                  color: Pallete.tabsbackgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4.0),
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
                          const DefinitionKurdish(text: """
کوردی: ئەم‌بەر و ئەوبەر، ئەم‌لاو ئەولا، وەر، دەو، (بۆ) ھەر لا، بە ھەر لایێ، ئەم دەوروبەرانە، ئەم دەوروپشتە، ئەم نزیکانە، ئەم دەوروبەرە، سەرانسەری، ھەموو جێیێ، سەرتاسەری، لە دەور، دەوان‌دەوری، دەوری، دۆرمادۆری، نزیکەی، دەور، دەوروبەر، دەوروپشت، لەبەردەست

١. (ئامراز) دەوردراو لە ھەموو لایەکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The house is built around a central courtyard."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خانووەکە بە دەوری حەوشەیەکدا درووست‌کراوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1058("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1058(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He put his arms around her."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەستی‌کردە ملی."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1100("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1100(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) لە لایەکی تری شوێنێک یان شتێکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The bus came around the bend."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پاسەکە لە لایەکەی تری سوڕانەکەوە ھات."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1106("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1106(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Our house is just around the corner."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ماڵمان لەوسەری سوچەکەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1107("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1107(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بە بازنەیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They walked around the lake."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "بەدەوری دەریاچەکەدا ڕێیان کرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1109("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1109(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بۆ ژمارەیەکی زۆری ناوچەیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They walked around the town looking for a place to eat."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە شارۆچکەکەدا ڕێیان‌کرد بۆ دۆزینەوەی شوێنێک بۆ نان‌خواردن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1112("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1112(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بۆ گونجاندن لەگەڵ کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I can't arrange everything around your timetable!"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناتوانم ھەموو شتێک لەگەڵ خشتەی کاتی تۆ بگونجێنم!"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1114("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1114(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) پەیوەندیدار بە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are a lot of questions around her motivation."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پرسیاری زۆر ھەیە پەیوەندیدار بە پاڵنەرەکانی."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1115("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1115(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) بەنزیکەیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The cost would be somewhere around £1 500."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "تێچووەکەی نزیکەی ١,٥٠٠ پاوەند دەبێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1117("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1117(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) لە ھەموو لایەکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I could hear laughter all around."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ھەموو لایەکەوە گوێم لە پێکەنین بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1118("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1118(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە بازنەیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "How do you make the wheels go around?"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "چۆن وا لە ویلەکە دەکەیت بسووڕێتەوە؟"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1120("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1120(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە بازنەیەک یان ھێڵێکی چەماوە و ڕووکردن لە لایەکی تر یان ئاراستەی پێچەوانە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She turned the car around and drove off."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ئۆتۆمبێلەکەی سووڕاندەوە و ڕۆشت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1123("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1123(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) پێوانەکردن بە بازنەیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I saw an old tree that was at least ten feet around."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "درەختێکی کۆنم دی کە بە لایەنی کەمەوە ١٠ پێ ئەستوور بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1125("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1125(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ھاوەڵکار) لە ژمارەیەکی زۆر شوێندا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There were papers lying around all over the floor."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "کاغەز بە ھەموو زەوییەکەدا کەوتبوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1128("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1128(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵکار) بۆ باسکردن لەو چالاکییانەی کە ھیچ ھۆکارێکیان نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There were several young people sitting around looking bored."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەندێک کەسی گەنج دانیشتبوون و بێزاربوون."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1130("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1130(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) بەردەست"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She must be somewhere around here."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەبێت لە شوێنێک لێرە بێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1131("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1131(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵکار) چالاک لە پیشەیەکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's been around as a film director since the early 2000s."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ساڵانی ٢٠٠ەوە چالاکە وەک دەرھێنەرێکی فیلم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAround1133("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAround1133(// REPLACE: around /əˈraʊnd/
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                        ],
                      ),
                    ),
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
                    // YoutubeEmbeddedfourteen(),
                    // YoutubeEmbeddedfifteen(),
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishMeaningConst(
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
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "WF8iaqRqI60";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 59, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "rPe4yziWiOg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 274, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 36, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 27, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 111, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 285, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 761, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "khOUvmOQExc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 116, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = "_wNsZEqpKUA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 154, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "Kou7ur5xt_4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 533, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "e09xig209cQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 174, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "HDntl7yzzVI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 78, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddethirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddethirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end // TODO Implement this library.