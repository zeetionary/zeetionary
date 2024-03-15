import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconstriction extends StatelessWidget {
// blank divider
  EnglishEntryconstriction({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconstriction(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("constriction"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions1(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He felt a constriction in his chest."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions2(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "High blood pressure can be caused by many things, but one of the major causes is blood vessel constriction."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions3(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The constrictions of prison life were inhuman."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions4(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you are talking about the workplace there are a lot of constrictions and limitations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions5(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions6(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions7(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions8(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions9(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions10(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions11(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions12(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconstrictions13(String languageCode) async {
    // DOPSUM: CHANGE speakconstriction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconstrictions1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "constriction"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈstrɪkʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconstriction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈstrɪkʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconstriction("en-US"),
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
کوردی: بەرتەنگی، سنوورداری، بەرتەسکی، بەند،	کرژبوون، کۆبوونەوە، تەنگ‌بوونەوە، تەنگاندن، هەڵقرچان، قرچ‌هەڵاتن، پێچرانەوە، وێکهاتن، چوونەیەک
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) توندبوون یان تەسکبوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He felt a constriction in his chest."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەستی بە توندبوون لە سنگیدا کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "constriction", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconstrictions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconstrictions1("en-US"),
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
                                            "High blood pressure can be caused by many things, but one of the major causes is blood vessel constriction."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرزی فشاری خوێن دەکرێت بەهۆی زۆر شتەوە بێت، بەڵام یەکێک لە هۆکارە سەرەکییەکان تەسکبوونەوەی دەمارەکانی خوێن بێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconstrictions2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconstrictions2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) سنووردارکردنی ژیانی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The constrictions of prison life were inhuman."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سنووردارکردنی ژیانی زیندان نامرۆڤانە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconstrictions3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconstrictions3("en-US"),
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
                                            "If you are talking about the workplace there are a lot of constrictions and limitations."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر باسی شوێنی کار دەکەیت ئەوا ژمارەیەکی زۆر بەربەست و سنوورداری هەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconstrictions4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconstrictions4("en-US"),
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
- Noun: constriction (Derived forms: constrictions)
1. A narrowing that reduces the flow through a channel (= bottleneck, chokepoint)
 
2. Tight or narrow compression (= coarctation)
 
3. A tight feeling in some part of the body (= tightness)
"he felt a constriction in her chest"; "emotion caused a constriction of his throat";
 
4. The action or process of compressing
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
    videoId: 'https://youtu.be/taiUjgCTX-Q?t=',
    startSeconds: 2869,
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
    videoId: 'https://youtu.be/yyv2gOHMGEc?t=',
    startSeconds: 843,
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
    videoId: 'https://youtu.be/tURHTuKHBZs?t=',
    startSeconds: 631,
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
    videoId: 'https://youtu.be/hFL6qRIJZ_Y?t=',
    startSeconds: 6326,
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
    videoId: 'https://youtu.be/Xmbw_F5p9Fs?t=',
    startSeconds: 551,
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
    videoId: 'https://youtu.be/h8mAnvg2NC4?t=',
    startSeconds: 38,
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
    videoId: 'https://youtu.be/T8jcNAPZ5is?t=',
    startSeconds: 335,
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