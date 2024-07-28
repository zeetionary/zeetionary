import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclever extends StatelessWidget {
  // blank divider
  EnglishEntryclever({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclever(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clever");
  }

  Future<void> speakclevers1(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Clever girl!");
  }

  Future<void> speakclevers2(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're not clever enough to find the code.");
  }

  Future<void> speakclevers3(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Judy has never been very clever, but she tries hard.");
  }

  Future<void> speakclevers4(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fiona is very clever at physics.");
  }

  Future<void> speakclevers5(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always been clever at chess.");
  }

  Future<void> speakclevers6(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's clever at getting what she wants.");
  }

  Future<void> speakclevers7(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a clever idea!");
  }

  Future<void> speakclevers8(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Admitting her mistake may have been quite a clever move on her part.");
  }

  Future<void> speakclevers9(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was clever of him to have spotted the mistake.");
  }

  Future<void> speakclevers10(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That wasn't a very clever thing to do.");
  }

  Future<void> speakclevers11(String languageCode) async {
    // DOPSUM: CHANGE speakclever
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't you get clever with me!");
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
                            EntryTitle(word: "clever"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈklevə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclever("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈklevər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclever("en-US"),
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
کوردی: زیرەک، ژیر، بەمێشک، چاومار، وریا، مدریک، ئازا، زیت، قوت، زرنگ، شارەزا، شارەزایانە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) خێرا کە فێربوون و تێگەشتندا"),
                          SentencesRow(
                            englishText: "Clever girl!",
                            kurdishText: "کچی زرنگ!", // clever",
                            onPressedBritish: () => speakclevers1("en-GB"),
                            onPressedAmerican: () => speakclevers1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They're not clever enough to find the code.",
                            kurdishText: "ھێندە زیرەک نین کۆدەکە بزانن.",
                            onPressedBritish: () => speakclevers2("en-GB"),
                            onPressedAmerican: () => speakclevers2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Judy has never been very clever, but she tries hard.",
                                    kurdishText:
                                        "جودی ھێندە ھێژا نەبووە، بەڵام بە سەختی ھەوڵ دەدات.",
                                    onPressedBritish: () =>
                                        speakclevers3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclevers3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Fiona is very clever at physics.",
                            kurdishText: "فیۆنا زۆر زیرەکە لە فیزیادا.",
                            onPressedBritish: () => speakclevers4("en-GB"),
                            onPressedAmerican: () => speakclevers4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) ھەبوونی شارەزایی"),
                          SentencesRow(
                            englishText: "He's always been clever at chess.",
                            kurdishText: "ھەمیشە لە شەترەنجدا شارەزا بووە.",
                            onPressedBritish: () => speakclevers5("en-GB"),
                            onPressedAmerican: () => speakclevers5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's clever at getting what she wants.",
                            kurdishText:
                                "شارەزایە لە بەدەستخستنی ئەوەی دەیەوێت.",
                            onPressedBritish: () => speakclevers6("en-GB"),
                            onPressedAmerican: () => speakclevers6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) ھەبوونی زیرەکی یان شارەزایی لە بیرکردنەوە لە بیرۆکەیەک، کێشان و دانانی دیزاینێک، ھتد"),
                          SentencesRow(
                            englishText: "What a clever idea!",
                            kurdishText: "چی بیرۆکەیەکی بێ‌وێنەیە!",
                            onPressedBritish: () => speakclevers7("en-GB"),
                            onPressedAmerican: () => speakclevers7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Admitting her mistake may have been quite a clever move on her part.",
                            kurdishText:
                                "داننان بە ھەڵەکەی ڕەنگە کردارێکی ئاقڵانە بووبێت لەلایەن ئەوەوە.",
                            onPressedBritish: () => speakclevers8("en-GB"),
                            onPressedAmerican: () => speakclevers8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "It was clever of him to have spotted the mistake.",
                                    kurdishText:
                                        "لە زرنگیی ئەو بوو کە بە ھەڵەکەی زانی.",
                                    onPressedBritish: () =>
                                        speakclevers9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclevers9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "That wasn't a very clever thing to do.",
                            kurdishText: "کردنی شتێکی ژیرانە نەبوو.",
                            onPressedBritish: () => speakclevers10("en-GB"),
                            onPressedAmerican: () => speakclevers10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) زوو وەڵامدانەوە بەشێوەیەک کە خەڵکی بێزار دەکات یان ڕێز پیشان نادات"),
                          SentencesRow(
                            englishText: "Don't you get clever with me!",
                            kurdishText: "زمان درێژ مەبە بەرامبەرم!",
                            onPressedBritish: () => speakclevers11("en-GB"),
                            onPressedAmerican: () => speakclevers11("en-US"),
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
- Adjective: clever (derived forms: cleverer, cleverest)
1. Mentally quick and resourceful (= apt)
"you are a clever man...you reason well and your wit is bold";
 
2. Showing self-interest and shrewdness in dealing with others (= cagey, cagy, canny)
"too clever to be sound";
 
3. Showing inventiveness and skill (= cunning, ingenious)
"a clever gadget";
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

  final String _videoId = 'xEKY7lZStE4';
  final double _startSeconds = 50;

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

  final String _videoId = 'wT6dbcXEyXM';
  final double _startSeconds = 0;

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

  final String _videoId = 'SGUZd5YtObw';
  final double _startSeconds = 7;

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

  final String _videoId = 'mfZ39ReYuRE';
  final double _startSeconds = 119;

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

  final String _videoId = 'Twb47ynU4lw';
  final double _startSeconds = 245;

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

  final String _videoId = 'zN6esFH8Bes';
  final double _startSeconds = 104;

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

  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 392;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 957;

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