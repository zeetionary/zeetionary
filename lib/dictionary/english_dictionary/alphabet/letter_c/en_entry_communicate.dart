import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommunicate extends StatelessWidget {
// blank divider
  EnglishEntrycommunicate({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommunicate(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("communicate");
  }

  Future<void> speakcommunicates1(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We only communicate by email.");
  }

  Future<void> speakcommunicates2(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They communicated in sign language.");
  }

  Future<void> speakcommunicates3(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Candidates must be able to communicate effectively.");
  }

  Future<void> speakcommunicates4(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Dolphins use sound to communicate with each other.");
  }

  Future<void> speakcommunicates5(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In times of uncertainty, a leader must be able to communicate a message of hope.");
  }

  Future<void> speakcommunicates6(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Language evolved as a means of communicating information between individuals.");
  }

  Future<void> speakcommunicates7(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was eager to communicate his ideas to the group.");
  }

  Future<void> speakcommunicates8(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His inability to communicate has damaged their relationship beyond repair.");
  }

  Future<void> speakcommunicates9(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The novel is about a family who can't communicate with each other.");
  }

  Future<void> speakcommunicates10(String languageCode) async {
    // DOPSUM: CHANGE speakcommunicate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The disease is communicated through dirty drinking water.");
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
                            EntryTitle(word: "communicate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmjuːnɪkeɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommunicate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmjuːnɪkeɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommunicate("en-US"),
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
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: وتووێژکردن، پەیوەندی ھەبوون، ھات و چۆ کردن، دانووستان کردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ئاڵوگۆڕی زانیاری، ھەواڵ، بیرۆکە، ھەست و سۆز، ھتد"),
                          SentencesRow(
                            englishText: "We only communicate by email.",
                            kurdishText:
                                "تەنھا بە ئیمەیڵ گفتوگۆ دەکەین.", // communicate",
                            onPressedBritish: () => speakcommunicates1("en-GB"),
                            onPressedAmerican: () =>
                                speakcommunicates1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "They communicated in sign language.",
                            kurdishText: "بە زمانی جەستە وتووێژیان کرد.",
                            onPressedBritish: () => speakcommunicates2("en-GB"),
                            onPressedAmerican: () =>
                                speakcommunicates2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Candidates must be able to communicate effectively.",
                                    kurdishText:
                                        "بەربژێران دەبێت بە کاریگەری گفتوگۆ بکەن.",
                                    onPressedBritish: () =>
                                        speakcommunicates3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunicates3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Dolphins use sound to communicate with each other.",
                                    kurdishText:
                                        "دۆڵفینەکان دەنگ بەکاردێنن بۆ گفتوگۆکردن.",
                                    onPressedBritish: () =>
                                        speakcommunicates4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunicates4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "In times of uncertainty, a leader must be able to communicate a message of hope.",
                                    kurdishText:
                                        "لە ماوەی دڵەخورپەدا، سەرکردە دەبێت پەیامێکی ھیوا ببەخشێت.",
                                    onPressedBritish: () =>
                                        speakcommunicates5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunicates5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Language evolved as a means of communicating information between individuals.",
                                    kurdishText:
                                        "زمان پەرەی سەند وەک ئامرازێکی ئاڵوگۆڕی زانیاری لە نێوان کەسەکاندا.",
                                    onPressedBritish: () =>
                                        speakcommunicates6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunicates6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He was eager to communicate his ideas to the group.",
                                    kurdishText:
                                        "بەپەرۆش بوو بیرۆکەکانی بدات بە گرووپەکە.",
                                    onPressedBritish: () =>
                                        speakcommunicates7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunicates7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ھەبوونی پەیوەندییەکی باش چونکە توانات ھەیە باسی بیرکردنەوە، ھەست، ھت ـەکانی خۆت و کەسانی بکەیت"),
                          SentencesRow(
                            englishText:
                                "His inability to communicate has damaged their relationship beyond repair.",
                            kurdishText:
                                "نەبوونی توانای گفتوگۆی پەیوەندییەکەیانی تا ئەوپەڕی ئاستی چاککردنەوە تێکداوە.",
                            onPressedBritish: () => speakcommunicates8("en-GB"),
                            onPressedAmerican: () =>
                                speakcommunicates8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The novel is about a family who can't communicate with each other.",
                            kurdishText:
                                "ڕۆمانەکە سەبارەت بە خێزانەکە کە لە یەکدی تێناگەن.",
                            onPressedBritish: () => speakcommunicates9("en-GB"),
                            onPressedAmerican: () =>
                                speakcommunicates9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) گواستنەوەی نەخۆشی لە کەسێک، ئاژەڵێک، ھتد بۆ یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "The disease is communicated through dirty drinking water.",
                            kurdishText:
                                "نەخۆشییەکە لە ڕێگەی ئاوی پیسی خواردنەوەوە دەگوازرێتەوە.",
                            onPressedBritish: () =>
                                speakcommunicates10("en-GB"),
                            onPressedAmerican: () =>
                                speakcommunicates10("en-US"),
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
- Verb: communicate (derived forms: communicated, communicates, communicating)
1. Transmit information (= pass on, pass, pass along, put across)
"Please communicate this message to all employees";
 
2. Transmit thoughts or feelings (= intercommunicate)
"He communicated his anxieties to the psychiatrist";
 
3. Transfer to another (= convey, transmit)
"communicate a disease";
 
4. Join or connect
"The rooms communicated"
 
5. Be in verbal contact; interchange information or ideas
"He and his sons haven't communicated for years"; "Do you communicate well with your advisor?"
 
6. Administer Communion; in church
 
7. Receive Communion, in the Catholic church (= commune)
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'JJ2ebYNtFUA';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'vn1oA5QNDWo';
  final double _startSeconds = 8;

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

  final String _videoId = 'P_rsXLguafk';
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

  final String _videoId = 'Y63dBBlHlSk';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 739;

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

  final String _videoId = 'qNsIuRbPBr4';
  final double _startSeconds = 42;

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

  final String _videoId = 'CWOokzCcV5I';
  final double _startSeconds = 18;

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

// end WORD_WEB