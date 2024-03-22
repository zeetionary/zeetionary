import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomprehensive extends StatelessWidget {
// blank divider
  EnglishEntrycomprehensive({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomprehensive(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("comprehensive"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives1(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The list is fairly comprehensive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives2(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We offer you a comprehensive training in all aspects of the business."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives3(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has written a fully comprehensive guide to Rome."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives4(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Is the school selective or comprehensive?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives5(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cricket team finished the season with a comprehensive victory over their rivals."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives6(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They went to the local comprehensive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives7(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives8(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives9(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives10(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives11(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives12(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomprehensives13(String languageCode) async {
    // DOPSUM: CHANGE speakcomprehensive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomprehensives1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "comprehensive"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒmprɪˈhensɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomprehensive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /ˌkɑːmprɪˈhensɪv/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomprehensive("en-US"),
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
کوردی: بەرین، بەربڵاو، گشت‌لایەنە، ھەمووگر، گشتگیر، ھەمەلایەنە، سەراپاگیر، بەرفراوان، خوێندنگای ئامادەی گشتگیر، خوێندنگای کۆتایی گشتگیر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) گشتگیر؛ لەخۆگرتنی ھەموو یان بە نزیکەیی ھەموو وردەکاری، زانیاری، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The list is fairly comprehensive."),
                                    ExampleSentenceKurdish(
                                        text: "لیستەکە تاڕادەیەک گشتگیرە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "comprehensive", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomprehensives1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomprehensives1("en-US"),
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
                                            "We offer you a comprehensive training in all aspects of the business."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕاھێنانێکی بەرفراوانت پێدەدەین لە ھەموو لایەنەکانی بازرگانییەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomprehensives2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomprehensives2("en-US"),
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
                                            "He has written a fully comprehensive guide to Rome."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕێبەرییەکی تاڕادەیەک گشتگیری بۆ ڕۆما نووسیوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomprehensives3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomprehensives3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerDefinition(),
                          // const DefinitionKurdish(
                          //     text:
                          //         "٢. (ھاوەڵناو) خوێندنگایەک یان سیستەمێکی خوێندن کە دیزاین کراوە بۆ منداڵانی ھەموو توانا جیاوازەکان لە سەروو تەمەنی ١١ساڵییەوە"),
                          // Row(
                          //   children: [
                          //     const Expanded(
                          //       child: Column(
                          //         children: [
                          //           ExampleSentenceEnglish(
                          //               text:
                          //                   "Is the school selective or comprehensive?"),
                          //           ExampleSentenceKurdish(
                          //               text: "خوێندنگاکە."),
                          //         ],
                          //       ),
                          //     ),
                          //     const CustomSizedBoxForTTS(),
                          //     Column(
                          //       children: [
                          //         CustomIconButtonBritish(
                          //           onPressed: () => speakcomprehensives4("en-GB"),
                          //         ),
                          //         CustomIconButtonAmerican(
                          //           onPressed: () => speakcomprehensives4("en-US"),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بردنەوە یان شکست بە جیاوازییەکی گەورە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The cricket team finished the season with a comprehensive victory over their rivals."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تیمە کریکتەکە وەرزەکەی تەواوکرد بە سەرکەوتنێکی گەورە بەسەر ڕکابەرەکانیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomprehensives5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomprehensives5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) قوتابخانەیەک بۆ منداڵانی ھەموو توانا جیاوازەکان کە لەلایەن حکومەتەوە خەرجی دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They went to the local comprehensive."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چوونە قوتابخانەی گشتگیری خۆجێیی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcomprehensives6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcomprehensives6("en-US"),
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
- Adjective: comprehensive 
1. Including all or everything
"comprehensive coverage"; "a comprehensive history of the revolution"; "a comprehensive survey"; "a comprehensive education"
 
2. Broad in scope
"a comprehensive survey of world affairs"

- Noun: comprehensive (derived forms: comprehensives)
1. An intensive examination testing a student's proficiency in some special field of knowledge (= comprehensive examination, comp)
"she took her comprehensives in English literature";
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
    videoId: 'DfSnHyIryeY',
    startSeconds: 466,
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
    videoId: 'S4qvPouh1gE',
    startSeconds: 3529,
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
    videoId: 'hRSGxw2AQnk',
    startSeconds: 264,
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
    videoId: 'mCtSiImXpRo',
    startSeconds: 58,
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
    videoId: 'H1KP4ztKK0A',
    startSeconds: 1151,
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
    videoId: '_BbaiH17hOU',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'kVOTPAxrrP4',
    startSeconds: 717,
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