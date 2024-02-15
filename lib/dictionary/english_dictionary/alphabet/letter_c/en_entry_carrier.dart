import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycarrier extends StatelessWidget {
  // blank divider
  EnglishEntrycarrier({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcarrier(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("carrier"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers1(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Delta Air Lines is the third-largest carrier in the US."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers2(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ship served as a carrier, transporting goods across international waters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers3(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In epidemiology, identifying carriers is crucial for controlling the spread of contagious illnesses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers4(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can transfer your existing mobile phone number to a new carrier."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers5(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers6(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers7(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers8(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers9(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers10(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers11(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers12(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarriers13(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "carrier"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæriə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcarrier("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæriər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcarrier("en-US"),
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
کوردی: ھەڵگر، کۆڵکێش، کۆمپانی گوێزانەوە، ناوکۆیی ڕاگوێستن، ڕاگوێزەر (نەخۆشی)، نامەبەر، ـھەڵگر، ـبەر، کەشتی فڕۆکەھەڵگر، (دووچەرخە) پاشتەرک، (ماشێن) باربەست، باربەند، کەل‌وپەل‌ھەڵگر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کۆمپانیای گواستنەوە، بەتایبەتی بە فڕۆکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Delta Air Lines is the third-largest carrier in the US."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھێڵی ئاسمانی دەلتا سێیەم گەورەترینە کۆمپانیای گوێزانەوەیە لە ئەمرکادا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "carrier", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcarriers1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcarriers1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەشتییەک یان ئۆتۆمبێلێکی سەربازی کە کە سەرباز یان کەرەستە دەگوازێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The ship served as a carrier, transporting goods across international waters."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەشتییەکە وەک گوازەرەوەیەک کاری دەکرد بۆ گواستنەوەی کەلوپەل بە ئاوە نێودەوڵەتییەکاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcarriers2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcarriers2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەسێک کە ھەڵگری نەخۆشییەکە و دەیگوازێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In epidemiology, identifying carriers is crucial for controlling the spread of contagious illnesses."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە پەتاناسیدا، دۆزینەوەی ھەڵگرەکە گرنگە بۆ کۆنترۆڵی بڵاوبوونەوەی نەخۆشیی ڕاگوێزەر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcarriers3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcarriers3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمپانیایەک کە خزمەتگوزاری تەلەفۆن و ئینتەرنێت پێشکەش دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You can transfer your existing mobile phone number to a new carrier."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانی ژمارەی ئێستای موبایلەکەت بگوازیتەوە بۆ تۆڕێکی نوێی گەیاندن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcarriers4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcarriers4("en-US"),
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
- Noun: carrier (derived forms: carriers)
1. Someone whose employment involves carrying something (= bearer, toter)
"the bonds were transmitted by carrier";

2. A self-propelled wheeled vehicle designed specifically to carry something
"refrigerated carriers have revolutionized the grocery business"
 
3. A large warship that carries planes and has a long flat deck for takeoffs and landings (= aircraft carrier, flattop [US, informal], attack aircraft carrier)
 
4. An inactive substance that is a vehicle for a radioactive tracer of the same substance and that assists in its recovery after some chemical reaction
 
5. A person or firm in the business of transporting people or goods or messages (= common carrier)
 
6. A radio wave that can be modulated in order to transmit a signal (= carrier wave)
 
7. A man who delivers the mail (= mailman [N. Amer], postman, mail carrier [N. Amer], letter carrier [N. Amer], postie [Brit, informal])
 
8. A boy who delivers newspapers (= newsboy)
 
9. A rack attached to a vehicle; for carrying luggage, skis or the like
 
10. (genetics) an organism that possesses a recessive gene whose effect is masked by a dominant allele; the associated trait is not apparent but can be passed on to offspring
 
11. (medicine) a person (or animal) who has some pathogen to which he is immune but who can pass it on to others (= immune carrier)
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
    videoId: 'S3zbzpVBZDc',
    startSeconds: 28,
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
    videoId: '01o0A4yGkrg',
    startSeconds: 115,
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
    videoId: 'm53SzTBISGg',
    startSeconds: 410,
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
    videoId: 'lhK7hMBli4s',
    startSeconds: 680,
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
    videoId: 'W38uNEq5wjs',
    startSeconds: 134,
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
    videoId: '_Ih7djq6xmo',
    startSeconds: 417,
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
    videoId: 'gjIv_u4zmck',
    startSeconds: 299,
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
    videoId: 'olnVwQzQZRs',
    startSeconds: 307,
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
