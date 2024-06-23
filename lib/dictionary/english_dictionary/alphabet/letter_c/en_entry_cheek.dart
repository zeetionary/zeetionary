import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycheek extends StatelessWidget {
  // blank divider
  EnglishEntrycheek({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcheek(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cheek");
  }

  Future<void> speakcheeks1(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He kissed her on both cheeks.");
  }

  Future<void> speakcheeks2(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He rested his cheek on her shoulder.");
  }

  Future<void> speakcheeks3(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her cheeks were wet with tears.");
  }

  Future<void> speakcheeks4(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The chubby-cheeked baby's smile melted everyone's heart.");
  }

  Future<void> speakcheeks5(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's an awful cheek, the way he keeps asking you to lend him money.");
  }

  Future<void> speakcheeks6(String languageCode) async {
    // DOPSUM: CHANGE speakcheek
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's always getting into trouble for cheeking his teachers.");
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
                            EntryTitle(word: "cheek"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃiːk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcheek("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃiːk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcheek("en-US"),
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
کوردی: کوڵمە، گۆنا، گووپ، ڕوومەت،	سمت، پاشڵ،	ڕووشڕی، بێ‌حەیایی، ڕوو 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) گۆنای ڕووخسار"),
                          SentencesRow(
                            englishText: "He kissed her on both cheeks.",
                            kurdishText: "ماچی ھەردوو گۆنای کرد.", // cheek",
                            onPressedBritish: () => speakcheeks1("en-GB"),
                            onPressedAmerican: () => speakcheeks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He rested his cheek on her shoulder.",
                            kurdishText: "گۆنای خستە سەر شانی.",
                            onPressedBritish: () => speakcheeks2("en-GB"),
                            onPressedAmerican: () => speakcheeks2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Her cheeks were wet with tears.",
                            kurdishText: "گۆنایەکانی بە فرمێسک تەڕبوو بوون.",
                            onPressedBritish: () => speakcheeks3("en-GB"),
                            onPressedAmerican: () => speakcheeks3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ھەبوونی ئەو جۆرە گۆنایەی باسکراوە"),
                          SentencesRow(
                            englishText:
                                "The chubby-cheeked baby's smile melted everyone's heart.",
                            kurdishText:
                                "پێکەنینی منداڵە گۆنا خڕەکە دڵی ھەموانی تواندەوە.",
                            onPressedBritish: () => speakcheeks4("en-GB"),
                            onPressedAmerican: () => speakcheeks4("en-US"),
                          ),
                          // skipped_meaning
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ڕەفتار یان قسەکردن کە خەڵکی بە بێزارکەر یان بێ‌ڕێزانەی دادەنێن"),
                          SentencesRow(
                            englishText:
                                "It's an awful cheek, the way he keeps asking you to lend him money.",
                            kurdishText:
                                "بێ‌شەرمییەکی ناشرینە کە بەو شێوەیە بەردەوامە لە داواکردن لێت بۆ قەرز.",
                            onPressedBritish: () => speakcheeks5("en-GB"),
                            onPressedAmerican: () => speakcheeks5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) قسەکردن لەگەڵ کەسێک بە بێ‌شەرمییەوە"),
                          SentencesRow(
                            englishText:
                                "He's always getting into trouble for cheeking his teachers.",
                            kurdishText:
                                "ھەمیشە دەکەوێتە کێشەوە بۆ بێ‌ڕێزی کردن بە مامۆستاکانی.",
                            onPressedBritish: () => speakcheeks6("en-GB"),
                            onPressedAmerican: () => speakcheeks6("en-US"),
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: cheek (derived forms: cheeks)
1. Either side of the face below the eyes
 
2. An impudent statement (= impudence, impertinence, sauce [Brit, informal])
 
3. Either of the two large fleshy masses of muscular tissue that form the human rump (= buttock)
 
4. Impudent aggressiveness (= boldness, nerve, brass, face, brass neck [Brit, informal])
"he had the cheek to question my honesty";

- Verb: cheek (derived forms: cheeked, cheeking, cheeks)
1. Speak impudently to
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

  final String _videoId = 't3QcEbv1Ge0';
  final double _startSeconds = 8;

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

  final String _videoId = 'Bc9riK-ezAs';
  final double _startSeconds = 35;

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

  final String _videoId = 'fHIW5UDT1n8';
  final double _startSeconds = 101;

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

  final String _videoId = 'JkZXTo75Q6I';
  final double _startSeconds = 237;

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

  final String _videoId = 'UvlfnzPLYVU';
  final double _startSeconds = 41;

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

  final String _videoId = 'v1PxVyPmCik';
  final double _startSeconds = 4;

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

  final String _videoId = 'EZ7wcBT5LQI';
  final double _startSeconds = 51;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'TcmptycT5ak';
  final double _startSeconds = 0;

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
