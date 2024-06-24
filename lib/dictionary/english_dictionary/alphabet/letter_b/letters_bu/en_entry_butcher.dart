import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybutcher extends StatelessWidget {
// blank divider
  EnglishEntrybutcher({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbutcher(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("butcher");
  }

  Future<void> speakbutchers1(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Every morning, the butcher displays fresh cuts in the shop.");
  }

  Future<void> speakbutchers2(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He owns the butcher's in the main street.");
  }

  Future<void> speakbutchers3(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The ruthless dictator was known as a political butcher.");
  }

  Future<void> speakbutchers4(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Unarmed civilians are being butchered by the occupying forces.");
  }

  Future<void> speakbutchers5(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is where farmers brought their livestock to be butchered.");
  }

  Future<void> speakbutchers6(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I couldn't bear to hear our national anthem being butchered like that.");
  }

  Future<void> speakbutchers7(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers77");
  }

  Future<void> speakbutchers8(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers88");
  }

  Future<void> speakbutchers9(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers99");
  }

  Future<void> speakbutchers10(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers1010");
  }

  Future<void> speakbutchers11(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers1111");
  }

  Future<void> speakbutchers12(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers1212");
  }

  Future<void> speakbutchers13(String languageCode) async {
    // DOPSUM: CHANGE speakbutcher
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbutchers1313");
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
                            EntryTitle(word: "butcher"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbʊtʃə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbutcher("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbʊtʃər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbutcher("en-US"),
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
کوردی: گۆشت‌فرۆش، قەساب، قەسابی، قەساب‌خانە، دووکانی قەسابی، خوێن‌ڕێژ، پیاوکوژ، دڕندە
"""),
                          const DefinitionKurdish(text: """١. (ناو) قەساب"""),
                          SentencesRow(
                            englishText:
                                "Every morning, the butcher displays fresh cuts in the shop.",
                            kurdishText:
                                "ھەموو بەیانییەک قەسابەکە گۆشتی تازە ھەڵدەواسێت لە قەسابخانەکە.", // butcher", follow LX strictly
                            onPressedBritish: () => speakbutchers1("en-GB"),
                            onPressedAmerican: () => speakbutchers1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) قەسابخانە"),
                          SentencesRow(
                            englishText:
                                "He owns the butcher's in the main street.",
                            kurdishText: "قەسابخانەی شەقامە سەرەکییەکەی ھەیە.",
                            onPressedBritish: () => speakbutchers2("en-GB"),
                            onPressedAmerican: () => speakbutchers2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) کەسێک کە دڕندانە خەڵک دەکوژێت"),
                          SentencesRow(
                            englishText:
                                "The ruthless dictator was known as a political butcher.",
                            kurdishText:
                                "دیکتاتۆرە بێ‌بەزەییەکە ناسراو بوو وەک خوێنڕێژێکی سیاسی.",
                            onPressedBritish: () => speakbutchers3("en-GB"),
                            onPressedAmerican: () => speakbutchers3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) کوشتنی خەڵکی بەشێوەیەکی دڕندانە"),
                          SentencesRow(
                            englishText:
                                "Unarmed civilians are being butchered by the occupying forces.",
                            kurdishText:
                                "ھاوڵاتیی مەدەنیی بێ‌چەک لەلایەن ھێزە داگیرکەرەکانەوە دەکوژرێن.",
                            onPressedBritish: () => speakbutchers4("en-GB"),
                            onPressedAmerican: () => speakbutchers4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) کوشتنی ئاژەڵ بۆ بەکارھێنان و فرۆشتن یان خواردنی گۆشتەکەی"),
                          SentencesRow(
                            englishText:
                                "This is where farmers brought their livestock to be butchered.",
                            kurdishText:
                                "ئەمە ئەوێیە کە ئاژەڵداران مەڕوماڵاتەکەیان ھێنا بۆ ئەوەی سەرببڕدرێن.",
                            onPressedBritish: () => speakbutchers5("en-GB"),
                            onPressedAmerican: () => speakbutchers5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) کردنی شتێک بە خراپی"),
                          SentencesRow(
                            englishText:
                                "I couldn't bear to hear our national anthem being butchered like that.",
                            kurdishText:
                                "نەمدەتوانی گوێم لە ئەنزیمی نیشتیمانیمان بێت بەو شێوەیە بشێوێندرێت.",
                            onPressedBritish: () => speakbutchers6("en-GB"),
                            onPressedAmerican: () => speakbutchers6("en-US"),
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
- Noun: butcher (derived forms: butchers)
1. A retailer of meat (= meatman)

2. A person who slaughters or dresses meat for market (= slaughterer)
 
3. Someone who makes mistakes because of incompetence (= bungler, blunderer, bumbler [informal], stumbler, sad sack [N. Amer, informal], botcher)
 
4. A brutal indiscriminate murderer

- Verb: butcher (derived forms: butchering, butchered, butchers)
1. Kill (animals) usually for food consumption (= slaughter)
"They butchered their only goat to survive the winter";
 
2. Kill a large number of people indiscriminately (= massacre, slaughter, mow down)
"The Hutus butchered the Tutsis in Rwanda";
 
3. Make a mess of, destroy or ruin (= botch, bodge [Brit, informal], bumble, fumble, botch up, muff [informal], blow, flub [N. Amer, informal], screw up [informal], spoil, muck up [informal], bungle, fluff [informal], bobble [N. Amer], mishandle, louse up [informal], foul up, mess up, goof up [informal], cock up [Brit, informal], balls up [informal], make a hash of [informal])
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

  final String _videoId = 'amcbGsJkPj8';
  final double _startSeconds = 604;

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

  final String _videoId = 'hlvgoXVuVPE';
  final double _startSeconds = 81;

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

  final String _videoId = 'Jo36sURT8WI';
  final double _startSeconds = 11;

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

  final String _videoId = '-zKqNJLnGyE';
  final double _startSeconds = 9;

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

  final String _videoId = 'EAMh4f8--Z4';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Rrz3wAgU6Wc';
  final double _startSeconds = 15;

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

  final String _videoId = 'Y4R0a48l73Y';
  final double _startSeconds = 65;

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

  final String _videoId = '0Aj93Bq_9ZY';
  final double _startSeconds = 95;

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

  final String _videoId = '7WvW2KZm8S0';
  final double _startSeconds = 241;

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

  final String _videoId = 'tTNBEDWSnSQ';
  final double _startSeconds = 1158;

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

// end WORD_WEB
