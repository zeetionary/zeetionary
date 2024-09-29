import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycollection extends StatelessWidget {
  EnglishEntrycollection({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollection(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("collection");
  }

  Future<void> speakcollections1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He wanted to share his vast art collection with the world.");
  }

  Future<void> speakcollections2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He built up his collection over a period of ten years.");
  }

  Future<void> speakcollections3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The collection is rarely on view to the public.");
  }

  Future<void> speakcollections4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was a collection of books on the floor.");
  }

  Future<void> speakcollections5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The first stage in research is data collection.");
  }

  Future<void> speakcollections6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Your suit will be ready for collection on Tuesday.");
  }

  Future<void> speakcollections7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The band has just released a collection of their greatest hits.");
  }

  Future<void> speakcollections8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The total collection last week amounted to £250.");
  }

  Future<void> speakcollections9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We will have a collection for charity at the end of the concert.");
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
                            EntryTitle(word: "collection"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlekʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollection("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlekʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollection("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: خڕکردنەوە، کۆ، کۆکردنەوە، گردکردنەوە، گردوکۆ، کۆمەڵەکردن، کۆکراوە، کۆگەری، پێکەوەنان، کۆم‌کردن، سەریەک‌نان، کەڵەکەکردن،	کۆمەڵە،	وەرگرتن،	خڕکردنەوەی باربۆ و پیتاک؛ پیتاک، باربۆ (خڕەوەکراو)،	کۆما، لۆدە، کۆگا، کەڵەکە، کۆمەڵ، دەستە، ژمارە
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) کۆکراوەی کۆمەڵە شتێکی ھەمان جۆر"),
                          SentencesRow(
                            englishText:
                                "He wanted to share his vast art collection with the world.",
                            kurdishText:
                                "دەیویست کۆکراوەی زەبەلاحی کارە ھونەرییەکانی لەگەڵ جیھان ھاوبەش بکات.",
                            onPressedBritish: () => speakcollections1("en-GB"),
                            onPressedAmerican: () => speakcollections1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He built up his collection over a period of ten years.",
                            kurdishText:
                                "کۆکراوەکەی لە ماوەی ١٠ ساڵدا بنیاتنا.",
                            onPressedBritish: () => speakcollections2("en-GB"),
                            onPressedAmerican: () => speakcollections2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The collection is rarely on view to the public.",
                            kurdishText:
                                "کۆکراوەکە بەدەگمەن بەڕووی خەڵکیدا کراوەیە.",
                            onPressedBritish: () => speakcollections3("en-GB"),
                            onPressedAmerican: () => speakcollections3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) گرووپێک لە خەڵکی یان شت"),
                          SentencesRow(
                            englishText:
                                "There was a collection of books on the floor.",
                            kurdishText:
                                "کۆمەڵە کتێبێک لەسەر زەوییەکە کەوتبوون.",
                            onPressedBritish: () => speakcollections4("en-GB"),
                            onPressedAmerican: () => speakcollections4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There is always a strange collection of runners in the London Marathon.",
                            kurdishText:
                                "ھەمیشە کۆمەڵە ڕاکەرێکی نامۆ لە ماراسۆنی لەندەن ھەن.",
                            onPressedBritish: () => speakcollections4("en-GB"),
                            onPressedAmerican: () => speakcollections4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) بردنی شتێک لە شوێنێک"),
                          SentencesRow(
                            englishText:
                                "The first stage in research is data collection.",
                            kurdishText:
                                "یەکەم قۆناغی توێژینەوە کۆکردنەوەی داتایە.",
                            onPressedBritish: () => speakcollections5("en-GB"),
                            onPressedAmerican: () => speakcollections5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Your suit will be ready for collection on Tuesday.",
                            kurdishText:
                                "جلەکەت ئامادە دەبێت بۆ بردنەوە لە ڕۆژی سێشەممە.",
                            onPressedBritish: () => speakcollections6("en-GB"),
                            onPressedAmerican: () => speakcollections6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمەڵە چیرۆکێک، ھۆنراوایەک، ھتد کە پێکەوە لە یەک کتێبدا بڵاودەکرێنەوە"),
                          SentencesRow(
                            englishText:
                                "The band has just released a collection of their greatest hits.",
                            kurdishText:
                                "باندەکە تازەگی کۆکراوەیەک لە بەناوبانگترین کارەکانیان بڵاوکردووەتەوە.",
                            onPressedBritish: () => speakcollections7("en-GB"),
                            onPressedAmerican: () => speakcollections7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆکردنەوەی پارە بۆ کاری خێرخوازی؛ ئەو پارەیەی کە کۆکراوەتەوە"),
                          SentencesRow(
                            englishText:
                                "The total collection last week amounted to £250.",
                            kurdishText:
                                "جڕکردنەوەی کۆتایی لە ھەفتەی ڕابردوودا ٢٥٠ پاوەند بوو.",
                            onPressedBritish: () => speakcollections8("en-GB"),
                            onPressedAmerican: () => speakcollections8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We will have a collection for charity at the end of the concert.",
                            kurdishText:
                                "لە کۆتایی کۆنسێرتەکەدا پارە کۆکردنەوەمان دەبێت.",
                            onPressedBritish: () => speakcollections9("en-GB"),
                            onPressedAmerican: () => speakcollections9("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: collection (derived forms: collections)
1. Several things grouped together or considered as a whole (= aggregation, accumulation, assemblage)
 
2. A publication containing a variety of works (= compendium)
 
3. Request for a sum of money (= solicitation, appeal, ingathering)
 
4. The act of gathering something together (= collecting, assembling, aggregation)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'shKWGMdvmJQ';
  final double _startSeconds = 91;

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

  final String _videoId = 'FFRQfK6dxkQ';
  final double _startSeconds = 51;

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

  final String _videoId = 'FypzgHwFGS0';
  final double _startSeconds = 26;

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

  final String _videoId = 'D8gJTUTb_os';
  final double _startSeconds = 543;

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

  final String _videoId = 'R0wa9IlCA_w';
  final double _startSeconds = 90;

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

  final String _videoId = 'D4ZD96tA7lA';
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

  final String _videoId = '4RKOBJMpjeE';
  final double _startSeconds = 191;

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