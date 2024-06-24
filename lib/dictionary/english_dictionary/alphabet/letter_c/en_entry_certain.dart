import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycertain extends StatelessWidget {
  // blank divider
  EnglishEntrycertain({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcertain(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("certain");
  }

  Future<void> speakcertains1(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think it was him, but I can't be certain.");
  }

  Future<void> speakcertains2(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She wasn’t certain (that) he had seen her.");
  }

  Future<void> speakcertains3(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm certain we'll think of something.");
  }

  Future<void> speakcertains4(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you absolutely certain about this?");
  }

  Future<void> speakcertains5(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The climbers face certain death if the rescue today is unsuccessful.");
  }

  Future<void> speakcertains6(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is certain that they will agree.");
  }

  Future<void> speakcertains7(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He seemed certain to be defeated in the election.");
  }

  Future<void> speakcertains8(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The death toll was almost certain to rise.");
  }

  Future<void> speakcertains9(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Certain people might disagree with this.");
  }

  Future<void> speakcertains10(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This car appeals to a certain type of driver.");
  }

  Future<void> speakcertains11(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They refused to release their hostages unless certain conditions were met.");
  }

  Future<void> speakcertains12(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That's true, to a certain extent.");
  }

  Future<void> speakcertains13(String languageCode) async {
    // DOPSUM: CHANGE speakcertain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a certain Dr Davis who performed the operation.");
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
                            EntryTitle(word: "certain"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsɜːtn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcertain("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsɜːrtn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcertain("en-US"),
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
کوردی: سۆگەر، بێ‌ئەملاوئەولا، گومان‌لێ‌نەکراو، یەکلایی‌یەوەبوو، بڕاوە، ساغەوەبوو، دڵنیا، خاترجەم، ئارخایەن، جێی‌باوەڕ، ھێندێ، بڕێ، جۆر، چەشن، تایبەت، نەمازە، دیاری‌کراو، ... ێ، ... ێک، بڕێ، کەمێ، نەختێ، پشکێ، تۆزێ، نیسکێ
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) دڵنیا لە شتێک"),
                          SentencesRow(
                            englishText:
                                "I think it was him, but I can't be certain.",
                            kurdishText:
                                "پێم‌وایە ئەوبوو، بەڵام ناتوانم دڵنیابم.", // certain",
                            onPressedBritish: () => speakcertains1("en-GB"),
                            onPressedAmerican: () => speakcertains1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She wasn’t certain (that) he had seen her.",
                            kurdishText: "دڵنیا نەبوو لەوەی بینیویەتی.",
                            onPressedBritish: () => speakcertains2("en-GB"),
                            onPressedAmerican: () => speakcertains2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I'm certain we'll think of something.",
                                    kurdishText:
                                        "دڵنیام شتێک بە خەیاڵماندا دێت.",
                                    onPressedBritish: () =>
                                        speakcertains3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcertains3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Are you absolutely certain about this?",
                            kurdishText: "تەواو دڵنیایت لەسەر ئەمە؟",
                            onPressedBritish: () => speakcertains4("en-GB"),
                            onPressedAmerican: () => speakcertains4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) شتێک کە بە دڵنیایی ڕاستە یان ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "The climbers face certain death if the rescue today is unsuccessful.",
                            kurdishText:
                                "پیاھەڵگژان ڕووبەڕووی مردنی مسۆگەر دەبنەوە ئەگەر ھەوڵی ڕزگارکردنەکە ناسەرکەوتوو بێت.",
                            onPressedBritish: () => speakcertains5("en-GB"),
                            onPressedAmerican: () => speakcertains5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "It is certain that they will agree.",
                            kurdishText: "ئەوە مسۆگەرە کە ڕازی دەبن.",
                            onPressedBritish: () => speakcertains6("en-GB"),
                            onPressedAmerican: () => speakcertains6("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He seemed certain to be defeated in the election.",
                                    kurdishText:
                                        "یەکلایی‌یەوەبوو کە لە ھەڵبژاردنەکە دەدۆڕێت.",
                                    onPressedBritish: () =>
                                        speakcertains7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcertains7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The death toll was almost certain to rise.",
                            kurdishText:
                                "ڕێژەی مردن مسۆگەر بوو کە بەرزدەبێتەوە.",
                            onPressedBritish: () => speakcertains8("en-GB"),
                            onPressedAmerican: () => speakcertains8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بەکاردێت بۆ ناوھێنانی شتێک، کەسێک، یان گرووپێک بەبێ پێدانی زانیاریی زیادە"),
                          SentencesRow(
                            englishText:
                                "Certain people might disagree with this.",
                            kurdishText:
                                "کەسانی دیاریکراو لەوانەیە ناڕازی بن لەگەڵ ئەمە.",
                            onPressedBritish: () => speakcertains9("en-GB"),
                            onPressedAmerican: () => speakcertains9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This car appeals to a certain type of driver.",
                            kurdishText:
                                "ئۆتۆمبێلەکە بۆ جۆرە شۆفێرێکی دیاریکراوە.",
                            onPressedBritish: () => speakcertains10("en-GB"),
                            onPressedAmerican: () => speakcertains10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They refused to release their hostages unless certain conditions were met.",
                            kurdishText:
                                "ڕەتیان کردەوە زیندانییەکان ئازادبکەن مەگەر ئەوەی ژمارەیەک مەرجی دیاریکراو بەدیبھێندرێن.",
                            onPressedBritish: () => speakcertains11("en-GB"),
                            onPressedAmerican: () => speakcertains11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) کەمێک بەشێوەیەک کە ئاسانە ببیندرێت بەڵام باس ناکرێت"),
                          SentencesRow(
                            englishText: "That's true, to a certain extent.",
                            kurdishText: "ئەوە ڕاستە، تا ئاستێک.",
                            onPressedBritish: () => speakcertains12("en-GB"),
                            onPressedAmerican: () => speakcertains12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) لەگەڵ ناوی کەسێک بەکاردێت بۆ وتنی ئەوەی ئاخێوەر کەسەکە ناناسێت"),
                          SentencesRow(
                            englishText:
                                "It was a certain Dr Davis who performed the operation.",
                            kurdishText:
                                "کەسێک بەناوی دکتۆر دەیڤس بوو کە نەشتەرگەرییەکەی کرد.",
                            onPressedBritish: () => speakcertains13("en-GB"),
                            onPressedAmerican: () => speakcertains13("en-US"),
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
- Adjective: certain 
1. Having or feeling no doubt or uncertainty; confident and assured (= sure)
"felt certain of success"; "was certain she had seen it";
 
2. Established beyond doubt or question; definitely known
"what is certain is that every effect must have a cause"; "it is certain that they were on the bus"; "his fate is certain"; "the date for the invasion is certain"
 
3. Definite but not specified or identified
"set aside a certain sum each week"; "to a certain degree"; "certain breeds do not make good pets"; "certain members have not paid their dues"; "a certain popular teacher"; "a certain Mrs. Jones"
 
4. Certain to occur; destined or inevitable (= sure)
"he was certain to fail"; "his fate is certain"; "In this life nothing is certain but death and taxes"; "he faced certain death";
 
5. Established irrevocably (= sealed)
"his fate is certain";
 
6. Reliable in operation or effect (= sure)
"a quick and certain remedy";
 
7. Exercising or taking care great enough to bring assurance (= sure)
"be certain to disconnect the iron when you are through";
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

  final String _videoId = 'rwQeKSlY56Q';
  final double _startSeconds = 98;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'v1QUfGN5OE0';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'cKM_D3AjG-I';
  final double _startSeconds = 18;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'n_6OeeB_LY8';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'AByf89Xp0W4';
  final double _startSeconds = 294;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'nE8nQZPfYpY';
  final double _startSeconds = 436;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'K7zPFqStP0c';
  final double _startSeconds = 43;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1053;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
