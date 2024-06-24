import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycoordinate extends StatelessWidget {
// blank divider
  EnglishEntrycoordinate({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcoordinate(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("coordinate");
  }

  Future<void> speakcoordinates1(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They appointed a new manager to coordinate the work of the team.");
  }

  Future<void> speakcoordinates2(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We try to coordinate our activities with those of other groups.");
  }

  Future<void> speakcoordinates3(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The brain helps coordinate movements so we can walk and run.");
  }

  Future<void> speakcoordinates4(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This shade coordinates with a wide range of other colours.");
  }

  Future<void> speakcoordinates5(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Put in the GPS coordinates and zoom in on the map.");
  }

  Future<void> speakcoordinates6(String languageCode) async {
    // DOPSUM: CHANGE speakcoordinate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pilot had been given the wrong co-ordinates.");
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
                            EntryTitle(word: "coordinate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊˈɔːdɪneɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcoordinate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊˈɔːrdɪneɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcoordinate("en-US"),
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
//                           const KurdishVocabulary(text: """
// کوردی: (ڕێزمان) ھاوپلە،	(بیرکاری) کۆئۆردینیت،	(کیمیا) کۆئۆردینیت،	ھاوتەراز، ھاوسەنگ، ھاوپلە، ھاوڕێک، ھاوپایە، ھاڕێک، کۆئۆردینیت، دەست
// """),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ڕێکخستنی بەشە جیاوازەکانی چالاکییەک و ئەو کەسانەی تێیدا بەژدارن بۆ ئەوەی باش کار بکات"),
                          SentencesRow(
                            englishText:
                                "They appointed a new manager to coordinate the work of the team.",
                            kurdishText:
                                "بەڕێوبەرێکی تازەیان دیاریکرد بۆ کارەکە لەگەڵ تیمەکە ڕێکبخات.", // coordinate",
                            onPressedBritish: () => speakcoordinates1("en-GB"),
                            onPressedAmerican: () => speakcoordinates1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We try to coordinate our activities with those of other groups.",
                            kurdishText:
                                "ھەوڵ دەدەین چالاکییەکانمان ڕێکبخەین لەگەڵ ئەوانەی گرووپەکانی دیکەدا.",
                            onPressedBritish: () => speakcoordinates2("en-GB"),
                            onPressedAmerican: () => speakcoordinates2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) واکردنی ئەوەی بەشە جیاوازەکانی جەستەت پێکەوە کار بکەن"),
                          SentencesRow(
                            englishText:
                                "The brain helps coordinate movements so we can walk and run.",
                            kurdishText:
                                "مێشک ھەوڵ دەدات جوڵە ڕێکبخات بۆ ئەوەی بتوانین ڕێ بکەین ڕا بکەین.",
                            onPressedBritish: () => speakcoordinates3("en-GB"),
                            onPressedAmerican: () => speakcoordinates3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) دانان و ڕێکخستن بەشێوەیەک کە جوان دەربکەوێت"),
                          SentencesRow(
                            englishText:
                                "This shade coordinates with a wide range of other colours.",
                            kurdishText:
                                "ئەم ڕەنگە لەگەڵ ژمارەیەکی زۆری دیکەی ڕەنگەکاندا دەگونجێت.",
                            onPressedBritish: () => speakcoordinates4("en-GB"),
                            onPressedAmerican: () => speakcoordinates4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو دوو ژمارەیەی کە خاڵێک لەسەر نەخشە دیاری دەکەن بەپێی بازنەکانی پانی و ھێڵەکانی درێژی"),
                          SentencesRow(
                            englishText:
                                "Put in the GPS coordinates and zoom in on the map.",
                            kurdishText:
                                "پلەکانی جی‌پی‌ئێسەکە دابنێ و نەخشەکە نزیک بکەوە.",
                            onPressedBritish: () => speakcoordinates5("en-GB"),
                            onPressedAmerican: () => speakcoordinates5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The pilot had been given the wrong co-ordinates.",
                            kurdishText: "فڕۆکەوانەکە پلەی ھەڵەی پێدرابوو.",
                            onPressedBritish: () => speakcoordinates6("en-GB"),
                            onPressedAmerican: () => speakcoordinates6("en-US"),
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
- Verb: coordinate (derived forms: coordinates, coordinating, coordinated)
1. Bring order and organization to (= organize, organise [Brit])
"Can you help me coordinate my files?";
 
2. Bring (components or parts) into proper or desirable coordination (= align, ordinate)
"coordinate the wheels of my car";
 
3. Be co-ordinated
"These activities coordinate well"
 
4. Bring into common action, movement, or condition
"coordinate the painters, masons, and plumbers"; "coordinate his actions with that of his colleagues"; "coordinate our efforts"

- Noun: coordinate (derived forms: coordinates, co-ordinates)
1. A number that identifies a position relative to an axis (= co-ordinate)

- Adjective: coordinate 
1. Of equal importance, rank, or degree
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

  final String _videoId = 'anbBwpoI9TI';
  final double _startSeconds = 225;

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

  final String _videoId = 'Oz9zw7-_vhM';
  final double _startSeconds = 486;

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

  final String _videoId = 'twAP3buj9Og';
  final double _startSeconds = 44;

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

  final String _videoId = '3KC32Vymo0Q';
  final double _startSeconds = 355;

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

  final String _videoId = '4Q1FzhMY8FQ';
  final double _startSeconds = 257;

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

  final String _videoId = 'Df_ZJ2DxvCk';
  final double _startSeconds = 739;

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

  final String _videoId = '1I1vxu5qIUM';
  final double _startSeconds = 847;

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