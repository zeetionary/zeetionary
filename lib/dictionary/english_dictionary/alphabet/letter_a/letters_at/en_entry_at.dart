import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "at" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace EnglishEntryat - replace speakAt

// replace at - /ət/, strong form  /æt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryat extends StatelessWidget {
  // blank divider
  EnglishEntryat({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAt(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("attttttttttttttttt"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt642(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They arrived late at the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt643(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll be at home all morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt645(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's been at the bank longer than anyone else."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt647(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We left at 2 o'clock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt648(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She got married at 25."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt650(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Somebody threw paint at the prime minister."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt656(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He clutched wildly at the rope as he fell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt658(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm good at French."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt659(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was driving at 70 mph."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt701(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Prices start at £1 000."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt703(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Can you read a car number plate at fifty metres?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt706(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The country is now at war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt707(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I felt at a disadvantage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt708(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I think Mr Harris is at lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt710(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The garden's at its most beautiful in June."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt712(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was delighted at the result."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt716(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They attended the dinner at the chairman's invitation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAt720(String languageCode) async {
    // DOPSUM: CHANGE speakAt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can reach me at 009001008, extension 770."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAt(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAt(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAt(String languageCode) async {
  //   // DOPSUM: CHANGE speakAt
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attttttttttttttttt"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "at"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ət/, strong form  /æt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAt("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ət/, strong form  /æt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAt("en-US"),
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
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
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
کوردی: لە، ژ، تێ، بە، نزیک، لەنێو، تێوە، لەنێوەوەی، لەبەر، لە، لە بەردەم، لە کاتی، لە حاڵی، لە دۆخی، بەرەو، ڕوولە، لە ڕێگای، لە ڕێی، بە ھۆی، کاتی، وەختی، بە خاتری

١. (ئامراز) بۆ پیشاندانی شوێنی شتێک، یان ڕوودانی شوێنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They arrived late at the airport."),
                              const ExampleSentenceKurdish(
                                  text: "درەنگ گەشتنە فڕۆکەخانەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt642("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt642(// REPLACE: at
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
                              const ExampleSentenceEnglish(
                                  text: "I'll be at home all morning."),
                              const ExampleSentenceKurdish(
                                  text: "تەواوی بەیانی لە ماڵەوە دەبم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt643("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt643(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بۆ پیشاندانی شوێنی کارکردن یان خوێندنی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's been at the bank longer than anyone else."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زیاتر لە ھەر کەسێکی تر لە بانکەکە کاری کردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt645("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt645(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بۆ پیشاندانی کات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We left at 2 o'clock."),
                              const ExampleSentenceKurdish(
                                  text: "لە کاتژمێر ٢ ڕۆشتین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt647("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt647(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بۆ پیشاندانی تەمەنی کەسێک لە کاتی کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She got married at 25."),
                              const ExampleSentenceKurdish(
                                  text: "لە تەمەنی ٢٥ ساڵی ھاوسەرگیری کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt648("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt648(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بۆ پیشاندانی ئاراستەی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Somebody threw paint at the prime minister."),
                              const ExampleSentenceKurdish(
                                  text: "کەسێک بۆیەی گرتە سەرۆک وەزیران."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt650("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt650(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) لە دوای کردار بەکاردێت بۆ پیشاندانی ئەوەی کەسێک ھەوڵ دەدات شتێک بکات، بەڵام سەرکەوتوو نابێت یان تەواوی ناکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He clutched wildly at the rope as he fell."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شێتانە دەستی توند کردبوو لە حەبلەکە کە ئەو کەوت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt656("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt656(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ئامراز) لە دوای ھاوەڵناو بەکاردێت بۆ پیشاندانی ئاست"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm good at French."),
                              const ExampleSentenceKurdish(
                                  text: "لە فەرەنسی باشم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt658("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt658(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ئامراز) بۆ پیشاندنی بڕ و خێرایی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was driving at 70 mph."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەخێرایی ٧٠ میل لە کاتژمێرێکدا لێیدەخوڕی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt659("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt659(// REPLACE: at
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
                              const ExampleSentenceEnglish(
                                  text: "Prices start at £1 000."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نرخەکان لە ١٠٠٠ پاوەندەوە دەستپێ‌دەکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt701("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt701(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ئامراز) بۆ پیشاندنی دووری و مەودا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Can you read a car number plate at fifty metres?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەتوانی ژمارەی ئۆتۆمبێلێک لە دووری ٥٠ مەترەوە بخوێنیتەوە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt703("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt703(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ئامراز) بەکاردێت بۆ پیشاندنی ئەو دۆخەی کەسێک یان شتێک تێیدایە، ئەوەی کەسێک دەیکات، یان ئەوەی چی ڕوودەدات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The country is now at war."),
                              const ExampleSentenceKurdish(
                                  text: "وڵاتەکە ئێستا لە جەنگدایە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt706("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt706(// REPLACE: at
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
                              const ExampleSentenceEnglish(
                                  text: "I felt at a disadvantage."),
                              const ExampleSentenceKurdish(
                                  text: "وام ھەستکرد لە زیاندا بم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt707("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt707(// REPLACE: at
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
                              const ExampleSentenceEnglish(
                                  text: "I think Mr Harris is at lunch."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێم‌وایە بەڕێز ھاریس لە خواردنی نیوەڕۆیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt708("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt708(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ئامراز) بەکاردێت بۆ پیشاندنی باشترین کاتی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The garden's at its most beautiful in June."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باخچەکە لە جوانترین کاتیدایە لە حوزەیران."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt710("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt710(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ئامراز) بەکاردێت لەگەڵ ھاوەڵناو بۆ پیشاندانی ھۆکار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She was delighted at the result."),
                              const ExampleSentenceKurdish(
                                  text: "دڵخۆش بوو بە ئەنجامەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt712("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt712(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ئامراز) لە وەڵامی شتێکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They attended the dinner at the chairman's invitation."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەژداری نانی ئێوارە بوون لەسەر بانگھێشتی بەڕێوبەر."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt716("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt716(// REPLACE: at
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ئامراز) بۆ پیشاندانی ژمارە تەلەفۆن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You can reach me at 009001008, extension 770."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەتوانیت پەیوەندیم پێوەبکەیت بە ژمارە تەلەفۆنی ٠٠٩٠٠١٠٠٨، بە کۆدی ٧٧٠."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAt720("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAt720(// REPLACE: at
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
- Preposition: at 
1. Expresses position, direction or location, or point in time
"point at the one you want"; "sleep at the hotel"; "at midnight"
 
2. Expressing a rate
"sold at £10 each"

- Noun: at (derived forms: ats)
1. 100 at equal 1 kip in Laos

- Noun: At (derived forms: Ats)
1. A highly unstable radioactive element (the heaviest of the halogen series); a decay product of uranium and thorium (= astatine, atomic number 85)
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
  static String myVideoId = "XlHzvTEstz8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "Gw5xrWJo8pw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 40, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "oBcxuzdP3rs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 64, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "toVfvRhWbj8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 11, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "jrHz8Bti6FY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 6, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "cT993ypa0_A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 13, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "sAiTuitN5b8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 56, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "gGILiLTenR8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 20, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = "576HwhU6PMM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 30, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "NQWkNXr2ujI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 184, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "CbBQLoxkwhY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 5, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "XXhc5UTxv5I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 6, // DOPSUM: CHANGE IT
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
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddedthirteen extends StatelessWidget {
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
      // autoPlay: false,
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
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

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