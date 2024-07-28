import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclosely extends StatelessWidget {
  // blank divider
  EnglishEntryclosely({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclosely(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("closely");
  }

  Future<void> speakcloselys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He walked into the room, closely followed by the rest of the family.");
  }

  Future<void> speakcloselys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two species are closely related.");
  }

  Future<void> speakcloselys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two events are closely connected.");
  }

  Future<void> speakcloselys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The country's economy remains closely tied to oil.");
  }

  Future<void> speakcloselys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The organization works closely with customers in nearly 100 countries.");
  }

  Future<void> speakcloselys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Royal Navy was closely involved in the early development of wireless technology.");
  }

  Future<void> speakcloselys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They collaborated closely together for the next four years.");
  }

  Future<void> speakcloselys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I sat and watched everyone very closely.");
  }

  Future<void> speakcloselys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We will be closely monitoring the situation.");
  }

  Future<void> speakcloselys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She closely resembled her mother at the same age.");
  }

  Future<void> speakcloselys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was an exciting game between two closely matched teams.");
  }

  Future<void> speakcloselys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a closely fought election.");
  }

  Future<void> speakcloselys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had a closely shaved head and a small, neat beard.");
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
                            EntryTitle(word: "closely"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkləʊsli/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclosely("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkləʊsli/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclosely("en-US"),
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
کوردی: بە وردی، ورد، لە پاڵ‌یەک‌دا، نزیک‌بەیەک
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵکار) لە نزیکەوە"),
                          SentencesRow(
                            englishText:
                                "He walked into the room, closely followed by the rest of the family.",
                            kurdishText:
                                "ھاتە ژوورەکەوە و نزیک لە دواییەوە ئەندامانی دیکەی خێزانەکەی بوون.", // closely",
                            onPressedBritish: () => speakcloselys1("en-GB"),
                            onPressedAmerican: () => speakcloselys1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) نزیک لە پەیوەندیدا، بۆ نموونە پەیوەندی خێزانیدا"),
                          SentencesRow(
                            englishText: "The two species are closely related.",
                            kurdishText: "دوو چەشنەکە نزیکن لە یەکەوە.",
                            onPressedBritish: () => speakcloselys2("en-GB"),
                            onPressedAmerican: () => speakcloselys2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵکار) ھەبوونی پەیوەندییەکی بەھێز"),
                          SentencesRow(
                            englishText:
                                "The two events are closely connected.",
                            kurdishText: "دوو بۆنەکە بە توندی پەیوەندیدارن.",
                            onPressedBritish: () => speakcloselys3("en-GB"),
                            onPressedAmerican: () => speakcloselys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The country's economy remains closely tied to oil.",
                            kurdishText:
                                "ئابووری وڵاتەکە ھێشتا بە توندی پەیوەستە بە نەوتەوە.",
                            onPressedBritish: () => speakcloselys4("en-GB"),
                            onPressedAmerican: () => speakcloselys4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵکار) بەشێوەیەک کە پیشانی دەدات کە زۆر چالاکیت لە کار و چالاکی کەسێکی تردا"),
                          SentencesRow(
                            englishText:
                                "The organization works closely with customers in nearly 100 countries.",
                            kurdishText:
                                "دامەزراوەکە لە نزیکەوە کار دەکات لەگەڵ کڕیاران لە ١٠٠ وڵاتەوە.",
                            onPressedBritish: () => speakcloselys5("en-GB"),
                            onPressedAmerican: () => speakcloselys5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The Royal Navy was closely involved in the early development of wireless technology.",
                            kurdishText:
                                "ھێزی دەریایی شاھانەیی بە چڕی بەژدار بوو لە گەشەپێدانی سەرەتایی تەکنەلۆژیای وایەرلێس.",
                            onPressedBritish: () => speakcloselys6("en-GB"),
                            onPressedAmerican: () => speakcloselys6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They collaborated closely together for the next four years.",
                            kurdishText:
                                "بۆ سێ ساڵی دواتر لە نزیکەوە ھاوئاھەنگ بوون.",
                            onPressedBritish: () => speakcloselys7("en-GB"),
                            onPressedAmerican: () => speakcloselys7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵکار) بە وریاییەوە"),
                          SentencesRow(
                            englishText:
                                "I sat and watched everyone very closely.",
                            kurdishText:
                                "دانیشتم و بە وریاییەوە لە ھەموانم ڕوانی.",
                            onPressedBritish: () => speakcloselys8("en-GB"),
                            onPressedAmerican: () => speakcloselys8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We will be closely monitoring the situation.",
                            kurdishText: "لە نزیکەوە چاودێری دۆخەکە دەکەین.",
                            onPressedBritish: () => speakcloselys9("en-GB"),
                            onPressedAmerican: () => speakcloselys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵکار) بە شێوەیەک کە زۆر لێکچووە لەگەڵ کەسێک/شتێکی تردا"),
                          SentencesRow(
                            englishText:
                                "She closely resembled her mother at the same age.",
                            kurdishText: "زۆر لە دایکی دەچوو لە ھەمان تەمەندا.",
                            onPressedBritish: () => speakcloselys10("en-GB"),
                            onPressedAmerican: () => speakcloselys10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It was an exciting game between two closely matched teams.",
                            kurdishText:
                                "یارییەکی بەجۆش بوو لە نێوان دوو تیمە زۆر ھاوشانەکەدا.",
                            onPressedBritish: () => speakcloselys12("en-GB"),
                            onPressedAmerican: () => speakcloselys12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵکار) بە جۆرێک کە تەنھا بە جیاوازییەکی کەم دەبرێتەوە"),
                          SentencesRow(
                            englishText: "It was a closely fought election.",
                            kurdishText: "ھەڵبژاردنێکی پڕ ڕکابەری بوو.",
                            onPressedBritish: () => speakcloselys13("en-GB"),
                            onPressedAmerican: () => speakcloselys13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ھاوەڵکار) بە شێوەیەک کە زۆر بڕدراوە"),
                          SentencesRow(
                            englishText:
                                "He had a closely shaved head and a small, neat beard.",
                            kurdishText:
                                "قژێکی زۆر بڕدراوی ھەبوو لەگەڵ ڕیشێکی کورت و ڕێک‌وپێک.",
                            onPressedBritish: () => speakcloselys14("en-GB"),
                            onPressedAmerican: () => speakcloselys14("en-US"),
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
- Adverb: closely 
1. In a close relation or position in time or space
"the onsets were closely timed"; "houses set closely together"; "was closely involved in monitoring daily progress"
 
2. In an attentive manner (= close, tight)
"he remained closely on his guard";
 
3. In a close manner (= intimately, nearly)
"the two phenomena are closely connected";
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

  final String _videoId = '1ZbT1Njv6xA';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'l7ce8Fd22NA';
  final double _startSeconds = 435;

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

  final String _videoId = 'n4_7qY0IEno';
  final double _startSeconds = 61;

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

  final String _videoId = 'Stl6OZo7wzg';
  final double _startSeconds = 368;

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

  final String _videoId = 'Fi6gbNfd3SA';
  final double _startSeconds = 72;

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

  final String _videoId = '1_FyoPDsuGc';
  final double _startSeconds = 145;

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

  final String _videoId = 'zRXEcG-Oujk';
  final double _startSeconds = 175;

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

  final String _videoId = '7StMf5YWQ_s';
  final double _startSeconds = 602;

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