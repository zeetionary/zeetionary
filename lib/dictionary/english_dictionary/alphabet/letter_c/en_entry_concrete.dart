import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconcrete extends StatelessWidget {
// blank divider
  EnglishEntryconcrete({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconcrete(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("concrete"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes1(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bomb shelter has concrete walls that are three metres thick."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes2(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't walk on the concrete until it has set."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes3(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They think she killed her husband, but they have no concrete evidence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes4(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The teacher used concrete objects to teach the children about shapes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes5(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The garden had been concreted over."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes6(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes7(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes8(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes9(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes10(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes11(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes12(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcretes13(String languageCode) async {
    // DOPSUM: CHANGE speakconcrete
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcretes1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "concrete"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒŋkriːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconcrete("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnkriːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconcrete("en-US"),
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
کوردی: دروست‌کراو لە کۆنکرێت یان شفتە و بێتۆن،	بابەتی، بەردەس‌کەوتوو، ھەست‌پێکراو، (بەرھەست)، ڕاست(ەقینە)، ناخەیاڵی، نائابستڕاکت، دەس‌لێدراو، مادی، ماکی، مەتریاڵی، دیار، تایبەتی، پۆزیتیڤ، بەرجەستە، بەرچاو،	ڕەق، شفتە، شەفتە، بێتۆن، کۆنکرێت
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) مادەی بیناسازی کە درووستکراوە لە تێکەڵەی چیمەنتۆ، خۆڵ، زیخی ورد، و ئاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Don't walk on the concrete until it has set."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەسەر کۆنکرێتەکە ڕێ مەکە تاوەکو وشک دەبێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcretes2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcretes2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) درووستکراو لە کۆنکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The bomb shelter has concrete walls that are three metres thick."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پەناگە بۆمبەکە دیواری کۆنکرێتی ھەیە کە سێ مەتر پانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "concrete", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcretes1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcretes1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) پشتبەستوو بە ڕاستی، نەک شک و گومان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They think she killed her husband, but they have no concrete evidence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێیان وایە بکوژەکە ھاوژینەکەیەتی، بەڵام ھیچ بەڵگەیەکی ڕاستییان نییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcretes3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcretes3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) شتێک کە دەتوانیت ھەستی پێ بکەیت و بیبینیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The teacher used concrete objects to teach the children about shapes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مامۆستاکە شتی بەرجەستەی بەکاردەھێنا بۆ فێرکردنی منداڵەکان سەبارەت بە شێوەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcretes4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcretes4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) داپۆشین بە کۆنکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The garden had been concreted over."),
                                    ExampleSentenceKurdish(
                                        text: "باخچەکە کۆنکرێت کرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcretes5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcretes5("en-US"),
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
- Noun: concrete (derived forms: concretes)
1. A strong hard building material composed of sand and gravel and cement and water

- Adjective: concrete 
1. Capable of being perceived by the senses; not abstract or imaginary
"concrete objects such as trees"
 
2. Formed by the coalescence of particles

- Verb: concrete (derived forms: concreted, concretes, concreting)
1. Cover with cement
"concrete the walls"
 
2. Form into a solid mass; coalesce
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
    videoId: 'rWVAzS5duAs',
    startSeconds: 268,
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
    videoId: 'Gxni8PnOTtY',
    startSeconds: 98,
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
    videoId: 'gMbUeO4iGhY',
    startSeconds: 179,
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
    videoId: 'LDyzABbHcEY',
    startSeconds: 29,
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
    videoId: 'CAkpwSyWGSo',
    startSeconds: 77,
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
    videoId: '_MsOXrprYXs',
    startSeconds: 23,
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
    videoId: '0HjgoyoVP7A',
    startSeconds: 25,
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