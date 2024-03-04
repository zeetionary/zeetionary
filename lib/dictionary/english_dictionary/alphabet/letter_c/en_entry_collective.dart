import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycollective extends StatelessWidget {
  // blank divider
  EnglishEntrycollective({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollective(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("collective"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives1(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "MPs heaved a collective sigh of relief when the news was announced last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives2(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The austerities of wartime Europe were still fresh in the collective memory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives3(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There has to be a balance between individual choice and collective responsibility."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives4(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The collective name for mast, boom and sails on a boat is the ‘rig’."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives5(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives6(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives7(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives8(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives9(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives10(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives11(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives12(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcollectives13(String languageCode) async {
    // DOPSUM: CHANGE speakcollective
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcollectives1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "collective"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlektɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollective("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlektɪv/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollective("en-US"),
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
کوردی: کۆمەڵی، بەکۆمەڵ، بەگەل، کۆیی، هاوبەش، پێک(ە)وەیی، دەستەیی، جەماوەری، دابەش‌کراو، گشتی، گەلەمپەری، تێکڕایی،	(ئاماژە بە تێکڕای ئەندامانی) گروپ، کۆمەڵ، دەستە، چین،	زبارە، هەرەوەز، (ڕێزمان) ناوی کۆ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) پەیوەندیدار بە هەموو ئەندامانی گرووپێک؛ کردنی شتێک لەلایەن هەموو ئەندامانی گرووپێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "MPs heaved a collective sigh of relief when the news was announced last night."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەندامانی پەرلەمان هەناسەیەکی بەکۆمەڵی ئارامکەرەوەیان هەڵکێشا کە هەواڵەکە دوێنێ شەو ڕاگەیەندرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "collective", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollectives1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollectives1("en-US"),
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
                                            "The austerities of wartime Europe were still fresh in the collective memory."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دۆخی سەختی ماوەی جەنگ لە ئەورووپا هێشتا تازە بوو لە یادەوەری هەمواندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollectives2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollectives2("en-US"),
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
                                            "There has to be a balance between individual choice and collective responsibility."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەبێت هاوسەنگییەک هەبێت لە نێوان بڕیاری تاکەکەسی و بەرپرسیاریەتیی گشتگیر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcollectives3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcollectives3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerDefinition(),
                          // const DefinitionKurdish(text: "٢. (ھاوەڵناو) بۆ ئاماژەکردن بە تەواوی ئەندامانی گرووپێک"),
                          // Row(
                          // children: [
                          // const Expanded(
                          // child: Column(
                          // children: [
                          // ExampleSentenceEnglish(
                          // text:
                          // "The collective name for mast, boom and sails on a boat is the ‘rig’."),
                          // ExampleSentenceKurdish(
                          // text: "رستە_رستە_رستە_رستە."),
                          // ],
                          // ),
                          // ),
                          // const CustomSizedBoxForTTS(),
                          // Column(
                          // children: [
                          // CustomIconButtonBritish(
                          // onPressed: () => speakcollectives4("en-GB"),
                          // ),
                          // CustomIconButtonAmerican(
                          // onPressed: () => speakcollectives4("en-US"),
                          // ),
                          // ],
                          // ),
                          // ],
                          // ),
                          // skipped_meaning
                          // const DividerDefinition(),
                          // const DefinitionKurdish(
                          //     text: "٢. (ناو) کۆمەڵە کەسێک کە خاوەنداری بازرگانییەک یان کێڵگەیەک دەکەن و بەڕێوەی دەبەن"),
                          // Row(
                          //   children: [
                          //     const Expanded(
                          //       child: Column(
                          //         children: [
                          //           ExampleSentenceEnglish(
                          //               text:
                          //                   "speakcollectives500"),
                          //           ExampleSentenceKurdish(
                          //               text: "رستە_رستە_رستە_رستە."),
                          //         ],
                          //       ),
                          //     ),
                          //     const CustomSizedBoxForTTS(),
                          //     Column(
                          //       children: [
                          //         CustomIconButtonBritish(
                          //           onPressed: () => speakcollectives5("en-GB"),
                          //         ),
                          //         CustomIconButtonAmerican(
                          //           onPressed: () => speakcollectives5("en-US"),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
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
- Adjective: collective 
1. Done by or characteristic of individuals acting together (= corporate)
"the collective mind";
 
2. Set up on the principle of collectivism or ownership and production by the workers involved usually under the supervision of a government
"collective farms"
 
3. Forming a whole or aggregate

- Noun: collective (Derived forms: collectives)
1. Members of a cooperative enterprise
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
    videoId: 'https://youtu.be/qkzghZe-utc?t=',
    startSeconds: 34,
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
    videoId: 'https://youtu.be/bwQR4WnTYdQ?t=',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/n9XDIydPXsg?t=',
    startSeconds: 488,
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
    videoId: 'https://youtu.be/qb1jjz7TMFk?t=',
    startSeconds: 416,
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
    videoId: 'https://youtu.be/RR-kHw7kyXA?t=',
    startSeconds: 18,
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
    videoId: 'https://youtu.be/PIiqu_c-XhU?t=',
    startSeconds: 56,
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
    videoId: 'https://youtu.be/3Mn9QMTmRDM?t=',
    startSeconds: 2982,
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