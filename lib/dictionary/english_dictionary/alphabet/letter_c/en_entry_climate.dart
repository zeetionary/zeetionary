import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclimate extends StatelessWidget {
  // blank divider
  EnglishEntryclimate({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclimate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("climate");
  }

  Future<void> speakclimates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The city has a cold climate.");
  }

  Future<void> speakclimates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Tomato flavour varies depending on climate.");
  }

  Future<void> speakclimates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is a region with diverse soils and climate.");
  }

  Future<void> speakclimates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Most climate scientists believe the earth will warm several more degrees in coming decades.");
  }

  Future<void> speakclimates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Little grows in such a dry climate.");
  }

  Future<void> speakclimates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They wanted to move to a warmer climate.");
  }

  Future<void> speakclimates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We need to create a climate in which business can prosper.");
  }

  Future<void> speakclimates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They hope this will provide the right climate for social change.");
  }

  Future<void> speakclimates9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Such a move seems unlikely in the current political climate.");
  }

  Future<void> speakclimates10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The new policies have created a climate of fear.");
  }

  Future<void> speakclimates11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Terrorism creates a climate of fear.");
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
                            EntryTitle(word: "climate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈklaɪmət/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclimate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈklaɪmət/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclimate("en-US"),
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
کوردی: ھەوا، ئاو و ھەوا، مەڵبەند، ئاقار، کەش، کەش‌وھەوا،	ڕەوش، بارودۆخ، ھەل‌ومەرج، کەش، کەش‌وھەوا
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ئاو و ھەوا؛ کەشووھەوای ساڵانە لە شوێنێکی دیاریکراودا"),
                          SentencesRow(
                            englishText: "The city has a cold climate.",
                            kurdishText: "شارەکە ئاو و ھەوایەکی ساردی ھەیە.",
                            onPressedBritish: () => speakclimates1("en-GB"),
                            onPressedAmerican: () => speakclimates1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Tomato flavour varies depending on climate.",
                            kurdishText:
                                "تامی تەماتە بەپێی ئاو و ھەوا دەگۆڕێت.",
                            onPressedBritish: () => speakclimates2("en-GB"),
                            onPressedAmerican: () => speakclimates2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Most climate scientists believe the earth will warm several more degrees in coming decades.",
                                    kurdishText:
                                        "زۆرێک لە زانایانی ئاو و ھەوا باوەڕیان وایە زەوی چەند پلەیەکی دیکە گەرم دەبێت لە چەند دەیەی دادێدا.",
                                    onPressedBritish: () =>
                                        speakclimates4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It is a region with diverse soils and climate.",
                                    kurdishText:
                                        "ھەرێمێکە بە خاک و ئاو و ھەوای جیاوازەوە.",
                                    onPressedBritish: () =>
                                        speakclimates3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates3("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢. (ناو) ناوچەیەک کە ئاو و ھەوای دیاریکراوی ھەیە"),
                                  SentencesRow(
                                    englishText:
                                        "Little grows in such a dry climate.",
                                    kurdishText:
                                        "کەم شت دەڕوێت لە کەشێکی وەھا وشکدا.",
                                    onPressedBritish: () =>
                                        speakclimates5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They wanted to move to a warmer climate.",
                                    kurdishText:
                                        "دەیانویست کۆچ بکەن بۆ کەشێکی گەرمتر.",
                                    onPressedBritish: () =>
                                        speakclimates6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates6("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٣. (ناو) کەشێک یان دۆخێک کە لە شوێنێکدا بوونی ھەیە"),
                                  SentencesRow(
                                    englishText:
                                        "We need to create a climate in which business can prosper.",
                                    kurdishText:
                                        "پێویستە کەشێک درووست بکەین کە تێیدا بازرگانییەکان دەتوانن گەشە بکەن.",
                                    onPressedBritish: () =>
                                        speakclimates7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They hope this will provide the right climate for social change.",
                                    kurdishText:
                                        "ھیواخوازن ئەمە کەشی لەبار بڕەخسێنێت بۆ گۆڕانی کۆمەڵایەتی.",
                                    onPressedBritish: () =>
                                        speakclimates8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclimates8("en-US"),
                                  ),
                                  Column(
                                    children: [
                                      MyExpansionTile(
                                        children: [
                                          SentencesRow(
                                            englishText:
                                                "Such a move seems unlikely in the current political climate.",
                                            kurdishText:
                                                "ھەنگاوێکی وەھا ڕێی تێ ناچێت لە کەشی سیاسی ئێستادا.",
                                            onPressedBritish: () =>
                                                speakclimates9("en-GB"),
                                            onPressedAmerican: () =>
                                                speakclimates9("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "The new policies have created a climate of fear.",
                                            kurdishText:
                                                "سیاسەتە تازەکان کەشێکیان لە ترس درووستکردووە.",
                                            onPressedBritish: () =>
                                                speakclimates10("en-GB"),
                                            onPressedAmerican: () =>
                                                speakclimates10("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "Terrorism creates a climate of fear.",
                                            kurdishText:
                                                "تەرۆریزم کەشێکی تۆقێنەر درووست دەکات.",
                                            onPressedBritish: () =>
                                                speakclimates11("en-GB"),
                                            onPressedAmerican: () =>
                                                speakclimates11("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
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
- Noun: climate (derived forms: climates)
1. The weather in some location averaged over some long period of time (= clime)
"the dank climate of southern Wales";
 
2. The prevailing psychological state (= mood)
"the climate of opinion";
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'tMwFNMfjFuU';
  final double _startSeconds = 65;

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

  final String _videoId = 'IRtD-6fWLZY';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'tCWI-2aISoc';
  final double _startSeconds = 64;

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

  final String _videoId = '0SIYoUH_7UY';
  final double _startSeconds = 83;

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

  final String _videoId = 'H7JoKnIgfbE';
  final double _startSeconds = 39;

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

  final String _videoId = 'uRgJ-22S_Rs';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'lq2qEUDo97w';
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

  final String _videoId = 'O8YIQqAsK1E';
  final double _startSeconds = 51;

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

  final String _videoId = 'Iiebn6f1vfM';
  final double _startSeconds = 45;

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