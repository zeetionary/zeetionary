import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycapacity extends StatelessWidget {
  // blank divider
  EnglishEntrycapacity({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcapacity(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("capacity");
  }

  Future<void> speakcapacitys1(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The theatre has a seating capacity of 2 000.");
  }

  Future<void> speakcapacitys2(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hall was filled to capacity.");
  }

  Future<void> speakcapacitys3(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has an enormous capacity for hard work.");
  }

  Future<void> speakcapacitys4(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Limited resources are restricting our capacity for developing new products.");
  }

  Future<void> speakcapacitys5(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The mountain walk is well within the capacity of most fit people.");
  }

  Future<void> speakcapacitys6(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His capacity for learning languages astonished me.");
  }

  Future<void> speakcapacitys7(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These questions are beyond the capacity of most students.");
  }

  Future<void> speakcapacitys8(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was acting in her capacity as manager.");
  }

  Future<void> speakcapacitys9(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In my capacity as president, I would like to thank Jack for his hard work.");
  }

  Future<void> speakcapacitys10(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The factory is working at (full) capacity.");
  }

  Future<void> speakcapacitys11(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The larger cars have bigger capacity engines.");
  }

  Future<void> speakcapacitys12(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapacitys1212");
  }

  Future<void> speakcapacitys13(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapacitys1313");
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
                            EntryTitle(word: "capacity"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈpæsəti/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcapacity("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈpæsəti/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcapacity("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: جێ‌بوونەوە، گرتن، ھەڵگرتن، بردن، گونجایشت، جێگا، جێ، فراوانی، ھێز، وزە، توانایی، توانین، توانست، خورتی، لێوەشاوەیی، لێھاتوویی، شیان، تواناداری، پۆست، پلەوپایە، تێگەیشتن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ئەو ڕێژەیەی کە جێیدەبێتەوە لە شوێنێک یان لە ناو شتێکدا"),
                          SentencesRow(
                            englishText:
                                "The theatre has a seating capacity of 2 000.",
                            kurdishText:
                                "ھۆڵی شانۆکە شوێنی دانیشتنی ٢٠٠٠ کەسی ھەیە.", // capacity
                            onPressedBritish: () => speakcapacitys1("en-GB"),
                            onPressedAmerican: () => speakcapacitys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The hall was filled to capacity (= was completely full).",
                            kurdishText: "ھۆڵەکە بە تەواوی پڕ بوو.",
                            onPressedBritish: () => speakcapacitys2("en-GB"),
                            onPressedAmerican: () => speakcapacitys2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) توانای تێگەشتن یان کردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "She has an enormous capacity for hard work.",
                            kurdishText: "توانایەکی زۆری بۆ کاری قورس ھەیە.",
                            onPressedBritish: () => speakcapacitys3("en-GB"),
                            onPressedAmerican: () => speakcapacitys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Limited resources are restricting our capacity for developing new products.",
                            kurdishText:
                                "سەرچاوەی سنووردار توانامانی سنووردار کردووە لە گەشەپێدانی بەرھەمەکانمان.",
                            onPressedBritish: () => speakcapacitys4("en-GB"),
                            onPressedAmerican: () => speakcapacitys4("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The mountain walk is well within the capacity of most fit people.",
                                    kurdishText:
                                        "ڕێگای گەشتن بە زۆرباش لە توانای زۆر کەسی تەندرووست دایە.",
                                    onPressedBritish: () =>
                                        speakcapacitys5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His capacity for learning languages astonished me.",
                                    kurdishText:
                                        "توانای لە فێربوونی زمانەکانی دیکەدا سەرسامی کردم.",
                                    onPressedBritish: () =>
                                        speakcapacitys6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "These questions are beyond the capacity of most students.",
                                    kurdishText:
                                        "ئەم پرسیارانە لە دەرەوەی توانای زۆرینەی خوێندکارانن.",
                                    onPressedBritish: () =>
                                        speakcapacitys7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys7("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٣. (ناو) پێگە یان ئەرکی فەرمیی کەسێک"),
                                  SentencesRow(
                                    englishText:
                                        "She was acting in her capacity as manager.",
                                    kurdishText:
                                        "لە ئەرکەکەیدا وەک سەرپەرشتیار کاری دەکرد.",
                                    onPressedBritish: () =>
                                        speakcapacitys8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "In my capacity as president, I would like to thank Jack for his hard work.",
                                    kurdishText:
                                        "لە پێگەم وەک سەرۆک، دەمەوێت سوپاسی جاک بکەم بۆ کاری قورسی.",
                                    onPressedBritish: () =>
                                        speakcapacitys9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys9("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٤. (ناو) ئەو بڕەی کە کارگەیەک، ئامێرێک، ھتد بەرھەمی دێنێت، یان ھێز و توانای بزوێنەرێک"),
                                  SentencesRow(
                                    englishText:
                                        "The factory is working at (full) capacity.",
                                    kurdishText:
                                        "کارگەکە بەوپەڕی توانای کاردەکات.",
                                    onPressedBritish: () =>
                                        speakcapacitys10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The larger cars have bigger capacity engines (= the engines are bigger and more powerful).",
                                    kurdishText:
                                        "ئۆتۆمبێلە گەورەکان بزوێنەری توانا گەورەتریان ھەیە.",
                                    onPressedBritish: () =>
                                        speakcapacitys11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcapacitys11("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
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
- Noun: capacity (derived forms: capacities)
1. Capability to perform or produce
"among his gifts is his capacity for true altruism"; "limited runway capacity"; "a great capacity for growth"
 
2. The susceptibility of something to a particular treatment (= capability)
"the capacity of a metal to be fused";

3. The amount that can be contained (= content)
"the gas tank has a capacity of 12 gallons";
 
4. The maximum production possible
"the plant is working at 80 per cent capacity"
 
5. A specified function
"he was employed in the capacity of director"; "he should be retained in his present capacity at a higher salary"
 
6. (computing) the amount of information (in bytes) that can be stored on a disk drive
"the capacity of a hard disk drive is usually expressed in megabytes"
 
7. An electrical phenomenon whereby an electric charge is stored (= capacitance, electrical capacity)
 
8. The power to learn or retain knowledge; in law, the ability to understand the facts and significance of your behaviour (= mental ability)
 
9. Tolerance for alcohol
"he had drunk beyond his capacity"
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

  final String _videoId = 'TM49x1qFugA';
  final double _startSeconds = 7;

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

  final String _videoId = '5Rhw18MK5v4';
  final double _startSeconds = 7;

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

  final String _videoId = 'r5bb_9eZHPE';
  final double _startSeconds = 69;

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

  final String _videoId = 'g7ehYduP4KU';
  final double _startSeconds = 0;

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

  final String _videoId = '3cKOYnTtzB0';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'hGkGIKiFv5o';
  final double _startSeconds = 330;

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

  final String _videoId = 'iF3B80BZwcQ';
  final double _startSeconds = 6;

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

  final String _videoId = 'iD0oTrXtpgs';
  final double _startSeconds = 9;

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

  final String _videoId = 'jOxXu5el9xE';
  final double _startSeconds = 143;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'j-cLiO0AFDc';
  final double _startSeconds = 68;

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

// end WORD_WEB
