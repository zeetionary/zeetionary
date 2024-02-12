import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychancellor extends StatelessWidget {
  // blank divider
  EnglishEntrychancellor({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchancellor(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chancellor"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors1(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The talks were headed by Germany’s Chancellor Merkel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors2(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("MPs waited for the chancellor's announcement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors3(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The prime minister was shown around the university by the chancellor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors4(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors5(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors6(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors7(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors8(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors9(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors10(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors11(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors12(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchancellors13(String languageCode) async {
    // DOPSUM: CHANGE speakchancellor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchancellors1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "chancellor"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃɑːnsələ(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchancellor("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃænsələr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchancellor("en-US"),
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
                          const DefinitionKurdish(text: """
١. (ناو) سەرۆکی حکومەت لە ئەڵمانیا و نەمسا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The talks were headed by Germany’s Chancellor Merkel."),
                                    ExampleSentenceKurdish(
                                        text: "گفتوگۆکان لەلایەن مێرکڵی ڕاوێژکاری ئەڵمانیاوە سەرکردایەتی دەکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "chancellor", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchancellors1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchancellors1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) وەزیری دارایی بەریتانیا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "MPs waited for the chancellor's announcement."),
                          ExampleSentenceKurdish(
                          text: "ئەندامانی پەرلەمان چاوەڕوانی گەشتنی وەزیری دارایی بوون."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakchancellors2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakchancellors2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ناو) سەرۆکی زانکۆیەک لە بەریتانیا و و هەندێک شوێنی ئەمریکا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The prime minister was shown around the university by the chancellor."),
                          ExampleSentenceKurdish(
                          text: "سەرۆک وەزیران لەلایەن سەرۆکەکەوە زانکۆکەی پیشاندرا."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakchancellors3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakchancellors3("en-US"),
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
- Noun: chancellor (Derived forms: chancellors, Chancellors)
1. The person who is head of government (in several countries) (= premier, prime minister)
 
2. [Brit] The honorary or titular head of a university

- Noun: Chancellor
1. The British cabinet minister responsible for finance (= Chancellor of the Exchequer)
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
    videoId: 'https://youtu.be/rtu7UcC_I_g?t=',
    startSeconds: 44,
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
    videoId: 'https://youtu.be/-vqjbLedCmQ?t=',
    startSeconds: 365,
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
    videoId: 'https://youtu.be/FD9WM7MR3Yc',
    // startSeconds: 222222222222222,
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
    videoId: 'https://youtu.be/ewLpXw6uN28?t=',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/-fUDIucr2eo',
    // startSeconds: 222222222222222,
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
    videoId: 'https://youtu.be/b3Ysh6IQ6dc?t=',
    startSeconds: 289,
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
    videoId: 'https://youtu.be/LjieOlWXwTw?t=',
    startSeconds: 556,
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
    videoId: 'https://youtu.be/iMiQeS1XywA?t=',
    startSeconds: 153,
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