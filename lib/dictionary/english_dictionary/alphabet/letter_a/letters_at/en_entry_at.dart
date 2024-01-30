import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They arrived late at the airport."),
                                    ExampleSentenceKurdish(
                                        text: "درەنگ گەشتنە فڕۆکەخانەکە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I'll be at home all morning."),
                                    ExampleSentenceKurdish(
                                        text: "تەواوی بەیانی لە ماڵەوە دەبم."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He's been at the bank longer than anyone else."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زیاتر لە ھەر کەسێکی تر لە بانکەکە کاری کردووە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We left at 2 o'clock."),
                                    ExampleSentenceKurdish(
                                        text: "لە کاتژمێر ٢ ڕۆشتین."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "She got married at 25."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە تەمەنی ٢٥ ساڵی ھاوسەرگیری کرد."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Somebody threw paint at the prime minister."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەسێک بۆیەی گرتە سەرۆک وەزیران."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He clutched wildly at the rope as he fell."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شێتانە دەستی توند کردبوو لە حەبلەکە کە ئەو کەوت."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I'm good at French."),
                                    ExampleSentenceKurdish(
                                        text: "لە فەرەنسی باشم."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He was driving at 70 mph."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەخێرایی ٧٠ میل لە کاتژمێرێکدا لێیدەخوڕی."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Prices start at £1 000."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نرخەکان لە ١٠٠٠ پاوەندەوە دەستپێ‌دەکەن."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Can you read a car number plate at fifty metres?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانی ژمارەی ئۆتۆمبێلێک لە دووری ٥٠ مەترەوە بخوێنیتەوە؟"),
                                  ],
                                ),
                              ),
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
١٠. (ئامراز) بەکاردێت بۆ پیشاندنی ئەو دۆخەی کەسێک/شتێک تێیدایە، ئەوەی کەسێک دەیکات، یان ئەوەی چی ڕوودەدات"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The country is now at war."),
                                    ExampleSentenceKurdish(
                                        text: "وڵاتەکە ئێستا لە جەنگدایە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I felt at a disadvantage."),
                                    ExampleSentenceKurdish(
                                        text: "وام ھەستکرد لە زیاندا بم."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I think Mr Harris is at lunch."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێم‌وایە بەڕێز ھاریس لە خواردنی نیوەڕۆیە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The garden's at its most beautiful in June."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "باخچەکە لە جوانترین کاتیدایە لە حوزەیران."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was delighted at the result."),
                                    ExampleSentenceKurdish(
                                        text: "دڵخۆش بوو بە ئەنجامەکە."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They attended the dinner at the chairman's invitation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەژداری نانی ئێوارە بوون لەسەر بانگھێشتی بەڕێوبەر."),
                                  ],
                                ),
                              ),
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You can reach me at 009001008, extension 770."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت پەیوەندیم پێوەبکەیت بە ژمارە تەلەفۆنی ٠٠٩٠٠١٠٠٨، بە کۆدی ٧٧٠."),
                                  ],
                                ),
                              ),
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
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'XlHzvTEstz8',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Gw5xrWJo8pw',
    startSeconds: 40,
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
    videoId: 'oBcxuzdP3rs',
    startSeconds: 64,
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
    videoId: 'toVfvRhWbj8',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'jrHz8Bti6FY',
    startSeconds: 6,
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
    videoId: 'cT993ypa0_A',
    startSeconds: 13,
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
    videoId: 'sAiTuitN5b8',
    startSeconds: 56,
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
    videoId: 'gGILiLTenR8',
    startSeconds: 20,
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
    videoId: '576HwhU6PMM',
    startSeconds: 30,
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
    videoId: 'NQWkNXr2ujI',
    startSeconds: 184,
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
    videoId: 'CbBQLoxkwhY',
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'XXhc5UTxv5I',
    startSeconds: 6,
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

// end // TODO Implement this library.