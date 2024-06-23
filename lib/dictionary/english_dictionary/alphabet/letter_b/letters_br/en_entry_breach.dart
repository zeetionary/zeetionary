import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "breach" as TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybreach extends StatelessWidget {
// blank divider
  EnglishEntrybreach({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbreach(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("breach");
  }

  Future<void> speakbreachs1(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are in breach of Article 119.");
  }

  Future<void> speakbreachs2(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was sued for breach of contract.");
  }

  Future<void> speakbreachs3(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He refused to shake hands, in deliberate breach of etiquette.");
  }

  Future<void> speakbreachs4(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Such actions constitute a breach of confidentiality.");
  }

  Future<void> speakbreachs5(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The disagreement caused a serious breach in Franco-German relations.");
  }

  Future<void> speakbreachs6(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They escaped through a breach in the wire fence.");
  }

  Future<void> speakbreachs7(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The mortars blew a large breach in the castle walls.");
  }

  Future<void> speakbreachs8(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A breach in the mountain wall permits warm sea air to penetrate inland.");
  }

  Future<void> speakbreachs9(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government is accused of breaching the terms of the treaty.");
  }

  Future<void> speakbreachs10(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They breached the agreement they had made with their employer.");
  }

  Future<void> speakbreachs11(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dam had been breached.");
  }

  Future<void> speakbreachs12(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Demonstrators breached police lines around the embassy.");
  }

  Future<void> speakbreachs13(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1313");
  }

  Future<void> speakbreachs14(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1414");
  }

  Future<void> speakbreachs15(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1515");
  }

  Future<void> speakbreachs16(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1616");
  }

  Future<void> speakbreachs17(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1717");
  }

  Future<void> speakbreachs18(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1818");
  }

  Future<void> speakbreachs19(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs1919");
  }

  Future<void> speakbreachs20(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs2020");
  }

  Future<void> speakbreachs21(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs2121");
  }

  Future<void> speakbreachs22(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs2222");
  }

  Future<void> speakbreachs23(String languageCode) async {
    // DOPSUM: CHANGE speakbreach
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbreachs2323");
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
                            EntryTitle(word: "breach"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /briːtʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbreach("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /briːtʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbreach("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: شکاندن، لەبەرچاونەگرتن، بنپێ‌کردن، پێشێل(کردن)، تەپساندن، پێشێل‌کاری، نەمان، شێوان، تۆران، داگۆڕان، دابڕان (پێوەندی)، جیاوازی، کەلێن، ڕەخنە، کەلەبەر، دزە، شەبەق، دەلاقە، کون، درز، قەڵەش، تڵیش، ترەک، دەغەز
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) نەکردنی شتێک کە بەپێی یاسا دەبێت بکرێت"""),
                          SentencesRow(
                            englishText: "They are in breach of Article 119.",
                            kurdishText: "پێشێلی مادەی ١١٩ یان کردووە.",
                            onPressedBritish: () => speakbreachs1("en-GB"),
                            onPressedAmerican: () => speakbreachs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He was sued for breach of contract.",
                            kurdishText:
                                "سکاڵای لەسەر تۆمارکرا بۆ پێشێلی ڕێککەوتنەکە.",
                            onPressedBritish: () => speakbreachs2("en-GB"),
                            onPressedAmerican: () => speakbreachs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕەفتارێک کە پێچەوانەی ڕێککەوتن و نەریتە"),
                          SentencesRow(
                            englishText:
                                "He refused to shake hands, in deliberate breach of etiquette.",
                            kurdishText:
                                "ڕەتیکردەوە تەوقە بکات بەپێچەوانەی ئەوەی ئەتەکیەتە.",
                            onPressedBritish: () => speakbreachs3("en-GB"),
                            onPressedAmerican: () => speakbreachs3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Such actions constitute a breach of confidentiality.",
                            kurdishText:
                                "ڕەفتاری وەھا یەکسانە بە لادان لە متمانە.",
                            onPressedBritish: () => speakbreachs4("en-GB"),
                            onPressedAmerican: () => speakbreachs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) نەمانی پەیوەندی نێوان دوو کەس یان وڵات"),
                          SentencesRow(
                            englishText:
                                "The disagreement caused a serious breach in Franco-German relations.",
                            kurdishText:
                                "ناکۆکییەکە بەوو بەھۆی پچڕانێکی توندی پەیوەندییەکانی نێوان فەرەنسا و ئەڵمانیا.",
                            onPressedBritish: () => speakbreachs5("en-GB"),
                            onPressedAmerican: () => speakbreachs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شوێنێکی کراوە، بۆ نموونە شوێنێک کە لێیەوە ھێرش دەکرێت یان با و شەپۆل دێت"),
                          SentencesRow(
                            englishText:
                                "They escaped through a breach in the wire fence.",
                            kurdishText:
                                "ھەڵھاتن بە کەلێنێک لە پەرژینە وایەرییەکەدا.",
                            onPressedBritish: () => speakbreachs6("en-GB"),
                            onPressedAmerican: () => speakbreachs6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The mortars blew a large breach in the castle walls.",
                            kurdishText:
                                "ھاوەنەکان کەلێنێکی گەورەیان کردە دیوارەکانی قەڵاکە.",
                            onPressedBritish: () => speakbreachs7("en-GB"),
                            onPressedAmerican: () => speakbreachs7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "A breach in the mountain wall permits warm sea air to penetrate inland.",
                            kurdishText:
                                "کەلێنێک لە بەرزایی شاخەکەدا ڕێگە بە ھەوای گەرمی دەریاکە دەدات بۆ ناو ناوچەکە.",
                            onPressedBritish: () => speakbreachs8("en-GB"),
                            onPressedAmerican: () => speakbreachs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) شکاندنی بەڵێن یان ڕێککەوتن"),
                          SentencesRow(
                            englishText:
                                "The government is accused of breaching the terms of the treaty.",
                            kurdishText:
                                "حکومەت تۆمەتبارکراوە بە شکاندنی مەرجەکانی ڕێککەوتنەکە.",
                            onPressedBritish: () => speakbreachs9("en-GB"),
                            onPressedAmerican: () => speakbreachs9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They breached the agreement they had made with their employer.",
                            kurdishText:
                                "ئەو بەڵێنەیان شکاند کە دایان بوو بە خاوەنکارەکەیان.",
                            onPressedBritish: () => speakbreachs10("en-GB"),
                            onPressedAmerican: () => speakbreachs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) درووستکردنی کەلێنێک لە شوێنێکدا بۆ تێپەڕین بە ناویدا"),
                          SentencesRow(
                            englishText: "The dam had been breached.",
                            kurdishText: "بەنداوەکە شەقبووبوو.",
                            onPressedBritish: () => speakbreachs11("en-GB"),
                            onPressedAmerican: () => speakbreachs11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Demonstrators breached police lines around the embassy.",
                            kurdishText:
                                "خۆپیشاندەران ڕیزەکانی پۆلیسیان تێپەڕاند بە دەوری باڵیۆزخانەکەدا.",
                            onPressedBritish: () => speakbreachs12("en-GB"),
                            onPressedAmerican: () => speakbreachs12("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Noun: breach (derived forms: breaches)
1. A failure to perform some promised act or obligation
 
2. An opening (especially a gap in a dike or fortification)
 
3. A personal or social separation (as between opposing factions) (= rupture, break, severance, rift, falling out)
"they hoped to avoid a breach in relations";

- Verb: breach (derived forms: breaches, breaching, breached)
1. Act in disregard of laws, rules, contracts, or promises (= transgress, offend, infract, violate, go against, break)
"breach all laws of humanity";

2. Make an opening or gap in (= gap)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'O-cKvhA9ZJ4';
  final double _startSeconds = 978;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'yYQ8owJXAg8';
  final double _startSeconds = 54;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'sfr8tfm_IxA';
  final double _startSeconds = 118;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '8eq2vGEEbB4';
  final double _startSeconds = 502;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'rII2WszMe7c';
  final double _startSeconds = 99;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '0Anx3VQ2dcc';
  final double _startSeconds = 2890;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'XXhc5UTxv5I';
  final double _startSeconds = 1197;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'f5jwTft6654';
  final double _startSeconds = 123;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'K3v5wFMQRqs';
  final double _startSeconds = 2071;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = '_LlyKiROzhU';
  final double _startSeconds = 1647;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'TjZ5e6ylJI8';
  final double _startSeconds = 201;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'ZY0M1emTeBg';
  final double _startSeconds = 858;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end

// haʊʊʊʊʊʊʊ4
// end breach
