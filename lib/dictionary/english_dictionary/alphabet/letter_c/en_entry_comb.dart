import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomb extends StatelessWidget {
  // blank divider
  EnglishEntrycomb({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomb(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("comb");
  }

  Future<void> speakcombs1(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She ran a comb through her tangled hair.");
  }

  Future<void> speakcombs2(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He just had time to wash his face and drag a comb through his hair before going out.");
  }

  Future<void> speakcombs3(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your hair needs a good comb.");
  }

  Future<void> speakcombs4(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your hair could do with a comb!");
  }

  Future<void> speakcombs5(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't forget to comb your hair!");
  }

  Future<void> speakcombs6(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She combed her hair and put on some lipstick.");
  }

  Future<void> speakcombs7(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The police combed the area for clues.");
  }

  Future<void> speakcombs8(String languageCode) async {
    // DOPSUM: CHANGE speakcomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They combed through the files for evidence of fraud.");
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
                            EntryTitle(word: "comb"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomb("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomb("en-US"),
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
کوردی: شانە، ڕنەک، چلچنگ، کەڵکیت، دەفە، کوویشک، لیفە، ڕەنوونە، کەرکیت،	شانە ھەنگوین،	پۆپە، کاکۆڵ،	شانەکردن، داھێنان، شی‌کردنەوە
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) شانەی قژ داھێنان"),
                          SentencesRow(
                            englishText:
                                "She ran a comb through her tangled hair.",
                            kurdishText:
                                "شانەیەکی بە قژە بژەکەیدا ھێنا.", // comb",
                            onPressedBritish: () => speakcombs1("en-GB"),
                            onPressedAmerican: () => speakcombs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He just had time to wash his face and drag a comb through his hair before going out.",
                            kurdishText:
                                "تەنھا کاتی ئەوەی ھەبوو ڕووخساری بشوات و شانایەک لە قژی بدات پێش ئەوەی بچێتە دەرەوە.",
                            onPressedBritish: () => speakcombs2("en-GB"),
                            onPressedAmerican: () => speakcombs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) شانەکردن"),
                          SentencesRow(
                            englishText: "Your hair needs a good comb.",
                            kurdishText: "قژت پێویستی بە شانەکردنێکی باش ھەیە.",
                            onPressedBritish: () => speakcombs3("en-GB"),
                            onPressedAmerican: () => speakcombs3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Your hair could do with a comb!",
                            kurdishText: "شانەکردنێک باش دەبێت!",
                            onPressedBritish: () => speakcombs4("en-GB"),
                            onPressedAmerican: () => speakcombs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) شانەکردن"),
                          SentencesRow(
                            englishText: "Don't forget to comb your hair!",
                            kurdishText: "بیرت نەچێت قژت شانە بکەیت.",
                            onPressedBritish: () => speakcombs5("en-GB"),
                            onPressedAmerican: () => speakcombs5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She combed her hair and put on some lipstick.",
                            kurdishText: "قژی شانەکرد و ھەندێک سووراوی کرد.",
                            onPressedBritish: () => speakcombs6("en-GB"),
                            onPressedAmerican: () => speakcombs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گەڕانی شتێک بەوریاییەوە بۆ دۆزینەوەی شتێک/کەسێک"),
                          SentencesRow(
                            englishText:
                                "The police combed the area for clues.",
                            kurdishText: "پۆلیس ناوچەکە بۆ سەرەداو گەڕان.",
                            onPressedBritish: () => speakcombs7("en-GB"),
                            onPressedAmerican: () => speakcombs7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They combed through the files for evidence of fraud.",
                            kurdishText:
                                "بە فایلەکاندا گەڕان بۆ بەڵگەی ساختەکاری.",
                            onPressedBritish: () => speakcombs8("en-GB"),
                            onPressedAmerican: () => speakcombs8("en-US"),
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
- Noun: comb (derived forms: combs)
1. A flat device with narrow pointed teeth on one edge; disentangles or arranges hair
 
2. The fleshy red crest on the head of the domestic fowl and other gallinaceous birds (= cockscomb, coxcomb)
 
3. Any of several tools for straightening fibers
 
4. Ciliated comb-like swimming plate of a ctenophore
 
5. The act of drawing a comb through hair (= combing)
"his hair needed a comb";

- Verb: comb (derived forms: combing, combs, combed)
1. Straighten with a comb
"comb your hair"
 
2. Search thoroughly (= ransack)
"They combed the area for the missing child";
 
3. Smoothen and neaten with or as with a comb (= comb out, disentangle)
"comb the wool"; "comb your hair before dinner";
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

  final String _videoId = 'tYY_8_BUy74';
  final double _startSeconds = 7;

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

  final String _videoId = 'dBfkmNnxwBM';
  final double _startSeconds = 3;

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

  final String _videoId = '_5qZ-WVhnRo';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '5ZDHO3PXQQw';
  final double _startSeconds = 17;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2273;

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

  final String _videoId = 'dJzTse9Dsaw';
  final double _startSeconds = 164;

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

  final String _videoId = 'Twb47ynU4lw';
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

// end WORD_WEB