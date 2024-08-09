import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomprehensive extends StatelessWidget {
// blank divider
  EnglishEntrycomprehensive({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomprehensive(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("comprehensive");
  }

  Future<void> speakcomprehensives1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The list is fairly comprehensive.");
  }

  Future<void> speakcomprehensives2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We offer you a comprehensive training in all aspects of the business.");
  }

  Future<void> speakcomprehensives3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has written a fully comprehensive guide to Rome.");
  }

  Future<void> speakcomprehensives4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is the school selective or comprehensive?");
  }

  Future<void> speakcomprehensives5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The cricket team finished the season with a comprehensive victory over their rivals.");
  }

  Future<void> speakcomprehensives6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They went to the local comprehensive.");
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
                            EntryTitle(word: "comprehensive"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒmprɪˈhensɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomprehensive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /ˌkɑːmprɪˈhensɪv/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomprehensive("en-US"),
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
کوردی: بەرین، بەربڵاو، گشت‌لایەنە، ھەمووگر، گشتگیر، ھەمەلایەنە، سەراپاگیر، بەرفراوان، خوێندنگای ئامادەی گشتگیر، خوێندنگای کۆتایی گشتگیر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) گشتگیر؛ لەخۆگرتنی ھەموو یان بە نزیکەیی ھەموو وردەکاری، زانیاری، ھتد"),
                          SentencesRow(
                            englishText: "The list is fairly comprehensive.",
                            kurdishText:
                                "لیستەکە تاڕادەیەک گشتگیرە.", // comprehensive",
                            onPressedBritish: () =>
                                speakcomprehensives1("en-GB"),
                            onPressedAmerican: () =>
                                speakcomprehensives1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We offer you a comprehensive training in all aspects of the business.",
                            kurdishText:
                                "ڕاھێنانێکی بەرفراوانت پێدەدەین لە ھەموو لایەنەکانی بازرگانییەکەوە.",
                            onPressedBritish: () =>
                                speakcomprehensives2("en-GB"),
                            onPressedAmerican: () =>
                                speakcomprehensives2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He has written a fully comprehensive guide to Rome.",
                            kurdishText:
                                "ڕێبەرییەکی تاڕادەیەک گشتگیری بۆ ڕۆما نووسیوە.",
                            onPressedBritish: () =>
                                speakcomprehensives3("en-GB"),
                            onPressedAmerican: () =>
                                speakcomprehensives3("en-US"),
                          ),
                          // const DividerDefinition(),
                          // const DefinitionKurdish(
                          //     text:
                          //         "٢. (ھاوەڵناو) خوێندنگایەک یان سیستەمێکی خوێندن کە دیزاین کراوە بۆ منداڵانی ھەموو توانا جیاوازەکان لە سەروو تەمەنی ١١ساڵییەوە"),
                          // Row(
                          //   children: [
                          //     const Expanded(
                          //       child: Column(
                          //         children: [
                          //           ExampleSentenceEnglish(
                          //               text:
                          //                   "Is the school selective or comprehensive?"),
                          //           ExampleSentenceKurdish(
                          //               text: "خوێندنگاکە."),
                          //         ],
                          //       ),
                          //     ),
                          //     const CustomSizedBoxForTTS(),
                          //     Column(
                          //       children: [
                          //         CustomIconButtonBritish(
                          //           onPressed: () => speakcomprehensives4("en-GB"),
                          //         ),
                          //         CustomIconButtonAmerican(
                          //           onPressed: () => speakcomprehensives4("en-US"),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بردنەوە یان شکست بە جیاوازییەکی گەورە"),
                          SentencesRow(
                            englishText:
                                "The cricket team finished the season with a comprehensive victory over their rivals.",
                            kurdishText:
                                "تیمە کریکتەکە وەرزەکەی تەواوکرد بە سەرکەوتنێکی گەورە بەسەر ڕکابەرەکانیدا.",
                            onPressedBritish: () =>
                                speakcomprehensives5("en-GB"),
                            onPressedAmerican: () =>
                                speakcomprehensives5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) قوتابخانەیەک بۆ منداڵانی ھەموو توانا جیاوازەکان کە لەلایەن حکومەتەوە خەرجی دەکرێت"),
                          SentencesRow(
                            englishText:
                                "They went to the local comprehensive.",
                            kurdishText: "چوونە قوتابخانەی گشتگیری خۆجێیی.",
                            onPressedBritish: () =>
                                speakcomprehensives6("en-GB"),
                            onPressedAmerican: () =>
                                speakcomprehensives6("en-US"),
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
- Adjective: comprehensive 
1. Including all or everything
"comprehensive coverage"; "a comprehensive history of the revolution"; "a comprehensive survey"; "a comprehensive education"
 
2. Broad in scope
"a comprehensive survey of world affairs"

- Noun: comprehensive (derived forms: comprehensives)
1. An intensive examination testing a student's proficiency in some special field of knowledge (= comprehensive examination, comp)
"she took her comprehensives in English literature";
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

  final String _videoId = 'DfSnHyIryeY';
  final double _startSeconds = 466;

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

  final String _videoId = 'S4qvPouh1gE';
  final double _startSeconds = 3529;

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

  final String _videoId = 'hRSGxw2AQnk';
  final double _startSeconds = 264;

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

  final String _videoId = 'mCtSiImXpRo';
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

  final String _videoId = 'H1KP4ztKK0A';
  final double _startSeconds = 1151;

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

  final String _videoId = '_BbaiH17hOU';
  final double _startSeconds = 98;

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

  final String _videoId = 'kVOTPAxrrP4';
  final double _startSeconds = 717;

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