import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bounce" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bounce - haʊʊʊʊʊʊʊ4

enum TtsState { playing }

class EnglishEntrybounce extends StatelessWidget {
// blank divider
  EnglishEntrybounce({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbounce(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bounce"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces1(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ball bounced twice before he could reach it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces2(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The light bounced off the river and dazzled her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces3(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bounced up and down excitedly on the bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces4(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I bounced the baby on my knee while Pete did the dishes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces5(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her hair bounced as she walked."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces6(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He bounced across the room to greet them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces7(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "To my horror the bank bounced the cheque."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces8(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He bounced ideas off colleagues everywhere he went."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces9(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I tried to send her an email but it bounced."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces10(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was soon bounced from the post."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces11(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In tennis you have to hit the ball before its second bounce."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces12(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Players complained about the uneven bounce of the tennis court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces13(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All her old bounce was back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces14(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bounce the baby until I get back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces15(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces16(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces17(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces18(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces19(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces20(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces21(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces22(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces23(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces24(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces25(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbounces26(String languageCode) async {
    // DOPSUM: CHANGE speakbounce
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbounces2626"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bounce"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baʊns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbounce("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baʊns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbounce("en-US"),
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
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
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
کوردی: گەڕانەوە، زڤرین، باز یان پەڕینی کت‌وپڕ، قەڵبەز، ھەڵبەزینەوە، ھەڵپەڕوداپەڕ، ھەڵبەزودابەز، چالاکی، جم‌وجۆڵ، بەکەیفی، سەرخۆشی، بەگوڕی، سەرشادی، بەپەرۆشی، لێدانی بەھێز و کت‌وپڕ

١. (کردار) کێشان بە ڕوویەک و ھەڵبەزینەوە لێی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The ball bounced twice before he could reach it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تۆپەکە دوو جار تەپ‌تەپێنی کرد پێش ئەوەی ئەوەی پێی بگات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces1("en-US"),
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
                                      "The light bounced off the river and dazzled her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووناکیەکە بە ڕووبارەکەدا تیشکی دایەوە و شەوارەی پێکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) ھەڵبەز و دابەزی کەسێك"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She bounced up and down excitedly on the bed."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە جۆش و خرۆشییەوە لەسەر جێخەوەکە ھەڵبەز و دابەزی بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ھەڵبەز و دابەزکردن بە منداڵێک کە لە باوەشتایە بۆ ئەوەی دڵخۆش بێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I bounced the baby on my knee while Pete did the dishes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکەم لە باوەشمدا ڕادەژاند لەکاتێکدا پیت قاپەکانی دەشووشت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Bounce the baby until I get back."),
                              const ExampleSentenceKurdish(
                                  text: "منداڵەکە بجوێنە تاوەکو دەگەڕێمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) ھەڵبەز و دابەزی شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Her hair bounced as she walked."),
                              const ExampleSentenceKurdish(
                                  text: "قژی ھەڵدەبەزییەوە کە ڕێی دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ڕۆشتن بە ھەڵبەزینەوە بە ئاراستیەکی دیاریکراودا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He bounced across the room to greet them."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ژوورەکەدا بە ھەڵبەزینەوە ڕۆشت بۆ خێراتن کردنیان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ڕەتکردنەوەی چەکێکی بانکی بەھۆی ئەوەی پارەی پێویست لە ھەژمارە بانکییەکەدا نییە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "To my horror the bank bounced the cheque."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە بەدبەختیمدا بانکەکە چەکەکەی ڕەتکردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وتنی بیرۆکەکانت بە کەسێک بۆ ئەوەی بزانی چۆن بیری لێ دەکەنەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He bounced ideas off colleagues everywhere he went."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بیرۆکەی لەگەڵ ھەڤاڵانی باسدەکرد بۆ ھەر کوێیەک دەچوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ناردنەوەی ئیمەیڵێک بۆ ئەو کەسەی ناردوویەتی بەھۆی ئەوەی سیستەمەکە نەیتوانیوە بینێریت بۆ کەسی مەبەست"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I tried to send her an email but it bounced."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەوڵم دا ئیمەیڵێکی بۆ بنێرم بەڵام سەرکەوتوو نەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) وا لە کەسێک بکەیت کارێک، شوێنێک، تیمێک، ھتد جێبھێڵێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was soon bounced from the post."),
                              const ExampleSentenceKurdish(
                                  text: "زوو لە کارەکە دەرکرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٠. (ناو) ھەڵبەزین"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "In tennis you have to hit the ball before its second bounce."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە تێنسدا دەبێت لە تۆپەکە بدەیت پێش ئەوەی دووەم تەپە بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ناو) توانای ھەڵبەزین"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Players complained about the uneven bounce of the tennis court."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "یاریزانەکان ناڕەزاییان دەردەبڕی لەسەر توانای ھەڵبەزانی نایەکسانی یاریگای تێنسەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٣. (ناو) وزەی کەسێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "All her old bounce was back."),
                              const ExampleSentenceKurdish(
                                  text: "وزەی جارانی گەڕایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbounces13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbounces13("en-US"),
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
                    YoutubeEmbeddedtwelve(),
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
- Verb: bounce (derived forms: bounces, bounced, bouncing)
1. Move back in a roughly opposite direction after an impact (= resile, take a hop, spring, bound, rebound, recoil, reverberate, ricochet)
"The rubber ball bounced";

2. Hit something so that it bounces
"bounce a ball"
 
3. Move up and down repeatedly (= jounce)
 
4. Come back after being refused
"the check bounced"
 
5. Leap suddenly
"He bounced to his feet"
 
6. Refuse to accept and send back
"bounce a check"
 
7. [informal] Eject from the premises
"The ex-boxer's job is to bounce people who want to enter this private club"
 
8. [Brit, informal] Put pressure on someone (to do something) (= pressurize, pressurise [Brit], lean on [informal])

- Noun: bounce (derived forms: bounces)
1. The quality of a substance that is able to rebound (= bounciness)
 
2. A light, self-propelled movement upwards or forwards (= leap, leaping, spring, saltation, bound)
 
3. Rebounding from an impact (or series of impacts) (= bouncing)
 
4. An email returned with an error
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

  static String myVideoId = "b-joNU9em1w";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 103, // DOPSUM: CHANGE IT
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

  static String myVideoId = "e09xig209cQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 357, // DOPSUM: CHANGE IT
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

  static String myVideoId = "tMKXbLBgkEc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 7, // DOPSUM: CHANGE IT
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

  static String myVideoId = "NFtQOxjWfaA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 254, // DOPSUM: CHANGE IT
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

  static String myVideoId = "-cPdImejxEQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 201, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zmEv7vTOQGE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 532, // DOPSUM: CHANGE IT
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

  static String myVideoId = "FPQ7oBWCTgs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2757, // DOPSUM: CHANGE IT
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

  static String myVideoId = "SE398CcSLeE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 91, // DOPSUM: CHANGE IT
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

  static String myVideoId = "ChzL17zV9hA";

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

  static String myVideoId = "hsWr_JWTZss";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 31, // DOPSUM: CHANGE IT
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

  static String myVideoId = "3YFeE1eDlD0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 38, // DOPSUM: CHANGE IT
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

  static String myVideoId = "0onncd0_0-o";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 439, // DOPSUM: CHANGE IT
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

// more than one video, only first autoplay

// end bounce
