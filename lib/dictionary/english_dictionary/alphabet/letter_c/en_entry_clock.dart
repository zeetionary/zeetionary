import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclock extends StatelessWidget {
  // blank divider
  EnglishEntryclock({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclock(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("clock");
  }

  Future<void> speakclocks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The clock struck twelve/midnight.");
  }

  Future<void> speakclocks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The clock has stopped.");
  }

  Future<void> speakclocks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The clock is right/wrong.");
  }

  Future<void> speakclocks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My clock said 9.02.");
  }

  Future<void> speakclocks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was ten past six by the kitchen clock.");
  }

  Future<void> speakclocks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The sound of a clock ticking somewhere in the house kept him awake.");
  }

  Future<void> speakclocks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was only doing 30 mph on the clock.");
  }

  Future<void> speakclocks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My car's only got 10,000 miles on the clock.");
  }

  Future<void> speakclocks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He clocked 10.09 seconds in the 100 metres final.");
  }

  Future<void> speakclocks10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The police clocked her doing over 100 miles an hour.");
  }

  Future<void> speakclocks11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I clocked her in the driving mirror.");
  }

  Future<void> speakclocks12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He said it again, so I clocked him on the nose!");
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
                            EntryTitle(word: "clock"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɒk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclock("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɑːk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclock("en-US"),
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
کوردی: کات‌ژمێر، سەعات (بێجگەلە دەستی)،	کات، وەخت و زەمان،	تاکسی‌میتر،	خێرایی‌پێوی ماشین،	سەرەخڕی تۆوداری کوڵکنی شەلەمکەرە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کاتژمێری سەر دیوار، مێز، یان کۆمپیوتەر (کاتژمێری دەست نا)"),
                          SentencesRow(
                            englishText: "The clock struck twelve/midnight.",
                            kurdishText: "کاتژمێرەکە گەشتە سەر دوازدە.",
                            onPressedBritish: () => speakclocks1("en-GB"),
                            onPressedAmerican: () => speakclocks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The clock has stopped.",
                            kurdishText: "کاتژمێرەکە وەستاوە.",
                            onPressedBritish: () => speakclocks2("en-GB"),
                            onPressedAmerican: () => speakclocks2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "The clock is right/wrong.",
                                    kurdishText: "کاتژمێرەکە ڕاستە/ھەڵەیە.",
                                    onPressedBritish: () =>
                                        speakclocks3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclocks3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "My clock said 9.02.",
                                    kurdishText: "کاتژمێرەکەم ٩.٠٢ دەخوێندەوە.",
                                    onPressedBritish: () =>
                                        speakclocks4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclocks4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It was ten past six by the kitchen clock.",
                                    kurdishText:
                                        "١٠ خولەک لایدابوو لە شەش بەپێی کاتژمێری چێشتخانەکە.",
                                    onPressedBritish: () =>
                                        speakclocks5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclocks5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The sound of a clock ticking somewhere in the house kept him awake.",
                                    kurdishText:
                                        "دەنگی کاتژمێرێک کە لە شوێنێکی ماڵەکەدا چرکەی داھات بە بێداری ھێشتبوویەوە.",
                                    onPressedBritish: () =>
                                        speakclocks6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclocks6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) گێچی ئۆتۆمبێلێک کە ژمارەی ئەو میل یان کیلۆمەترانە دەپێوێت کە ڕۆشتووە، یان ئەوەی کە خێرایی دەژمێرێت"),
                          SentencesRow(
                            englishText:
                                "I was only doing 30 mph on the clock.",
                            kurdishText:
                                "بەپێی گێچەکە ٣٠ مل/کاتژمێرێکدا دەچووم.",
                            onPressedBritish: () => speakclocks7("en-GB"),
                            onPressedAmerican: () => speakclocks7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "My car's only got 10,000 miles on the clock.",
                            kurdishText:
                                "ئۆتۆمبێلەکەم تەنھا ١٠,٠٠٠ میل چووە لەسەر گێچەکە.",
                            onPressedBritish: () => speakclocks8("en-GB"),
                            onPressedAmerican: () => speakclocks8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) گەشتنە کاتێک یان خێراییەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "He clocked 10.09 seconds in the 100 metres final.",
                            kurdishText:
                                "لە ١٠٠ مەتری کۆتادا گەشتە ١٠,٠٩ چرکە.",
                            onPressedBritish: () => speakclocks9("en-GB"),
                            onPressedAmerican: () => speakclocks9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) پێوانی خێرایی جوڵەی کەسێک/شتێک"),
                          SentencesRow(
                            englishText:
                                "The police clocked her doing over 100 miles an hour.",
                            kurdishText:
                                "پۆلیس پێوانەی کرد کە زیاتر لە ١٠٠ کیلۆمەتر لە کاتژمێرێکدا دەچوو.",
                            onPressedBritish: () => speakclocks10("en-GB"),
                            onPressedAmerican: () => speakclocks10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) تێبینیکردنی کەسێک یان ئاماژەدان پێی بەوەی کە دەیبینیت"),
                          SentencesRow(
                            englishText: "I clocked her in the driving mirror.",
                            kurdishText: "لە ئاوێنەی تەنیشتەوە ئاماژەم بۆ کرد.",
                            onPressedBritish: () => speakclocks11("en-GB"),
                            onPressedAmerican: () => speakclocks11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) لێدان لە کەسێک"),
                          SentencesRow(
                            englishText:
                                "He said it again, so I clocked him on the nose!",
                            kurdishText:
                                "دووبارە گوتییەوە، بۆیە کێشام بە لوتیدا.",
                            onPressedBritish: () => speakclocks12("en-GB"),
                            onPressedAmerican: () => speakclocks12("en-US"),
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
- Noun: clock (derived forms: clocks)
1. A timepiece that shows the time of day

- Verb: clock (derived forms: clocks, clocking, clocked)
1. Measure the time or duration of an event or action or the person who performs an action in a certain period of time (= time)
"he clocked the runners";
 
2. [UK, informal] Hit hard (= sock [informal], bop [informal], whop [informal], whap [N. Amer, informal], bonk [informal], bash [informal], clonk [informal], boink [N. Amer, informal], whack [informal], wham [informal], wallop [informal], lamp [UK, informal], belt [informal])
"He clocked his opponent";
 
3. [Brit, informal] See, notice or watch
"they clocked our faces"
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

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '2YKrILmZz7E';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '3h1vCwJ7Jss';
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

  final String _videoId = 'whDMhPHOJZM';
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

  final String _videoId = 'YXV6lwcFDrM';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'oa-CuxbTJ9g';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'D-i-emUOTfk';
  final double _startSeconds = 153;

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

  final String _videoId = '35N2mefXKZY';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 326;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 1283;

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