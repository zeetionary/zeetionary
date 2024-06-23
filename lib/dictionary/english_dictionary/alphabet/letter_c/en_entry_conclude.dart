import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconclude extends StatelessWidget {
// blank divider
  EnglishEntryconclude({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconclude(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("conclude");
  }

  Future<void> speakconcludes1(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is too early for us to conclude anything.");
  }

  Future<void> speakconcludes2(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What do you conclude from that?");
  }

  Future<void> speakconcludes3(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The report concluded (that) the cheapest option was to close the laboratory.");
  }

  Future<void> speakconcludes4(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This was how the negotiations finally concluded.");
  }

  Future<void> speakconcludes5(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He concluded by wishing everyone a safe trip home.");
  }

  Future<void> speakconcludes6(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The commission concluded its investigation last month.");
  }

  Future<void> speakconcludes7(String languageCode) async {
    // DOPSUM: CHANGE speakconclude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A trade agreement was concluded between the two countries.");
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
                            EntryTitle(word: "conclude"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈkluːd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconclude("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈkluːd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconclude("en-US"),
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
کوردی: بەکۆتایی گەیاندن، ئاکام وەرگرتن، بە ئاکام گەیشتن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بڕیاردان یان باوەڕکردن بە شتێک لە ئەنجامی ئەوەی بینیوتە یان بیستووتە"),
                          SentencesRow(
                            englishText:
                                "It is too early for us to conclude anything.",
                            kurdishText:
                                "زۆر زووە بۆمان ھیچ گەڵاڵە بکەین.", // conclude",
                            onPressedBritish: () => speakconcludes1("en-GB"),
                            onPressedAmerican: () => speakconcludes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "What do you conclude from that?",
                            kurdishText: "چی تێدەگەیت لەوە؟",
                            onPressedBritish: () => speakconcludes2("en-GB"),
                            onPressedAmerican: () => speakconcludes2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The report concluded (that) the cheapest option was to close the laboratory.",
                            kurdishText:
                                "ڕاپۆرتەکە بەو دەرەنجامە گەشت کە ھەرزانترین ھەڵبژاردە داخستنی تاقیگەکە بوو.",
                            onPressedBritish: () => speakconcludes3("en-GB"),
                            onPressedAmerican: () => speakconcludes3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کۆتایی ھاتن یان کۆتایی پێھێنان"),
                          SentencesRow(
                            englishText:
                                "This was how the negotiations finally concluded.",
                            kurdishText:
                                "ئەمە ئەو شێوەیە بوو کە دانوستانەکان لە کۆتاییدا کۆتاییان پێھات.",
                            onPressedBritish: () => speakconcludes4("en-GB"),
                            onPressedAmerican: () => speakconcludes4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He concluded by wishing everyone a safe trip home.",
                            kurdishText:
                                "بڕییەوە بە ھیواخواستنی گەشتێکی سەلامەت بۆ ماڵەوە بۆ ھەموان.",
                            onPressedBritish: () => speakconcludes5("en-GB"),
                            onPressedAmerican: () => speakconcludes5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The commission concluded its investigation last month.",
                            kurdishText:
                                "کۆمسیۆنەکە مانگی ڕابردوو کۆتایی بە لێکۆڵینەوەکانی ھێنا.",
                            onPressedBritish: () => speakconcludes6("en-GB"),
                            onPressedAmerican: () => speakconcludes6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ڕێکخستن و گەشتن بە ڕێککەوتنێک لەگەڵ کەسێک بە فەرمی"),
                          SentencesRow(
                            englishText:
                                "A trade agreement was concluded between the two countries.",
                            kurdishText:
                                "ڕێککەوتنێکی ئاڵووگۆڕی بازرگانی لە نێوان دوو وڵاتەکە ئەنجامدرا.",
                            onPressedBritish: () => speakconcludes7("en-GB"),
                            onPressedAmerican: () => speakconcludes7("en-US"),
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
- Verb: conclude (derived forms: concludes, concluding, concluded)
1. Decide by reasoning; draw or come to a conclusion (= reason, reason out)
"We concluded that it was cheaper to rent than to buy a house";
 
2. Bring to a close
"The committee concluded the meeting"
 
3. Reach a conclusion after a discussion or deliberation (= resolve)
 
4. Finish in a particular way or with a particular event (= close)
"The concert concluded with a nocturne by Chopin";
 
5. Reach agreement on
"They concluded an economic agreement"; "We concluded a cease-fire"
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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 758;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Vyb-sTrY_Y8';
  final double _startSeconds = 201;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'ZLPSfyUPeiI';
  final double _startSeconds = 137;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'PjiJ1Kuk2tg';
  final double _startSeconds = 480;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 816;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '-VRx0GRo-Ws';
  final double _startSeconds = 147;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'oI_X2cMHNe0';
  final double _startSeconds = 209;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB