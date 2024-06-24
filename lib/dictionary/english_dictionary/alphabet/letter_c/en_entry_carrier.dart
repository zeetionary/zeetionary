import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycarrier extends StatelessWidget {
  // blank divider
  EnglishEntrycarrier({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcarrier(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("carrier");
  }

  Future<void> speakcarriers1(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Delta Air Lines is the third-largest carrier in the US.");
  }

  Future<void> speakcarriers2(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ship served as a carrier, transporting goods across international waters.");
  }

  Future<void> speakcarriers3(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In epidemiology, identifying carriers is crucial for controlling the spread of contagious illnesses.");
  }

  Future<void> speakcarriers4(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can transfer your existing mobile phone number to a new carrier.");
  }

  Future<void> speakcarriers5(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers55");
  }

  Future<void> speakcarriers6(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers66");
  }

  Future<void> speakcarriers7(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers77");
  }

  Future<void> speakcarriers8(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers88");
  }

  Future<void> speakcarriers9(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers99");
  }

  Future<void> speakcarriers10(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1010");
  }

  Future<void> speakcarriers11(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1111");
  }

  Future<void> speakcarriers12(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1212");
  }

  Future<void> speakcarriers13(String languageCode) async {
    // DOPSUM: CHANGE speakcarrier
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarriers1313");
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
                            EntryTitle(word: "carrier"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæriə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcarrier("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæriər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcarrier("en-US"),
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
کوردی: ھەڵگر، کۆڵکێش، کۆمپانی گوێزانەوە، ناوکۆیی ڕاگوێستن، ڕاگوێزەر (نەخۆشی)، نامەبەر، ـھەڵگر، ـبەر، کەشتی فڕۆکەھەڵگر، (دووچەرخە) پاشتەرک، (ئۆتۆمبێل) باربەست، باربەند، کەل‌وپەل‌ھەڵگر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کۆمپانیای گواستنەوە، بەتایبەتی بە فڕۆکە"),
                          SentencesRow(
                            englishText:
                                "Delta Air Lines is the third-largest carrier in the US.",
                            kurdishText:
                                "ھێڵی ئاسمانی دەلتا سێیەم گەورەترینە کۆمپانیای گوێزانەوەیە لە ئەمرکادا.", // carrier",
                            onPressedBritish: () => speakcarriers1("en-GB"),
                            onPressedAmerican: () => speakcarriers1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەشتییەک یان ئۆتۆمبێلێکی سەربازی کە کە سەرباز یان کەرەستە دەگوازێتەوە"),
                          SentencesRow(
                            englishText:
                                "The ship served as a carrier, transporting goods across international waters.",
                            kurdishText:
                                "کەشتییەکە وەک گوازەرەوەیەک کاری دەکرد بۆ گواستنەوەی کەلوپەل بە ئاوە نێودەوڵەتییەکاندا.",
                            onPressedBritish: () => speakcarriers2("en-GB"),
                            onPressedAmerican: () => speakcarriers2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەسێک کە ھەڵگری نەخۆشییەکە و دەیگوازێتەوە"),
                          SentencesRow(
                            englishText:
                                "In epidemiology, identifying carriers is crucial for controlling the spread of contagious illnesses.",
                            kurdishText:
                                "لە پەتاناسیدا، دۆزینەوەی ھەڵگرەکە گرنگە بۆ کۆنترۆڵی بڵاوبوونەوەی نەخۆشیی ڕاگوێزەر.",
                            onPressedBritish: () => speakcarriers3("en-GB"),
                            onPressedAmerican: () => speakcarriers3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمپانیایەک کە خزمەتگوزاری تەلەفۆن و ئینتەرنێت پێشکەش دەکات"),
                          SentencesRow(
                            englishText:
                                "You can transfer your existing mobile phone number to a new carrier.",
                            kurdishText:
                                "دەتوانی ژمارەی ئێستای موبایلەکەت بگوازیتەوە بۆ تۆڕێکی نوێی گەیاندن.",
                            onPressedBritish: () => speakcarriers4("en-GB"),
                            onPressedAmerican: () => speakcarriers4("en-US"),
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
- Noun: carrier (derived forms: carriers)
1. Someone whose employment involves carrying something (= bearer, toter)
"the bonds were transmitted by carrier";

2. A self-propelled wheeled vehicle designed specifically to carry something
"refrigerated carriers have revolutionized the grocery business"
 
3. A large warship that carries planes and has a long flat deck for takeoffs and landings (= aircraft carrier, flattop [US, informal], attack aircraft carrier)
 
4. An inactive substance that is a vehicle for a radioactive tracer of the same substance and that assists in its recovery after some chemical reaction
 
5. A person or firm in the business of transporting people or goods or messages (= common carrier)
 
6. A radio wave that can be modulated in order to transmit a signal (= carrier wave)
 
7. A man who delivers the mail (= mailman [N. Amer], postman, mail carrier [N. Amer], letter carrier [N. Amer], postie [Brit, informal])
 
8. A boy who delivers newspapers (= newsboy)
 
9. A rack attached to a vehicle; for carrying luggage, skis or the like
 
10. (genetics) an organism that possesses a recessive gene whose effect is masked by a dominant allele; the associated trait is not apparent but can be passed on to offspring
 
11. (medicine) a person (or animal) who has some pathogen to which he is immune but who can pass it on to others (= immune carrier)
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

  final String _videoId = 'S3zbzpVBZDc';
  final double _startSeconds = 28;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '01o0A4yGkrg';
  final double _startSeconds = 115;

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

  final String _videoId = 'm53SzTBISGg';
  final double _startSeconds = 410;

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

  final String _videoId = 'lhK7hMBli4s';
  final double _startSeconds = 680;

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

  final String _videoId = 'W38uNEq5wjs';
  final double _startSeconds = 134;

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

  final String _videoId = '_Ih7djq6xmo';
  final double _startSeconds = 417;

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

  final String _videoId = 'gjIv_u4zmck';
  final double _startSeconds = 299;

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

  final String _videoId = 'olnVwQzQZRs';
  final double _startSeconds = 307;

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
