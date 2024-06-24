import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycongress extends StatelessWidget {
// blank divider
  EnglishEntrycongress({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcongress(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("congress");
  }

  Future<void> speakcongresss1(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The Republican congress applauded this news enthusiastically.");
  }

  Future<void> speakcongresss2(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The general secretary opened the congress on global warming.");
  }

  Future<void> speakcongresss3(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We met again at the annual congress.");
  }

  Future<void> speakcongresss4(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Congress will vote on the proposals tomorrow.");
  }

  Future<void> speakcongresss5(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Congress annually enacts legislation to fund NASA.");
  }

  Future<void> speakcongresss6(String languageCode) async {
    // DOPSUM: CHANGE speakcongress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They will have to go to Congress to get the money.");
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
                            EntryTitle(word: "congress"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒŋɡres/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcongress("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːŋɡrəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcongress("en-US"),
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
کوردی: کۆنگرێس، کۆنگرە، کۆمان، کۆبوونەوە، کۆمبین، جڤین، کۆڕ، دانیشتن،	ئەنجومەن (قانوون‌دانان)،	دیدار، یەکتربینین، سەردان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کۆبوونەوەیەکی فەرمی گەورە، یان زنجیرەیەک لە کۆبوونەوە کە تێیدا ژمارەیەک نوێنەر لە گرووپی جیاوازەوە بیرۆکە، بڕیار، ھتد باس دەکەن"),
                          SentencesRow(
                            englishText:
                                "The Republican congress applauded this news enthusiastically.",
                            kurdishText:
                                "کۆبوونەوەی کۆمارییەکان بە جۆش‌وخرۆشییەوە پیرۆزباییان لە ھەواڵەکە کرد.", // congress",
                            onPressedBritish: () => speakcongresss1("en-GB"),
                            onPressedAmerican: () => speakcongresss1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The general secretary opened the congress on global warming.",
                            kurdishText:
                                "سکرتێری گشتی کۆنگرەی فەرمی لەسەر گەرمبوونی جیھانی دەستپێکرد.",
                            onPressedBritish: () => speakcongresss2("en-GB"),
                            onPressedAmerican: () => speakcongresss2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We met again at the annual congress.",
                            kurdishText: "یەکمان دییەوە لە کۆبوونەوە ساڵانەکە.",
                            onPressedBritish: () => speakcongresss3("en-GB"),
                            onPressedAmerican: () => speakcongresss3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) لە ئەمریکا و ژمارەیەک وڵاتی دیکە ژمارەیەک کەسن کە کاری یاسادانان دەکەن"),
                          SentencesRow(
                            englishText:
                                "Congress will vote on the proposals tomorrow.",
                            kurdishText:
                                "کۆنگرێس سبەی دەنگ لەسەر پێشنیارەکە دەدات.",
                            onPressedBritish: () => speakcongresss4("en-GB"),
                            onPressedAmerican: () => speakcongresss4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Congress annually enacts legislation to fund NASA.",
                            kurdishText:
                                "کۆنگرێس ساڵانە یاسا دەردەکات بۆ خەرجی کردنی ناسا.",
                            onPressedBritish: () => speakcongresss5("en-GB"),
                            onPressedAmerican: () => speakcongresss5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They will have to go to Congress to get the money.",
                            kurdishText:
                                "دەبێت پەنا بۆ کۆنگرێس ببەن بۆ وەرگرتنی پارەکە.",
                            onPressedBritish: () => speakcongresss6("en-GB"),
                            onPressedAmerican: () => speakcongresss6("en-US"),
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
- Noun: congress (derived forms: congresses)
1. A meeting of elected or appointed representatives
 
2. A national legislative assembly
 
3. The social act of assembling for some common purpose (= meeting, coming together)
"the lovers met discreetly for the purposes of sexual congress";

- Noun: Congress (derived forms: Congresses)
1. The legislature of the United States government (= United States Congress, U.S. Congress, US Congress)
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

  final String _videoId = 'c_sHTEh6HIE';
  final double _startSeconds = 69;

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

  final String _videoId = 'kwUx-kc2sd0';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'b6zf5VkuiEQ';
  final double _startSeconds = 126;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 618;

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

  final String _videoId = 'qQ01eLt_bxo';
  final double _startSeconds = 262;

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

  final String _videoId = 'VNZ0so0LCoM';
  final double _startSeconds = 45;

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

  final String _videoId = '-UrdExQW0cs';
  final double _startSeconds = 62;

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