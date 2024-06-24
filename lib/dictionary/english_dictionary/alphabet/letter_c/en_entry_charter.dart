import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycharter extends StatelessWidget {
  // blank divider
  EnglishEntrycharter({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharter(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("charter");
  }

  Future<void> speakcharters1(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He fought for a social charter of workers' rights.");
  }

  Future<void> speakcharters2(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Minority rights are protected by the UN charter.");
  }

  Future<void> speakcharters3(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Education is one of the basic human rights written into the United Nations Charter.");
  }

  Future<void> speakcharters4(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The BBC's charter was due to be renewed.");
  }

  Future<void> speakcharters5(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were given this right by royal charter.");
  }

  Future<void> speakcharters6(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They flew to Athens and then chartered a boat to the island.");
  }

  Future<void> speakcharters7(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Special trains were chartered to take them to the festival.");
  }

  Future<void> speakcharters8(String languageCode) async {
    // DOPSUM: CHANGE speakcharter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cambridge University Press was chartered in 1534.");
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
                            EntryTitle(word: "charter"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃɑːtə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃɑːrtər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharter("en-US"),
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
کوردی: دەستوور، فەرمان، بڕیار، بڵاونامە، ڕاگەیاندن‌نامە، دەستوورنامە،	(فڕۆکە، کەشتی و ھتد) کرێ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دەستوورێکی نووسراو کە ئەو مافانە دیاری دەکات کە گرووپێک لە خەڵکی دەبێت ھەیان بێت"),
                          SentencesRow(
                            englishText:
                                "He fought for a social charter of workers' rights.",
                            kurdishText:
                                "تێکۆشا بۆ دەستوورێکی کۆمەڵایەتی مافەکانی کرێکاران.", // charter",
                            onPressedBritish: () => speakcharters1("en-GB"),
                            onPressedAmerican: () => speakcharters1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Minority rights are protected by the UN charter.",
                            kurdishText:
                                "مافەکانی کەمینەکان لەلایەن دەستووری نەتەوە یەکگرتووەکانەوە پارێزراوە.",
                            onPressedBritish: () => speakcharters2("en-GB"),
                            onPressedAmerican: () => speakcharters2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ڕێسا و ئامانجی دامەزراوەیەک"),
                          SentencesRow(
                            englishText:
                                "Education is one of the basic human rights written into the United Nations Charter.",
                            kurdishText:
                                "خوێندن یەکێک لە مافە سەرەتاییەکانی مرۆڤە کە لە دەستووری نەتەوە یەکگرتووەکان نووسراوە.",
                            onPressedBritish: () => speakcharters3("en-GB"),
                            onPressedAmerican: () => speakcharters3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بەڵگەنامەیەکی فەرمی کە ڕایدەگەیەنێت کە حکومەتێک یان سەرکردەیەکی سیاسی ڕێگا بە دامەزراندنی دامەزراوەیەک، شارۆچکەیەک، یان زانکۆیەک دەدات و مافی خۆی پێ دەدات"),
                          SentencesRow(
                            englishText:
                                "The BBC's charter was due to be renewed.",
                            kurdishText:
                                "مۆڵەتی بی‌بی‌سی کاتی نوێکردنەوەی بوو.",
                            onPressedBritish: () => speakcharters4("en-GB"),
                            onPressedAmerican: () => speakcharters4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They were given this right by royal charter.",
                            kurdishText:
                                "ئەم مافەیان لەلایەن دەستوورنامەی شاھانەییەوە پێدرا.",
                            onPressedBritish: () => speakcharters5("en-GB"),
                            onPressedAmerican: () => speakcharters5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بەکرێگرتنی فڕۆکەیەک، بەلەمێک، ھتد بۆ بەکارھێنانی خۆت"),
                          SentencesRow(
                            englishText:
                                "They flew to Athens and then chartered a boat to the island.",
                            kurdishText:
                                "فڕین بۆ ئەسینا و دواتر بەلەمێکیان بەکرێ گرت بۆ دوورگەکە.",
                            onPressedBritish: () => speakcharters6("en-GB"),
                            onPressedAmerican: () => speakcharters6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Special trains were chartered to take them to the festival.",
                            kurdishText:
                                "شەمەندەفەری تایبەت بەکرێ گیردرا  بۆ بردنیان بۆ فیستیڤاڵەکە.",
                            onPressedBritish: () => speakcharters7("en-GB"),
                            onPressedAmerican: () => speakcharters7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بە فەرمی دەستپێکردنی دامەزراوەیەکی تازە بە مۆڵەتپێدانی"),
                          SentencesRow(
                            englishText:
                                "Cambridge University Press was chartered in 1534.",
                            kurdishText:
                                "دەزگای چاپی زانکۆی کامبریج لە ساڵی ١٥٣٤ دامەزرا.",
                            onPressedBritish: () => speakcharters8("en-GB"),
                            onPressedAmerican: () => speakcharters8("en-US"),
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
                        YoutubeEmbeddedeight(), //
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
- Noun: charter (derived forms: charters) 
1. A document incorporating an institution and specifying its rights; includes the articles of incorporation and the certificate of incorporation
 
2. A contract to hire or lease transportation

- Verb: charter (derived forms: chartered, chartering, charters)
1. Hold under a lease or rental agreement; of goods and services (= rent, hire, lease)
 
2. Grant a charter to
 
3. Engage for service under a term of contract (= lease, rent, hire, engage, take)
"Let's charter a car";
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

  final String _videoId = 'nF2PRqKQ_lA';
  final double _startSeconds = 49;

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

  final String _videoId = 'r0BZHuNTtHs';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'f5NJQiY9AuY';
  final double _startSeconds = 325;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 271;

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

  final String _videoId = 'ua4oFVz39vM';
  final double _startSeconds = 489;

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

  final String _videoId = '17WC8H_Ugm4';
  final double _startSeconds = 418;

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

  final String _videoId = 'mqxgP8WlxJQ';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'XFJnWp1tAdU';
  final double _startSeconds = 298;

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

  final String _videoId = 'Xc4YH0nv_90';
  final double _startSeconds = 603;

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
