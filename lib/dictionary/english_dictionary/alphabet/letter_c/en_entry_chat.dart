import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychat extends StatelessWidget {
  // blank divider
  EnglishEntrychat({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchat(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chat");
  }

  Future<void> speakchats1(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm sorry I can't stop to chat.");
  }

  Future<void> speakchats2(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The two of us got chatting at the bus stop.");
  }

  Future<void> speakchats3(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Within minutes of being introduced they were chatting away like old friends.");
  }

  Future<void> speakchats4(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What were you chatting about?");
  }

  Future<void> speakchats5(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've been chatting online with my best friend.");
  }

  Future<void> speakchats6(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I use social media to chat with my friends.");
  }

  Future<void> speakchats7(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I just called in for a chat.");
  }

  Future<void> speakchats8(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I had a long chat with her.");
  }

  Future<void> speakchats9(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("After a few more minutes of chat, she left.");
  }

  Future<void> speakchats10(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They say he's already married, but it's just idle chat.");
  }

  Future<void> speakchats11(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fans are invited to an online chat.");
  }

  Future<void> speakchats12(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can take part in a live chat with the movie's director this afternoon.");
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
                            EntryTitle(word: "chat"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃæt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃæt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchat("en-US"),
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
کوردی: گاڵتەوگەپ، دەمەتەقێ، دووان، شۆخی، قسە، ئاخافتن، وت‌ووێژ یا قسەی دۆستانە،	چەنەدان، چەقەسرۆیی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) گفتوگۆکردن بەشێوەیەکی ھاوڕێیانە لەگەڵ کەسێک"),
                          SentencesRow(
                            englishText: "I'm sorry I can't stop to chat.",
                            kurdishText:
                                "ببوورە ناتوانم بۆ دەمەتەقێیەک بوەستم.", // chat",
                            onPressedBritish: () => speakchats1("en-GB"),
                            onPressedAmerican: () => speakchats1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The two of us got chatting (= started chatting) at the bus stop.",
                            kurdishText:
                                "ھردووکمان لە وێستگەی پاسەکە دەستمان بە گفتوگۆ کرد.",
                            onPressedBritish: () => speakchats2("en-GB"),
                            onPressedAmerican: () => speakchats2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Within minutes of being introduced they were chatting away like old friends.",
                                    kurdishText:
                                        "لە ماوەی چەند خولەکێکی یەکترناسیدا، وەک کۆنە ھاوڕێ گفتوگۆیان دەکرد.",
                                    onPressedBritish: () =>
                                        speakchats3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchats3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "What were you chatting about?",
                            kurdishText: "لەسەر چی گفتوگۆتان بوو؟",
                            onPressedBritish: () => speakchats4("en-GB"),
                            onPressedAmerican: () => speakchats4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) نامەگۆڕینەوە لەگەڵ کەسێک بە ئینتەرنێت کە دەتوانیت دەستبەجێ وەڵامی یەکدی بدەنەوە"),
                          SentencesRow(
                            englishText:
                                "I've been chatting online with my best friend.",
                            kurdishText:
                                "بە ئینتەرنێت لەگەڵ باشترین ھاوڕێم قسەم دەکرد.",
                            onPressedBritish: () => speakchats5("en-GB"),
                            onPressedAmerican: () => speakchats5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I use social media to chat with my friends.",
                            kurdishText:
                                "تۆڕە کۆمەڵایەتییەکان بەکاردێنم بۆ قسەکردن لەگەڵ ھاوڕێکانم.",
                            onPressedBritish: () => speakchats6("en-GB"),
                            onPressedAmerican: () => speakchats6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) گفتوگۆیەکی ھاوڕێیانەی نافەرمی"),
                          SentencesRow(
                            englishText: "I just called in for a chat.",
                            kurdishText: "تەنھا بۆ دەمەتەقێیەک پەیوەندیم کرد.",
                            onPressedBritish: () => speakchats7("en-GB"),
                            onPressedAmerican: () => speakchats7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I had a long chat with her.",
                            kurdishText: "گفتوگۆیەکی درێژم ھەبوو لەگەڵی.",
                            onPressedBritish: () => speakchats8("en-GB"),
                            onPressedAmerican: () => speakchats8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) قسەکردن، بەتایبەتی گفتوگۆی نافەرمی"),
                          SentencesRow(
                            englishText:
                                "After a few more minutes of chat, she left.",
                            kurdishText:
                                "لەدوای چەند خولەکێکی دیکە لە قسەکردن، ڕۆشت.",
                            onPressedBritish: () => speakchats9("en-GB"),
                            onPressedAmerican: () => speakchats9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They say he's already married, but it's just idle chat.",
                            kurdishText:
                                "دەڵێت لەمێژە ھاوسەرگیری کردووە، بەڵام تەنھا قسەی ھیچە.",
                            onPressedBritish: () => speakchats10("en-GB"),
                            onPressedAmerican: () => speakchats10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پەیوەندی سەر ئینتەرنێت کە تێیدا لایەنەکان پەیامەکان دەستبەجێت دەبینن و وەڵام دەدەنەوە"),
                          SentencesRow(
                            englishText: "Fans are invited to an online chat.",
                            kurdishText:
                                "ھەوادارەکان بانگھێشتی گفتوگۆیەکی سەر ئینتەرنێت دەکرێن.",
                            onPressedBritish: () => speakchats11("en-GB"),
                            onPressedAmerican: () => speakchats11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You can take part in a live chat with the movie's director this afternoon.",
                            kurdishText:
                                "دەتوانیت ئەم نیوەڕۆیە بەژدار بیت لە گفتوگۆیەنی ڕاستەوخۆی سەر ئینتەرنێت لەگەڵ دەرھێنەری فیلمەکە.",
                            onPressedBritish: () => speakchats12("en-GB"),
                            onPressedAmerican: () => speakchats12("en-US"),
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
- Verb: chat (derived forms: chatted, chatting, chats)
1. Talk socially without exchanging too much information (= chew the fat [informal], shoot the breeze [N. Amer, informal], confabulate, confab [informal], chitchat [informal], chit-chat [informal], chatter, chaffer, natter [informal], gossip, jaw [informal], claver [UK, dialect], visit [N. Amer, informal], chew the rag [informal], gas [informal], gab [informal])
"the men were sitting in the cafe and chatting";
 
2. Exchange text or voice messages in real time through a computer network

- Noun: chat (derived forms: chats)
1. An informal conversation (= confab [informal], confabulation, schmooze [informal], schmoose [informal], chin-wag [Brit, informal], natter [informal])
 
2. Birds having a chattering call (= New World chat)
 
3. Songbirds having a chattering call (= Old World chat)
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

  final String _videoId = 'N8kThGNkDAc';
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

  final String _videoId = 'Xako5tPh5ys';
  final double _startSeconds = 57;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'XCg0PBtM7W8';
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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'S5nceN_8O0s';
  final double _startSeconds = 17;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'Bk0G1f4DpCM';
  final double _startSeconds = 37;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'heIeCsyzUNc';
  final double _startSeconds = 627;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'd4wn7ojGyx8';
  final double _startSeconds = 288;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'wwWWPFPutNk';
  final double _startSeconds = 209;

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
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB
