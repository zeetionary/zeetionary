import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// articulate

// replace EnglishEntryarticulate - replace speakArticulate

// replace articulate - /ɑːˈtɪkjuleɪt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryarticulate extends StatelessWidget {
  // blank divider
  EnglishEntryarticulate({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakarticulate(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("articulate");
  }

  Future<void> speakarticulate716(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was unusually articulate for a ten-year-old.");
  }

  Future<void> speakarticulate718(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All we could hear were loud sobs, but no articulate words.");
  }

  Future<void> speakarticulate720(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She struggled to articulate her thoughts.");
  }

  Future<void> speakarticulate722(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cannot articulate her feelings very well.");
  }

  Future<void> speakarticulate723(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She spoke slowly, articulating each word clearly.");
  }

  Future<void> speakarticulate726(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These courses are designed to articulate with university degrees.");
  }

  Future<void> speakarticulate736(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was too drunk to articulate properly.");
  }

  // Future<void> speakarticulate(String languageCode) async {
  //   // DOPSUM: CHANGE speakArticulate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("articulate");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                                word: "articulate"), // Find /ɑːˈtɪkjuleɪt/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ɑːˈtɪkjuleɪt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakarticulate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ɑːrˈtɪkjuleɪt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakarticulate("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: زمان‌ڕەوان، بەزمان، بەدەم‌وپل، زمان‌پاراو، باش‌دەربڕ، دەنکەدەنکە، ڕەوان، ڕوون، ڕۆشن، بە ڕوونی وتراو، ئاشکرا، دیار، (گیانەوەرناسی) جومگەدار، جومگەوەر
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ھاوەڵناو) کەسێک کە توانای ئەوەی ھەیە بۆچوونەکانی بە ڕوونی دەرببڕێت"""),
                          SentencesRow(
                            englishText:
                                "He was unusually articulate for a ten-year-old.",
                            kurdishText:
                                "بەشێوەیەکی سەیر زمان‌ڕەوان بوو بۆ منداڵێکی ١٠ ساڵان.",
                            onPressedBritish: () => speakarticulate716("en-GB"),
                            onPressedAmerican: () => speakarticulate716(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) قسەیەکی ڕوون"""),
                          SentencesRow(
                            englishText:
                                "All we could hear were loud sobs, but no articulate words.",
                            kurdishText:
                                "ھەموو ئەوەی گوێمان لێ‌بوو نوزەنوزە بوو، بەبێ ھیچ قسەیەکی ڕوون.",
                            onPressedBritish: () => speakarticulate718("en-GB"),
                            onPressedAmerican: () => speakarticulate718(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) دەربڕینی بۆچوونەکانت بەڕوونی"""),
                          SentencesRow(
                            englishText:
                                "She struggled to articulate her thoughts.",
                            kurdishText:
                                "کێشەی ھەبوو لە دەربڕینی بیرۆکەکانی بەڕوونی.",
                            onPressedBritish: () => speakarticulate720("en-GB"),
                            onPressedAmerican: () => speakarticulate720(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She cannot articulate her feelings very well.",
                            kurdishText: "ناتوانێت بەڕوونی ھەستەکانی دەرببڕێت.",
                            onPressedBritish: () => speakarticulate722("en-GB"),
                            onPressedAmerican: () => speakarticulate722(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) قسەکردن یان خوێندنەوە بە ڕوونی"""),
                          SentencesRow(
                            englishText:
                                "He was too drunk to articulate properly.",
                            kurdishText:
                                "زۆر سەرخۆش بوو تا بتوانێ بە ڕوونی قسەبکات.",
                            onPressedBritish: () => speakarticulate736("en-GB"),
                            onPressedAmerican: () => speakarticulate736(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بوون لە پەیوەندی لەگەڵ شتێکی تر بۆ ئەوەی پێکەوە یەک شت درووست بکەن"""),
                          SentencesRow(
                            englishText:
                                "These courses are designed to articulate with university degrees.",
                            kurdishText:
                                "ئەم کۆرسانە دیزاین کراون بۆ ئەوەی لەگەڵ بڕوانامەی زانکۆ ڕێکبکەون.",
                            onPressedBritish: () => speakarticulate726("en-GB"),
                            onPressedAmerican: () => speakarticulate726(
                                // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Adjective: articulate
1. Having fluent speech characterized by clear expressive language
"articulate speech"; "an articulate orator"; "articulate beings"
 
2. Consisting of segments held together by joints (= articulated)

- Verb: articulate (derived forms: articulated, articulates, articulating)
1. Put into words or an expression (= give voice, formulate, word, phrase)
"He articulated his concerns to the board of trustees";
 
2. Say (a word, phrase or syllable) in a certain way (= pronounce, enounce, sound out, enunciate, say)
"She articulates French words in a funny way";
 
3. Unite by forming a joint or joints
"the ankle bone articulates with the leg bones to form the ankle bones"
 
4. Express or state clearly (= enunciate, vocalize, vocalise [Brit])
 
5. (carpentry) provide with a joint (= joint)
"the carpenter articulated two pieces of wood";
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

  final String _videoId = 'w4jiLIzTAa0';
  final double _startSeconds = 246;

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

  final String _videoId = 'gWN5qvWGYQg';
  final double _startSeconds = 44;

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

  final String _videoId = 't6fIp7mMJ90';
  final double _startSeconds = 191;

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

  final String _videoId = 'kElsSj8hky4';
  final double _startSeconds = 132;

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

  final String _videoId = 'Pon4Zux5MaQ';
  final double _startSeconds = 667;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 3013;

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

  final String _videoId = 'fTDF8n9quis';
  final double _startSeconds = 438;

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

  final String _videoId = 'Sbp_EeBk-As';
  final double _startSeconds = 1481;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'kBdfcR-8hEY';
  final double _startSeconds = 1509;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'hOUGNGWmN0k';
  final double _startSeconds = 1382;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'ba-HMvDn_vU';
  final double _startSeconds = 1626;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'RJQPthD9rx8';
  final double _startSeconds = 1094;

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

// end