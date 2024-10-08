import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycaution extends StatelessWidget {
  EnglishEntrycaution({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcaution(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("caution");
  }

  Future<void> speakcautions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Statistics should be treated with caution.");
  }

  Future<void> speakcautions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The information on the website should be treated with some caution.");
  }

  Future<void> speakcautions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The utmost caution must be exercised when handling explosives.");
  }

  Future<void> speakcautions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As a first offender, she got off with a caution.");
  }

  Future<void> speakcautions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Some cautions must be mentioned—for example good tools are essential to do the job well.");
  }

  Future<void> speakcautions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I would caution against getting too involved.");
  }

  Future<void> speakcautions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Sam cautioned him against making a hasty decision.");
  }

  Future<void> speakcautions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Suspects must be cautioned before any questions are asked.");
  }

  Future<void> speakcautions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She wasn't sent to the court; instead she was cautioned.");
  }

  Future<void> speakcautions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcautions1010");
  }

  Future<void> speakcautions11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcautions1111");
  }

  Future<void> speakcautions12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcautions1212");
  }

  Future<void> speakcautions13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcautions1313");
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
                            EntryTitle(word: "caution"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɔːʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcaution("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɔːʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcaution("en-US"),
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
کوردی: ھۆشیاری، پارێز، ئاگادارکردنەوە، وریاکردنەوە، بەگوێ‌دادادن، ھۆشداری، دوابینی، تێبینی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ھۆشیارییەک کە دەیگریتە بەر بۆ ئەوەی لە مەترسی و ھەڵە دووربیت"),
                          SentencesRow(
                            englishText:
                                "Statistics should be treated with caution.",
                            kurdishText:
                                "ئامارەکان دەبێت بە پارێزەەو وەربگیردرێن.",
                            onPressedBritish: () => speakcautions1("en-GB"),
                            onPressedAmerican: () => speakcautions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The information on the website should be treated with some caution.",
                            kurdishText:
                                "زانیاری سەر وێبسایتەکە دەبێت بە وریاییەوە وەربگیردرێت.",
                            onPressedBritish: () => speakcautions2("en-GB"),
                            onPressedAmerican: () => speakcautions2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The utmost caution must be exercised when handling explosives.",
                                    kurdishText:
                                        "ئەوپەڕی وریایی دەبێت بگیردرێتەبەر لەکاتی مامەڵە لەگەڵ تەقەمەنیدا.",
                                    onPressedBritish: () =>
                                        speakcautions3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcautions3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئاگادارییەک کە لەلایەن پۆلیسەوە دەدرێت بە کەسێک کە تاوانێکی سووکی کردووە"),
                          SentencesRow(
                            englishText:
                                "As a first offender, she got off with a caution.",
                            kurdishText:
                                "وەک یەکەم تاوانباریی، بە ئاگادارکردنەوەیەک ڕزگاری بوو.",
                            onPressedBritish: () => speakcautions4("en-GB"),
                            onPressedAmerican: () => speakcautions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئاگادارکردنەوەیەک یان ڕاوێژێک سەبارەت بە مەترسییەک"),
                          SentencesRow(
                            englishText:
                                "Some cautions must be mentioned—for example good tools are essential to do the job well.",
                            kurdishText:
                                "ھەندێک ھۆشداری دەبێت بگیردرێتەبەر، بح نموونە ئامرازی باش بنچینەیین بۆ کردنی کارەکە بەباشی.",
                            onPressedBritish: () => speakcautions5("en-GB"),
                            onPressedAmerican: () => speakcautions5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ئاگادارکردنەوەی کەسێک سەبارەت بە مەترسی یان کێشەکانی شتێک"),
                          SentencesRow(
                            englishText:
                                "I would caution against getting too involved.",
                            kurdishText: "ھۆشداری دەدەم دژ بە زۆر تێوەگلان.",
                            onPressedBritish: () => speakcautions6("en-GB"),
                            onPressedAmerican: () => speakcautions6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Sam cautioned him against making a hasty decision.",
                            kurdishText:
                                "سام ھۆشداری پێدا دژ بە بڕیاردانی بەپەلە.",
                            onPressedBritish: () => speakcautions7("en-GB"),
                            onPressedAmerican: () => speakcautions7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بە فەرمی ھۆشداریدان بە کەسێک کە ھەرچی بڵێت دەکرێت لە دادگا دژی بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "Suspects must be cautioned before any questions are asked.",
                            kurdishText:
                                "گومان‌لێ‌کراوان دەبێت وریابکرێنەوە پێش ئەوەی ھیچ پرسیارێک بکردرێت.",
                            onPressedBritish: () => speakcautions8("en-GB"),
                            onPressedAmerican: () => speakcautions8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ئاگادارکردنەوەی کەسێک کە سزا دەدرێت ئەگەر تاوانێکی دیکە بکات"),
                          SentencesRow(
                            englishText:
                                "She wasn't sent to the court; instead she was cautioned.",
                            kurdishText:
                                "نەبردرا بۆ دادگا، لە جیاتیدا ھۆشداری پێدرا.",
                            onPressedBritish: () => speakcautions9("en-GB"),
                            onPressedAmerican: () => speakcautions9("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: caution (derived forms: cautioned, cautions, cautioning)
1. Warn strongly; put on guard (= admonish, monish)

- Noun: caution (derived forms: cautions)
1. The trait of being cautious; being attentive to possible danger (= cautiousness, carefulness)
"a man of caution";

2. A warning against certain acts (= caveat)
"a caution against unfair practices";
 
3. Judiciousness in avoiding harm or danger (= precaution, care, forethought)
"he exercised caution in opening the door";
 
4. The trait of being circumspect and prudent (= circumspection)
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

  final String _videoId = 'bFl3_J2gBu4';
  final double _startSeconds = 147;

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

  final String _videoId = '9GR3XSuInYE';
  final double _startSeconds = 864;

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

  final String _videoId = 'NWGVFi-213w';
  final double _startSeconds = 285;

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

  final String _videoId = 'dxqYDrELD_E';
  final double _startSeconds = 284;

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

  final String _videoId = 'l2FuvKTyRMQ';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '1uNpjqH-mQQ';
  final double _startSeconds = 500;

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

  final String _videoId = 'qtlPTE-UmY4';
  final double _startSeconds = 553;

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

  final String _videoId = 'VTzKIs19eZE';
  final double _startSeconds = 372;

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
