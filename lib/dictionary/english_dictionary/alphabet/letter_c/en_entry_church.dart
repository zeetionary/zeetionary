import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychurch extends StatelessWidget {
  EnglishEntrychurch({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchurch(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("church");
  }

  Future<void> speakchurchs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The procession moved into the church.");
  }

  Future<void> speakchurchs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was actively involved in church groups.");
  }

  Future<void> speakchurchs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The church is dedicated to St Paul.");
  }

  Future<void> speakchurchs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The church was consecrated in 1250.");
  }

  Future<void> speakchurchs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She sings in the church choir.");
  }

  Future<void> speakchurchs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are hiring the church hall for the party.");
  }

  Future<void> speakchurchs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They're in church.");
  }

  Future<void> speakchurchs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Lots of people still get married in church.");
  }

  Future<void> speakchurchs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The Catholic Church teaches that life begins at conception.");
  }

  Future<void> speakchurchs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Small evangelical churches often provide their members with a strong sense of community and family.");
  }

  Future<void> speakchurchs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Church has a duty to condemn violence.");
  }

  Future<void> speakchurchs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Some people think the Church shouldn't interfere in politics.");
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
                            EntryTitle(word: "church"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɜːtʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchurch("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɜːrtʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchurch("en-US"),
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
کوردی: کلێسە، کلیسا،	ڕێ‌وڕەسمی کلێسەیی یان دینی، خواپەرستیم،	دین، ئایینزا،	کۆمەڵی دینی کریستیەنەکان، گروپی ئایین‌گەری
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کڵێسا؛ شوێنی مەسیحییەکان بۆ نوێژکردن، بۆنەی ئایینی، ھتد"),
                          SentencesRow(
                            englishText:
                                "The procession moved into the church.",
                            kurdishText: "قافڵەکە چوونە ناو کڵێساکە.",
                            onPressedBritish: () => speakchurchs1("en-GB"),
                            onPressedAmerican: () => speakchurchs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was actively involved in church groups.",
                            kurdishText:
                                "بە چووستییەوە بەژدار بوو لەناو گرووپەکانی کڵێسادا.",
                            onPressedBritish: () => speakchurchs2("en-GB"),
                            onPressedAmerican: () => speakchurchs2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The church is dedicated to St Paul.",
                                    kurdishText:
                                        "کڵێساکە بۆ قەشە پاوڵ تەرخانکراوە.",
                                    onPressedBritish: () =>
                                        speakchurchs3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchurchs3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The church was consecrated in 1250.",
                                    kurdishText: "کڵێساکە لە ١٢٥٠ پیرۆزکرا.",
                                    kurdishNote:
                                        "پیرۆزکردنی کڵێسا ئەوەیە کە بە فەرمی ڕادەگەیەنرێت کە تەنھا بینایەک نییە و کڵێسایەکی پیرۆزە و دەکرێت بۆ کاری ئایینی بەکاربێت.",
                                    onPressedBritish: () =>
                                        speakchurchs4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchurchs4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She sings in the church choir.",
                                    kurdishText:
                                        "لە کۆچڕی کڵێساکە گۆرانی دەڵێت.",
                                    onPressedBritish: () =>
                                        speakchurchs5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchurchs5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We are hiring the church hall for the party.",
                                    kurdishText:
                                        "ھۆڵی کڵێساکە بۆ ئاھەنگەکە بەکرێ دەگرین.",
                                    onPressedBritish: () =>
                                        speakchurchs6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchurchs6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بۆنەیەک یان ئەو بۆنانەی لە کڵێسادا دەکرێن"),
                          SentencesRow(
                            englishText: "They're in church.",
                            kurdishText: "لە بۆنەی کڵێساکەن.",
                            onPressedBritish: () => speakchurchs7("en-GB"),
                            onPressedAmerican: () => speakchurchs7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Lots of people still get married in church.",
                            kurdishText:
                                "زۆرکەس ھێشتا لە بۆنەیەکی کڵێسادا ھاوسەرگیری دەکەن.",
                            onPressedBritish: () => speakchurchs8("en-GB"),
                            onPressedAmerican: () => speakchurchs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) گرووپێکی دیاریکراوی مەسیحییەکان"),
                          SentencesRow(
                            englishText:
                                "The Catholic Church teaches that life begins at conception.",
                            kurdishText:
                                "کڵێسای کاسۆلیک ئەوە فێردەکات کە ژیان لە ئاوسبوونەوە دەستپێ‌دەکات.",
                            onPressedBritish: () => speakchurchs9("en-GB"),
                            onPressedAmerican: () => speakchurchs9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Small evangelical churches often provide their members with a strong sense of community and family.",
                            kurdishText:
                                "ھەندێک کڵێسای ئینجیلی ھەستێکی بەھێزی کۆمەڵگە و خێزان لای ئەندامەکانیان درووست دەکەن.",
                            kurdishNote:
                                "کڵێسای ئینجیلی کڵێسای ئەو کەسانەیە کە باوەڕیان بە گرنگی ئینجیل ھەیە لە ژیانی ڕۆژانەدا و ھەوڵدان بۆ ئەوەی کەسانی دیکەش شوێنیان بکەون",
                            onPressedBritish: () => speakchurchs10("en-GB"),
                            onPressedAmerican: () => speakchurchs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو کەسانەی کە کڵێسا بەڕێوەدەبەن، یان دامەزراوە مەسیحییەکان"),
                          SentencesRow(
                            englishText:
                                "The Church has a duty to condemn violence.",
                            kurdishText: "کڵێسا دەبێت توندوتیژی سەرکۆنە بکات.",
                            onPressedBritish: () => speakchurchs11("en-GB"),
                            onPressedAmerican: () => speakchurchs11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Some people think the Church shouldn't interfere in politics.",
                            kurdishText:
                                "ھەندێک کەس باوەڕیان وایە کە کڵێسا دەبێت لە سیاسەت تێوەنەگلێت.",
                            onPressedBritish: () => speakchurchs12("en-GB"),
                            onPressedAmerican: () => speakchurchs12("en-US"),
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
- Noun: church (derived forms: churches)
1. One of the groups of Christians who have their own beliefs and forms of worship (= Christian church)
 
2. (church service) a place for public (especially Christian) worship (= church building)
"the church was empty";

3. A service conducted in a house of worship (= church service)
"don't be late for church";
 
4. The body of people who attend or belong to a particular local church
"our church is hosting a picnic next week"

- Verb: church (derived forms: churches, churched, churching)
1. Perform a special church rite or service for
"church a woman after childbirth"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'nQ-Ua6NYago';
  final double _startSeconds = 512;

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

  final String _videoId = '8t_qFivFGaM';
  final double _startSeconds = 89;

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

  final String _videoId = 'Vyb-sTrY_Y8';
  final double _startSeconds = 33;

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

  final String _videoId = 'm3OdHm7nuAM';
  final double _startSeconds = 121;

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

  final String _videoId = 'FFom9ziEXVY';
  final double _startSeconds = 226;

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

  final String _videoId = 'l71AX8p0UU8';
  final double _startSeconds = 310;

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

  final String _videoId = '72BLZmT5Wbo';
  final double _startSeconds = 5;

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

  final String _videoId = 'H_S2L0qOux0';
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

// end WORD_WEB
