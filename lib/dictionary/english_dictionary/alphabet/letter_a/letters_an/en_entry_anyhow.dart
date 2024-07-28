import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace EnglishEntryAdopsum - replace speakAnyhow

// replace anyhow - /ˈæŋkʃəsli/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryanyhow extends StatelessWidget {
  // blank divider
  EnglishEntryanyhow({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakanyhow(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("anyhow");
  }

  Future<void> speakanyhow847(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's too expensive and anyhow the colour doesn't suit you.");
  }

  Future<void> speakanyhow849(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's going to happen anyhow, so we won't object to it.");
  }

  Future<void> speakanyhow855(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("anyhow, I'd better go now—I'll see you tomorrow.");
  }

  Future<void> speakanyhow858(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think she's right. I hope so, anyhow.");
  }

  Future<void> speakanyhow900(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She works in a bank. She did when I last saw her, anyhow.");
  }

  Future<void> speakanyhow908(String languageCode) async {
    // DOPSUM: CHANGE speakAnyhow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She piled the papers in a heap on her desk, just anyhow.");
  }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
  // }

  // Future<void> speakanyhow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnyhow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("anyhow");
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
                            EntryTitle(word: "anyhow"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈenihaʊ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakanyhow("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈenihaʊ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakanyhow("en-US"),
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
کوردی: بەھەر شێوەیێ، بەھەرچەشنێ، ھەرچۆنێ بێ، بە ھەر لەونێ، بەھەرجۆرێ، لەگەڵ ئەمەش، سەرەڕای ئەمەش
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ھاوەڵکار) بەکاردێت بۆ زیادکردنی ڕستەیەک وەک پشتگیری بۆ یەکێکی تر"""),
                          SentencesRow(
                            englishText:
                                "It's too expensive and anyhow the colour doesn't suit you.",
                            kurdishText:
                                "زۆر گرانە، لەگەڵ ئەوەش ڕەنگەکەیت پێ ناکەوێ.",
                            onPressedBritish: () => speakanyhow847("en-GB"),
                            onPressedAmerican: () => speakanyhow847(
                                // REPLACE: anyhow /ˈeniweɪ/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵکار) سەرەڕای شتێک"""),
                          SentencesRow(
                            englishText:
                                "It's going to happen anyhow, so we won't object to it.",
                            kurdishText:
                                "ھەرچۆنێ بێت ھەر ڕوودەدات، بۆیە دژی نابین.",
                            onPressedBritish: () => speakanyhow849("en-GB"),
                            onPressedAmerican: () => speakanyhow849(
                                // REPLACE: anyhow /ˈeniweɪ/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بەکاردێت لە کاتی گۆڕینی بابەتی گدتوگۆیەک، کۆتایی پێھێنانی، یان گەڕانەوە بۆی"""),
                          SentencesRow(
                            englishText:
                                "anyhow, I'd better go now—I'll see you tomorrow.",
                            kurdishText:
                                "ھەرچۆنێ بێت، باشترە ئێستا بچم، سبەی دەتبینمەوە.",
                            onPressedBritish: () => speakanyhow855("en-GB"),
                            onPressedAmerican: () => speakanyhow855(
                                // REPLACE: anyhow /ˈeniweɪ/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ ڕاستکردنەوە یان کەمێک گۆڕین ئەوەی وتت"""),
                          SentencesRow(
                            englishText:
                                "I think she's right. I hope so, anyhow.",
                            kurdishText:
                                "پێم‌وایە ڕاستە. یان ھیوادارم ڕاست بێت.",
                            onPressedBritish: () => speakanyhow858("en-GB"),
                            onPressedAmerican: () => speakanyhow858(
                                // REPLACE: anyhow /ˈeniweɪ/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She works in a bank. She did when I last saw her, anyhow.",
                            kurdishText:
                                "لە بانکێک کار دەکات. ڕاستی کە کۆتا جار بینیم ئەوەی وت.",
                            onPressedBritish: () => speakanyhow900("en-GB"),
                            onPressedAmerican: () => speakanyhow900(
                                // REPLACE: anyhow /ˈeniweɪ/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بە کەم‌تەرخەمانە بەبێ ڕیزبەندی"""),
                          SentencesRow(
                            englishText:
                                "She piled the papers in a heap on her desk, just anyhow.",
                            kurdishText:
                                "کاغەزەکانی بە کەمتەرخەمی کەڵەکەکرد بە چین چین لەسەر مێزەکەی.",
                            onPressedBritish: () => speakanyhow908("en-GB"),
                            onPressedAmerican: () => speakanyhow908(
                                // REPLACE: anyhow /ˈeniweɪ/
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
- Adverb: anyhow 
1. Used to indicate that a statement explains or supports a previous statement (= anyway, anyways [N. Amer, informal], in any case, at any rate, in any event, anyroad [UK, dialect])
"Anyhow, he is dead now"; "I think they're asleep; anyhow, they're quiet";
 
2. In any way whatsoever (= anyway)
"they came anyhow they could";
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

  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 2016;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 1046;

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

  final String _videoId = 'kBdfcR-8hEY';
  final double _startSeconds = 2357;

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

  final String _videoId = '5wxs_WNwDJE';
  final double _startSeconds = 103;

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

  final String _videoId = '4l8M3dQlUwg';
  final double _startSeconds = 1696;

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

  final String _videoId = 'KIWXcJ2wbyw';
  final double _startSeconds = 192;

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

  final String _videoId = '5U-yqm9H_Sg';
  final double _startSeconds = 3107;

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

  final String _videoId = 'zhWWcWtAUoY';
  final double _startSeconds = 3503;

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

  final String _videoId = '9-XnufbXpak';
  final double _startSeconds = 1114;

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

  final String _videoId = 'VAn5xYpbVR8';
  final double _startSeconds = 55;

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

  final String _videoId = 'ZGc9H3BJGZo';
  final double _startSeconds = 583;

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