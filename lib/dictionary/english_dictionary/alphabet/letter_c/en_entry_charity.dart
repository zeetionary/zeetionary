import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycharity extends StatelessWidget {
  // blank divider
  EnglishEntrycharity({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharity(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("charity");
  }

  Future<void> speakcharitys1(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Many charities sent money to help the victims of the famine.");
  }

  Future<void> speakcharitys2(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The concert will raise money for local charities.");
  }

  Future<void> speakcharitys3(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most of the runners in the London Marathon are raising money for charity.");
  }

  Future<void> speakcharitys4(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you give much to charity?");
  }

  Future<void> speakcharitys5(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All the profits go to charity.");
  }

  Future<void> speakcharitys6(String languageCode) async {
    // DOPSUM: CHANGE speakcharity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her article showed no charity towards her former friends.");
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
                            EntryTitle(word: "charity"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃærəti/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharity("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃærəti/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharity("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: خۆشەویستی، دڵسۆزی، دڵ‌گەورەیی، دڵ‌فراوانی، پشوودرێژی، سنگ‌فراوانی، لێبوردەیی،	چاکەکاری، دەسگرتن، خێرەومەندی، خێرخوازی، خێر، خێرات،	یارمەتی، کۆمەک،	ڕێکخراوە یان دامەزراوەی خێرخوازی 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دامەزراوەیەکی خێرخوازی"),
                          SentencesRow(
                            englishText:
                                "Many charities sent money to help the victims of the famine.",
                            kurdishText:
                                "زۆر ڕێکخراوی خێرخوازی پارەیان نارد بۆ یارمەتیدانی قوربانیانی وشکەساڵییەکە.", // charity",
                            onPressedBritish: () => speakcharitys1("en-GB"),
                            onPressedAmerican: () => speakcharitys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The concert will raise money for local charities.",
                            kurdishText:
                                "کۆنسێرتەکە پارە کۆدەکاتەوە بۆ ڕێکخراوە خێرخوازییە ناوخۆییەکان.",
                            onPressedBritish: () => speakcharitys2("en-GB"),
                            onPressedAmerican: () => speakcharitys2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) تەواوی ئەو دامەزراوانەی کە یارمەتی کەسانی ھەژار دەدەن، یان ئەو یارمەتییەی کە کۆدەکرێتەوە"),
                          SentencesRow(
                            englishText:
                                "Most of the runners in the London Marathon are raising money for charity.",
                            kurdishText:
                                "زۆرێک لە ڕاکەران لە ماراسۆنی لەندەن پارە بۆ خێرخوازی کۆدەکەنەوە.",
                            onPressedBritish: () => speakcharitys3("en-GB"),
                            onPressedAmerican: () => speakcharitys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Do you give much to charity?",
                            kurdishText: "پارە دەدەیت بە خێرخوازی؟",
                            onPressedBritish: () => speakcharitys4("en-GB"),
                            onPressedAmerican: () => speakcharitys4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "All the profits go to charity.",
                            kurdishText:
                                "تەواوی قازانجەکان بۆ کاری خێرخوازی دەچێت.",
                            onPressedBritish: () => speakcharitys5("en-GB"),
                            onPressedAmerican: () => speakcharitys5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) مامەڵەی میھرەبانانە و ھاوسۆزی بەرامبەر کەسانی دیکە"),
                          SentencesRow(
                            englishText:
                                "Her article showed no charity towards her former friends.",
                            kurdishText:
                                "وتارەکەی ھیچ بەخشندەیی بەرامبەر ھاوڕێ کۆنەکانی پیشان نادا.",
                            onPressedBritish: () => speakcharitys6("en-GB"),
                            onPressedAmerican: () => speakcharitys6("en-US"),
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: charity (derived forms: charities)
1. A foundation created to promote the public good (not for assistance to any particular individuals)
 
2. A kindly and lenient attitude toward people (= brotherly love)
 
3. An activity or gift that benefits the public at large
 
4. Pinnate-leaved European perennial having bright blue or white flowers (= Jacob's ladder, Greek valerian, Polemonium caeruleum, Polemonium van-bruntiae, Polymonium caeruleum van-bruntiae)
 
5. An institution set up to provide help to the needy
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

  final String _videoId = 'vznd33IaUFY';
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'zBOuDEEvb40';
  final double _startSeconds = 27;

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

  final String _videoId = 'Xm6Y3Rl9u1Q';
  final double _startSeconds = 629;

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

  final String _videoId = 'wa7gMMGJl_Y';
  final double _startSeconds = 4;

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

  final String _videoId = 'qx0QPTs9Nmo';
  final double _startSeconds = 177;

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

  final String _videoId = 'ya-br_y6DNA';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 149;

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

  final String _videoId = 'T48_SrFCdaQ';
  final double _startSeconds = 441;

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
