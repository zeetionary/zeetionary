import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontrast extends StatelessWidget {
  EnglishEntrycontrast({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontrast(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contrast");
  }

  Future<void> speakcontrasts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The two cities make an interesting contrast.");
  }

  Future<void> speakcontrasts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is an obvious contrast between the cultures of East and West.");
  }

  Future<void> speakcontrasts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In contrast, the south suffered very little hurricane damage.");
  }

  Future<void> speakcontrasts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The situation when we arrived was in marked contrast to the news reports.");
  }

  Future<void> speakcontrasts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The work you did today is quite a contrast to what you did last week.");
  }

  Future<void> speakcontrasts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This busy social life was a complete contrast to his old quiet life.");
  }

  Future<void> speakcontrasts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The artist's use of contrast is masterly.");
  }

  Future<void> speakcontrasts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Use this button to adjust the contrast.");
  }

  Future<void> speakcontrasts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The poem contrasts youth and age.");
  }

  Future<void> speakcontrasts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If you contrast some of her early writing with her later work, you can see just how much she improved.");
  }

  Future<void> speakcontrasts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her actions contrasted sharply with her promises.");
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
                            EntryTitle(word: "contrast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntrɑːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontrast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntræst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontrast("en-US"),
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
کوردی: ھەڵسەنگاندن، پێک‌گرتن، بەراوردکردن،	دژایەتی، پۆزبەری، لێک‌نەھاتن، یەک‌نەگرتنەوە، جیاوازی، ناکۆکی،	پێچەوانە، ئاوەژوو،	شتێکی جیاواز
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) جیاوازی نێوان دوو یان زیاتر لە کەس یان شت کە دەتوانیت بە ڕوونی بیبینیت کاتێک بەراورد دەکرێن یان لەگەڵ یەکدی دادەنرێن"),
                          SentencesRow(
                            englishText:
                                "The two cities make an interesting contrast.",
                            kurdishText:
                                "دوو شارەکە بەراوردکردنێکی سەرنجڕاکێش درووست دەکەن.",
                            onPressedBritish: () => speakcontrasts1("en-GB"),
                            onPressedAmerican: () => speakcontrasts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There is an obvious contrast between the cultures of East and West.",
                            kurdishText:
                                "جیاوازییەکی ئاشکرا ھەیە لە نێوان کەلتووری ڕۆژھەڵات و ڕۆژئاوادا.",
                            onPressedBritish: () => speakcontrasts2("en-GB"),
                            onPressedAmerican: () => speakcontrasts2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In contrast, the south suffered very little hurricane damage.",
                            kurdishText:
                                "لە بەرامبەردا، بەشی باشوور زیانێکی زۆر کەمی بەھۆی زریانەکانەوە بەرکەوت..",
                            onPressedBritish: () => speakcontrasts3("en-GB"),
                            onPressedAmerican: () => speakcontrasts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The situation when we arrived was in marked contrast to the news reports.",
                            kurdishText:
                                "کە گەشتین دۆخەکە لە جیاوازییەکی زەقدا بوو لەگەڵ ئەوەی لە ھەواڵدا ڕەگەیەندرابوو.",
                            onPressedBritish: () => speakcontrasts4("en-GB"),
                            onPressedAmerican: () => speakcontrasts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەسێک یان شتێک کە تەواو جیاوازە لە یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "The work you did today is quite a contrast to (= very much better/worse than) what you did last week.",
                            kurdishText:
                                "ئەو کارەی ئەمڕۆ کردت تەواو جیاوازە لەوەی ھەفتەی ڕابردوو کردت.",
                            onPressedBritish: () => speakcontrasts5("en-GB"),
                            onPressedAmerican: () => speakcontrasts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This busy social life was a complete contrast to his old quiet life.",
                            kurdishText:
                                "ئەم ژیانە کۆمەڵایەتییە جەنجاڵە ڕێک پێچەوانەی ژیانە ئارامە کۆنەکەیەتی.",
                            onPressedBritish: () => speakcontrasts6("en-GB"),
                            onPressedAmerican: () => speakcontrasts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) جیاوازی ڕەنگی تاریک و ڕۆشن کە لە وێنە و تابلۆدا بەکاردێت بۆ درووستکردنی کاریگەری تایبەت"),
                          SentencesRow(
                            englishText:
                                "The artist's use of contrast is masterly.",
                            kurdishText:
                                "بەکارھێنانی کۆنتراستی ھونەرمەندەکە شارەزایانەیە.",
                            onPressedBritish: () => speakcontrasts7("en-GB"),
                            onPressedAmerican: () => speakcontrasts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕێژەی جیاوازی ڕەنگی تاریک و ڕۆشن لە وێنەیەکدا یان شاشەی تەلەفیزیۆنێک"),
                          SentencesRow(
                            englishText:
                                "Use this button to adjust the contrast.",
                            kurdishText:
                                "ئەم دووگمەیە بەکاربھێنە بۆ چاککردنی کۆنتراستەکە.",
                            onPressedBritish: () => speakcontrasts8("en-GB"),
                            onPressedAmerican: () => speakcontrasts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بەراوردکردنی دوو شت بۆ پیشاندانی جیاوازی نێوانیان"),
                          SentencesRow(
                            englishText: "The poem contrasts youth and age.",
                            kurdishText:
                                "ھۆنراوەکە جیاوازی نێوان گەنجی و پیری دەکات.",
                            onPressedBritish: () => speakcontrasts9("en-GB"),
                            onPressedAmerican: () => speakcontrasts9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If you contrast some of her early writing with her later work, you can see just how much she improved.",
                            kurdishText:
                                "ئەگەر ھەندێک لە نووسینەکانی سەرەتای بەراورد بکەیت لەگەڵ کارەکانی دواتریدا، دەتوانیت ببینیت چەندە باشتربووە.",
                            onPressedBritish: () => speakcontrasts10("en-GB"),
                            onPressedAmerican: () => speakcontrasts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دەرخستنی جیاوازی کە بەراوردکاری دەکرێت"),
                          SentencesRow(
                            englishText:
                                "Her actions contrasted sharply with her promises.",
                            englishNote:
                                "also: Her actions and her promises contrasted sharply.",
                            kurdishText:
                                "کردارەکانی تەواو پێچەوانەی بەڵێنەکانین.",
                            onPressedBritish: () => speakcontrasts11("en-GB"),
                            onPressedAmerican: () => speakcontrasts11("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: contrast (derived forms: contrasts)
1. The opposition or dissimilarity of things that are compared (= direct contrast)
"by contrast"; "in contrast to";
 
2. The act of distinguishing by comparing differences
 
3. A conceptual separation or distinction (= line, dividing line, demarcation)
"there is a narrow contrast between sanity and insanity";
 
4. The perceptual effect of the juxtaposition of very different colours
 
5. (photography) the range of optical density and tone on a photographic negative or print (or the extent to which adjacent areas on a television screen differ in brightness)

- Verb: contrast (derived forms: contrasts, contrasting, contrasted)
1. Put in opposition to show or emphasize differences
"The middle school teacher contrasted her best student's work with that of her weakest student"
 
2. To show differences when compared; be different (= counterpoint)
"the students contrast considerably in their artistic abilities";
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

  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 1603;

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

  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 853;

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

  final String _videoId = 'rN9NzgryhMY';
  final double _startSeconds = 1002;

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

  final String _videoId = 'UnY4i59Dp0s';
  final double _startSeconds = 108;

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

  final String _videoId = 'jgfAimljT70';
  final double _startSeconds = 455;

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

  final String _videoId = 'IjWQqNKYa6A';
  final double _startSeconds = 407;

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

  final String _videoId = 'Dl4dSVf7kgY';
  final double _startSeconds = 294;

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