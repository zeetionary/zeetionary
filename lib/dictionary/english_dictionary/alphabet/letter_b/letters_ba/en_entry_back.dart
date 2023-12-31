import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "back" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace back - replace EnglishEntryback

// replace speakBack - /bæk/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryback extends StatelessWidget {
  // blank divider
  EnglishEntryback({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakA3(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("back"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s1(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was lying on his back on the sofa."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s2(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She broke her back in a riding accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s3(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The man was refusing to go to the back of the queue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s4(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Take a card and write your name on the back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s5(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The arts page is usually towards the back of the newspaper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s6(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He put his jacket on the back of his chair (= the part of the chair that you put your back against when you sit on it)."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s7(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He plays at left back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s8(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were sitting in the back row."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s9(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was mentioned in a a back issue of the magazine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s10(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They owe the staff several thousand in back pay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s11(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He'll be back on Monday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s12(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I moved back to let them pass."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s13(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We should have turned left five kilometres back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s14(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If he hits me, I'll hit him back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s15(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The barriers kept the crowd back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s16(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The cathedral dates back to 1123."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s17(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He could no longer hold back his tears."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s18(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Beards are back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s19(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her parents backed her in her choice of career."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s20(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors have backed plans to raise the tax on cigarettes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s21(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All complaints must be backed by evidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s22(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I backed the winner and won fifty pounds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s23(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She backed into the garage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s24(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Each piece is backed with vinyl."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s25(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The house is backed by fields."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s26(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakA3s2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3s27(String languageCode) async {
    // DOPSUM: CHANGE speakA3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakA3s2727"); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(
                                word: "back"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæk/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakA3("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæk/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakA3("en-US"),
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
کوردی: پشت، پاڵپشت، جێگای پاڵ(دانەوە)، گاز، میانە، پشتەوە، دواوە، پاش، ئاخر، دواوە، بەرگری (تۆپێن)، بن، ئاخر، کۆتایی، پێشوو، پێشتر، پێشین، ڕابردوو، دواوە، دواتر، پاشتر، پشتەوە، دواوە، پێش، دواکەوتوو، پاش‌کەوتوو، (دەنگ‌ناسی) دواوە، پشتەوە، لە دواوە، لە پشتەوە، پێش، پێشتر، لەوەپێش، دووبارە، دیسان

١. (ناو) پشتی مرۆڤ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was lying on his back on the sofa."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەسەر پشتی لەسەر قەنەفەکە پاڵکەوتبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s1(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ناوەڕاستی ئێسکەکان لە ناوەڕاستی پشت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She broke her back in a riding accident."),
                              const ExampleSentenceKurdish(
                                  text: "پشتی شکا لە ڕووداوێکی سوارچاکیدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s2(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بەشی دواوەی شوێنێک، ئەو بەشەی کە دوورترینە لە پێشەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The man was refusing to go to the back of the queue."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پیاوەکە ڕەتیدەکردەوە بچێتە دواوەی ڕیزەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s3(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ئەو بەشەی پەڕەیەک کە دەکەوێتە پێچەوانەی ئەو بەشەی کە گرنگترین زانیاری لەسەرە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Take a card and write your name on the back."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاردێک دەربکە و ناوت لە پشتەوەت بنووسە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s4(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پەڕەکانی کۆتایی کتێبێک، ڕۆژنامەیەک، ھتد"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The arts page is usually towards the back of the newspaper."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەڕەی ھونەر زۆرجار دەکەوێتە کۆتایی ڕۆژنامەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s5(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو بەشەی کوورسییەک کە پشتی پێوە دەدەیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He put his jacket on the back of his chair (= the part of the chair that you put your back against when you sit on it)."),
                              const ExampleSentenceKurdish(
                                  text: "چاکەتەکەی خستە سەر پشتی کوورسیەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s6(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) یاریزانی بەرگریکار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He plays at left back."),
                              const ExampleSentenceKurdish(
                                  text: "لە بەشی چەپی بەرگری یاری دەکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s7(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) کەوتنە بەشی پشتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We were sitting in the back row."),
                              const ExampleSentenceKurdish(
                                  text: "لە ڕیزی دواوە دانیشتبووین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s8(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵناو) لە ڕابردوودا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It was mentioned in a a back issue of the magazine."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ژمارەیەکی پێشووتری گۆڤارەکەدا باسکرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s9(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵناو) بڕە پارەیەک کە درەنگتر لە کاتی خۆی دەدرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They owe the staff several thousand in back pay."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چەند ھەزارێکی مووچەی نەدراوی ستافەکە قەرزارن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s10(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) دەنگێک کە درووست‌دەکرێت بەوەی پشتەوەی زمان بەرزتر دەبێت لە پێشەوەی زمان، بۆ نموونە دەنگی /ɑː/ لە ئینگلیزیدا"""),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) گەڕانەوە بۆ قۆناغ، شوێن، چالاکی، یان دۆخی پێشوو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He'll be back on Monday."),
                              const ExampleSentenceKurdish(
                                  text: "ڕۆژی دووشەممە دەگەڕێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s11(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵکار) لە دواوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I moved back to let them pass."),
                              const ExampleSentenceKurdish(
                                  text: "ھاتمە دواوە و ڕێگەمدا تێپەڕن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s12(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) لە شوێنێکی پێشووتر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We should have turned left five kilometres back."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێش پێنج کیلۆمەتر دەبوو بە چەپدا لامان دابا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s13(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵکار) لە وەڵامدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "If he hits me, I'll hit him back."),
                              const ExampleSentenceKurdish(
                                  text: "ئەگەر لێمدا، لێیئەدەمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s14(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٦. (ھاوەڵکار) دوور لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The barriers kept the crowd back."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەربەستەکان جەماوەرەکەیان دوور ھێشتبوویەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s15(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٧. (ھاوەڵکار) پێش ئێستا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The cathedral dates back to 1123."),
                              const ExampleSentenceKurdish(
                                  text: "کڵێساکە بۆ ساڵی ١١٢٣ دەگەڕێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s16(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٨. (ھاوەڵکار) لە ژێر کۆنترۆڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He could no longer hold back his tears."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چیتر نەیدەتوانی فرمێسکەکانی کۆنترۆڵ بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s17(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٩. (ھاوەڵکار) شتێک کە دووبارە بووە بە مۆدە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Beards are back."),
                              const ExampleSentenceKurdish(
                                  text: "ڕیش دووبارە بووە بە باو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s18(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٠. (کردار) ھاندان یان یارمەتیدان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her parents backed her in her choice of career."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دایک و باوکی پاڵپشتیان کرد لە ھەڵبژاردنی کارەکەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s19(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢١. (کردار) پاڵپشتی‌کردن و ڕازیبوون لەگەڵ کەسێک """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Doctors have backed plans to raise the tax on cigarettes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پزیشکان پاڵپشتی پلانی بەرزکردنەوەی باجن لەسەر جگەرە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s20(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٢. (کردار) یارمەتیدان لە سەلماندنی ڕاستییەتی شتێک """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All complaints must be backed by evidence."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو ناڕەزاییەک دەبێت بەڵگەی پشتیوانی ھەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s21(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٣. (کردار) خستنە گرەوی پارە لە بەرژەوەندی ئەسپێک لە پێشبڕکێیەکدا یان تیمێک لە پاڵەوانێتییەکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I backed the winner and won fifty pounds."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گرەوم لەسەر براوەکە کرد و پەنجا پاوەندم بردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s22(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٤. (کردار) وا لە شتێک بکەیت بۆ دواوە بجووڵێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She backed into the garage."),
                              const ExampleSentenceKurdish(
                                  text: "بەکی کردە گەراجەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s23(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٥. (کردار) داپۆشینی پشتەوەی شتێک بۆ پاراستنی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Each piece is backed with vinyl."),
                              const ExampleSentenceKurdish(
                                  text: "ھەر پارچەیەک بە ڤینیل داپۆشراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s24(// REPLACE: back
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢٦. (کردار) بوون لە پشتەوەی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The house is backed by fields."),
                              const ExampleSentenceKurdish(
                                  text: "خانووەکە کێڵگەی لە پشتەوەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA3s25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA3s25(// REPLACE: back
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
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Noun: back
1. The posterior part of a human (or animal) body from the neck to the end of the spine (= dorsum)
"his back was nicely tanned";
 
2. The side that goes last or is not normally seen (= rear)
"he wrote the date on the back of the photograph";
 
3. The part of something that is furthest from the normal viewer (= rear)
"he stood at the back of the stage";
 
4. (football) a person who plays in the backfield
 
5. The series of vertebrae forming the axis of the skeleton and protecting the spinal cord (= spinal column, vertebral column, spine, backbone, rachis [technical])
"the fall broke his back";
 
6. The protective covering on the front, back, and spine of a book (= binding, book binding, cover)
 
7. The part of a garment that covers the back of your body
"they pinned a 'kick me' sign on his back"
 
8. A support that you can lean against while sitting (= backrest)
"the back of the dental chair was adjustable";
 
9. (American football) the position of a player on a football team who is stationed behind the line of scrimmage

- Adverb: back
1. In, to or toward a former location
"she went back to her parents' house"
 
2. At or to or toward the back or rear (= backward, backwards, rearward, rearwards)
"he moved back";
 
3. In, to or toward an original condition
"he went back to sleep"
 
4. In, to or toward a past time (= backward)
"set the clocks back an hour"; "never look back";
 
5. In reply
"he wrote back three days later"
 
6. In repayment or retaliation
"we paid back everything we had borrowed"; "he hit me and I hit him back"; "I was kept in after school for talking back to the teacher"

- Verb: back (derived forms: backing, backs, backed)
1. Pick one person to give support and approval to in a particular role (= endorse, indorse, plump for, plunk for, support)
"I backed Kennedy in 1960";
 
2. Travel backward
"back into the driveway"; "The car backed up and hit the tree"
 
3. Give support or one's approval to (= second, endorse, indorse)
"I can't back this plan";
 
4. Cause to travel backward
"back the car into the parking spot"
 
5. Support financial backing for
"back this enterprise"
 
6. Be in back of
"My garage backs their yard"
 
7. Gamble on something (= bet on, gage [archaic], stake, game, punt)
"Which horse are you backing?";
 
8. Shift to a counterclockwise direction
"the wind backed"
 
9. Establish as valid or genuine (= back up)
"Can you back up your claims?";
 
10. Strengthen by providing with a back or backing

- Adjective: back
1. Related to or located at the back
"the back yard"; "the back entrance"
 
2. Located at or near the back of an animal (= hind, hinder)
"back legs";
 
3. Of an earlier date
"back issues of the magazine"
 
4. Far from the main area or way
"she knows a back route"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "21Z4RIOFhMA";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "idWpZ63isMo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 14, // DOPSUM: CHANGE IT
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
  static String myVideoId = "RNg3Z21BQo0";

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

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "LrWv8-NEwV8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 55, // DOPSUM: CHANGE IT
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
  static String myVideoId = "7jD5Gkh4K34";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 258, // DOPSUM: CHANGE IT
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
  static String myVideoId = "IqDbCsldMx0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "uhIdijSrnVc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 287, // DOPSUM: CHANGE IT
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
  static String myVideoId = "X3-gKPNyrTA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 17, // DOPSUM: CHANGE IT
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
  static String myVideoId = "PlBaIvxsqys";

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

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "ZVJ5oLS74mc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 96, // DOPSUM: CHANGE IT
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
  static String myVideoId = "bMLbnsKGRfo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 156, // DOPSUM: CHANGE IT
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
  static String myVideoId = "A7afwIxo5lE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 41, // DOPSUM: CHANGE IT
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

// end back // TODO Implement this library.
