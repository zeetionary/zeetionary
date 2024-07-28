import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryaddress - replace speakAddress - replace address - /əˈdres/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryaddress extends StatelessWidget {
  EnglishEntryaddress({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaddress(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("address");
  }

  Future<void> speakadd774(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll give you my address and phone number.");
  }

  Future<void> speakaddress452(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Police found him at an address in West London.");
  }

  Future<void> speakaddr2458(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your email address?");
  }

  Future<void> speakaddr624(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He gave details of the policy in an address to party members.");
  }

  Future<void> speakadd99(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These concerns were not adequately addressed in the report.");
  }

  Future<void> speakaddr11(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The letter was correctly addressed, but delivered to the wrong house.");
  }

  Future<void> speakaddr766(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He addressed his comments to the supervisor.");
  }

  Future<void> speakaddre444(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The President has been asked to address the parliament.");
  }

  // Future<void> speakaddress(String languageCode) async {
  //   // DOPSUM: CHANGE speakAddress
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("address");
  // }

  // Future<void> speakaddress(String languageCode) async {
  //   // DOPSUM: CHANGE speakAddress
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("address");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "address"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈdres/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaddress("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈdres/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakaddress("en-US"),
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
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ناونیشان، نیشان، شێوازی لێداون یان دووان، دەراوی دەم، (دەم‌و)ڕاوێژ، شارەزایی، وتاردان، قسەکردن لە بەردەم ئامادەبووان‌دا
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) شوێنی ژیان یان کارکردنی کەسێک"""),
                          SentencesRow(
                            englishText:
                                "I'll give you my address and phone number.",
                            kurdishText:
                                "ناونیشان و ژمارە تەلەفۆنی خۆمت پێ ئەدەم.",
                            onPressedBritish: () => speakadd774("en-GB"),
                            onPressedAmerican: () => speakadd774("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Police found him at an address (= a house or flat) in West London.",
                            kurdishText:
                                "پۆلیس لە شوێنێک لە ڕۆژھەڵاتی لەندەن دۆزییەوە.",
                            onPressedBritish: () => speakaddress452("en-GB"),
                            onPressedAmerican: () => speakaddress452("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ژمارەیەک پیت و ژمارە کە ناونیشانی شوێنێک یان کەسێکە لەسەر ئینتەرنێت"""),
                          SentencesRow(
                            englishText: "What's your email address?",
                            kurdishText: "ناونیشانی ئیمەیڵەکەت چییە؟",
                            onPressedBritish: () => speakaddr2458("en-GB"),
                            onPressedAmerican: () => speakaddr2458("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) وتارێکی فەرمی"""),
                          SentencesRow(
                            englishText:
                                "He gave details of the policy in an address to party members.",
                            kurdishText:
                                "وردەکارییەکانی سیاسەتیانی ڕوونکردەوە لە وتارێکدا بۆ ئەندامانی پارتەکە.",
                            onPressedBritish: () => speakaddr624("en-GB"),
                            onPressedAmerican: () => speakaddr624("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بیرکرنەوە لە چۆنیەتی مامەڵەکردن لەگەل کێشەیەک"""),
                          SentencesRow(
                            englishText:
                                "These concerns were not adequately addressed in the report.",
                            kurdishText:
                                "ئەم نیگەرانیانە بەپێی پێویست لە ڕاپۆرتەکەدا مامەڵەیان لەگەڵ نەکراوە.",
                            onPressedBritish: () => speakadd99("en-GB"),
                            onPressedAmerican: () => speakadd99("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) نووسینی ناو و ناونیشانی کەسێک و شوێنەکەی لەسەر نامەیەک"""),
                          SentencesRow(
                            englishText:
                                "The letter was correctly addressed, but delivered to the wrong house.",
                            kurdishText:
                                "نامەکە بە درووستی ناو و ناونیشانی لەسەر نووسرابوو، بەڵام بۆ ماڵێکی ھەڵە نێردرا.",
                            onPressedBritish: () => speakaddr11("en-GB"),
                            onPressedAmerican: () => speakaddr11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) پێشکەشکردنی وتارێک بۆ کۆمەڵە کەسێک"""),
                          SentencesRow(
                            englishText:
                                "The President has been asked to address the parliament.",
                            kurdishText:
                                "سەرۆک داوای لێکرا وتارێک لە پەرلەمان پێشکەش بکات.",
                            onPressedBritish: () => speakaddre444("en-GB"),
                            onPressedAmerican: () => speakaddre444("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) وتنی شتێک ڕاستەوخۆ بە کەسێك"""),
                          SentencesRow(
                            englishText:
                                "He addressed his comments to the supervisor.",
                            kurdishText:
                                "بۆچوونەکانی ڕاستەوخۆ بە سەرپەرشتیارەکە گووت.",
                            onPressedBritish: () => speakaddr766("en-GB"),
                            onPressedAmerican: () => speakaddr766("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedend(),
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
- Noun: address (derived forms: addresses)
1. The place where a person or organization can be found or communicated with
 
2. Written directions for finding some location; written on letters or packages that are to be delivered to that location (= destination, name and address)
 
3. The act of delivering a formal spoken communication to an audience (= speech)
"he listened to an address on minor Roman poets";
 
4. The manner of speaking to another individual
"he failed in his manner of address to the captain"
 
5. A sign in front of a house or business carrying the conventional form by which its location is described
 
6. (golf) the stance assumed by a golfer in preparation for hitting a golf ball
 
7. The social skill to do or say what is appropriate for the occasion (= savoir-faire, savoir faire)
 
8. (computing) the code that identifies where a piece of information is stored (= computer address, reference)

- Verb: address (derived forms: addressed, addresses, addressing)
1. Speak to (= turn to)
"He addressed the crowd outside the window";
 
2. Give a speech to (= speak)
"The chairman addressed the board of trustees";
 
3. Put an address on (an envelope) (= direct)
 
4. Direct a question at someone
 
5. Give attention to something; direct efforts towards something, such as how to solve a problem
"We need to address this issue first"
 
6. Greet, as with a prescribed form, title, or name (= call)
"He always addresses me with 'Sir'";
 
7. Act on verbally or in some form of artistic expression (= cover, treat, handle, plow [N. Amer], deal, plough [Brit, Cdn])
"The course addressed all of Western Civilization";
 
8. (golf) adjust and aim (a golf ball) at in preparation of hitting
 
9. (computing) access or locate by address
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

  final String _videoId = 'zPx5N6Lh3sw';
  final double _startSeconds = 1277;

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

  final String _videoId = 'h_jrebvmPlk';
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

  final String _videoId = 'B7VKqFTaPl8';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'Gyb-DjVT5_c';
  final double _startSeconds = 128;

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

  final String _videoId = 'sZ3sCBdqCVU';
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

  final String _videoId = 'hOUGNGWmN0k';
  final double _startSeconds = 993;

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

  final String _videoId = 'cqidD7kVnxY';
  final double _startSeconds = 1379;

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

  final String _videoId = 'pFmtmO2cnlg';
  final double _startSeconds = 64;

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

  final String _videoId = 'HAnw168huqA';
  final double _startSeconds = 3045;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'PqpCeiYycVM';
  final double _startSeconds = 1107;

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
