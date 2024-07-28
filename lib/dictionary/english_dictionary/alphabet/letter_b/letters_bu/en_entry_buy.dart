import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybuy extends StatelessWidget {
// blank divider
  EnglishEntrybuy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbuy(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("buy");
  }

  Future<void> speakbuys1(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Where did you buy that dress?");
  }

  Future<void> speakbuys2(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had no money to buy a ticket.");
  }

  Future<void> speakbuys3(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They can't afford to buy school books.");
  }

  Future<void> speakbuys4(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you're thinking of getting a new car, now is a good time to buy.");
  }

  Future<void> speakbuys5(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I bought my car second-hand.");
  }

  Future<void> speakbuys6(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He gave his children the best education that money can buy.");
  }

  Future<void> speakbuys7(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Five pounds doesn't buy much nowadays.");
  }

  Future<void> speakbuys8(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He can't be bought.");
  }

  Future<void> speakbuys9(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her fame was bought at the expense of her marriage.");
  }

  Future<void> speakbuys10(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You could say you were ill but I don't think they'd buy it.");
  }

  Future<void> speakbuys11(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That jacket was a really good buy.");
  }

  Future<void> speakbuys12(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The club has made some great buys this season.");
  }

  Future<void> speakbuys13(String languageCode) async {
    // DOPSUM: CHANGE speakbuy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuys1313");
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
                            EntryTitle(word: "buy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baɪ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbuy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baɪ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbuy("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١. (کردار) کڕین، سەندن"""),
                          SentencesRow(
                            englishText: "Where did you buy that dress?",
                            kurdishText:
                                "ئەو جلەت لە کوێ کڕی؟", // buy", follow LX strictly
                            onPressedBritish: () => speakbuys1("en-GB"),
                            onPressedAmerican: () => speakbuys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She had no money to buy a ticket.",
                            kurdishText: "ھیچ پارەی نەبوو بلیتێک بکڕێت.",
                            onPressedBritish: () => speakbuys2("en-GB"),
                            onPressedAmerican: () => speakbuys2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They can't afford to buy school books.",
                                    kurdishText:
                                        "پارەیان نییە کتێبی قوتابخانە بکڕن.",
                                    onPressedBritish: () => speakbuys3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuys3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "If you're thinking of getting a new car, now is a good time to buy.",
                                    kurdishText:
                                        "ئەگەر بیر لە کڕینی ئۆتۆمبێلێکی تازە دەکەیتەوە، ئێستا کاتێکی باشە بکڕیت.",
                                    onPressedBritish: () => speakbuys4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuys4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "I bought my car second-hand.",
                                    kurdishText: "ئۆتۆمبێلێکی دەستی دووم کڕی.",
                                    onPressedBritish: () => speakbuys5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuys5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بڕە پارەیەک کە بەسە بۆ کڕینی شتێک"),
                          SentencesRow(
                            englishText:
                                "He gave his children the best education that money can buy.",
                            kurdishText:
                                "باشترین خوێندنی دا بە منداڵەکانی کە پارە دابینی بکات.",
                            onPressedBritish: () => speakbuys6("en-GB"),
                            onPressedAmerican: () => speakbuys6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Five pounds doesn't buy much nowadays.",
                            kurdishText: "پێنج پاوەند زۆر شت ناکات لە ئێستادا.",
                            onPressedBritish: () => speakbuys7("en-GB"),
                            onPressedAmerican: () => speakbuys7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ڕازیکردنی کەسێک بۆ کردنی کارێکی خراپ لە بەرامبەر پارەدا"),
                          SentencesRow(
                            englishText:
                                "He can't be bought (= he's too honest to accept money in this way).",
                            kurdishText: "ناتوانرێت بکڕدرێت.",
                            onPressedBritish: () => speakbuys8("en-GB"),
                            onPressedAmerican: () => speakbuys8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بەدەستھێنانی شتێک بە لەدەستدانی شتێکی دیکەی بەنرختر"),
                          SentencesRow(
                            englishText:
                                "Her fame was bought at the expense of her marriage.",
                            kurdishText:
                                "ناوبانگەکەی بەدەستھێندرا بە لەدەستدانی ھاوسەرگیرییەکەی.",
                            onPressedBritish: () => speakbuys9("en-GB"),
                            onPressedAmerican: () => speakbuys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) باوەڕکردن بەوەی شتێک ڕاستە، بەتایبەتی لەکاتێکدا ئەگەری کەمە"),
                          SentencesRow(
                            englishText:
                                "You could say you were ill but I don't think they'd buy it (= accept the explanation).",
                            kurdishText:
                                "دەتوانیت بڵێیت نەخۆش بووم، بەڵام باوەڕ ناکەم باوەڕ بکەن.",
                            onPressedBritish: () => speakbuys10("en-GB"),
                            onPressedAmerican: () => speakbuys10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شتێک کە شایەنی ئەو پارەیە کە بۆت داوە"),
                          SentencesRow(
                            englishText: "That jacket was a really good buy.",
                            kurdishText: "ئەو چاکەتە کڕینێکی باش بوو.",
                            onPressedBritish: () => speakbuys11("en-GB"),
                            onPressedAmerican: () => speakbuys11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) شتێک کە دەکڕدرێت یان بۆ فرۆشتنە"),
                          SentencesRow(
                            englishText:
                                "The club has made some great buys this season (= it has bought good new players).",
                            kurdishText:
                                "یانەکە چەند کڕینێکی باشی ئەنجام داوە ئەم وەرزە.",
                            onPressedBritish: () => speakbuys12("en-GB"),
                            onPressedAmerican: () => speakbuys12("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
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
- Verb: buy (derived forms: bought, buying, buys)
1. Obtain in exchange for payment (= purchase)
"She buys for the big department store";
 
2. (crime) make illegal payments to in exchange for favours or influence (= bribe, corrupt, grease the palm of)
"This judge can be bought";
 
3. Be worth or be capable of buying
"This sum will buy you a ride on the train"
 
4. Acquire by trade, sacrifice or exchange
"She wanted to buy his love with her dedication to him and his work"
 
5. Accept as true
"I can't buy this story"

- Noun: buy (derived forms: buys)
1. An advantageous purchase (= bargain, steal, snip [Brit])
"the stock was a real buy at that price";
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

  final String _videoId = 'j5SKmUoL9Tg';
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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 72;

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

  final String _videoId = 'oYBq6tgx_5M';
  final double _startSeconds = 250;

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

  final String _videoId = 'UtTQsw6CB8M';
  final double _startSeconds = 236;

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

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 305;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 202;

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

  final String _videoId = 'VdN6yXZ3cLM';
  final double _startSeconds = 10;

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

  final String _videoId = 'J_0uDvbeerg';
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'RmxsKP7mgYQ';
  final double _startSeconds = 5;

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

  final String _videoId = 'Z7PlUGbsXlQ';
  final double _startSeconds = 60;

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

// end WORD_WEB
