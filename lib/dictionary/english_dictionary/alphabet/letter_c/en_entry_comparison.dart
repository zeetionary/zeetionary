import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomparison extends StatelessWidget {
// blank divider
  EnglishEntrycomparison({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomparison(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("comparison");
  }

  Future<void> speakcomparisons1(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Comparison with other oil-producing countries is extremely interesting.");
  }

  Future<void> speakcomparisons2(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two situations bear no comparison.");
  }

  Future<void> speakcomparisons3(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two situations bear no comparison (= they are not at all similar).");
  }

  Future<void> speakcomparisons4(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The similarity between the two invites comparison.");
  }

  Future<void> speakcomparisons5(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The films are too different for a fair comparison.");
  }

  Future<void> speakcomparisons6(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is difficult to make a comparison with her previous book—they are completely different.");
  }

  Future<void> speakcomparisons7(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can draw comparisons with the situation in Ireland.");
  }

  Future<void> speakcomparisons8(String languageCode) async {
    // DOPSUM: CHANGE speakcomparison
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is no published information that would allow a direct comparison with other regions or countries.");
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
                            EntryTitle(word: "comparison"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈpærɪsn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomparison("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈpærɪsn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomparison("en-US"),
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
کوردی: بەراوردکاری، بەرھەڤ‌دان، ھاوبەری، پێک‌گرتن، ھەڵسەنگاندن،	لێکچواندن، شوبھاندن،	لێکچوون، لێکچوویی، ھاوشێوەیی
"""),
                          const DefinitionKurdish(text: "١. (ناو) بەراوردکاری"),
                          SentencesRow(
                            englishText:
                                "Comparison with other oil-producing countries is extremely interesting.",
                            kurdishText:
                                "بەراوردکاری لەگەڵ وڵاتانی دیکەی بەرھەمھێنەری نەوت سەرنجڕاکشە.", // comparison",
                            onPressedBritish: () => speakcomparisons1("en-GB"),
                            onPressedAmerican: () => speakcomparisons1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The two situations bear no comparison (= they are not at all similar).",
                            kurdishText: "دوو دۆخەکە ھیچ بەراوردکاری ھەڵناگرن.",
                            onPressedBritish: () => speakcomparisons2("en-GB"),
                            onPressedAmerican: () => speakcomparisons2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The two situations bear no comparison (= they are not at all similar).",
                                    kurdishText:
                                        "با بۆ بەراوردکاری بیانخەینە تەنیشت یەکدی.",
                                    onPressedBritish: () =>
                                        speakcomparisons3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomparisons3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The similarity between the two invites comparison.",
                            kurdishText:
                                "لێکچووی نێوان ئەو دووە جێگەی بەراوردکارییە.",
                            onPressedBritish: () => speakcomparisons4("en-GB"),
                            onPressedAmerican: () => speakcomparisons4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بۆنەیەک کە دوو کەس یان زیاتر یان شت بەراورد دەکرێن "),
                          SentencesRow(
                            englishText:
                                "The films are too different for a fair comparison.",
                            kurdishText:
                                "فیلمەکان زۆر جیاوازن بۆ ھەڵسەنگاندنێکی دادپەروەرانە.",
                            onPressedBritish: () => speakcomparisons5("en-GB"),
                            onPressedAmerican: () => speakcomparisons5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It is difficult to make a comparison with her previous book—they are completely different.",
                            kurdishText:
                                "سەختە ھەڵسەنگاندن بکەیت لەگەڵ کتێبەکەی پێشوویدا، تەواو جیاوازن.",
                            onPressedBritish: () => speakcomparisons6("en-GB"),
                            onPressedAmerican: () => speakcomparisons6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You can draw comparisons with the situation in Ireland (= say how the two situations are similar).",
                            kurdishText:
                                "دەتوانیت بەراوردکاری بکەیت لەگەڵ دۆخی ئێرلەندادا.",
                            onPressedBritish: () => speakcomparisons7("en-GB"),
                            onPressedAmerican: () => speakcomparisons7("en-US"),
                          ),
                          SentencesRow(
                            englishText:
                                "There is no published information that would allow a direct comparison with other regions or countries.",
                            kurdishText:
                                "ھیچ زانیارییەکی بڵاوکراوە نییە کە ڕێگا بە بەراوردکاری ڕاستەوخۆ بدات لەگەڵ ھەرێم یان وڵاتانی دیکە.",
                            onPressedBritish: () => speakcomparisons8("en-GB"),
                            onPressedAmerican: () => speakcomparisons8("en-US"),
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
- Noun: comparison (derived forms: comparisons)
1. The act of examining resemblances (= comparing)
"they made a comparison of noise levels"; "the fractions selected for comparison must require pupils to consider both numerator and denominator";
 
2. Relation based on similarities and differences
 
3. Qualities that are comparable (= compare, equivalence, comparability)
"no comparison between the two books";
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

  final String _videoId = 'QrWzFYsBCb8';
  final double _startSeconds = 585;

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

  final String _videoId = 'jaRcbpN_KlM';
  final double _startSeconds = 10;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 881;

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

  final String _videoId = '9NyvXGaPl9s';
  final double _startSeconds = 118;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 821;

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

  final String _videoId = 'LIj5orZFJhg';
  final double _startSeconds = 341;

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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 759;

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