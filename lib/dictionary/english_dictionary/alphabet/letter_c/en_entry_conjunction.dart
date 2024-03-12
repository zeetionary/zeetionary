import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconjunction extends StatelessWidget {
// blank divider
  EnglishEntryconjunction({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconjunction(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("conjunction"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions1(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The conjunction \"although\" joins the two clauses in the sentence \"He left, although I begged him not to.\""); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions2(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The conjunction of low inflation and low unemployment came as a very pleasant surprise."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions3(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Mars and Venus will be in exact conjunction on 1 September."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions4(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions5(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions6(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions7(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions8(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions9(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions10(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions11(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions12(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconjunctions13(String languageCode) async {
    // DOPSUM: CHANGE speakconjunction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconjunctions1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "conjunction"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈdʒʌŋkʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconjunction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈdʒʌŋkʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconjunction("en-US"),
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
کوردی: (ڕێزمان) پیت یان تیپی پێوەندی، پیتی پێکەوەبەست(ن) یان بەستنەوە، پیتی لێکدەر، وشەلێکدەر،	یەکخستن، دانەدەم، تێک‌هەڵکێشان، لێکدان، یەک‌گرتن، خستنەسەر، پێک‌بەستراوی، پێکەوبەستراوی، پێک‌بەستی، پێوەست‌بوون، 	(ئەستێرەوانی) جووت‌بوون،	هاوکاتی، هاوشوێنی 
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) وشەیەک کە وشە، دەستەواژە، یان ڕستە پێکەوە دەبەستێی، بۆ نموونە وەک and، but، but، یان because"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The conjunction \"although\" joins the two clauses in the sentence \"He left, although I begged him not to.\""),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێکدەری \"although\" دوو بڕگەی ڕستەی \"He left, although I begged him not to.\" پێکەوە گرێ دەدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "conjunction", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconjunctions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconjunctions1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) زنجیرەی کۆمەڵە ڕووداوێک کە ئەنجامێکیان دەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The conjunction of low inflation and low unemployment came as a very pleasant surprise."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هاوکاتی هەڵاوسانی کەم و بێکاری نزم سوپرایزێکی زۆر خۆش بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconjunctions2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconjunctions2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) تێپەڕبوونی ئەستێرە، هەسارە، هتد نزیک لە یەکەوە وەک ئەوەی لە زەوییەوە دەبینرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Mars and Venus will be in exact conjunction on 1 September."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مەریخ و زوهرە لە جووتبوونی تەواودا دەبن لە ١ ـی ئەیلوول."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakconjunctions3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakconjunctions3("en-US"),
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
- Noun: conjunction (Derived forms: conjunctions)
1. The temporal property of two things happening at the same time (= concurrence, coincidence, co-occurrence)
"the interval determining the conjunction gate is adjustable";
 
2. The state of being joined together (= junction, conjugation, colligation)
 
3. An uninflected function word that serves to conjoin words, phrases, clauses or sentences (= conjunctive, connective, continuative)
 
4. The grammatical relation between linguistic units (words, phrases or clauses) that are connected by a conjunction
 
5. (astronomy) apparent meeting or passing of two or more celestial bodies in the same degree of the zodiac (= alignment)
 
6. Something that joins or connects (= junction)
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
    videoId: 'https://youtu.be/zJtJH46dyDE?t=',
    startSeconds: 1159,
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
    videoId: 'https://youtu.be/8jNs5G88TiI?t=',
    startSeconds: 74,
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
    videoId: 'https://youtu.be/caVoqAfdkYQ?t=',
    startSeconds: 1473,
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
    videoId: 'https://youtu.be/VbOh4x2FfNs?t=',
    startSeconds: 630,
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
    videoId: 'https://youtu.be/iQ5GfDbjos8?t=',
    startSeconds: 539,
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
    videoId: 'https://youtu.be/B5ytcg5pYEA?t=',
    startSeconds: 1426,
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
    videoId: 'https://youtu.be/YeAxxMZf1O4?t=',
    startSeconds: 316,
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