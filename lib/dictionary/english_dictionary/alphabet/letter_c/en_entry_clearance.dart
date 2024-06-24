import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclearance extends StatelessWidget {
  // blank divider
  EnglishEntryclearance({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclearance(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clearance");
  }

  Future<void> speakclearances1(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These coats are on clearance.");
  }

  Future<void> speakclearances2(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Much of the area was bulldozed into oblivion in a wave of slum clearances.");
  }

  Future<void> speakclearances3(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is not much clearance for vehicles passing under this bridge.");
  }

  Future<void> speakclearances4(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Always give cyclists plenty of clearance.");
  }

  Future<void> speakclearances5(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Formal clearance by the Cabinet has not been given.");
  }

  Future<void> speakclearances6(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is safest to seek advance clearance from the tax office.");
  }

  Future<void> speakclearances7(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pilot was waiting for clearance for take-off.");
  }

  Future<void> speakclearances8(String languageCode) async {
    // DOPSUM: CHANGE speakclearance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pilot was granted clearance to land.");
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
                            EntryTitle(word: "clearance"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈklɪərəns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclearance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈklɪrəns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclearance("en-US"),
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
کوردی: خاوێن‌کردنەوە، سڕینەوە، پاکتاو، پاک‌کردنەوە،	دەس‌پێوەنان (کەل‌وپەل)،	مەودای ئازاد، مەودای پاراستن، مەودای پێویست، ماوەی پێویست، جێگا، مەودای تیاھەڵسووڕان،	(ھاتووچۆ)، ڕێدان، ڕێگەدانی فەرمی، دەستوور (پێدان)،	کۆسپ‌لابردن یان ڕاپەڕاندن،	(تۆپێن و ھاکی) لێدان، (تێ)ھەڵدان
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) پڕۆسەی پاککردنەوە"),
                          SentencesRow(
                            englishText: "These coats are on clearance.",
                            kurdishText:
                                "ئەم پاڵتاوانە لە پاککردنەوەن.", // clearance",
                            onPressedBritish: () => speakclearances1("en-GB"),
                            onPressedAmerican: () => speakclearances1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Much of the area was bulldozed into oblivion in a wave of slum clearances.",
                            kurdishText:
                                "زۆرێک لە ناوچەکە تەختی زەوی کرا لە پڕۆسەیەکی پاککردنەوەی کەلاوەکان.",
                            onPressedBritish: () => speakclearances2("en-GB"),
                            onPressedAmerican: () => speakclearances2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئەو ڕێژە لە شوێن کە پێویستە لە نێوان دوو شتدا بۆ ئەوەی بەریەکدی نەکەون"),
                          SentencesRow(
                            englishText:
                                "There is not much clearance for vehicles passing under this bridge.",
                            kurdishText:
                                "زۆر مەودا نییە بۆ بارھەڵگر بۆ تێپەڕبوون بە ژێر ئەم پردەدا.",
                            onPressedBritish: () => speakclearances3("en-GB"),
                            onPressedAmerican: () => speakclearances3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Always give cyclists plenty of clearance.",
                            kurdishText:
                                "ھەمیشە مەودای فراوان بدە بە پاسکیلسواران.",
                            onPressedBritish: () => speakclearances4("en-GB"),
                            onPressedAmerican: () => speakclearances4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) مۆڵەتی فەرمی کە دەدرێت بە کەسێک پێش ئەوەی دەست بە کارکردنێک بکەن، زانیارییەک وەربگرن، یان شتێک بکەن کە دەیانەوێت"),
                          SentencesRow(
                            englishText:
                                "Formal clearance by the Cabinet has not been given.",
                            kurdishText:
                                "مۆڵەتی فەرمی لەالیەن حکومەتەوە نەدراوە.",
                            onPressedBritish: () => speakclearances5("en-GB"),
                            onPressedAmerican: () => speakclearances5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It is safest to seek advance clearance from the tax office.",
                            kurdishText:
                                "باشترین ئەوە دەبێت مۆڵەتی پێشوەختە لە ئۆفیسی باجدانەوە وەربگریت.",
                            onPressedBritish: () => speakclearances6("en-GB"),
                            onPressedAmerican: () => speakclearances6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) مۆڵەتی فەرمی بۆ کەسێک، کەشتییەک، یان فڕۆکەیەک کە بچێتە شوێنێکەوە یان جێیبھێڵێت"),
                          SentencesRow(
                            englishText:
                                "The pilot was waiting for clearance for take-off.",
                            kurdishText:
                                "فڕۆکەوانەکە چاوەڕێی مۆڵەت بوو بۆ فڕین.",
                            onPressedBritish: () => speakclearances7("en-GB"),
                            onPressedAmerican: () => speakclearances7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The pilot was granted clearance to land.",
                            kurdishText: "فڕۆکەوانەکە مۆڵەتی نیشتنەوەی پێدرا.",
                            onPressedBritish: () => speakclearances8("en-GB"),
                            onPressedAmerican: () => speakclearances8("en-US"),
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
- Noun: clearance (derived forms: clearances)
1. The distance by which one thing clears another; the space between them
 
2. Vertical space available to allow easy passage under something (= headroom, headway)
 
3. Permission to proceed
"the plane was given clearance to land"
 
4. Official permission or approval (= authority, authorization, authorisation [Brit], sanction)
"clearance for the program was renewed several times";
 
5. (medicine) the rate of removal of substances from the blood
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

  final String _videoId = 'oLPHERGyCYU';
  final double _startSeconds = 121;

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

  final String _videoId = 'GAkXU0u42Lk';
  final double _startSeconds = 4;

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

  final String _videoId = '5PR3Hn6cQ60';
  final double _startSeconds = 10;

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

  final String _videoId = 'RPB9FE8-KTY';
  final double _startSeconds = 8;

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

  final String _videoId = 'Q4bZAl4N_ZQ';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 1707;

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

  final String _videoId = '-7bIDbaU_zQ';
  final double _startSeconds = 705;

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

  final String _videoId = 'cAfYtXB-qN4';
  final double _startSeconds = 2714;

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