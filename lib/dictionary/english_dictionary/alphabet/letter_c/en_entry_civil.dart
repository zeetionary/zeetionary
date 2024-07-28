import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycivil extends StatelessWidget {
  // blank divider
  EnglishEntrycivil({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcivil(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("civil");
  }

  Future<void> speakcivils1(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were concerns that the economic reforms might lead to civil unrest.");
  }

  Future<void> speakcivils2(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Helicopters are mainly used for military rather than civil use.");
  }

  Future<void> speakcivils3(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After ten years of military dictatorship, the country now has a civil government.");
  }

  Future<void> speakcivils4(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We weren't married in church, but we had a civil ceremony in a registry office.");
  }

  Future<void> speakcivils5(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have called in the army to assist the civil authorities in rescue operations.");
  }

  Future<void> speakcivils6(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The matter would be better dealt with in the civil court rather than by an criminal proceeding.");
  }

  Future<void> speakcivils7(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The less time I have to spend being civil to him the better!");
  }

  Future<void> speakcivils8(String languageCode) async {
    // DOPSUM: CHANGE speakcivil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He said that the police were perfectly civil in their questioning.");
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
                            EntryTitle(word: "civil"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsɪvl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcivil("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsɪvl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcivil("en-US"),
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
کوردی: شارستانی، شاری، باژێروانی، سیڤیل، مەدەنی،	بەشارستانیەت، نالەشکری، نائەرتەشی، ناسەربازی،	نادینی، نائایینی، عورفی،	ناوخۆیی،	بەڕەوشت،	بەڕەوشتانە،	(ماف) ناتاوانی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) پەیوەندیدار بە دەنیشتووانی شارێک"),
                          SentencesRow(
                            englishText:
                                "There were concerns that the economic reforms might lead to civil unrest.",
                            kurdishText:
                                "نیگەرانی ھەبوو لەوەی کە چاکسازییە ئابورییەکان لەوانەیە ببنە ھۆی ئاڵۆزی ھاوڵاتییان.", // civil",
                            onPressedBritish: () => speakcivils1("en-GB"),
                            onPressedAmerican: () => speakcivils1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Helicopters are mainly used for military rather than civil use.",
                            kurdishText:
                                "ھێلیکۆپتەر زۆرجار بۆ بەکارھێنانی سەربازییە نەک مەدەنی.",
                            onPressedBritish: () => speakcivils2("en-GB"),
                            onPressedAmerican: () => speakcivils2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "After ten years of military dictatorship, the country now has a civil government.",
                            kurdishText:
                                "لە دوای ١٠ ساڵ لە دیکتاتۆریەتی سەربازی، وڵاتەکە لەکۆتاییدا حکومەتێکی مەدەنی ھەیە.",
                            onPressedBritish: () => speakcivils3("en-GB"),
                            onPressedAmerican: () => speakcivils3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) پەیوەندیدار بە وڵات نەک حکومەت یان دامەزراوەی ئایینی"),
                          SentencesRow(
                            englishText:
                                "We weren't married in church, but we had a civil ceremony in a registry office.",
                            kurdishText:
                                "لە کڵێسا ھاوسەرگیریمان نەکرد، بەڵکو بۆنەیەکی حکومیمان ھەبوو لە ئۆفیسێکی تۆمار.",
                            onPressedBritish: () => speakcivils4("en-GB"),
                            onPressedAmerican: () => speakcivils4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We have called in the army to assist the civil authorities in rescue operations.",
                            kurdishText:
                                "پەیوەندیمان بە سووپاوە کردووە کە یارمەتی بەرپرسە حکوومییەکان بدەن لە ئۆپەراسیۆنەکانی ڕزگارکردندا.",
                            onPressedBritish: () => speakcivils5("en-GB"),
                            onPressedAmerican: () => speakcivils5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) پەیوەندیدار بە بابەتی کەسی یاسایی، نەک تاوانکاری"),
                          SentencesRow(
                            englishText:
                                "The matter would be better dealt with in the civil court rather than by an criminal proceeding.",
                            kurdishText:
                                "بابەتەکە باشتر لە دادگایەکی مەدەنیدا مامەڵەی لەگەڵ دەکرێت نەک بە ڕێوشوێنی تاوانکاری.",
                            onPressedBritish: () => speakcivils6("en-GB"),
                            onPressedAmerican: () => speakcivils6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) بەڕێز بە شێوەیەکی فەرمی بەڵام ھاوڕێیانە نا"),
                          SentencesRow(
                            englishText:
                                "The less time I have to spend being civil to him the better!",
                            kurdishText:
                                "چەندە کەمتر ھەوڵ بدەم بەڕێز بم لەگەڵیدا باشترە.",
                            onPressedBritish: () => speakcivils7("en-GB"),
                            onPressedAmerican: () => speakcivils7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He said that the police were perfectly civil in their questioning.",
                            kurdishText:
                                "گوتی پۆلیس تەواو مەدەنییانە بوون لەگەڵیدا لە پرسیارکردندا.",
                            onPressedBritish: () => speakcivils8("en-GB"),
                            onPressedAmerican: () => speakcivils8("en-US"),
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
- Adjective: civil 
1. Applying to ordinary citizens as contrasted with the military
"civil authorities"
 
2. Of or in a condition of social order
"civil peoples"
 
3. Not rude; marked by satisfactory (or especially minimal) adherence to social usages and sufficient but not noteworthy consideration for others (= polite)
"even if he didn't like them he should have been civil";

4. Of or occurring within the state or between or among citizens of the state
"civil affairs"; "civil strife"; "civil disobedience"; "civil branches of government"
 
5. Of or relating to or befitting citizens as individuals (= civic)
"civil rights"; "civil liberty";
 
6. (of divisions of time) legally recognized in ordinary affairs of life
"the civil calendar"; "a civil day begins at mean midnight"
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

  final String _videoId = 'FssJcjOIB7A';
  final double _startSeconds = 47;

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

  final String _videoId = 'uKXIvfQnYEY';
  final double _startSeconds = 78;

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

  final String _videoId = 'r5VOAxLuS5g';
  final double _startSeconds = 33;

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

  final String _videoId = 'r11l4x-lmjo';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'VFj8AOqO46Q';
  final double _startSeconds = 14;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1036;

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

  final String _videoId = 'fn--IVarumw';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'zpFB2q_3pJo';
  final double _startSeconds = 389;

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