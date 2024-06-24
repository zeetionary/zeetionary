import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychase extends StatelessWidget {
  // blank divider
  EnglishEntrychase({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchase(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chase");
  }

  Future<void> speakchases1(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My dog likes chasing rabbits.");
  }

  Future<void> speakchases2(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The kids chased each other around the kitchen table.");
  }

  Future<void> speakchases3(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Chase the cat out—we don't want her in the kitchen.");
  }

  Future<void> speakchases4(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This particular fish chases off any other fish that enters its territory.");
  }

  Future<void> speakchases5(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Too many people are chasing too few jobs nowadays.");
  }

  Future<void> speakchases6(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The team is chasing its first win in five games.");
  }

  Future<void> speakchases7(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Kevin's been chasing after Jane for months.");
  }

  Future<void> speakchases8(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Girls are always chasing him.");
  }

  Future<void> speakchases9(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I need to chase him about organizing the meeting.");
  }

  Future<void> speakchases10(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchases10");
  }

  Future<void> speakchases11(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The thieves were caught by police after a short chase.");
  }

  Future<void> speakchases12(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We lost him in the narrow streets and had to give up the chase.");
  }

  Future<void> speakchases13(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Three teams are involved in the chase for the championship.");
  }

  Future<void> speakchases14(String languageCode) async {
    // DOPSUM: CHANGE speakchase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Exhausted and hungry, the hunters finally gave up the chase.");
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
                            EntryTitle(word: "chase"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃeɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃeɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchase("en-US"),
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
کوردی: شوێن‌ھەڵگرتن، ڕاونان، بەدواکەوتن، بەدواداگەڕان، بەدواداچوون، شۆپاندن، دانەپەی،	ڕاو، ڕاوگە، جێ‌ڕاو،	خەنەک
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) چوون بە دوای کەسێک یان شتێک بۆ گرتنی"),
                          SentencesRow(
                            englishText: "My dog likes chasing rabbits.",
                            kurdishText:
                                "سەگەکەم حەزی بە شوێنکەوتنی کەروێشکە.", // chase",
                            onPressedBritish: () => speakchases1("en-GB"),
                            onPressedAmerican: () => speakchases1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The kids chased each other around the kitchen table.",
                            kurdishText:
                                "منداڵەکان شوێن یەکدی کەوتبوون بە دەوری مێزی چێشتخانەکەدا.",
                            onPressedBritish: () => speakchases2("en-GB"),
                            onPressedAmerican: () => speakchases2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ناچارکردنی کەسێک یان شتێک کە ڕابکات"),
                          SentencesRow(
                            englishText:
                                "Chase the cat out—we don't want her in the kitchen.",
                            kurdishText:
                                "پشیلەکە ڕاوبنێ دەرەوە، نامانەوێت لە چێشتخانەکە بێت.",
                            onPressedBritish: () => speakchases3("en-GB"),
                            onPressedAmerican: () => speakchases3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This particular fish chases off any other fish that enters its territory.",
                            kurdishText:
                                "ئەم جۆرە ماسییە ھەر جۆرە ماسییەکی دیکە ڕاودەنێت کە بێتە ناوچەکەیەوە .",
                            onPressedBritish: () => speakchases4("en-GB"),
                            onPressedAmerican: () => speakchases4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ھەوڵدان بۆ بەدەستھێنانی شتێک، بۆ نموونە پارە، کار، یان سەرکەوتن"),
                          SentencesRow(
                            englishText:
                                "Too many people are chasing too few jobs nowadays.",
                            kurdishText:
                                "ژمارەیەکی زۆر خەڵک بەشوێن ژمارەیەکی کەمی کارەوەن ئەم ڕۆژانە.",
                            onPressedBritish: () => speakchases5("en-GB"),
                            onPressedAmerican: () => speakchases5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The team is chasing its first win in five games.",
                            kurdishText:
                                "تیمەکە ھەوڵی یەکەم بردنەوەی لە پێنج یاریدا دەدات.",
                            onPressedBritish: () => speakchases6("en-GB"),
                            onPressedAmerican: () => speakchases6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ھەوڵدان بۆ ڕازیکردنی کەسێک بۆ بوونی پەیوەندی سێکسی"),
                          SentencesRow(
                            englishText:
                                "Kevin's been chasing after Jane for months.",
                            kurdishText:
                                "کیڤن بۆ چەندین مانگە بە شوێن جەینەوەیە.",
                            onPressedBritish: () => speakchases7("en-GB"),
                            onPressedAmerican: () => speakchases7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Girls are always chasing him.",
                            kurdishText: "کچان ھەمیشە بەدوایەوەن.",
                            onPressedBritish: () => speakchases8("en-GB"),
                            onPressedAmerican: () => speakchases8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ڕازیکردنی کەسێک بۆ کردنی کارێک کە دەبوو زووتر بیکردایە"),
                          SentencesRow(
                            englishText:
                                "I need to chase him about organizing the meeting.",
                            kurdishText:
                                "پێویست بوو ڕێکخستنی کۆبوونەوەکە بەگوێیدا بدەمەوە.",
                            onPressedBritish: () => speakchases9("en-GB"),
                            onPressedAmerican: () => speakchases9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) چوون بۆ شوێنێک بەپەلە"),
                          SentencesRow(
                            englishText:
                                "I've been chasing around town all morning looking for a present for Sharon.",
                            kurdishText:
                                "تەواوی بەیانییەکە بە شارۆچکەکەدا گەڕام بۆ دیارییەک بۆ شارۆن.",
                            onPressedBritish: () => speakchases10("en-GB"),
                            onPressedAmerican: () => speakchases10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) شوێنکەوتنی کەسێک یان شتێک بۆ گرتنی"),
                          SentencesRow(
                            englishText:
                                "The thieves were caught by police after a short chase.",
                            kurdishText:
                                "دزەکان لەلایەن پۆلیسەوە گیران لە دوای بەدواکەوتنێکی کورت.",
                            onPressedBritish: () => speakchases11("en-GB"),
                            onPressedAmerican: () => speakchases11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We lost him in the narrow streets and had to give up the chase (= stop chasing him).",
                            kurdishText:
                                "لە شەقامە تەسکەکاندا ونمانکرد و ناچاربووین کۆتایی بە ڕاوەدوونانەکە بھێنین.",
                            onPressedBritish: () => speakchases12("en-GB"),
                            onPressedAmerican: () => speakchases12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) ھەوڵدانی زۆر بە دەستخستنی شتێک"),
                          SentencesRow(
                            englishText:
                                "Three teams are involved in the chase for the championship.",
                            kurdishText:
                                "سێ تیم لە کێبڕکی دان بۆ بەدەستھێنانی پاڵەوانێتییەکە.",
                            onPressedBritish: () => speakchases13("en-GB"),
                            onPressedAmerican: () => speakchases13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) ڕاوکردنی ئاژەڵان بۆ وەرزش."),
                          SentencesRow(
                            englishText:
                                "Exhausted and hungry, the hunters finally gave up the chase.",
                            kurdishText:
                                "ماندوو و برسی، ڕاوکەرەکان لەکۆتاییدا وازیان ھاورد لە ڕاوکردنەکە.",
                            onPressedBritish: () => speakchases14("en-GB"),
                            onPressedAmerican: () => speakchases14("en-US"),
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
- Verb: chase (derived forms: chasing, chased, chases)
1. Go after with the intent to catch (= chase after, trail, tail, tag, give chase, dog, go after, track)
"The policeman chased the mugger down the alley"; "the fox chased the rabbit"; "The policeman chased after the mugger down the alley";
 
2. Pursue someone sexually or romantically (= chase after)
 
3. Cut a groove into
"chase silver"
 
4. Cut a furrow into columns (= furrow, chamfer)

- Noun: chase (derived forms: chases)
1. The act of pursuing in an effort to overtake or capture (= pursuit, pursual, following)
"the culprit started to run and the cop took off in chase";
 
2. A rectangular metal frame used in letterpress printing to hold together the pages or columns of composed type that are printed at one time
 
3. A cavity or groove, e.g. in a wall to hold cables or pipes

- Noun: Chase 
1. United States politician and jurist who served as chief justice of the United States Supreme Court (1808-1873) (= Salmon P. Chase, Salmon Portland Chase)
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

  final String _videoId = 'GoQkxFNk-hw';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9b76gFIbNJs';
  final double _startSeconds = 18;

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

  final String _videoId = 'IjOdZ0Pm85s';
  final double _startSeconds = 111;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1410;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 536;

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

  final String _videoId = '58XEfDtU0Z4';
  final double _startSeconds = 1149;

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

  final String _videoId = '3RkhZgRNC1k';
  final double _startSeconds = 1562;

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

  final String _videoId = 'jFk-L7Wcg0g';
  final double _startSeconds = 368;

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
