import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: EnglishEntryaccess - speakAccess - access - /ˈækses/

enum TtsState { playing }

class EnglishEntryaccess extends StatelessWidget {
  EnglishEntryaccess({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaccess(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("access");
  }

  Future<void> speaka2469(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Older people may have difficulty accessing medical services.");
  }

  Future<void> speaka24698(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most people use their phones to access the internet.");
  }

  Future<void> speaka2598(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The police gained access through a broken window.");
  }

  Future<void> speaka2478(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Journalists were denied access to the President.");
  }

  Future<void> speaka21459(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You need a password to get access to the computer system.");
  }

  Future<void> speaka2125666(String languageCode) async {
    // DOPSUM: CHANGE speakAccess
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The village is easily accessed by public transport.");
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
                            EntryTitle(
                                word: "access"), // DOPSUM: CHANGE WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈækses/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaccess("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈækses/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakaccess("en-US"),
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
کوردی: دەس‌پێ‌ڕاگەیشتن، دەسکەوتن، دەسباری، گەیشتن، ڕێگای گەیشتن، ڕێگای چوونەناو، ڕێگای ژوورەوە، دەروازە، ژوورگە، ڕێگا، مافی چوونەژوورێ، دەستوور، ڕێدان، زۆربوون، ھەڵدان، گەشەکردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ھەل یان مافی بینینی کەسێک، یان بەکارھێنانی شتێک"
                                  ""),
                          SentencesRow(
                            englishText:
                                "You need a password to get access to the computer system.",
                            kurdishText:
                                "پێویستت بە تێپەڕەوشە ھەیە بۆ چوونەناو ناو سیستەمی کۆمپیوتەرەکە.",
                            onPressedBritish: () => speaka21459("en-GB"),
                            onPressedAmerican: () => speaka21459("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Journalists were denied access to the President.",
                            kurdishText:
                                "ڕێگە بە ڕۆژنامەنووسان نەدرا سەرۆک ببینن.",
                            onPressedBritish: () => speaka2478("en-GB"),
                            onPressedAmerican: () => speaka2478("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ڕێگای چوونەناو شوێنێک"""),
                          SentencesRow(
                            englishText:
                                "The police gained access through a broken window.",
                            kurdishText:
                                "پۆلیس چوونەژوورەوە لە ڕێگەی پەنجەرەیەکی شکاوەوە.",
                            onPressedBritish: () => speaka2598("en-GB"),
                            onPressedAmerican: () => speaka2598("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) کردنەوەی فایلی کۆمپیوتەرێک، یان چوونەناو سیستەمی کۆمپیوتەرێک"""),
                          SentencesRow(
                            englishText:
                                "Most people use their phones to access the internet.",
                            kurdishText:
                                "زۆرینەی خەڵک موبایل بەکاردێنن بۆ بەکارھێنانی ئینتەرنێت.",
                            onPressedBritish: () => speaka24698("en-GB"),
                            onPressedAmerican: () => speaka24698("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) توانای بەکارھێنانی شتێک، بەتایبەتی شتێک کە مافی بەکارھێنانیت ھەیە"""),
                          SentencesRow(
                            englishText:
                                "Older people may have difficulty accessing medical services.",
                            kurdishText:
                                "کەسانی بەتەمەن ڕەنگە کێشەیان ھەبێت لە بەکارھێنانی خزمەتگوزارییە تەندرووستییەکان.",
                            onPressedBritish: () => speaka2469("en-GB"),
                            onPressedAmerican: () => speaka2469("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) چوونەناو شوێنێک"""),
                          SentencesRow(
                            englishText:
                                "The village is easily accessed by public transport.",
                            kurdishText:
                                "بە ئاسانی دەتوانرێت چوونەناو گوندەکە ئەنجام بدرێت لە ڕێگەی گواستنەوەی گشتی.",
                            onPressedBritish: () => speaka2125666("en-GB"),
                            onPressedAmerican: () => speaka2125666("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedend(),
                        // YoutubeEmbeddedsix(),
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Noun: access (derived forms: accessing, accesses, accessed)
1. The right to enter (= entrée, accession, admission, admittance)
 
2. The right to obtain or make use of or take advantage of something (as services or membership)
 
3. A way of entering or leaving (= approach)
"he took a wrong turn on the access to the bridge";
 
4. A code (a series of characters or digits) that must be entered in some way (typed or dialed or spoken) to get the use of something (a telephone line or a computer or a local area network etc.) (= access code)
 
5. (computing) the operation of reading or writing stored information (= memory access)
 
6. The act of approaching or entering
"he gained access to the building"

- Verb: access  ak-ses
1. (computing) obtain or retrieve from a storage device; as of information on a computer
 
2. Reach or gain access to (= get at)
"How does one access the attic in this house?";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 70;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 439;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 230;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 855;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'F8_ME4VwTiw';
  final double _startSeconds = 55;

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

// end
