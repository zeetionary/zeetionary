import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontemporary extends StatelessWidget {
// blank divider
  EnglishEntrycontemporary({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontemporary(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contemporary");
  }

  Future<void> speakcontemporarys1(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We have no contemporary account of the battle.");
  }

  Future<void> speakcontemporarys2(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was contemporary with Shakespeare.");
  }

  Future<void> speakcontemporarys3(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She used only strictly contemporary documents to research the book.");
  }

  Future<void> speakcontemporarys4(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is among the best-known contemporary artists.");
  }

  Future<void> speakcontemporarys5(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The film paints a depressing picture of life in contemporary Britain.");
  }

  Future<void> speakcontemporarys6(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Try some contemporary colours on your kitchen walls.");
  }

  Future<void> speakcontemporarys7(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She and I were contemporaries at college.");
  }

  Future<void> speakcontemporarys8(String languageCode) async {
    // DOPSUM: CHANGE speakcontemporary
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was a contemporary of Freud and may have known him.");
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
                            EntryTitle(word: "contemporary"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtemprəri/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontemporary("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtempəreri/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontemporary("en-US"),
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
کوردی: ھاوچەرخ، ھاوسەردەم، ھاوڕۆژگار، ھاوکات، ھاودەم،	تازە، نوێ، نەو،	ھاوتەمەن
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) سەر بە ھەمان کات و سەردەم"),
                          SentencesRow(
                            englishText:
                                "We have no contemporary account of the battle (= written near the time that it happened).",
                            kurdishText:
                                "ھیچ سەرچاوەیەکی ھاوسەردەمی شەڕەکەمان نییە.", // contemporary",
                            onPressedBritish: () =>
                                speakcontemporarys1("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was contemporary with Shakespeare.",
                            kurdishText: "ھاوسەردەم بوو لەگەڵ شکسپیر.",
                            onPressedBritish: () =>
                                speakcontemporarys2("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She used only strictly contemporary documents to research the book.",
                            kurdishText:
                                "تەنھا بەڵگەنامەی ھاوچەرخی بەکارھێنا بۆ لێکۆڵینەوە بۆ کتێبەکە.",
                            onPressedBritish: () =>
                                speakcontemporarys3("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) سەردەم؛ سەر بە سەردەمی تازە"),
                          SentencesRow(
                            englishText:
                                "He is among the best-known contemporary artists.",
                            kurdishText:
                                "لەناو ناسراوترین ھونەرمەندەکانی سەردەمە.",
                            onPressedBritish: () =>
                                speakcontemporarys4("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The film paints a depressing picture of life in contemporary Britain.",
                            kurdishText:
                                "فیلمەکە وێنای ژیانێکی خەمناک دەکات لە بەریتانیای سەردەمدا.",
                            onPressedBritish: () =>
                                speakcontemporarys5("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) پابەند بە بیرۆکە سەردەمییەکانی سەردەم لە شێوە و دیزایندا"),
                          SentencesRow(
                            englishText:
                                "Try some contemporary colours on your kitchen walls.",
                            kurdishText:
                                "ھەندێک ڕەنگی سەردەمیانە تاقیبکەوە لەسەر دیواری چێشتخانەکەت.",
                            onPressedBritish: () =>
                                speakcontemporarys6("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کەسێک کە ھاوسەردەم لەگەڵ کەسێکی دیکە دەژی یان ژیاوە"),
                          SentencesRow(
                            englishText:
                                "She and I were contemporaries at college.",
                            kurdishText:
                                "من و ئەو ھاودەم بووین پێکەوە لە کۆلێژ.",
                            onPressedBritish: () =>
                                speakcontemporarys7("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was a contemporary of Freud and may have known him.",
                            kurdishText:
                                "ھاوسەردەمی فرۆید بوو و ڕەنگە ناسیبێتی.",
                            onPressedBritish: () =>
                                speakcontemporarys8("en-GB"),
                            onPressedAmerican: () =>
                                speakcontemporarys8("en-US"),
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
- Adjective: contemporary 
1. Characteristic of the present (= modern-day)
"contemporary trends in design";
 
2. Belonging to the present time (= present-day)
"contemporary leaders";
 
3. Occurring in the same period of time (= contemporaneous)
"the composer Salieri was contemporary with Mozart";

- Noun: contemporary (derived forms: contemporaries)
1. A person of nearly the same age as another (= coeval)
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

  final String _videoId = 'hzmbCSHcSts';
  final double _startSeconds = 144;

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

  final String _videoId = 'yLUvvfw_06s';
  final double _startSeconds = 1012;

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

  final String _videoId = 'tJuYL3nPINM';
  final double _startSeconds = 49;

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

  final String _videoId = 'lf-KVEXIoqM';
  final double _startSeconds = 58;

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

  final String _videoId = 'kBdfcR-8hEY';
  final double _startSeconds = 985;

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

  final String _videoId = '29DjvorzUGg';
  final double _startSeconds = 372;

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

  final String _videoId = '5v13wrVEQ2M';
  final double _startSeconds = 13;

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