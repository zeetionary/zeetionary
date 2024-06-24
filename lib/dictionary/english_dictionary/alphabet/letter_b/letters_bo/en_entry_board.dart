import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("board");
  }

  Future<void> speakboards1(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Passengers are waiting to board.");
  }

  Future<void> speakboards2(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She boarded a train for Philadelphia.");
  }

  Future<void> speakboards3(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Flight BA193 for Paris is now boarding at Gate 37.");
  }

  Future<void> speakboards4(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She always had one or two students boarding with her.");
  }

  Future<void> speakboards5(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "During his stay in England he boarded with a family in London.");
  }

  Future<void> speakboards6(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When you went to school were you a day student or did you board?");
  }

  Future<void> speakboards7(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She noticed a loose board in the fence.");
  }

  Future<void> speakboards8(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She noticed a loose board in the fence.");
  }

  Future<void> speakboards9(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had ripped up the carpet, leaving only the bare boards.");
  }

  Future<void> speakboards10(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll write it up on the board.");
  }

  Future<void> speakboards11(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cheeses were laid out on a board.");
  }

  Future<void> speakboards12(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Choose the appropriate board for skateboarding.");
  }

  Future<void> speakboards13(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has a seat on the board of directors.");
  }

  Future<void> speakboards14(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Board members will vote on the measures at their meeting tomorrow.");
  }

  Future<void> speakboards15(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The exams are set by the Cambridge Examining Board.");
  }

  Future<void> speakboards16(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He pays £90 a week board and lodging.");
  }

  Future<void> speakboards17(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is my last chance to pass the boards.");
  }

  Future<void> speakboards18(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's treading the boards.");
  }

  Future<void> speakboards19(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His play is on the boards on Broadway.");
  }

  Future<void> speakboards20(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2020");
  }

  Future<void> speakboards21(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2121");
  }

  Future<void> speakboards22(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2222");
  }

  Future<void> speakboards23(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2323");
  }

  Future<void> speakboards24(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2424");
  }

  Future<void> speakboards25(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2525");
  }

  Future<void> speakboards26(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2626");
  }

  Future<void> speakboards27(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2727");
  }

  Future<void> speakboards28(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2828");
  }

  Future<void> speakboards29(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards2929");
  }

  Future<void> speakboards30(String languageCode) async {
    // DOPSUM: CHANGE speakboard
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboards3030");
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
کوردی: تەختە(دار)، تەتە، کژورەک، دەپ، تابڵۆ، تەختەی ئاگاداری، مقەبا، تەختەڕەشە، سابوورە، تەختەی شەترەنج، تەختەدامە، نان، خۆراک، چێشت، دەستەی بەڕێوەبەری، لیژنە، کومیتە، ئەنجوومەن، جڤات، لێواری کەشتی، لا(پاڵ)ی کەشتی، شانۆ، سێن، (کتێب) بەرگ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) چوونە ناو فڕۆکەیەک، کەشتییەک، شەمەندەفەرێک، پاسێک، ھتد"),
                          SentencesRow(
                            englishText: "Passengers are waiting to board.",
                            kurdishText: "سەرنشینان چاوەڕێن سەرکەون.",
                            onPressedBritish: () => speakboards1("en-GB"),
                            onPressedAmerican: () => speakboards1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She boarded a train for Philadelphia.",
                            kurdishText:
                                "سواری فڕۆکەیەک بوو بۆ فیلادێلفیا دەچوو.",
                            onPressedBritish: () => speakboards2("en-GB"),
                            onPressedAmerican: () => speakboards2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ئامادەیی کەشتییەک یان فڕۆکەیەک بۆ ئەوەی سەرنشینان سەرکەون"),
                          SentencesRow(
                            englishText:
                                "Flight BA193 for Paris is now boarding at Gate 37.",
                            kurdishText:
                                "گەشتی BA193 بۆ پاریس ئێستا لە دەروازەی ٣٧ گەشتیاران سەردەخات.",
                            onPressedBritish: () => speakboards3("en-GB"),
                            onPressedAmerican: () => speakboards3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) مانەوە لەگەڵ کەسێک و پارەدان بۆ ماڵەوە و خواردن لای"),
                          SentencesRow(
                            englishText:
                                "She always had one or two students boarding with her.",
                            kurdishText:
                                "ھەمیشە یەک یان دوو خوێندکاری لابوو کە لەگەڵی دەژیان.",
                            onPressedBritish: () => speakboards4("en-GB"),
                            onPressedAmerican: () => speakboards4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "During his stay in England he boarded with a family in London.",
                            kurdishText:
                                "لە کاتی مانەوەی لە ئینگلتەرە لەگەڵ خێزانێک دەژیا لە لەندەن.",
                            onPressedBritish: () => speakboards5("en-GB"),
                            onPressedAmerican: () => speakboards5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ژیانکردن لە قوتابخانەیەک لە کاتی وەرزی خوێندن"),
                          SentencesRow(
                            englishText:
                                "When you went to school were you a day student or did you board?",
                            kurdishText:
                                "کە لە قوتابخانە بوویت ھاتووچۆت دەکرد ڕۆژانە یان دەمایتەوە لە قوتابخانە (داخلی)؟",
                            onPressedBritish: () => speakboards6("en-GB"),
                            onPressedAmerican: () => speakboards6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پارچەیەکی درێژ و باریکی مادەیەک، بەتایبەتی تەختە، کە بەکاردێت بۆ درووستکردنی زەوی شوێنێک، دیوار و بنبانی بینایەک و درووستکردنی بەلەم"),
                          SentencesRow(
                            englishText:
                                "She noticed a loose board in the fence.",
                            kurdishText: "پەنیر خرایە سەر تەختەکە.",
                            onPressedBritish: () => speakboards7("en-GB"),
                            onPressedAmerican: () => speakboards7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She noticed a loose board in the fence.",
                            kurdishText:
                                "تێبینی کرد کە تەختەیەک لە پەرژینەکەدا شلبوو بوو.",
                            onPressedBritish: () => speakboards8("en-GB"),
                            onPressedAmerican: () => speakboards8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He had ripped up the carpet, leaving only the bare boards.",
                            kurdishText:
                                "فەرشەکەی لێ‌کردەوە و تەنھا تەختەکانی بە تەنھا ھێشتەوە.",
                            onPressedBritish: () => speakboards9("en-GB"),
                            onPressedAmerican: () => speakboards9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پارچە تەختەیەک، یان مادەی تر، کە بۆ مەبەستێکی دیاریکراو بەکاردێت"),
                          SentencesRow(
                            englishText: "I'll write it up on the board.",
                            kurdishText: "لەسەر سەبوورەکە دەینووسم.",
                            onPressedBritish: () => speakboards10("en-GB"),
                            onPressedAmerican: () => speakboards10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Cheeses were laid out on a board.",
                            kurdishText: "پەنیر لەسەر تەختەیەک دانرا.",
                            onPressedBritish: () => speakboards11("en-GB"),
                            onPressedAmerican: () => speakboards11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) پارچە کەرەستەیەک کە کەسێک لەسەری دەوەستێت لە ژمارەیەک لە یاری وەرزشیدا، بۆ نموونە لە سکەیتەوانی"),
                          SentencesRow(
                            englishText:
                                "Choose the appropriate board for skateboarding.",
                            kurdishText:
                                "تەختەیەکی گونجاو ھەڵبژێرە بۆسەکیتەوانی.",
                            onPressedBritish: () => speakboards12("en-GB"),
                            onPressedAmerican: () => speakboards12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ژمارەیەک کەس کە دەسەڵاتی بڕیاردانیان ھەیە و کۆنترۆڵی کۆمپانیایەک یان دامەزراوەیەک دەکەن"),
                          SentencesRow(
                            englishText:
                                "She has a seat on the board of directors.",
                            kurdishText:
                                "کورسیەکی ھەیە لە دەستەی بەڕێوەبەرایەتی.",
                            onPressedBritish: () => speakboards13("en-GB"),
                            onPressedAmerican: () => speakboards13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Board members will vote on the measures at their meeting tomorrow.",
                            kurdishText:
                                "ئەندامانی دەستەکە دەنگ لەسەر ھەنگاوەکان دەدەن لە کۆبوونەوەکەی سبەینێ.",
                            onPressedBritish: () => speakboards14("en-GB"),
                            onPressedAmerican: () => speakboards14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) لە ناوی ژمارەیەک دامەزراوە بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "The exams are set by the Cambridge Examining Board.",
                            kurdishText:
                                "تاقیکردنەوەکان لەلایەن دەستەی تاقیکاری کامبریجەوە دادەنرێن.",
                            onPressedBritish: () => speakboards15("en-GB"),
                            onPressedAmerican: () => speakboards15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) ئەو خواردنانەی کە پێشکەش دەکرێن کە لە ھوتێلێک، میوانخانەیەک، ھتد. دەمێنیتەوە"),
                          SentencesRow(
                            englishText:
                                "He pays £90 a week board and lodging.",
                            kurdishText:
                                "٩٠ پاوەند لە ھەفتەیەکدا دەدات بۆ خواردن و شوێنی مانەوە.",
                            onPressedBritish: () => speakboards16("en-GB"),
                            onPressedAmerican: () => speakboards16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) تاقیکردنەوەیەک کە ئەنجامی دەدەیت کە دەچیتە کۆلێژ لە ئەمریکا"),
                          SentencesRow(
                            englishText:
                                "This is my last chance to pass the boards.",
                            kurdishText:
                                "ئەمە کۆتا دەرفەتمە بۆ دەرچوون لە تاقیکردنەوەکان.",
                            onPressedBritish: () => speakboards17("en-GB"),
                            onPressedAmerican: () => speakboards17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ناو) ستەیجی شانۆ"),
                          SentencesRow(
                            englishText:
                                "She's treading the boards (= working as an actress).",
                            kurdishText: "وەک خانمە ئەکتەرێک کاردەکات.",
                            onPressedBritish: () => speakboards18("en-GB"),
                            onPressedAmerican: () => speakboards18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His play is on the boards on Broadway.",
                            kurdishText:
                                "شانۆکەی لەسەر ستەیج نمایش دەکرێت لە سینەمای برۆدوەی.",
                            onPressedBritish: () => speakboards19("en-GB"),
                            onPressedAmerican: () => speakboards19("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Noun: board (derived forms: boards)
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

- Verb: board (derived forms: boards, boarded, boarding)
1. Get on board of (trains, buses, ships, aircraft, etc.) (= get on)
 
2. Live and take one's meals at or in (= room)
"she rooms in an old boarding house";
 
3. Lodge and take meals (at)
 
4. Provide food and lodging (for)
"The old lady is boarding three men"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 368;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 94;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 394;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'UHAnf9lkkAY';
  final double _startSeconds = 78;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'JcuDwD2CzIc';
  final double _startSeconds = 67;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'vZH-z99uRas';
  final double _startSeconds = 657;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '_GFkHA5EZdE';
  final double _startSeconds = 359;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 649;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'ALaTm6VzTBw';
  final double _startSeconds = 102;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'thOifuHs6eY';
  final double _startSeconds = 456;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'hbWeSHbL-rM';
  final double _startSeconds = 104;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'D2RrRsBgbv0';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end board
