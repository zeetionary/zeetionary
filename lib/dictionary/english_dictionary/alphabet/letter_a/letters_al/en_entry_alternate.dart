import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryalternate - replace speakAlternate - replace alternate - /ɔːlˈtɜːnət/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalternate extends StatelessWidget {
  EnglishEntryalternate({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakalternate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("alternate");
  }

  Future<void> speakalternate4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Stretch up 30 times with alternate arms as a warm-up exercise.");
  }

  Future<void> speakalternate492(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He and I clean our room on alternate days.");
  }

  Future<void> speakalternate4588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She alternated between cheerfulness and deep despair.");
  }

  Future<void> speakalternate385(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ambulance crews alternate between emergency and routine work.");
  }

  Future<void> speakalternate5266(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "David was too sick to attend, so Janet served as his alternate.");
  }

  // Future<void> speakalternate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlternate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alternate");
  // }

  // Future<void> speakalternate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlternate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alternate");
  // }

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
                            EntryTitle(word: "alternate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ɔːlˈtɜːnət/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakalternate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ɔːlˈtɜːnət/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakalternate("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: یەک‌بەدوای‌یەک، بەشوێن‌یەکا، یەک‌نایەک، جارەناجار، بە نۆرە، یەک بە یەک، ئاڵ‌وگۆڕ، ئالتێرنێیت (بیرکاری)، ئەویدی، دی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) کردنی شتێک سەرەتا بە یەکەم شت، دواتر بە شتێکی تر، و ئینجا دووبارە بە یەکەم شت"
                                  ""),
                          SentencesRow(
                            englishText:
                                "Stretch up 30 times with alternate arms as a warm-up exercise.",
                            kurdishText:
                                "وەک خۆگەرمکردنەوەیەک ٣٠ جار سترێچ بکە، ھەرجارە و بە دەستێک.",
                            onPressedBritish: () => speakalternate4599("en-GB"),
                            onPressedAmerican: () =>
                                speakalternate4599("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ڕۆژ نا ڕۆژ، جار نا جار، ساڵ نا ساڵ"""),
                          SentencesRow(
                            englishText:
                                "He and I clean our room on alternate days.",
                            kurdishText:
                                "من و ئەو ژوورەکەمان ڕۆژ نا ڕۆژێک پاکدەکەینەوە.",
                            onPressedBritish: () => speakalternate492("en-GB"),
                            onPressedAmerican: () => speakalternate492("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ڕوودان بەدوای یەکدا"""),
                          SentencesRow(
                            englishText:
                                "She alternated between cheerfulness and deep despair.",
                            kurdishText:
                                "بەردەوام لە نێوان دڵخۆشی و نائومێدی قووڵ بوو.",
                            onPressedBritish: () => speakalternate4588("en-GB"),
                            onPressedAmerican: () =>
                                speakalternate4588("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ڕوودان بە بەردەوامی"""),
                          SentencesRow(
                            englishText:
                                "Ambulance crews alternate between emergency and routine work.",
                            kurdishText:
                                "تیمەکانی فریاگوزاری بەردەوام لەنێوان کاری ئاسایی ڕۆژانەیان و حاڵەتی نەخوازراون.",
                            onPressedBritish: () => speakalternate385("en-GB"),
                            onPressedAmerican: () => speakalternate385("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) کەسێکی جێگرەوە"""),
                          SentencesRow(
                            englishText:
                                "David was too sick to attend, so Janet served as his alternate.",
                            kurdishText:
                                "دەیڤد زۆر نەخۆش بوو کە بتوانێت بەژداربێت، بۆیە جانێت وەک جێگرەوەی کاری کرد.",
                            onPressedBritish: () => speakalternate5266("en-GB"),
                            onPressedAmerican: () =>
                                speakalternate5266("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: alternate
1. (botany) of leaves and branches etc; first on one side and then on the other in two ranks along an axis; not paired
"stems with alternate leaves"
 
2. Every second one of a series
"the cleaning lady comes on alternate Wednesdays"
 
3. Serving or used in place of another (= alternative, substitute)
"an alternate plan";
 
4. Occurring by turns; first one and then the other (= alternating)
"alternate feelings of love and hate";

- Verb: alternate (derived forms: alternating, alternates, alternated)
1. Go back and forth; swing back and forth between two states or conditions (= jump)
 
2. Exchange people temporarily to fulfil certain jobs and functions
 
3. Be an understudy or alternate for a role (= understudy)
 
4. Reverse (a direction, attitude, or course of action) (= interchange, tack, switch, flip, flip-flop)
 
5. Do something in turns (= take turns)
"We alternate on the night shift";

- Noun: alternate (derived forms: alternating, alternates, alternated) 
1. Someone who takes the place of another person (= surrogate, replacement)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Fon7og7w4Yw';
  final double _startSeconds = 41;

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

  final String _videoId = 'PRL5EumA9xc';
  final double _startSeconds = 10;

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

  final String _videoId = 'QxYA721dI7g';
  final double _startSeconds = 1;

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

  final String _videoId = 'PGk3qLxwmDQ';
  final double _startSeconds = 173;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 382;

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

  final String _videoId = 'iuOYz8zt9J4';
  final double _startSeconds = 1;

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

  final String _videoId = 'Mx8JkGHaGUI';
  final double _startSeconds = 477;

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

  final String _videoId = 'S-4rhjO6xYg';
  final double _startSeconds = 146;

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

  final String _videoId = 'EM4SJlhsXSE';
  final double _startSeconds = 269;

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

  final String _videoId = '6QgR6Tjle7g';
  final double _startSeconds = 80;

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

  final String _videoId = 'DMRMWLwvAGA';
  final double _startSeconds = 700;

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

  final String _videoId = 'T4gRYEjiyzQ';
  final double _startSeconds = 763;

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

// end


