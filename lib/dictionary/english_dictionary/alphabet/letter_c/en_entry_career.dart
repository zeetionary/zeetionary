import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycareer extends StatelessWidget {
  // blank divider
  EnglishEntrycareer({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcareer(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("career"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers1(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She plans to pursue a career in medicine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers2(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had a successful career in television journalism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers3(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He enjoyed a long and distinguished career as a historian."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers4(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has been concentrating on her career."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers5(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We wish our graduates every success in whatever career path they have chosen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers6(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She started her career as an English teacher."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers7(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This was a turning point in her career."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers8(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was at the peak of her career when she injured herself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers9(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car careered across the road and hit a cyclist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers10(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcareers1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers11(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcareers1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers12(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcareers1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcareers13(String languageCode) async {
    // DOPSUM: CHANGE speakcareer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcareers1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "career"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈrɪə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcareer("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈrɪr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcareer("en-US"),
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
کوردی: کار، پیشە، ئیش، خەبات، شوول
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) زنجیرە کارێک کە کەسێک ھەیەتی لە بەشێکی دیاریکراوی کارێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She plans to pursue a career in medicine."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پلانی ھەیە کارێکی لە دەرمانسازیدا ھەبێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "career", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers1("en-US"),
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
                                            "He had a successful career in television journalism."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پیشەیەکی سەرکەوتووانەی ھەبوو لە ڕۆژنامەنووسیی تەلەفیزیۆنیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He enjoyed a long and distinguished career as a historian."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "وەک مێژووناسێک پیشەیەکی درێژ و سەرکەوتووانەی ھەبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcareers3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcareers3("en-US"),
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
                                                    "She has been concentrating on her career."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرنجی خستووەتە سەر کارەکەی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcareers4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcareers4("en-US"),
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
                                                    "We wish our graduates every success in whatever career path they have chosen."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەرکەوتنی تەواو بۆ دەرچوانمان دەخوازین لە ھەر کارێک کە ھەڵیانبژاردووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcareers5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcareers5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئەو ماوەیەی تەمەن کە بە کارکردن بەسەری دەبەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She started her career as an English teacher."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەک مامۆستای ئینگلیزی دەستی بەکارکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers6("en-US"),
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
                                            "This was a turning point in her career."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە قۆناغی گرنگی کارکردنی بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers7("en-US"),
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
                                            "She was at the peak of her career when she injured herself."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە لوتکەی کارکردنیدا بوو کە خۆی بریندار کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) بەخێرایی چوونە پێشەوە بەشێوەیەک کە نەبوونی کۆنترۆڵ پیشان دەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car careered across the road and hit a cyclist."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە بە ڕێگاکەدا غلبووەوە و کێشای بە پاسکیلسوارێکدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcareers9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcareers9("en-US"),
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
- Noun: career (derived forms: careers)
1. The particular occupation for which you are trained (= calling, vocation)
 
2. The general progression of your working or professional life (= life history)
"he had a long career in the law"; "the general had had a distinguished career";

- Verb: career (derived forms: careers, careering, careered)
1. Move headlong at high speed
"The cars careered down the road"; "The mob careered through the streets"
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
    videoId: '9fDEKiuJ2qA',
    startSeconds: 154,
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
    videoId: 'etnIIZRgI4g',
    startSeconds: 59,
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
    videoId: 'bLeObjK-SSc',
    startSeconds: 27,
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
    videoId: 'GmCp2whXVHA',
    startSeconds: 127,
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
    videoId: '6alHr_ZTdQI',
    startSeconds: 110,
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
    videoId: '544DTGHIBM0',
    startSeconds: 779,
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
    videoId: '_GFkHA5EZdE',
    startSeconds: 407,
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
    videoId: 'ewLpXw6uN28',
    startSeconds: 148,
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
