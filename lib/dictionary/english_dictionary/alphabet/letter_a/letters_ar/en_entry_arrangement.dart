import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// rrangement

// replace EnglishEntryarrangement - replace speakArrangement

// replace arrangement - /əˈreɪndʒmənt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryarrangement extends StatelessWidget {
  // blank divider
  EnglishEntryarrangement({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakarrangement(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("arrangement");
  }

  Future<void> speakarrangement122(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Travel and accommodation arrangements have been finalized.");
  }

  Future<void> speakarrangement124(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Arrangements for the funeral are complete.");
  }

  Future<void> speakarrangement126(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's happy with her unusual living arrangements.");
  }

  Future<void> speakarrangement128(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We can come to an arrangement over the price.");
  }

  Future<void> speakarrangement131(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who did this beautiful flower arrangement?");
  }

  Future<void> speakarrangement134(String languageCode) async {
    // DOPSUM: CHANGE speakArrangement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This new arrangement of the piece is for saxophone and piano.");
  }

  // Future<void> speakarrangement(String languageCode) async {
  //   // DOPSUM: CHANGE speakArrangement
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arrangement");
  // }

  // Future<void> speakarrangement(String languageCode) async {
  //   // DOPSUM: CHANGE speakArrangement
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arrangement");
  // }

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
                            EntryTitle(word: "arrangement"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈreɪndʒmənt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakarrangement("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈreɪndʒmənt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakarrangement("en-US"),
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
کوردی: ڕێک‌کردن، ڕێک‌وپێک‌کردن، جێبەجێ‌کردن، دەستەکردن، چاخاندن، سەقادان، ھەڵوەژارتن، تەرازکردن، چنین، تەکوزکردن، ھەڵبەست(ن)، خشتەکردن، ڕێکخستن، بڕیار، بەرنامە، پلان، ڕێک‌کەوتن، ئامادەکاری، ڕازاندنەوە، گونجاندن، میزان‌کردن، ڕێکخستن (پارچە میوزیکێک)
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) پلانێک یان ئامادەکارییەک کە ئەنجامی دەدەیت بۆ ئەوەی شتێک ڕووبدات"""),
                          SentencesRow(
                            englishText:
                                "Travel and accommodation arrangements have been finalized.",
                            kurdishText:
                                "ڕێکخستنی کاتی گەشتەکە و شوێنی مانەوە ئەنجام‌دراوە.",
                            onPressedBritish: () =>
                                speakarrangement122("en-GB"),
                            onPressedAmerican: () => speakarrangement122(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Arrangements for the funeral are complete.",
                            kurdishText:
                                "ئامادەکارییەکان بۆ مەراسیمی ناشتنەکە تەواوبوونە.",
                            onPressedBritish: () =>
                                speakarrangement124("en-GB"),
                            onPressedAmerican: () => speakarrangement124(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شێوازی کردن یان ڕێکخستنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "She's happy with her unusual living arrangements.",
                            kurdishText:
                                "دڵخۆشە بە شێوازە نائاساییەکەی ژیانکردنی.",
                            onPressedBritish: () =>
                                speakarrangement126("en-GB"),
                            onPressedAmerican: () => speakarrangement126(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ڕێککەوتنێک لەگەڵ کەسێک بۆ ئەوەی ھەردووکتان پەسەندی بکەن"""),
                          SentencesRow(
                            englishText:
                                "We can come to an arrangement over the price.",
                            kurdishText:
                                "دەتوانین بگەینە ڕێککەوتنێک لەسەر نرخەکە.",
                            onPressedBritish: () =>
                                speakarrangement128("en-GB"),
                            onPressedAmerican: () => speakarrangement128(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کۆمەڵە شتێک کە بەشێوەیەکی جوان ڕێکخراون"""),
                          SentencesRow(
                            englishText:
                                "Who did this beautiful flower arrangement?",
                            kurdishText:
                                "کێ ئەم ڕازاندنەوە جوانەی بۆ ئەم گوڵانە کرد؟",
                            onPressedBritish: () =>
                                speakarrangement131("en-GB"),
                            onPressedAmerican: () => speakarrangement131(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچە میوزیکێک کە گۆڕدراوە بۆ گونجاندنی لەگەڵ ئامێرێک"""),
                          SentencesRow(
                            englishText:
                                "This new arrangement of the piece is for saxophone and piano.",
                            kurdishText:
                                "ئەم سازاندنە تازەی پارچە میوزیکەکە بۆ ساکسۆفۆن و پیانۆیە.",
                            onPressedBritish: () =>
                                speakarrangement134("en-GB"),
                            onPressedAmerican: () => speakarrangement134(
                                // REPLACE: arrangement /əˈreɪndʒmənt/
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
- Noun: arrangement (derived forms: arrangements)
1. The thing arranged or agreed to (= agreement)
"they made arrangements to meet in Chicago";
 
2. An orderly grouping (of things or persons) considered as a unit; the result of arranging
"a flower arrangement"
 
3. An organized structure for arranging or classifying (= organization, organisation [Brit], system)
"he changed the arrangement of the topics";
 
4. The spatial property of the way in which something is placed (= placement)
"the arrangement of the furniture";
 
5. A piece of music that has been adapted for performance by a particular set of voices or instruments (= musical arrangement)
 
6. The act of arranging and adapting a piece of music (= arranging, transcription)
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

  final String _videoId = 'RXq1JprgSws';
  final double _startSeconds = 1;

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

  final String _videoId = 'K8UvYsZhO5M';
  final double _startSeconds = 1;

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

  final String _videoId = 'DnQGEwh9oY8';
  final double _startSeconds = 116;

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

  final String _videoId = 'AnmRdAGkr-I';
  final double _startSeconds = 1;

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

  final String _videoId = 'z4L2E6_Gmkk';
  final double _startSeconds = 462;

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

  final String _videoId = 'AwhBTrzzqeg';
  final double _startSeconds = 544;

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

  final String _videoId = 'SEZu7K5tGxw';
  final double _startSeconds = 327;

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

  final String _videoId = 'Cln0J87vulU';
  final double _startSeconds = 350;

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

  final String _videoId = 'py4zetCEYzA';
  final double _startSeconds = 529;

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

  final String _videoId = 'OgFcz6klaeg';
  final double _startSeconds = 536;

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

  final String _videoId = 'CupbRr2m_sM';
  final double _startSeconds = 371;

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

  final String _videoId = 'Ov2rndaPlwA';
  final double _startSeconds = 697;

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