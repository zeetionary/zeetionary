import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycapital extends StatelessWidget {
  // blank divider
  EnglishEntrycapital({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcapital(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("capital");
  }

  Future<void> speakcapitals1(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Oslo is the capital of Norway.");
  }

  Future<void> speakcapitals2(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Rennes is the provincial capital of Brittany.");
  }

  Future<void> speakcapitals3(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She liked the fast pace of life in the capital.");
  }

  Future<void> speakcapitals4(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Paris is known as the fashion capital of the world.");
  }

  Future<void> speakcapitals5(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please write in capitals.");
  }

  Future<void> speakcapitals6(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had various ideas on how to raise capital for the project.");
  }

  Future<void> speakcapitals7(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our capital is all tied up in property.");
  }

  Future<void> speakcapitals8(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Education creates intellectual capital to convert into economic rewards.");
  }

  Future<void> speakcapitals9(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("English is written with a capital ‘E’.");
  }

  Future<void> speakcapitals10(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("In some countries, importing drugs is a capital offence.");
  }

  Future<void> speakcapitals11(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapitals1111");
  }

  Future<void> speakcapitals12(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapitals1212");
  }

  Future<void> speakcapitals13(String languageCode) async {
    // DOPSUM: CHANGE speakcapital
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapitals1313");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                            EntryTitle(word: "capital"),
                          ],
                        ),
                        const Row(
                          children: [
                            AlsoEnglish(word: "also: capital letter"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæpɪtl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcapital("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæpɪtl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcapital("en-US"),
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
کوردی: پایتەخت، پێتەخت، پایەتەخت، پاتەخت، شانشین، نێوەند، ناوەند، چەق، پیتی گەورە یان درشت، سەرمایە، دەسمایە، بنەپیت، مایە، سەرەستوون، تانج، سەرکۆڵ، ئەسپەرە، کۆتەڵە، سەرکۆڵەکە، پاشکەوت، شیاوی مەرگ یان لەسێدارەدان، بنەڕەتی، سەرەکی، بنچینەیی، بنگەھی، گرنگ، یەکجارباش، بەرز، (پیت) گەورە، درشت، گردەک
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پایتەخت؛ گرنگترین شارۆچکە یان شاری وڵاتێک یان ھەرێمێک کە لێیەوە حکومەت کاردەکات"),
                          SentencesRow(
                            englishText: "Oslo is the capital of Norway.",
                            kurdishText: "ئۆسلۆ پایتەختی نەرویجە.", // capital
                            onPressedBritish: () => speakcapitals1("en-GB"),
                            onPressedAmerican: () => speakcapitals1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Rennes is the provincial capital of Brittany.",
                            kurdishText: "ڕینز پایتەختی ھەرێمی بریتانییە.",
                            onPressedBritish: () => speakcapitals2("en-GB"),
                            onPressedAmerican: () => speakcapitals2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She liked the fast pace of life in the capital.",
                                    kurdishText:
                                        "حەزی لە ژیانی خێرای پایتەخت بوو.",
                                    onPressedBritish: () =>
                                        speakcapitals3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapitals3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Paris is known as the fashion capital of the world.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) پاریس وەک پایتەختی فاشنی جیھان ناسراوە.",
                            onPressedBritish: () => speakcapitals4("en-GB"),
                            onPressedAmerican: () => speakcapitals4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پیتی گەورە، بۆ نموونە A، B، C، نەک a،b، c"),
                          SentencesRow(
                            englishText: "Please write in capitals.",
                            kurdishText: "تکایە بە پیتی گەورە بنووسە.",
                            onPressedBritish: () => speakcapitals5("en-GB"),
                            onPressedAmerican: () => speakcapitals5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سەروەت و سامان کە بۆ خستنە سەرمایەوە بەکاردێت، یان بۆ دەستپێکردنی بازرگانییەکی تازە"),
                          SentencesRow(
                            englishText:
                                "He had various ideas on how to raise capital for the project.",
                            kurdishText:
                                "ژمارەیەک بیرۆکەی ھەبوو کە چۆن دەسمایە بۆ پڕۆژەکە پەیدا بکات.",
                            onPressedBritish: () => speakcapitals6("en-GB"),
                            onPressedAmerican: () => speakcapitals6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Our capital is all tied up in property.",
                            kurdishText: "تەواوی سەرمایەمان لە زەوی‌وزاردایە.",
                            onPressedBritish: () => speakcapitals7("en-GB"),
                            onPressedAmerican: () => speakcapitals7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) سەرچاوەیەکی بەنرخ"),
                          SentencesRow(
                            englishText:
                                "Education creates intellectual capital to convert into economic rewards.",
                            kurdishText:
                                "پەروەردە سەرنایەیەکی بیرمەندانە درووست دەکات کە دەکرێت بکرێت بە پاداشتی ئابووری.",
                            onPressedBritish: () => speakcapitals8("en-GB"),
                            onPressedAmerican: () => speakcapitals8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) پیتێک کە بەشێوەی گەورە نووسراوە"),
                          SentencesRow(
                            englishText:
                                "English is written with a capital ‘E’.",
                            kurdishText:
                                "وشەی English بە پیتی ‘E’ی گەورە دەنووسرێت.",
                            onPressedBritish: () => speakcapitals9("en-GB"),
                            onPressedAmerican: () => speakcapitals9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ھاوەڵناو) سزایەک کە مردنە"),
                          SentencesRow(
                            englishText:
                                "In some countries, importing drugs is a capital offence.",
                            kurdishText:
                                "لە ژمارەیەک وڵات، ھەناردەکردنی مادەی ھۆشبەر سزای مەرگی ھەیە.",
                            onPressedBritish: () => speakcapitals10("en-GB"),
                            onPressedAmerican: () => speakcapitals10("en-US"),
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
- Noun: capital (derived forms: capitals)
1. Assets available for use in the production of further assets (= working capital)
 
2. Wealth in the form of money or property owned by a person or business and human resources of economic value
 
3. A seat of government
 
4. One of the large alphabetic characters used as the first letter in writing or printing proper names and sometimes for emphasis (= capital letter, uppercase, upper-case letter, majuscule)
"printers once kept the type for capitals and for small letters in separate cases; capitals were kept in the upper half of the type case and so became known as upper-case letters";
 
5. A centre that is associated more than any other with some activity or product
"the crime capital of Italy"; "the drug capital of Colombia"
 
6. The upper part of a column that supports the entablature (= chapiter, cap)

- Adjective: capital 
1. Of principal importance
"our capital concern was to avoid defeat"
 
2. Uppercase(= great, majuscule)
"capital A";
 
3. Involving punishment by death
"a capital crime"
 
4. [Brit] First-rate
"a capital fellow"; "a capital idea"

- Noun: Capital
1. The federal government of the United States (= Washington)
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

  final String _videoId = '2sO9OBoNpZw';
  final double _startSeconds = 14;

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

  final String _videoId = 'oYm1dLKcBgQ';
  final double _startSeconds = 46;

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

  final String _videoId = '20Ds_0svV94';
  final double _startSeconds = 15;

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

  final String _videoId = 'TBukbCw09vg';
  final double _startSeconds = 0;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1496;

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

  final String _videoId = 'ggV86fgyR9o';
  final double _startSeconds = 587;

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

  final String _videoId = '9F4ZxRgb7GA';
  final double _startSeconds = 16;

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

  final String _videoId = 'eMgFyMUFELA';
  final double _startSeconds = 69;

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

  final String _videoId = 'kCrmBLRBevw';
  final double _startSeconds = 148;

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

  final String _videoId = 'B0lwiInZG1E';
  final double _startSeconds = 88;

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

// end WORD_WEB
