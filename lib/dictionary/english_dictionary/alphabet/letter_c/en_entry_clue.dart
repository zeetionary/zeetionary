import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclue extends StatelessWidget {
  // blank divider
  EnglishEntryclue({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclue(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("clue");
  }

  Future<void> speakclues1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The burglar left no clues.");
  }

  Future<void> speakclues2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They are searching for clues about the kidnapping.");
  }

  Future<void> speakclues3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The hat gives a clue to the identity of the killer.");
  }

  Future<void> speakclues4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This data may provide clues about the current economic situation.");
  }

  Future<void> speakclues5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The trailer gives a few important clues about the film's plot.");
  }

  Future<void> speakclues6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This research might provide an important clue about how cancer develops.");
  }

  Future<void> speakclues7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("‘You'll never guess who I saw today!’ ‘Give me a clue.’");
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
                            EntryTitle(word: "clue"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kluː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclue("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kluː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclue("en-US"),
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
کوردی: سەرەداو، سەرەپەت، سەرەتا، سەرەتاڵ، سەرڕستە، سۆراغ، زانیاری، ئاگاداری، ھەواڵ،	نیشانە، شەقڵ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک، بەڵگەیەک، یان زانیارییەک کە یارمەتی پۆلیس دەدات لە چارەسەری تاوانێک"),
                          SentencesRow(
                            englishText: "The burglar left no clues.",
                            kurdishText:
                                "دزەکە ھیچ سەرەداوێکی جێنەھێشت.", // clue",
                            onPressedBritish: () => speakclues1("en-GB"),
                            onPressedAmerican: () => speakclues1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They are searching for clues about the kidnapping.",
                            kurdishText:
                                "بە شوێن سەرەداودا دەگەڕێن سەبارەت بە ڕفاندنەکە.",
                            onPressedBritish: () => speakclues2("en-GB"),
                            onPressedAmerican: () => speakclues2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The hat gives a clue to the identity of the killer.",
                            kurdishText:
                                "کڵاوەکە سەرەداوێک دەدات بەدەستەوە سەبارەت بە ناسنامەی بکووژەکە.",
                            onPressedBritish: () => speakclues3("en-GB"),
                            onPressedAmerican: () => speakclues3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕاستییەک یان بەڵگەیەک کە دەیدۆزیتەوە بۆ زانینی وەڵامی کێشەیەک"),
                          SentencesRow(
                            englishText:
                                "This data may provide clues about the current economic situation.",
                            kurdishText:
                                "ئەم داتایە ڕەنگە زانیاری لەسەر دۆخی ئابووری ئێستا بخاتە بەردەست.",
                            onPressedBritish: () => speakclues4("en-GB"),
                            onPressedAmerican: () => speakclues4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The trailer gives a few important clues about the film's plot.",
                            kurdishText:
                                "ترەیلەرەکە چەند زانیارییەکی گرنگ سەبارەت بە چیرۆکی فیلمەکە دەخاتە بەردەست.",
                            onPressedBritish: () => speakclues5("en-GB"),
                            onPressedAmerican: () => speakclues5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This research might provide an important clue about how cancer develops.",
                            kurdishText:
                                "ئەم توێژینەوە ڕەنگە سەرەتاڵی گرنگ بدات بەدەستەوە سەبارەت بەوەی چۆن شێرپەنجە گەشە دەکات.",
                            onPressedBritish: () => speakclues6("en-GB"),
                            onPressedAmerican: () => speakclues6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) وشە یان زانیاری کە ئاسانکاری دەکات لە زانینی وەڵامی پرسیارێک، مەتەڵێک، ھتد"),
                          SentencesRow(
                            englishText:
                                "‘You'll never guess who I saw today!’ ‘Give me a clue.’",
                            kurdishText:
                                "'ھەرگیز ھەڵیناھێنی ئەمڕۆ چیم بینی!' 'سەرەداوێکم بدەرێ.'",
                            onPressedBritish: () => speakclues7("en-GB"),
                            onPressedAmerican: () => speakclues7("en-US"),
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
- Noun: clue (derived forms: clues)
1. A slight indication (= hint)
 
2. Evidence that helps to solve a problem (= clew [archaic])
 
3. A ball of yarn, cord or thread (= clew [archaic])

- Verb: clue (derived forms: clued, clueing, clues)
1. Roll into a ball (= clew [archaic])
 
2. Provide with a clue; tell someone about something
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'hIOvRG2EZMA';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'XCATjWG8X1o';
  final double _startSeconds = 24;

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

  final String _videoId = '9qlRi4MtTGo';
  final double _startSeconds = 5;

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

  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 166;

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

  final String _videoId = 'DfSnHyIryeY';
  final double _startSeconds = 135;

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

  final String _videoId = 'gRDRXqK-Tew';
  final double _startSeconds = 108;

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

  final String _videoId = 'x6btmJSRueE';
  final double _startSeconds = 86;

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

  final String _videoId = 'Fr-qagv7ig0';
  final double _startSeconds = 1338;

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