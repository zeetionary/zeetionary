import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "board" and for each meaning provide five example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace board - /bɔːd/

enum TtsState { playing }

class EnglishEntryboard extends StatelessWidget {
// blank divider
  EnglishEntryboard({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboard(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("board"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards1(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Passengers are waiting to board."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards2(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She boarded a train for Philadelphia."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards3(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Flight BA193 for Paris is now boarding at Gate 37."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards4(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She always had one or two students boarding with her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards5(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "During his stay in England he boarded with a family in London."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards6(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When you went to school were you a day student or did you board?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards7(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She noticed a loose board in the fence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards8(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She noticed a loose board in the fence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards9(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had ripped up the carpet, leaving only the bare boards."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards10(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll write it up on the board."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards11(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cheeses were laid out on a board."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards12(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Choose the appropriate board for skateboarding."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards13(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has a seat on the board of directors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards14(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Board members will vote on the measures at their meeting tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards15(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exams are set by the Cambridge Examining Board."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards16(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He pays £90 a week board and lodging."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards17(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is my last chance to pass the boards."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards18(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's treading the boards."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards19(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His play is on the boards on Broadway."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards20(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards21(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards22(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards23(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards24(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards25(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards26(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards27(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards28(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards29(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboards30(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "board"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔːd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboard("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔːrd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboard("en-US"),
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
کوردی: تەختە(دار)، تەتە، کژورەک، دەپ، تابڵۆ، تەختەی ئاگاداری، مقەبا، تەختەڕەشە، سابوورە، تەختەی شەترەنج، تەختەدامە، نان، خۆراک، چێشت، دەستەی بەڕێوەبەری، لیژنە، کومیتە، ئەنجومەن، جڤات، لێواری کەشتی، لا(پاڵ)ی کەشتی، شانۆ، سێن، (کتێب) بەرگ

١. (کردار) چوونە ناو فڕۆکەیەک، کەشتییەک، شەمەندەفەرێک، پاسێک، هتد"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Passengers are waiting to board."),
                              const ExampleSentenceKurdish(
                                  text: "سەرنشینان چاوەڕێن سەرکەون."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She boarded a train for Philadelphia."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سواری فڕۆکەیەک بوو بۆ فیلادێلفیا دەچوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards2("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ئامادەیی کەشتییەک یان فڕۆکەیەک بۆ ئەوەی سەرنشینان سەرکەون"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Flight BA193 for Paris is now boarding at Gate 37."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گەشتی BA193 بۆ پاریس ئێستا لە دەروازەی ٣٧ گەشتیاران سەردەخات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards3("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) مانەوە لەگەڵ کەسێک و پارەدان بۆ ماڵەوە و خواردن لای"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She always had one or two students boarding with her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەمیشە یەک یان دوو خوێندکاری لابوو کە لەگەڵی دەژیان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards4("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "During his stay in England he boarded with a family in London."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کاتی مانەوەی لە ئینگلتەرە لەگەڵ خێزانێک دەژیا لە لەندەن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards5("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ژیانکردن لە قوتابخانەیەک لە کاتی وەرزی خوێندن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When you went to school were you a day student or did you board?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە لە قوتابخانە بوویت هاتووچۆت دەکرد ڕۆژانە یان دەمایتەوە لە قوتابخانە (داخلی)؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards6("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پارچەیەکی درێژ و باریکی مادەیەک، بەتایبەتی تەختە، کە بەکاردێت بۆ درووستکردنی زەوی شوێنێک، دیوار و میچی بینایەک و درووستکردنی بەلەم"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She noticed a loose board in the fence."),
                              const ExampleSentenceKurdish(
                                  text: "پەنیر خرایە سەر تەختەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards7("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She noticed a loose board in the fence."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تێبینی کرد کە تەختەیەک لە پەرژینەکەدا شلبوو بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards8("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He had ripped up the carpet, leaving only the bare boards."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فەرشەکەی لێکردەوە و تەنها تەختەکانی بە تەنها هێشتەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards9("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پارچە تەختەیەک، یان مادەی تر، کە بۆ مەبەستێکی دیاریکراو بەکاردێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll write it up on the board."),
                              const ExampleSentenceKurdish(
                                  text: "لەسەر سەبوورەکە دەینووسم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards10("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Cheeses were laid out on a board."),
                              const ExampleSentenceKurdish(
                                  text: "پەنیر لەسەر تەختەیەک دانرا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards11("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) پارچە کەرەستەیەک کە کەسێک لەسەری دەوەستێت لە ژمارەیەک لە یاری وەرزشیدا، بۆ نموونە لە سکەیتەوانی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Choose the appropriate board for skateboarding."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەختەیەکی گونجاو هەڵبژێرە بۆسەکیتەوانی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards12("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ژمارەیەک کەس کە دەسەڵاتی بڕیاردانیان هەیە و کۆنترۆڵی کۆمپانیایەک یان دامەزراوەیەک دەکەن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She has a seat on the board of directors."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کورسیەکی هەیە لە دەستەی بەڕێوەبەرایەتی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards13("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Board members will vote on the measures at their meeting tomorrow."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەندامانی دەستەکە دەنگ لەسەر هەنگاوەکان دەدەن لە کۆبوونەوەکەی سبەینێ."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards14("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) لە ناوی ژمارەیەک دامەزراوە بەکاردێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The exams are set by the Cambridge Examining Board."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تاقیکردنەوەکان لەلایەن دەستەی تاقیکاری کامبریجەوە دادەنرێن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards15("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) ئەو خواردنانەی کە پێشکەش دەکرێن کە لە هوتێلێک، میوانخانەیەک، هتد. دەمێنیتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He pays £90 a week board and lodging."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "٩٠ پاوەند لە هەفتەیەکدا دەدات بۆ خواردن و شوێنی مانەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards16("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards16("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) تاقیکردنەوەیەک کە ئەنجامی دەدەیت کە دەچیتە کۆلێژ لە ئەمریکا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This is my last chance to pass the boards."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمە کۆتا دەرفەتمە بۆ دەرچوون لە تاقیکردنەوەکان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards17("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards17("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ناو) ستەیجی شانۆ"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's treading the boards (= working as an actress)."),
                              const ExampleSentenceKurdish(
                                  text: "وەک خانمە ئەکتەرێک کاردەکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards18("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards18("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His play is on the boards on Broadway."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شانۆکەی لەسەر ستەیج نمایش دەکرێت لە سینەمای برۆدوەی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakboards19("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakboards19("en-US"),
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
- Noun: board (Derived forms: boards)
1. A committee having supervisory powers
"the board has seven members"
 
2. A stout length of sawn timber; made in a wide variety of sizes and used for many purposes (= plank)
 
3. A flat piece of material designed for a special purpose
"he nailed boards across the windows"
 
4. Food or meals in general (= table)
"room and board";

5. A vertical surface on which information can be displayed to public view (= display panel, display board)
 
6. A table at which meals are served (= dining table)
"a feast was spread upon the board";
 
7. Electrical device consisting of a flat insulated surface that contains switches and dials and meters for controlling other electrical devices (= control panel, instrument panel, control board, panel)
"suddenly the board lit up like a Christmas tree"; "he checked the control board";

8. A printed circuit that can be inserted into expansion slots in a computer to increase the computer's capabilities (= circuit board, circuit card, card, plug-in, add-in)
 
9. A flat portable surface (usually rectangular) designed for board games (= gameboard)
"he got out the board and set up the pieces";

10. Sheet of slate; for writing with chalk (= blackboard, chalkboard [N. Amer])

- Verb: board (Derived forms: boards, boarded, boarding)
1. Get on board of (trains, buses, ships, aircraft, etc.) (= get on)
 
2. Live and take one's meals at or in (= room)
"she rooms in an old boarding house";
 
3. Lodge and take meals (at)
 
4. Provide food and lodging (for)
"The old lady is boarding three men"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "https://youtu.be/hFZFjoX2cGg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 368, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/a_TSR_v07m0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 94, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/lVoGZiL-kns?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 394, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/UHAnf9lkkAY?t=";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "https://youtu.be/JcuDwD2CzIc?t=";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "https://youtu.be/vZH-z99uRas?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 657, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/_GFkHA5EZdE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 359, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/h4CyhQqAPpk?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 649, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/ALaTm6VzTBw?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 102, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/thOifuHs6eY?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 456, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/hbWeSHbL-rM?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 104, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/D2RrRsBgbv0";

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

// more than one video, only first autoplay

// end board
