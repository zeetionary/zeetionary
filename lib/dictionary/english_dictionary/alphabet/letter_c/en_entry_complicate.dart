import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomplicate extends StatelessWidget {
// blank divider
  EnglishEntrycomplicate({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomplicate(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("complicate"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates1(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I do not wish to complicate the task more than is necessary."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates2(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The issue is complicated by the fact that a vital document is missing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates3(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These events will greatly complicate the situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates4(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates5(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates6(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates7(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates8(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates9(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates10(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates11(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates12(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplicates13(String languageCode) async {
    // DOPSUM: CHANGE speakcomplicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplicates1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "complicate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmplɪkeɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomplicate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːmplɪkeɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomplicate("en-US"),
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
// کوردی: 
// """),
                          const DefinitionKurdish(
                              text: "١. (کردار) ئاڵۆزکردنی شت و سەختکردنی بۆ تێگەشتن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I do not wish to complicate the task more than is necessary."),
                                    ExampleSentenceKurdish(
                                        text: "نامەوێت ئەرکەکە زیاتر لەوەی پێویستە ئاڵۆز بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "complicate", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplicates1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplicates1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The issue is complicated by the fact that a vital document is missing."),
                          ExampleSentenceKurdish(
                          text: "بابەتەکە ئاڵۆز بووە بەوەی کە بەڵگەنامەیەکی گرنگ ونە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcomplicates2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcomplicates2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "These events will greatly complicate the situation."),
                          ExampleSentenceKurdish(
                          text: "ئەم ڕووداوانە بە ئاستێکی زۆر دۆخەکە ئاڵۆز دەکەن."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcomplicates3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcomplicates3("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Verb: complicate (Derived forms: complicating, complicates, complicated)
1. Make more complicated (= perplex)
"There was a new development that complicated the matter";
 
2. Make more complex, intricate, or rich (= refine, rarify [rare], elaborate, rarefy)
"complicate a design or pattern";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/W2hRTTTpmr8?t=',
    startSeconds: 319,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/1jm3K9cm3vI?t=',
    startSeconds: 1284,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/jxNM4DGBRMU?t=',
    startSeconds: 663,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/l9HfiYOmsPk?t=',
    startSeconds: 389,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/eFReTj2KsM0?t=',
    startSeconds: 527,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/YJQSuUZdcV4?t=',
    startSeconds: 3226,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/fsjvwQclGLo?t=',
    startSeconds: 277,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB