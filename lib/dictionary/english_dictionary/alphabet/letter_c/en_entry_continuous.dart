import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontinuous extends StatelessWidget {
  EnglishEntrycontinuous({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontinuous(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("continuous");
  }

  Future<void> speakcontinuouss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Recovery after the accident will be a continuous process that may take several months.");
  }

  Future<void> speakcontinuouss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The rain has been almost continuous for weeks.");
  }

  Future<void> speakcontinuouss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was in continuous employment until the age of sixty-five.");
  }

  Future<void> speakcontinuouss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He watched television as if it was one continuous programme.");
  }

  Future<void> speakcontinuouss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I could hear a faint continuous noise.");
  }

  Future<void> speakcontinuouss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was a week of almost continuous sunshine.");
  }

  Future<void> speakcontinuouss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The accident caused a disruption in the continuous flow of traffic on the highway.");
  }

  Future<void> speakcontinuouss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The eruption resulted in a continuous stream of lava flowing down the mountainside.");
  }

  Future<void> speakcontinuouss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("For four days the town suffered continuous attacks.");
  }

  Future<void> speakcontinuouss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company said the reasons for closure were continuous losses.");
  }

  Future<void> speakcontinuouss11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Understanding the continuous tenses is essential for mastering English grammar.");
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
                            EntryTitle(word: "continuous"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtɪnjuəs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontinuous("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtɪnjuəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontinuous("en-US"),
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
کوردی: یەکبینە، بەردەوام، ھەمیشە، بێ‌پسانەوە، زنجیرەیی، لێک‌ھەڵپێکراو، یەک‌سەرە، لەسەریەک،	پێکەوەبەستراو،	(ڕێزمان) بەردەوامی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) ڕوودان یان بەردەوام بوون بۆ ماوەیەک بەبێ وەستان"),
                          SentencesRow(
                            englishText:
                                "Recovery after the accident will be a continuous process that may take several months.",
                            kurdishText:
                                "چاکبوونەوەی دوای ڕووداوەکە پڕۆسەیەکی بەردەوام دەبێت کە ڕەنگە چەند مانگێکی پێبچێت.",
                            onPressedBritish: () => speakcontinuouss1("en-GB"),
                            onPressedAmerican: () => speakcontinuouss1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The rain has been almost continuous for weeks.",
                            kurdishText:
                                "بارانەکە بەنزیکەیی بۆ چەند ھەفتەیەکە بێ‌دابڕان بووە.",
                            onPressedBritish: () => speakcontinuouss2("en-GB"),
                            onPressedAmerican: () => speakcontinuouss2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She was in continuous employment until the age of sixty-five.",
                                    kurdishText:
                                        "لەسەر کاری بەردەوام بووە تاوەکو تەمەنی ٦٥ ساڵی.",
                                    onPressedBritish: () =>
                                        speakcontinuouss3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontinuouss3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He watched television as if it was one continuous programme.",
                                    kurdishText:
                                        "سەیری تەلەفیزیۆن دەکرد وەک ئەوەی یەک پڕۆگرامی بەردەوام بێت.",
                                    onPressedBritish: () =>
                                        speakcontinuouss4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontinuouss4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I could hear a faint continuous noise.",
                                    kurdishText:
                                        "گوێم لە خشەخشێکی بەردەوام کز دەبوو.",
                                    onPressedBritish: () =>
                                        speakcontinuouss5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontinuouss5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It was a week of almost continuous sunshine.",
                                    kurdishText:
                                        "ھەفتەیەکی نەبڕاوە لە تیشکی خۆر بوو.",
                                    onPressedBritish: () =>
                                        speakcontinuouss6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontinuouss6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بەشێک لە ڕاستەھێڵێک یان ناوچەیەک بەبێ پچڕان"),
                          SentencesRow(
                            englishText:
                                "The accident caused a disruption in the continuous flow of traffic on the highway.",
                            kurdishText:
                                "ڕووداوەکە بوو بەھۆی پەککەوتنی جوڵەی بەردەوامی ھاتووچۆ لەسەر ڕێگا خێراکە.",
                            onPressedBritish: () => speakcontinuouss7("en-GB"),
                            onPressedAmerican: () => speakcontinuouss7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The eruption resulted in a continuous stream of lava flowing down the mountainside.",
                            kurdishText:
                                "تەقینەکە بوو بەھۆی تەوژمێکی بەردەوامی شلەی گڕکان بە ڕووی چیاکەدا بچۆڕێتە خوارەوە.",
                            onPressedBritish: () => speakcontinuouss8("en-GB"),
                            onPressedAmerican: () => speakcontinuouss8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) دووبارەبووەوە بۆ چەندین جار"),
                          SentencesRow(
                            englishText:
                                "For four days the town suffered continuous attacks.",
                            kurdishText:
                                "بۆ چوار ڕۆژ شارۆچکەکە ڕووبەڕووی ھێرشی بەردەوام بووەوە.",
                            onPressedBritish: () => speakcontinuouss9("en-GB"),
                            onPressedAmerican: () => speakcontinuouss9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The company said the reasons for closure were continuous losses.",
                            kurdishText:
                                "کۆمپانیاکە وتی ھۆکاری داخرانەکە زیانی بەردەوام بوو.",
                            onPressedBritish: () => speakcontinuouss10("en-GB"),
                            onPressedAmerican: () =>
                                speakcontinuouss10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) پەیوەندیدار بەو کردارانەی کە لە دەمی بەردەوامیدان و بەکاردێن بۆ باسکردن لە چالاکییەک کە ھێشتا بۆ ماوەیەک بەردەوامە"),
                          SentencesRow(
                            englishText:
                                "Understanding the continuous tenses is essential for mastering English grammar.",
                            kurdishText:
                                "تێگەشتن لە دەمەکانی بەردەوامی گرنگە بۆ شارەزابوون لە ڕێزمانی ئینگلیزی.",
                            onPressedBritish: () => speakcontinuouss11("en-GB"),
                            onPressedAmerican: () =>
                                speakcontinuouss11("en-US"),
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
- Adjective: continuous 
1. Continuing in time or space without interruption (= uninterrupted)
"a continuous rearrangement of electrons in the solar atoms results in the emission of light"; "lived in continuous fear"; "a continuous row of warehouses";
 
(mathematics) of a function or curve; extending without break or irregularity
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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 131;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 1180;

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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 1340;

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

  final String _videoId = '0jltioeaEyY';
  final double _startSeconds = 960;

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

  final String _videoId = 'unk6n3_QdlM';
  final double _startSeconds = 1003;

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

  final String _videoId = 'IgF3OX8nT0w';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'CZ7pXbAU3Hc';
  final double _startSeconds = 826;

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