import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycolouring extends StatelessWidget {
  // blank divider
  EnglishEntrycolouring({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcolouring(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("colouring"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings1(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This contains no artificial colouring or flavouring."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings2(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their colouring is so totally different that you would never think they were sisters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings3(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She realized the coins were fake when the gold colouring began to rub off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings4(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings5(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings6(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings7(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings8(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings9(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings10(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings11(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings12(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolourings13(String languageCode) async {
    // DOPSUM: CHANGE speakcolouring
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolourings1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "colouring"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌlərɪŋ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcolouring("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌlərɪŋ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcolouring("en-US"),
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
کوردی: ڕەنگ،	ڕەنگ‌کردن، ڕەنگ‌لێدان، ڕەنگاندن، ڕەنگ‌کاری،	لێکدانی ڕەنگەکان،	ڕەنگ‌وڕوو، ڕوخسار، شێوە،	مەتریاڵی ڕەنگی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) مادەیەک کە بەکاردێت بۆ پێدانی ڕەنگێک بە خواردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This contains no artificial colouring or flavouring."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە هیچ ڕەنگ یان تامێکی دەستکردی تێدا نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "colouring", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolourings1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolourings1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ڕەنگی پێست، چاو، و قژی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Their colouring is so totally different that you would never think they were sisters."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕەنگیان ئەوەندە زۆر جیاواز بوو کە هەرگیز نەتدەزانی خوشکن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolourings2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolourings2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو ڕەنگانەی لە شتێکدا بوونیان هەیە، بەتایبەت لە ڕووەک یان ئاژەڵێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She realized the coins were fake when the gold colouring began to rub off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانی کە سکە ئاڵتوونییەکان ساختە بوون کە ڕەنگە ئاڵتوونییەکە لێبووەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolourings3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolourings3("en-US"),
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
- Noun: colouring (Derived forms: colourings)
Usage: Brit, Cdn (US: coloring)
1. A digestible substance used to give colour to food (= coloring [US], food coloring [US], food colouring [Brit, Cdn], food color [US], food colour [Brit, Cdn])
"colouring made from vegetable dyes";

2. A visual attribute of things that results from the light they emit, transmit or reflect (= color [US], colour [Brit, Cdn], coloring [US])
 
3. The act or process of changing the colour of something (= coloring [US])
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
    videoId: 'https://youtu.be/DPZzrlFCD_I?t=',
    startSeconds: 156,
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
    videoId: 'https://youtu.be/pTysrwci0pU?t=',
    startSeconds: 580,
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
    videoId: 'https://youtu.be/a9m3GD0DbPY?t=',
    startSeconds: 644,
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
    videoId: 'https://youtu.be/0ST4_hmop9Y?t=',
    startSeconds: 1124,
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
    videoId: 'https://youtu.be/TRGHIN2PGIA?t=',
    startSeconds: 36,
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
    videoId: 'https://youtu.be/EF-9I38ud4s?t=',
    startSeconds: 450,
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
    videoId: 'https://youtu.be/8GKI2sYe1CI?t=',
    startSeconds: 731,
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