import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bad" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bad - replace EnglishEntrybad

// replace speakBad - /bæd/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntrybad extends StatelessWidget {
  // blank divider
  EnglishEntrybad({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBad(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bad"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads1(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have some bad news for you, I'm afraid."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads2(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("War is always a bad thing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads3(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I thought it was a very bad article."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads4(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a very bad winter that year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads5(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I know that this is a bad time to ask for help."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads6(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I will not tolerate this bad behaviour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads7(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you been a bad boy?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads8(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're a bad liar!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads9(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a bad loser."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads10(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Those shoes are bad for her feet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads11(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've got a bad back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads12(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Put the meat in the fridge so it doesn't go bad."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads13(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It put me in a bad mood for the rest of the day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads14(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She felt pretty bad about leaving him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads15(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm afraid I'm feeling pretty bad."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads16(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She wanted it real bad."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads17(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You will always have the bad as well as the good in the world."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads18(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads19(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads20(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads21(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads22(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads23(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads24(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads25(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads26(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBads27(String languageCode) async {
    // DOPSUM: CHANGE speakBad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBads2727"); // DOPSUM: CHANGE TEXT
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
                                word: "bad"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæd/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakBad(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBad(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
کوردی: خراپ، بەد، بەو، دژ، نەباش، چەپ، ناحەز، ناپەسند، ناشیرین، کرێت، ناخۆش، ترسناک، کەم، ناتەواو، بەش‌نەکردوو، لاواز، گەنیو، پیس، ڕزیو، موزیڕ، بەوەی، خراپ، بەزەڕ، بەزیان، سەخت، توند، ناشی، نالەبار، نابار، ھەڵەشە، ھاروھاج، بەدفەڕ، شلوق، لاسار، شەیتان، نەگونجاو، بێجێ، پڕگرفت، پرئاستەنگ، ھەڵە، شاشی، چەوت، نادروست، بەئێش، بەژان، نەخۆش، ناساخ، ناسا، بێ‌نرخ، قەڵب، ھیچ‌نەکردوو، ساختە، چروک، بەکارنەھاتوو (کۆین)، خراپ، شپرزە، زۆر، خراپی

١. (ھاوەڵناو) ناخۆش و پڕ لە کیشە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I have some bad news for you, I'm afraid."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەداخەوەم ھەندێک ھەواڵی ناخۆشم پێیە بۆت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads1(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "War is always a bad thing."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "جەنگ ھەمیشە شتێکی خراپە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads2(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) لە ئاستێکی خراپ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I thought it was a very bad article."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "وامبیرکردەوە وتارێکی زۆر خراپ بێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads3(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) تا ئاستێکی زۆر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "It was a very bad winter that year."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ئەو ساڵە زستانێکی زۆر دژوار بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads4(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) نەگونجاو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I know that this is a bad time to ask for help."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەزانم کاتێکی نەگونجاوە بۆ داواکردنی یارمەتی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads5(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) پەسەندنەکراو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I will not tolerate this bad behaviour."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "بەرگەی ئەم ڕەفتارە نابەجێیە ناگرم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads6(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) منداڵێک کە خراپ ڕەفتار دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Have you been a bad boy?"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "منداڵێکی ھاروھاج بوویت؟."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads7(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) کردنی شتێک بەشێوەیەکی خراپ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "You're a bad liar!"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "درۆزنێکی باش نیت (دیارە درۆ دەکەیت)."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads8(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's a bad loser (= he complains when he loses a game)."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دۆڕاوێکی خراپی (شکست پەسەند ناکەیت و ناڕەزایی دەردەبڕی)."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads9(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) زیانبەخش"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Those shoes are bad for her feet."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ئەو پێڵاوانە خراپن بۆ قاچی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads10(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵناو) ئازاربەخش"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I've got a bad back."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "پشت‌ئێشەیەکی بەئازارم ھەیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads11(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵناو) خواردنی خراپ بوو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Put the meat in the fridge so it doesn't go bad."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گۆشت بخەرە ساردکەرەوەکەوە بۆ ئەوەی خراپ نەبێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads12(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) بێزار یان تووڕە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It put me in a bad mood for the rest of the day."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆ تەواوی ڕۆژەکە خستمیە حەوسەلەیەکی خراپەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads13(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ھاوەڵناو) ھەستکردن بە تاوانباری یان داخ بۆ شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She felt pretty bad about leaving him."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ھەستی بە داخ کرد بۆ جێھێشتنی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads14(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵناو) ھەستکردن بە نەخۆشی، یان وا دەرکەوتن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm afraid I'm feeling pretty bad."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەداخەوەم کە ھەست بە نەخۆشییەکی زۆر دەکەم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads15(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) بۆ جەختکردنەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She wanted it real bad."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "زۆر بە خراپی دەیویست."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads16(// REPLACE: bad
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ناو) خەڵکی خراپ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You will always have the bad as well as the good in the world."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەمیشە خەڵکی خراپ و باش لە جیھاندا دەبن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBads17("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBads17(// REPLACE: bad
                                    "en-US"),
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
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Adjective: bad (derived forms: worst, worse)
1. Having undesirable or negative qualities
"a bad report card"; "his sloppy appearance made a bad impression"; "a bad little boy"; "clothes in bad shape"; "a bad cut"; "bad luck"; "the news was very bad"; "the reviews were bad"; "the pay is bad"; "it was a bad light for reading"; "the movie was a bad choice"
 
2. Feeling or expressing regret or sorrow or a sense of loss over something done or undone (= regretful, sorry)
"he felt bad about breaking the vase";
 
3. Serious or severe (= big)
"a bad headache"; "had a bad shock"; "a bad earthquake"; "a bad storm";
 
4. Feeling physical discomfort or pain ('tough' is occasionally used colloquially for 'bad') (= tough)
"my throat feels bad"; "she felt bad all over";
 
5. (of foodstuffs) not in an edible or usable condition (= spoiled, spoilt)
"bad meat";
 
6. Not capable of being collected (= uncollectible)
"a bad debt";
 
7. Below average in quality or performance
"a bad chess player"; "a bad recital"
 
8. (linguistics) nonstandard
"so-called bad grammar"
 
9. Not financially safe or secure (= risky, high-risk, speculative)
"a bad investment";
 
10. Physically unsound or diseased (= unfit, unsound)
"has a bad back"; "a bad heart"; "bad teeth";
 
11. Capable of harming
"bad air"; "smoking is bad for you"
 
12. Characterized by wickedness or immorality
"led a very bad life"
 
13. Reproduced fraudulently (= forged)
"like a bad penny...";
 
14. Not working properly (= defective)
"a bad telephone connection";

- Noun: bad (derived forms: bads)
1. That which is below standard or expectations as of ethics or decency (= badness)
"take the bad with the good";

- Adverb: bad
1. With great intensity ('bad' is a nonstandard variant for 'badly') (= badly)
"it hurts bad"; "we need water bad";
 
2. Very much; strongly (= badly)
"he wants a bicycle so bad he can taste it";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 266, // DOPSUM: CHANGE IT
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
  static String myVideoId = "DTvS9lvRxZ8";

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

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 8, // DOPSUM: CHANGE IT
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
  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 402, // DOPSUM: CHANGE IT
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
  static String myVideoId = "1roy4o4tqQM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 118, // DOPSUM: CHANGE IT
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
  static String myVideoId = "_wNsZEqpKUA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 826, // DOPSUM: CHANGE IT
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
  static String myVideoId = "Kou7ur5xt_4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 473, // DOPSUM: CHANGE IT
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
  static String myVideoId = "HDntl7yzzVI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1432, // DOPSUM: CHANGE IT
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
  static String myVideoId = "-HyHZsa79LU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 692, // DOPSUM: CHANGE IT
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
  static String myVideoId = "BxWw8AO4ZmI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 239, // DOPSUM: CHANGE IT
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
  static String myVideoId = "k3aAl92_VDE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 67, // DOPSUM: CHANGE IT
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
  static String myVideoId = "JkE8TOZmHC4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 139, // DOPSUM: CHANGE IT
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

// end bad // TODO Implement this library.
