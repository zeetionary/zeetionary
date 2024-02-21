import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydopsum1 extends StatelessWidget {
  // blank divider
  EnglishEntrydopsum1({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdopsum1(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dopsum1"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s1(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "speakdopsum1s111111111111111111111111111111111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s2(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s3(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s4(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s5(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s6(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s7(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s8(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s9(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s10(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s11(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s12(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdopsum1s13(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdopsum1s1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "dopsum1"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: haʊʊʊʊʊʊʊ4"),
                            CustomIconButtonBritish(
                              onPressed: () => speakdopsum1("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: haʊʊʊʊʊʊʊ4"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakdopsum1("en-US"),
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
کوردی: 
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) پێنناسە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "speakdopsum1s111111111111111111111111111111111"),
                                    ExampleSentenceKurdish(
                                        text: "رستە_رستە_رستە_رستە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "dopsum1", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakdopsum1s1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakdopsum1s1("en-US"),
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
                        // YoutubeEmbeddedone(),
                        // YoutubeEmbeddedtwo(),
                        // YoutubeEmbeddedthree(),
                        // YoutubeEmbeddedfour(),
                        // YoutubeEmbeddedfive(),
                        // YoutubeEmbeddedsix(),
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), // speakdopsum1s111111111111111111111111111111111
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

speakdopsum1 EnglishEntrydopsum1
WORD_WEB dopsum1 haʊʊʊʊʊʊʊ4
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider

// tt tt

//   Future<void> speakbands14(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1400"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands15(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1500"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands16(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1600"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands17(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1700"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands18(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1800"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands19(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands1900"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands20(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2000"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands21(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2100"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands22(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2200"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands23(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2300"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands24(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2400"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands25(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2500"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands26(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2600"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands27(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2700"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands28(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2800"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands29(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands2900"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands30(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3000"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands31(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3100"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands32(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3200"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands33(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3300"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands34(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3400"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands35(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3500"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands36(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3600"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands37(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3700"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands38(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3800"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands39(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands3900"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands40(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4000"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands41(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4100"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands42(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4200"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands43(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4300"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands44(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4400"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands45(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4500"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands46(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4600"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands47(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4700"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands48(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4800"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands49(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands4900"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakbands50(String languageCode) async {
//     // DOPSUM: CHANGE speakband
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakbands5000"); // DOPSUM: CHANGE TEXT
//   }

// v v

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VID',
    startSeconds: 222222222222222,
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

// m m

// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider

class YoutubeEmbeddedmulti extends StatelessWidget {
  YoutubeEmbeddedmulti({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllertwo = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerthree = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerfour = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  final _controllerfive = YoutubePlayerController.fromVideoId(
    videoId: 'GfaypJIDolk',
    startSeconds: 200,
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
        child: Column(
          children: [
            YouTubeContainerDesignNew(controller: _controller),
            YouTubeContainerDesignNew(controller: _controllertwo),
            YouTubeContainerDesignNew(controller: _controllerthree),
            YouTubeContainerDesignNew(controller: _controllerfour),
            YouTubeContainerDesignNew(controller: _controllerfive),
          ],
        ),
      ),
    );
  }
}
