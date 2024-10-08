import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryalright - replace speakAlright - replace alright - /ɔːl ˈraɪt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalright extends StatelessWidget {
  EnglishEntryalright({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakalright(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("alright");
  }

  Future<void> speakalright124(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've got to get up early, alright?");
  }

  Future<void> speakalright123(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("‘Can you do it?’ ‘Oh, alright.’");
  }

  Future<void> speakalright235(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("‘I'm really sorry.’ ‘That's alright, don't worry.’");
  }

  Future<void> speakalright23469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("alright class, turn to page 20.");
  }

  Future<void> speakalright5241(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you getting along alright in your new job?");
  }

  Future<void> speakalright3695(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I hope the children are alright.");
  }

  Future<void> speakalright4577(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Your work is alright but I'm sure you could do better.");
  }

  Future<void> speakalright87459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've got to get up early, alright?");
  }

  Future<void> speakalright1055(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you sure it's alright for me to leave early?");
  }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
  // }

  // Future<void> speakalright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right");
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
                            EntryTitle(word: "alright (or all right)"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ɔːl ˈraɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakalright("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ɔːl ˈraɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakalright("en-US"),
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
کوردی: قایلکەر، باش، چاک، ڕاست، دروست، بێ‌گومان، حەتمەن، تا ڕادەیێ باش، باشە، بەڵێ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (سەرسوڕمان) بۆ زانینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"
                                  ""),
                          SentencesRow(
                            englishText: "We've got to get up early, alright?",
                            kurdishText: "دەبێت زوو لە خەو ھەستین، تێگەشتی؟",
                            onPressedBritish: () => speakalright124("en-GB"),
                            onPressedAmerican: () => speakalright124("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (سەرسوڕمان) بۆ دەربڕینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                          SentencesRow(
                            englishText: "‘Can you do it?’ ‘Oh, alright.’",
                            kurdishText: "دەتوانی بیکەیت؟ ئاھ، بەڵێ.",
                            onPressedBritish: () => speakalright123("en-GB"),
                            onPressedAmerican: () => speakalright123("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (سەرسوڕمان) بۆ پەسەندکردنی سوپاس، یارمەتی، یان چاکە، یان کاتێک کەسێک داوای لێبووردن دەکات"""),
                          SentencesRow(
                            englishText:
                                "‘I'm really sorry.’ ‘That's alright, don't worry.’",
                            kurdishText:
                                "'زۆر داوای لێبووردن دەکەم'، 'کێشە نییە، نیگەران مەبە.",
                            onPressedBritish: () => speakalright235("en-GB"),
                            onPressedAmerican: () => speakalright235("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (سەرسوڕمان) بۆ ڕاکێشانی سەرنج"""),
                          SentencesRow(
                            englishText: "alright class, turn to page 20.",
                            kurdishText:
                                "زۆرباشە خوێندکاران، بیخەنە سەر پەڕەی ٢٠",
                            onPressedBritish: () => speakalright23469("en-GB"),
                            onPressedAmerican: () => speakalright23469("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە کێشەی نییە"""),
                          SentencesRow(
                            englishText:
                                "Are you getting along alright in your new job?",
                            kurdishText: "لە کارە تازەکەت بێ کێشە ھەڵدەکەیت؟",
                            onPressedBritish: () => speakalright5241("en-GB"),
                            onPressedAmerican: () => speakalright5241("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) باش و سەلامەت"""),
                          SentencesRow(
                            englishText: "I hope the children are alright.",
                            kurdishText: "ھیوادارم منداڵەکان سەلامەت بن.",
                            onPressedBritish: () => speakalright3695("en-GB"),
                            onPressedAmerican: () => speakalright3695("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) شتێک کە خراپ نییە"""),
                          SentencesRow(
                            englishText:
                                "Your work is alright but I'm sure you could do better.",
                            kurdishText:
                                "کارەکەت خراپ نییە بەڵام دڵنیام ئەتتوانی باشتر بیت.",
                            onPressedBritish: () => speakalright4577("en-GB"),
                            onPressedAmerican: () => speakalright4577("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) شتێک کە ڕێگەپێدراوە"""),
                          SentencesRow(
                            englishText:
                                "Are you sure it's alright for me to leave early?",
                            kurdishText:
                                "دڵنیایت کە ئاسایی دەبێت زوو کار جێبھێڵم.",
                            onPressedBritish: () => speakalright1055("en-GB"),
                            onPressedAmerican: () => speakalright1055("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
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
- Adverb: alright 
1. An expression of agreement normally occurring at the beginning of a sentence (= very well, fine, alright, OK, alrighty [non-standard], righty-ho [Brit, informal])
 
2. Without doubt (used to reinforce an assertion) (= alright)
"it's expensive alright";
 
3. In a satisfactory or adequate manner (= okay, O.K., alright, OK)
"held up alright under pressure";

- Adjective: alright 
1. Being satisfactory or in satisfactory condition (= fine, o.k., OK, okay, hunky-dory [informal], cool [informal], alright, jake [N. Amer, Austral, NZ, informal])
"the passengers were shaken up but are alright"; "is everything alright?";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'U9WG9VNDkWQ';
  final double _startSeconds = 27;

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

  final String _videoId = 'ZCg9xHNPR3k';
  final double _startSeconds = 15;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 280;

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

  final String _videoId = 'njn6krU3tQ8';
  final double _startSeconds = 43;

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

  final String _videoId = 'Cd1EmYRZynw';
  final double _startSeconds = 66;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 1073;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 281;

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

  final String _videoId = 'QaZ93sibpk0';
  final double _startSeconds = 306;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 295;

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

  final String _videoId = '8HEfIJlcFbs';
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = '44HXLCsdIk8';
  final double _startSeconds = 87;

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

  final String _videoId = 'k3aAl92_VDE';
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = '3YltYCrPZos';
  final double _startSeconds = 59;

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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 129;

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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 605;

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