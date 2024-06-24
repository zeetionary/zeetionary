import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycheap extends StatelessWidget {
  // blank divider
  EnglishEntrycheap({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcheap(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cheap");
  }

  Future<void> speakcheaps1(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their cheap prices have helped them pick up new customers.");
  }

  Future<void> speakcheaps2(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They're offering incredibly cheap fares to Eastern Europe.");
  }

  Future<void> speakcheaps3(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cycling is a cheap way to get around.");
  }

  Future<void> speakcheaps4(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A good education is not cheap.");
  }

  Future<void> speakcheaps5(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Electricity is relatively cheap in Ireland.");
  }

  Future<void> speakcheaps6(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a good restaurant, and incredibly cheap.");
  }

  Future<void> speakcheaps7(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Italy was a very cheap country to visit in those days.");
  }

  Future<void> speakcheaps8(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was just a bottle of cheap perfume.");
  }

  Future<void> speakcheaps9(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He bought some cheap shoes that fell apart after a couple of months.");
  }

  Future<void> speakcheaps10(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They sold cheap and nasty watches at hugely inflated prices.");
  }

  Future<void> speakcheaps11(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I wish you'd stop making cheap jokes about my friends.");
  }

  Future<void> speakcheaps12(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's just a cheap crook.");
  }

  Future<void> speakcheaps13(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't be so cheap!");
  }

  Future<void> speakcheaps14(String languageCode) async {
    // DOPSUM: CHANGE speakcheap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was just too cheap to buy a real present.");
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
                            EntryTitle(word: "cheap"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃiːp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcheap("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃiːp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcheap("en-US"),
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
کوردی: ھەرزان، کەڵەپوور، مەلاخۆرە، ھەرزان‌بایی، بازاڕی، ڕەشۆکی، کەمبایی، خۆڕایی، مفت، تاڵانی، ئاشاخە، گەن‌وگوو، ئایەخ، قرپۆک، ھیچ، بێ‌نرخ، بەکارنەھاتوو، خراپ، ناکەس، سووک، چروک، گناس، ھەرزە، ناحەز، ناشیرین،	بێ‌ڕەوشتانە، بێ‌ڕێزانە،	ڕژد، بەرچاوتەنگ، لەچەر،	دووڕوو، ڕووبین
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) ھەرزان لە ڕووی نرخەوە"),
                          SentencesRow(
                            englishText:
                                "Their cheap prices have helped them pick up new customers.",
                            kurdishText:
                                "نرخە ھەرزانەکانیان یارمەتی داون کڕیاری تازە کۆبکەنەوە.", // cheap",
                            onPressedBritish: () => speakcheaps1("en-GB"),
                            onPressedAmerican: () => speakcheaps1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They're offering incredibly cheap fares to Eastern Europe.",
                            kurdishText:
                                "کرێی تەواو ھەرزان وەردەگرن بۆ ڕۆژھەڵاتی ئەورووپا.",
                            onPressedBritish: () => speakcheaps2("en-GB"),
                            onPressedAmerican: () => speakcheaps2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Cycling is a cheap way to get around.",
                                    kurdishText:
                                        "پاسکیلسواری ڕێگایەکی ھەرزانە بۆ ھاتوچۆ.",
                                    onPressedBritish: () =>
                                        speakcheaps3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcheaps3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A good education is not cheap.",
                                    kurdishText: "خوێندنی باش ھەرزان نییە.",
                                    onPressedBritish: () =>
                                        speakcheaps4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcheaps4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Electricity is relatively cheap in Ireland.",
                                    kurdishText:
                                        "کارەبا تاڕادەیەک ھەرزانە لە ئێرلەندا.",
                                    onPressedBritish: () =>
                                        speakcheaps5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcheaps5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) داواکردنی نرخی کەم"),
                          SentencesRow(
                            englishText:
                                "It's a good restaurant, and incredibly cheap.",
                            kurdishText: "چێشتخانەیەکی باشە و ھەرزانیشە.",
                            onPressedBritish: () => speakcheaps6("en-GB"),
                            onPressedAmerican: () => speakcheaps6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Italy was a very cheap country to visit in those days.",
                            kurdishText:
                                "ئەو ڕۆژانە ئیتالیا وڵاتێکی ھەرزان بوو بۆ سەردانکردن.",
                            onPressedBritish: () => speakcheaps7("en-GB"),
                            onPressedAmerican: () => speakcheaps7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ھەرزان و خراپ"),
                          SentencesRow(
                            englishText:
                                "It was just a bottle of cheap perfume.",
                            kurdishText: "بوتڵێک لە بۆنی ھەرزان بوو.",
                            onPressedBritish: () => speakcheaps8("en-GB"),
                            onPressedAmerican: () => speakcheaps8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He bought some cheap shoes that fell apart after a couple of months.",
                            kurdishText:
                                "ھەندێک پێڵاوی ھەرزانی کڕی کە پاش چەند مانگێک دڕان.",
                            onPressedBritish: () => speakcheaps9("en-GB"),
                            onPressedAmerican: () => speakcheaps9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They sold cheap and nasty watches at hugely inflated prices.",
                            kurdishText:
                                "کاتژمێری ھەرزان و خراپیان دەفرۆشت بە نرخی زۆر بەرز.",
                            onPressedBritish: () => speakcheaps10("en-GB"),
                            onPressedAmerican: () => speakcheaps10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) ناخۆش و دڵڕەقانە"),
                          SentencesRow(
                            englishText:
                                "I wish you'd stop making cheap jokes about my friends.",
                            kurdishText:
                                "ھیوادارم بوەستی لە گاڵتەی لەم شێوەیە لەسەر ھاوڕێیەکانم.",
                            onPressedBritish: () => speakcheaps11("en-GB"),
                            onPressedAmerican: () => speakcheaps11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کەسێکی ئاست نزم کە شایەنی ڕێز نییە"),
                          SentencesRow(
                            englishText: "He's just a cheap crook.",
                            kurdishText: "تەنھا ناپەسەندێکی ناکەسە.",
                            onPressedBritish: () => speakcheaps12("en-GB"),
                            onPressedAmerican: () => speakcheaps12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) کەسێک کە پارە خەرج ناکات"),
                          SentencesRow(
                            englishText: "Don't be so cheap!",
                            kurdishText: "ھێندە ڕەزیل مەبە!",
                            onPressedBritish: () => speakcheaps13("en-GB"),
                            onPressedAmerican: () => speakcheaps13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was just too cheap to buy a real present.",
                            kurdishText:
                                "زۆر چرووک بوو کە دیارییەکی شیاو بکڕێت.",
                            onPressedBritish: () => speakcheaps14("en-GB"),
                            onPressedAmerican: () => speakcheaps14("en-US"),
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
- Adjective: cheap (derived forms: cheaper, cheapest)
1. Relatively low in price or charging low prices (= inexpensive, budget)
"it would have been cheap at twice the price";
 
2. Tastelessly showy (= brassy [informal], flash [informal], flashy, garish, gaudy, gimcrack, loud, meretricious, tacky [informal], tatty [informal], tawdry, trashy)
"a cheap car";
 
3. Of very poor quality; flimsy (= bum [informal], cheesy [informal], chintzy [N. Amer, informal], crummy [informal], punk [N. Amer, informal], sleazy [archaic], tinny [archaic], tacky [informal], crumby [informal])
 
4. Embarrassingly stingy (= chinchy [N. Amer, informal], chintzy [N. Amer, informal])
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

  final String _videoId = '4XblDJgEBII';
  final double _startSeconds = 9;

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

  final String _videoId = 't4Y1tOKp-q8';
  final double _startSeconds = 156;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '2BGJ-YC4Wbw';
  final double _startSeconds = 11;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'mCn-umV3s0c';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'fIGrCHxnkRU';
  final double _startSeconds = 22;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '4m_atLYfd-Y';
  final double _startSeconds = 22;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '8uIsbRaArvk';
  final double _startSeconds = 36;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'dPZmcCRD0Kw';
  final double _startSeconds = 16;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
