import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "box" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

enum TtsState { playing }

class EnglishEntrybox extends StatelessWidget {
// blank divider
  EnglishEntrybox({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbox(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("box");
  }

  Future<void> speakboxs1(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She kept all the letters in a box.");
  }

  Future<void> speakboxs2(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you know what is inside the box?");
  }

  Future<void> speakboxs3(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He ate a whole box of chocolates.");
  }

  Future<void> speakboxs4(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put a cross in the appropriate box.");
  }

  Future<void> speakboxs5(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They drank champagne as they watched the game from the executive box.");
  }

  Future<void> speakboxs6(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their new house is just a box.");
  }

  Future<void> speakboxs7(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's on the box tonight?");
  }

  Future<void> speakboxs8(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Only traffic turning right may enter the box junction.");
  }

  Future<void> speakboxs9(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I called him from the phone box.");
  }

  Future<void> speakboxs10(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He boxed for Ireland in the Olympics.");
  }

  Future<void> speakboxs11(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I boxed up some clothes and books to donate to charity.");
  }

  Future<void> speakboxs12(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was fouled in the box.");
  }

  Future<void> speakboxs13(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1313");
  }

  Future<void> speakboxs14(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1414");
  }

  Future<void> speakboxs15(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1515");
  }

  Future<void> speakboxs16(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1616");
  }

  Future<void> speakboxs17(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1717");
  }

  Future<void> speakboxs18(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1818");
  }

  Future<void> speakboxs19(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs1919");
  }

  Future<void> speakboxs20(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2020");
  }

  Future<void> speakboxs21(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2121");
  }

  Future<void> speakboxs22(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2222");
  }

  Future<void> speakboxs23(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2323");
  }

  Future<void> speakboxs24(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2424");
  }

  Future<void> speakboxs25(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2525");
  }

  Future<void> speakboxs26(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2626");
  }

  Future<void> speakboxs27(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2727");
  }

  Future<void> speakboxs28(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2828");
  }

  Future<void> speakboxs29(String languageCode) async {
    // DOPSUM: CHANGE speakbox
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboxs2929");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
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
                            EntryTitle(word: "box"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒks/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbox("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːks/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbox("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: قوتو، قاڵب، کارتۆن، سنووق، مجری، سیپ، شوێنی دادیار (دادگا)، لۆژ یان باڵاجێ (شانۆ)، خانە، چوارگۆشە، سنووقی پۆست، سنووقی پۆستی، کیوسکی تەلەفۆن، تەلەفیزیۆن، قوتوی شەمچە یان شقارتە، کورسی یان سەندەڵی کالیسکەچی، کۆخ، کولیت، مستێن، شەڕەمشت، مشت‌بازی، ناوچەی پێناڵتی، ناوگەڵ‌پارێز
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک لە شێوەی بۆ نموونە پارچە کارتؤنێک یان سنووقێک کە شتی تێدەکرێت"),
                          SentencesRow(
                            englishText: "She kept all the letters in a box.",
                            kurdishText:
                                "تەواوی نامەکانی لە کارتۆنێکدا ھەڵگرتبوو.",
                            onPressedBritish: () => speakboxs1("en-GB"),
                            onPressedAmerican: () => speakboxs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Do you know what is inside the box?",
                            kurdishText: "دەزانی چی لەم بۆکسەدایە؟",
                            onPressedBritish: () => speakboxs2("en-GB"),
                            onPressedAmerican: () => speakboxs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) بۆکسێک و ئەو شتانەی لە ناویەتی"),
                          SentencesRow(
                            englishText: "He ate a whole box of chocolates.",
                            kurdishText: "یەک کارتۆنی تەواو چکلێتی خوارد.",
                            onPressedBritish: () => speakboxs3("en-GB"),
                            onPressedAmerican: () => speakboxs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) چوارچێوەیەکی چوارگۆشە یان لاکێشە لەسەر پەڕەیەک یان شاشەی کۆمپیوتەر بۆ ئەوەی شتی تێدا بنووسرێت"),
                          SentencesRow(
                            englishText: "Put a cross in the appropriate box.",
                            kurdishText:
                                "نیشانەیەکی X بھێنە بە بۆکسی گونجاودا.",
                            onPressedBritish: () => speakboxs4("en-GB"),
                            onPressedAmerican: () => speakboxs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ناوچەیەکی بچووک لە سینەمایەک، دادگا، یاریگای وەرزشی، ھتد کە جیاکراوەیە لە شوێنی دانیشنی کەسانی خەڵکی"),
                          SentencesRow(
                            englishText:
                                "They drank champagne as they watched the game from the executive box.",
                            kurdishText:
                                "شامپەینیان دەخواردەوە کە لە جێگەی بەڕێوبەرەکەوە سەیری یارییەکەیان دەکرد.",
                            onPressedBritish: () => speakboxs5("en-GB"),
                            onPressedAmerican: () => speakboxs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پەناگەیەکی بچووک کە بۆ مەبەستێکی دیاریکراو بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "Their new house is just a box (= very small).",
                            kurdishText:
                                "ماڵە تازەکەیان تەنھا تەنھا چواردیوارە.",
                            onPressedBritish: () => speakboxs6("en-GB"),
                            onPressedAmerican: () => speakboxs6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I called him from the phone box.",
                            kurdishText:
                                "لە کیوسکی تەلەفۆنی سەرشەقامەکەوە پەیوەندیم پێوەکرد.",
                            onPressedBritish: () => speakboxs9("en-GB"),
                            onPressedAmerican: () => speakboxs9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) تەلەفیزیۆن"),
                          SentencesRow(
                            englishText: "What's on the box tonight?",
                            kurdishText: "چی لەسەر تەلەفیزیۆنە ئەمشەو؟",
                            onPressedBritish: () => speakboxs7("en-GB"),
                            onPressedAmerican: () => speakboxs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شوێنێک کە تێیدا دوو ڕێگا یەک دەگرن"),
                          SentencesRow(
                            englishText:
                                "Only traffic turning right may enter the box junction.",
                            kurdishText:
                                "تەنھا ئەو ئۆتۆمبێلانەی کە بۆ ڕاست پێچدەکەنەوە دەبێت بچنە یەکتربڕەکەوە.",
                            onPressedBritish: () => speakboxs8("en-GB"),
                            onPressedAmerican: () => speakboxs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) لە یاریگای وەرزشیدا ئەو بەشانەیە کە بە ھێڵ کێشراون و بۆ مەبەستی دیاریکراو بەکاردێن"),
                          SentencesRow(
                            englishText:
                                "He was fouled in the box (= the penalty box).",
                            kurdishText: "فاوڵی لەسەر گیردرا لە ناوچەی سزا.",
                            onPressedBritish: () => speakboxs12("en-GB"),
                            onPressedAmerican: () => speakboxs12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) شەڕکردن لەگەڵ کەسێک لە زۆرانبازیدا"),
                          SentencesRow(
                            englishText:
                                "He boxed for Ireland in the Olympics.",
                            kurdishText:
                                "زۆرانبازی بۆ ئێرلەندا دەکرد لە ئۆڵۆمپیاددا.",
                            onPressedBritish: () => speakboxs10("en-GB"),
                            onPressedAmerican: () => speakboxs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) خستنە بۆکسێک"),
                          SentencesRow(
                            englishText:
                                "I boxed up some clothes and books to donate to charity.",
                            kurdishText:
                                "ھەندێک جل و کتێبم خستە بۆکسێکەوە بۆ بەخشین بە ڕێکخراوی خێرخوازی.",
                            onPressedBritish: () => speakboxs11("en-GB"),
                            onPressedAmerican: () => speakboxs11("en-US"),
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
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
- Noun: box (derived forms: boxes)
1. A (usually rectangular) container; may have a lid
"he rummaged through a box of spare parts"
 
2. Private area in a theatre or grandstand where a small group can watch the performance (= loge)
"the royal box was empty";

3. The quantity contained in a box (= boxful)
"he gave her a box of chocolates";
 
4. A predicament from which a skilful or graceful escape is impossible (= corner)
"his lying got him into a tight box";
 
5. A rectangular drawing
"the flowchart contained many boxes"
 
6. An evergreen shrub or tree (genus Buxus) (= boxwood)
 
7. Any one of several designated areas on a ball field where the batter, catcher or coaches are positioned
"the umpire warned the batter to stay in the batter's box"
 
8. The driver's seat on a coach (= box seat)
"an armed guard sat in the box with the driver";
 
9. Separate partitioned area in a public place for a few people
"the sentry stayed in his box to avoid the cold"
 
10. A blow with the hand (usually on the ear)
"I gave him a good box on the ear"
 
11. [Brit, informal] (television) an electronic device that receives television signals and displays them on a screen (= television receiver, television, television set, tv, tv set, idiot box [N. Amer, informal], boob tube [N. Amer, informal], telly [Brit, informal], goggle box [Brit, informal], TV)
 
12. (soccer) rectangular area in front of the goal; if a defender fouls in this area the other side are given a penalty kick (= penalty box, penalty area)

- Verb: box (derived forms: boxes, boxed, boxing)
1. Put into a box (= package)
"box the gift, please";
 
2. Hit with the fist
"I'll box your ears!"
 
3. (sport) engage in a boxing match
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

  final String _videoId = '47ODQI0OSOA';
  final double _startSeconds = 48;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 130;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 85;

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

  final String _videoId = 'nC6RUyMvsOI';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '2ihOXaU0I8o';
  final double _startSeconds = 242;

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

  final String _videoId = '_GFkHA5EZdE';
  final double _startSeconds = 256;

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

  final String _videoId = 'n9xhJrPXop4';
  final double _startSeconds = 35;

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

  final String _videoId = 'D0x2dgpBDzc';
  final double _startSeconds = 978;

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

  final String _videoId = 'QL3H7CUJMDU';
  final double _startSeconds = 130;

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

  final String _videoId = '66aG5P0kQpU';
  final double _startSeconds = 82;

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

// end

// haʊʊʊʊʊʊʊ4
// end box
