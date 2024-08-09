import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontempt extends StatelessWidget {
// blank divider
  EnglishEntrycontempt({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontempt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contempt");
  }

  Future<void> speakcontempts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She looked at him with contempt.");
  }

  Future<void> speakcontempts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I shall treat that suggestion with the contempt it deserves.");
  }

  Future<void> speakcontempts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Politicians seem to be generally held in contempt by ordinary people.");
  }

  Future<void> speakcontempts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has a deep contempt for racists.");
  }

  Future<void> speakcontempts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The firefighters showed a contempt for their own safety.");
  }

  Future<void> speakcontempts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His remarks betray a staggering contempt for the truth.");
  }

  Future<void> speakcontempts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He could be jailed for two years for contempt.");
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
                            EntryTitle(word: "contempt"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtempt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontempt("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtempt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontempt("en-US"),
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
کوردی: سووکایەتی، سووکی‌پێکردن، ئابڕووبردن، شرت‌وشۆدەرھێنان،	سووکی، نزمی، چروکی، گوێ‌پێنەدان، بەھێندنەگرتن،	بێزاری،	بی‌ڕێزی، بێ‌حورمەتی،	سووکایەتی بە دادگا
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ئەو ھەستەی کە کەسێک ھیچ نرخی نییە و شایەنی ڕێز نییە"),
                          SentencesRow(
                            englishText: "She looked at him with contempt.",
                            kurdishText: "بە سووکی سەیری کرد.", // contempt",
                            onPressedBritish: () => speakcontempts1("en-GB"),
                            onPressedAmerican: () => speakcontempts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I shall treat that suggestion with the contempt it deserves.",
                            kurdishText:
                                "بەو سووکیەوە لەو پێشنیارە دەڕوانم کە شایەنیەتی.",
                            onPressedBritish: () => speakcontempts2("en-GB"),
                            onPressedAmerican: () => speakcontempts2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Politicians seem to be generally held in contempt by ordinary people.",
                            kurdishText:
                                "سیاسەتوانان بەشێوەیەکی گشتی وادەردەکەون بە سووک لەلایەن خەڵکانی ئاساییەوە سەیر بکرێن.",
                            onPressedBritish: () => speakcontempts3("en-GB"),
                            onPressedAmerican: () => speakcontempts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He has a deep contempt for racists.",
                            kurdishText:
                                "بێ‌ڕێزییەکی زۆری بۆ ڕەگەزپەرستان ھەیە.",
                            onPressedBritish: () => speakcontempts4("en-GB"),
                            onPressedAmerican: () => speakcontempts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) گرنگی نەدان بە یاسا، مەترسی، ھتد"),
                          SentencesRow(
                            englishText:
                                "The firefighters showed a contempt for their own safety.",
                            kurdishText:
                                "ئاگرکوژێنەوەکان بەھێندنەگرتنیان بۆ سەلامەتی خۆیان پیشان دەدا.",
                            onPressedBritish: () => speakcontempts5("en-GB"),
                            onPressedAmerican: () => speakcontempts5("en-US"),
                          ),
                          // const DividerSentences(),
                          // Row(
                          // children: [
                          // const Expanded(
                          // child: Column(
                          // children: [
                          // ExampleSentenceEnglish(
                          // text:
                          // "His remarks betray a staggering contempt for the truth (= are completely false)."),
                          // ExampleSentenceKurdish(
                          // text: "لێدوانەکانی."),
                          // ],
                          // ),
                          // ),
                          // const CustomSizedBoxForTTS(),
                          // Column(
                          // children: [
                          // CustomIconButtonBritish(
                          // onPressed: () => speakcontempts6("en-GB"),
                          // ),
                          // CustomIconButtonAmerican(
                          // onPressed: () => speakcontempts6("en-US"),
                          // ),
                          // ],
                          // ),
                          // ],
                          // ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) تاوانی پشتگوێ خستنی بڕیاری دادگا"),
                          SentencesRow(
                            englishText:
                                "He could be jailed for two years for contempt.",
                            kurdishText:
                                "دەکرێت بۆ دوو ساڵ بەند بکرێت بۆ سووکایەتی بە دادگا.",
                            onPressedBritish: () => speakcontempts7("en-GB"),
                            onPressedAmerican: () => speakcontempts7("en-US"),
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
- Noun: contempt (derived forms: contempts)
1. Lack of respect accompanied by a feeling of intense dislike (= disdain, scorn, despite)
"he was held in contempt";
 
2. A manner that is generally disrespectful and contemptuous (= disrespect)
 
3. Open disrespect for a person or thing (= scorn)
 
4. (law) a wilful disobedience to or disrespect for the authority of a court or legislative body
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

  final String _videoId = 'QyL9P1ccy-w';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Zad6v8ZHzdg';
  final double _startSeconds = 1188;

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

  final String _videoId = 'pNuqON3U-qg';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'LQk4t5rUQXA';
  final double _startSeconds = 272;

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

  final String _videoId = 'Dl4dSVf7kgY';
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

  final String _videoId = 'd5CYQtKM9Ek';
  final double _startSeconds = 223;

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

  final String _videoId = 'LKq7Hk8hdWw';
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

// end WORD_WEB