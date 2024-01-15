import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybridge extends StatelessWidget {
// blank divider
  EnglishEntrybridge({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbridge(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bridge"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges1(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We crossed the bridge over the River Windrush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges2(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river was spanned by a railway bridge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges3(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cross the bridge and turn right into the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges4(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Floods washed away several bridges."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges5(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The road goes under the old bridge."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges6(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book serves as a bridge between ancient wisdom and modern science."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges7(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cultural exchanges are a way of building bridges between countries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges8(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who was on the bridge when the collision took place?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges9(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I enjoy a game of bridge occasionally."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges10(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The blow caught him right on the bridge of his nose."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges11(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The valley was originally bridged by the Romans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges12(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river had been bridged at its narrowest point."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges13(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We must bridge the gap between employees and management."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges14(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university aims to bridge the gulf between education and industry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges15(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges16(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges17(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges18(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges19(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges20(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges21(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges22(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges23(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges24(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges25(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbridges26(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2626"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bridge"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /brɪdʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbridge("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /brɪdʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbridge("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 13
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: پرد، پر، (وەنەن: پردی لە دار و تەناف)، (کەشتی) سەکۆی کەشتی‌یەوانی، سەکۆ یان سەرپشتی فەرماندەر و ئەفسەرەکان، سەکۆ یان پلاتفۆڕمی کەشتی‌یەوان، پردی لووت، بەرزایی لووت، بەشی سەرەوەی ئێسکی لووت، پردی چاویلکە، سەرلووت، پردی ددانەکان، بەست، پردە، پردەڵە (بەشێ لە ئامێری ژێداری موسیقا)

١. (ناو) ڕێگایەک کە بەسەر ڕێگایەکی تر، ڕووبارێک، ھتد درووست دەکرێت بۆ پەڕینەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We crossed the bridge over the River Windrush."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەسەر پردەکەی سەر ڕووباری ویندڕەش پەڕینەوە."),
                              const CustomSizedBoxForTTS(), // Define the word "bridge" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The river was spanned by a railway bridge."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووبارەکە پردێکی سکەی شەمەندەفەری بەسەردا درووست کرابوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Cross the bridge and turn right into the town."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بەسەر پردەکەدا بپەڕەوە و بەلای ڕاستدا بچۆ بۆ چوونە شارۆچکەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbridges3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbridges3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Floods washed away several bridges."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "لافاو ژمارەیەک پردی ڕووخاندبوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbridges4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbridges4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The road goes under the old bridge."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ڕێگاکە بە ژێر پردەکەدا دەچێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbridges5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbridges5("en-US"),
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
                                  "٢. (ناو) شتێک کە دوو شتی جیاواز پێکە دەبەستێتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The book serves as a bridge between ancient wisdom and modern science."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کتێبەکە خزمەت دەکات وەک پردێک لە نێوان ژیریی کۆن و زانستی سەردەمدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Cultural exchanges are a way of building bridges between countries."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاڵوگۆڕی کەلتووری ڕێگایەکە بۆ ئاشنابوونی وڵاتان بە یەکدی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو بەشەی کەشتی کە کاپتن و ئەفسەرەکان لەسەری دەوەستن کە کۆنترۆڵی کەشتییەکە دەکەن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Who was on the bridge when the collision took place?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کێ لەسەر سەکۆی کەشتی‌یەوانییەکە بوو کە پێکدادانەکە ڕوویدا؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) یارییەکی دوو کەسی کە دەبێت بە سەرکەوتووی پێشبینی خاڵی بردنەوەیان بکەن و بەپێچەوانەوە خاڵ لەدەست دەدەن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I enjoy a game of bridge occasionally."),
                              const ExampleSentenceKurdish(
                                  text: "ماوە ماوە حەز بە یاریی کۆنکان دەکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەشی سەرەوەی لووت کە دەکەوێتە نێوان چاوەوە، یان ئەو بەشەی چاویلکە کە لەسەری دەوەستێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The blow caught him right on the bridge of his nose."),
                              const ExampleSentenceKurdish(
                                  text: "لێدانەکە ڕێک لە بەرزایی لووتی دا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) درووستکردنی پرد لەسەر شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The valley was originally bridged by the Romans."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دۆڵەکە لە سەرەتادا لەلایەن ڕۆمەکانەوە پردی لەسەر درووستکرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The river had been bridged at its narrowest point."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووبارەکە لە باریکترین خاڵیدا پردی لەسەر درووستکرابوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) نەھێشتن یان کەمکردنەوەی ناکۆکی یان جیاوازی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We must bridge the gap between employees and management."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت ناکۆکی نێوان کارمەندان و بەڕێوبەرایەتی کەم بکەینەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The university aims to bridge the gulf between education and industry."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زانکۆکە ئامانجیەتی پەیوەندی درووست بکات لە نێوان خوێندن و دەستی کاردا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbridges14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbridges14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
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

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: bridge (Derived forms: bridges)
1. A structure that allows people or vehicles to cross an obstacle such as a river or canal or railway etc. (= span)
 
2. A circuit consisting of two branches (4 arms arranged in a diamond configuration) across which a meter is connected (= bridge circuit)
 
3. Something resembling a bridge in form or function
"his letters provided a bridge across the centuries"
 
4. The hard ridge that forms the upper part of the nose
"her glasses left marks on the bridge of her nose"
 
5. A wooden support that holds up the strings on a stringed instrument
 
6. A denture anchored to teeth on either side of missing teeth (= bridgework)
 
7. The link between two lenses; rests on the nose (= nosepiece)
 
8. An upper deck where a ship is steered and the captain stands (= bridge deck)
 
9. Any of various card games based on whist for four players

- Verb: bridge (Derived forms: bridging, bridges, bridged)
1. Connect or reduce the distance between (= bridge over)
 
2. Make a bridge across
"bridge a river"
 
3. Cross over on a bridge
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Speaker icon for British English
          Row(
            children: [
              CustomIconButtonBritish(
                onPressed: () => startSpeaking("en-GB", englishMeaningConst),
              ),
              CustomIconButtonAmerican(
                onPressed: () => startSpeaking("en-US", englishMeaningConst),
              ),
              // Conditional rendering of pause button
              if (isSpeaking)
                IconButton(
                  icon: const Icon(Icons.pause, size: 30),
                  onPressed: () {
                    stopSpeaking();
                  },
                ),
            ],
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }

  // Function to start TTS
  Future<void> startSpeaking(String languageCode, EnglishMeaningConst englishMeaningConst) async {
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
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "xaXCf_fPD2k";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "14omrXWknpA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 702, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "e8PodEM4Y8g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 47, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "Her4vPFFSE4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 769, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "kZsDdRM3DD4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 51, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "aE5afkEqG08";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 43, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "CZxqVC_tBdc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 245, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "jVi5p-yyF3c";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 93, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "u5CguqywlBk";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "szUjnEZcp68";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 25, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "v6qVhMqhNVY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 22, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end WORD_WEB
