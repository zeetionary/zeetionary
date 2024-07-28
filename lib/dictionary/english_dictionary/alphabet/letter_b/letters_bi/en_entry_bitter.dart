import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bitter" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace bitter - /ˈbɪtə(r)/

enum TtsState { playing }

class EnglishEntrybitter extends StatelessWidget {
// blank divider
  EnglishEntrybitter({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbitter(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bitter");
  }

  Future<void> speakbitters1(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Black coffee leaves a bitter taste in the mouth.");
  }

  Future<void> speakbitters2(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This plant is ignored by livestock because of the bitter taste.");
  }

  Future<void> speakbitters3(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were bitter foes for many years.");
  }

  Future<void> speakbitters4(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They had a bitter divorce.");
  }

  Future<void> speakbitters5(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is very bitter about losing her job.");
  }

  Future<void> speakbitters6(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Losing the match was a bitter disappointment for the team.");
  }

  Future<void> speakbitters7(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's really bitter out today.");
  }

  Future<void> speakbitters8(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A can of bitter, please.");
  }

  Future<void> speakbitters9(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters99");
  }

  Future<void> speakbitters10(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1010");
  }

  Future<void> speakbitters11(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1111");
  }

  Future<void> speakbitters12(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1212");
  }

  Future<void> speakbitters13(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1313");
  }

  Future<void> speakbitters14(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1414");
  }

  Future<void> speakbitters15(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1515");
  }

  Future<void> speakbitters16(String languageCode) async {
    // DOPSUM: CHANGE speakbitter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbitters1616");
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
                            EntryTitle(word: "bitter"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɪtə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbitter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɪtər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbitter("en-US"),
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
کوردی: تاڵ، توند، تیژ، ناخۆش،  ناخۆش و زۆرسارد (ھەوا)، ڕق‌ھەستاو، تووڕە، ناڕەحەت، ئاوجۆی تاڵ، بیرەی خەست، سەختی، کوێرەوەری، کڵۆڵی، مەینەتی، بەدبەختی
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) تاڵ؛ تامێکی توندی ناخۆش."),
                          SentencesRow(
                            englishText:
                                "Black coffee leaves a bitter taste in the mouth.",
                            kurdishText:
                                "قاوەی ڕەش تامێکی تاڵ لە دەمدا جێدێڵێت.",
                            onPressedBritish: () => speakbitters1("en-GB"),
                            onPressedAmerican: () => speakbitters1("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This plant is ignored by livestock because of the bitter taste.",
                            kurdishText:
                                "مەڕوماڵات ڕووەکەکە ناخۆن بەھۆی تامە تاڵەی.",
                            onPressedBritish: () => speakbitters2("en-GB"),
                            onPressedAmerican: () => speakbitters2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) مشتومڕێک یان ناکۆکییەک کە کە توندە و ڕق و تووڕەیی تێدایە"),
                          SentencesRow(
                            englishText:
                                "They were bitter foes for many years.",
                            kurdishText:
                                "ڕکابەری سەرسەختی یەکدی بوون بۆ ساڵانێک.",
                            onPressedBritish: () => speakbitters3("en-GB"),
                            onPressedAmerican: () => speakbitters3("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "They had a bitter divorce.",
                            kurdishText: "جیابوونەوەیەکی تاڵیان ھەبوو.",
                            onPressedBritish: () => ("en-GB"),
                            onPressedAmerican: () => speakbitters4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) ھەستکردن بە دڵتەنگی و تووڕەیی چونکە پێت وایە خراپ مامەڵەت لەگەڵ کراوە"),
                          SentencesRow(
                            englishText:
                                "She is very bitter about losing her job.",
                            kurdishText: "زۆر ناڕەحەتە بە لەدەستدانی کارەکەی.",
                            onPressedBritish: () => speakbitters5("en-GB"),
                            onPressedAmerican: () => speakbitters5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) شتێک کە وات لێ دەکات ناڕەحەت بیت"),
                          SentencesRow(
                            englishText:
                                "Losing the match was a bitter disappointment for the team.",
                            kurdishText:
                                "دۆڕاندنی یارییەکە نائومێدییەکی ناخۆش بوو بۆ تیمەکە.",
                            onPressedBritish: () => speakbitters6("en-GB"),
                            onPressedAmerican: () => speakbitters6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵناو) سارد و ناخۆش."),
                          SentencesRow(
                            englishText: "It's really bitter out today.",
                            kurdishText: "ئەمڕۆ دەرەوە تەواو ساردە.",
                            onPressedBritish: () => speakbitters7("en-GB"),
                            onPressedAmerican: () => speakbitters7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بیرەیەک کە تامێکی تاڵی توندی ھەیە لەگەڵ ڕەنگێکی تۆخ، و لە ئینگلتەرە و وێڵز بەناوبانگە"),
                          SentencesRow(
                            englishText: "A can of bitter, please.",
                            kurdishText: "قوتوویەک ئاوجۆی تاڵ، بێزەحمەت.",
                            onPressedBritish: () => speakbitters8("en-GB"),
                            onPressedAmerican: () => speakbitters8("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
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
- Adjective: bitter (derived forms: bitterest, bitterer)
1. Marked by strong resentment or cynicism (= acrimonious)
"bitter about the divorce";

2. Very difficult to accept or bear
"the bitter truth"; "a bitter sorrow"
 
3. Harsh or corrosive in tone (= acerb, acerbic, acid, acrid, blistering, caustic, sulfurous [N. Amer], sulphurous [Brit, Cdn], virulent, vitriolic, acidulous, sulphureous [Brit])
"bitter words";

4. Expressive of severe grief or regret
"shed bitter tears"
 
5. Proceeding from or exhibiting great hostility or animosity
"a bitter struggle"; "bitter enemies"
 
6. Causing a sharp and acrid taste experience
"quinine is bitter"
 
7. Causing a sharply painful or stinging sensation; used especially of cold (= biting)
"bitter cold";

- Noun: bitter (derived forms: bitters)
1. [Brit] A dry sharp-tasting beer with a strong flavour of hops
 
2. The taste experience when quinine or coffee is taken into the mouth (= bitterness)
 
3. The property of having a harsh unpleasant taste (= bitterness)

- Verb: bitter (derived forms: bittering, bitters, bittered)
1. Make bitter

- Adverb: bitter 
1. Extremely and sharply (= piercingly, bitterly, bitingly)
"bitter cold";
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 52;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'sSdMX8AWurI';
  final double _startSeconds = 266;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 480;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 465;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'iuOYz8zt9J4';
  final double _startSeconds = 125;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'n4bucphC9r4';
  final double _startSeconds = 153;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'M6XiFKB7j0w';
  final double _startSeconds = 376;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'U38i32CpYow';
  final double _startSeconds = 813;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '0n89GZvmeXI';
  final double _startSeconds = 359;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'snAhsXyO3Ck';
  final double _startSeconds = 208;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'yDp3cB5fHXQ';
  final double _startSeconds = 2257;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'BDGVbiaiJ2M';
  final double _startSeconds = 4280;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'pWZ9ZVRQ0Nw';
  final double _startSeconds = 689;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'aeCHHOt_tnA';
  final double _startSeconds = 27;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = '8QLWigFeVBI';
  final double _startSeconds = 88;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end bitter// TODO Implement this library.
