import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconvenience extends StatelessWidget {
// blank divider
  EnglishEntryconvenience({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconvenience(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("convenience");
  }

  Future<void> speakconveniences1(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We have provided seats for the convenience of our customers.");
  }

  Future<void> speakconveniences2(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For (the sake of) convenience, the two groups have been treated as one in this report.");
  }

  Future<void> speakconveniences3(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In this resort you can enjoy all the comfort and convenience of modern tourism.");
  }

  Future<void> speakconveniences4(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We leave the keys near the front door for the sake of convenience.");
  }

  Future<void> speakconveniences5(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a great convenience to have the school so near.");
  }

  Future<void> speakconveniences6(String languageCode) async {
    // DOPSUM: CHANGE speakconvenience
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The house had all the modern conveniences that were unusual at that time.");
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
                            EntryTitle(word: "convenience"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈviːniəns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconvenience("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈviːniəns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconvenience("en-US"),
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
                  VideoIconForTab(),
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
کوردی: ئاسوودەیی، حەساوەیی، ڕابواردن، تەناھی، ئاسایش، ژین‌فرەھی، ژیان‌خۆشی، خۆش‌گوزەرانی،	ئاسانی، ئاسان‌کاری،	کەل‌وپەلی حەسانەوە، ھۆی ئاسایش(ـت)، خواپێداوی، ڕێژەن، نێعمەت، بەھرە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) تایبەتمەندی سوودمەندی، ئاسانی، یان گونجاوی بۆ کەسێک"),
                          SentencesRow(
                            englishText:
                                "We have provided seats for the convenience of our customers.",
                            kurdishText:
                                "جێگامان دابینکردووە بۆ ئاسوودەیی کڕیارانمان.", // convenience",
                            onPressedBritish: () => speakconveniences1("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "For (the sake of) convenience, the two groups have been treated as one in this report.",
                            kurdishText:
                                "بۆ ئاسانکاری، دوو گرووپەکە بە یەک گرووپ لەم ڕاپۆرتەدا سەیرکراون.",
                            onPressedBritish: () => speakconveniences2("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In this resort you can enjoy all the comfort and convenience of modern tourism.",
                            kurdishText:
                                "لەم سەیرانگایەدا دەتوانیت چێژ ببینیت لە ھەموو ئاسوودەیی و ئاسانکارییەکی گەشتیاری سەردەم.",
                            onPressedBritish: () => speakconveniences3("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We leave the keys near the front door for the sake of convenience.",
                            kurdishText:
                                "کلیلەکان لە پێش دەرگای پێشەوە جێدێڵین بۆ ئاسانکاری.",
                            onPressedBritish: () => speakconveniences4("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شتێک کە بەسوودە و کارکردن خێرا و ئاسان، یان ئاسوودەتر دەکات"),
                          SentencesRow(
                            englishText:
                                "It was a great convenience to have the school so near.",
                            kurdishText:
                                "ئاسانکارییەکی گەورە بوو کە قوتابخانەکە ھێدە نزیک بێت.",
                            onPressedBritish: () => speakconveniences5("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The house had all the modern conveniences (= central heating, etc.) that were unusual at that time.",
                            kurdishText:
                                "خانووەکە تەواوی ئاسانکارییەکانی سەردەمی ھەبوو کە ئەو کات نامۆ بوون.",
                            onPressedBritish: () => speakconveniences6("en-GB"),
                            onPressedAmerican: () =>
                                speakconveniences6("en-US"),
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
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
                        YoutubeEmbeddedend(),
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
- Noun: convenience (derived forms: conveniences)
1. The state of being suitable or opportune
"chairs arranged for his own convenience"
 
2. The quality of being useful and convenient
"they offered the convenience of an instalment plan"
 
3. A toilet that is available to the public (= public toilet, comfort station [N. Amer], public convenience [Brit], public lavatory, restroom [N. Amer], toilet facility, wash room, ablution [S.Africa])
 
4. A device or control that is very useful for a particular job (= appliance, contraption, contrivance, gadget, gizmo [informal], gismo [informal], widget)
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'uia5mqvTeh4';
  final double _startSeconds = 176;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Bl5630CeYFs';
  final double _startSeconds = 70;

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

  final String _videoId = 'kcUFSapjVqk';
  final double _startSeconds = 43;

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

  final String _videoId = 'oD9BaNAH-eE';
  final double _startSeconds = 1608;

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

  final String _videoId = 'eT_Gzi0HN4E';
  final double _startSeconds = 188;

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

  final String _videoId = 's2Z4b8K9QDw';
  final double _startSeconds = 22;

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

  final String _videoId = 'rN9NzgryhMY';
  final double _startSeconds = 193;

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

// end WORD_WEB