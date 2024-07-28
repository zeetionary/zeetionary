import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycircle extends StatelessWidget {
  // blank divider
  EnglishEntrycircle({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcircle(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("circle");
  }

  Future<void> speakcircles1(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cut out two circles of paper.");
  }

  Future<void> speakcircles2(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Draw a circle.");
  }

  Future<void> speakcircles3(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He traced a circle in the dust with his finger.");
  }

  Future<void> speakcircles4(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had dark circles around his eyes from lack of sleep.");
  }

  Future<void> speakcircles5(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sharks were swimming in circles around her.");
  }

  Future<void> speakcircles6(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The planets move in circles around the sun.");
  }

  Future<void> speakcircles7(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children stood in a circle.");
  }

  Future<void> speakcircles8(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Arrange the candles to create a circle.");
  }

  Future<void> speakcircles9(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We had seats in the circle.");
  }

  Future<void> speakcircles10(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Talk of religion was forbidden in the family circle.");
  }

  Future<void> speakcircles11(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her ideas have caused controversy in scientific circles in recent years.");
  }

  Future<void> speakcircles12(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Respondents were asked to circle the appropriate answers.");
  }

  Future<void> speakcircles13(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Spelling mistakes are circled in red.");
  }

  Future<void> speakcircles14(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The helicopter was circling slowly, very low.");
  }

  Future<void> speakcircles15(String languageCode) async {
    // DOPSUM: CHANGE speakcircle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Seagulls circled around above his head.");
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
                            EntryTitle(word: "circle"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsɜːkl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcircle("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsɜːrkl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcircle("en-US"),
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
کوردی: بازنە، جەغز، گاخ، خاز، ئاڵقە، چەمەرە، کەمەرە، چەرخ، دەور، گەڕ، سوور، خول،	بوار، پانتایی، مەڵبەند، ئاقار، ڕاخستە،	کۆڕ، گروپ، کۆمەڵ، دەستە،	نھۆمی سەرەوەی شانۆگا یا سینەما
"""),
                          const DefinitionKurdish(text: "١. (ناو) بازنە"),
                          SentencesRow(
                            englishText: "Cut out two circles of paper.",
                            kurdishText:
                                "دوو بازنەی کاغەزی بازنەیی ببڕە.", // circle",
                            onPressedBritish: () => speakcircles1("en-GB"),
                            onPressedAmerican: () => speakcircles1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) قەراغەکانی بازنەیەک"),
                          SentencesRow(
                            englishText: "Draw a circle.",
                            kurdishText: "بازنەیەک بکێشە.",
                            onPressedBritish: () => speakcircles2("en-GB"),
                            onPressedAmerican: () => speakcircles2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He traced a circle in the dust with his finger.",
                            kurdishText:
                                "بە پەنجەی بازنەیەکی لە خۆڵەکەدا کێشا.",
                            onPressedBritish: () => speakcircles3("en-GB"),
                            onPressedAmerican: () => speakcircles3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He had dark circles around his eyes from lack of sleep.",
                                    kurdishText:
                                        "بازنەی ڕەشی لە دەوری چاوەکانی ھەبوو بەھۆی کەمی خەوەوە.",
                                    onPressedBritish: () =>
                                        speakcircles4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcircles4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The sharks were swimming in circles around her.",
                                    kurdishText:
                                        "بازنەکان بە بازنەیەک بە دەوریدا مەلەیان دەکرد.",
                                    onPressedBritish: () =>
                                        speakcircles5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcircles5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The planets move in circles around the sun.",
                                    kurdishText:
                                        "ھەسارەکان لە بازنەدا بە دەوری خۆردا دەسووڕێنەوە.",
                                    onPressedBritish: () =>
                                        speakcircles6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcircles6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کۆمەڵە شتێک یان خەڵک کە بە بازنەیەکیان درووستکردووە"),
                          SentencesRow(
                            englishText: "The children stood in a circle.",
                            kurdishText: "منداڵەکان بە بازنەیەک وەستابوون.",
                            onPressedBritish: () => speakcircles7("en-GB"),
                            onPressedAmerican: () => speakcircles7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Arrange the candles to create a circle.",
                            kurdishText: "مۆمەکان لە شێوەی بازنەیەکدا ڕیز بکە.",
                            onPressedBritish: () => speakcircles8("en-GB"),
                            onPressedAmerican: () => speakcircles8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) نھۆمی سەرەوەی شانۆیەک یان سینەمایەک کە کورسییەکانی بە قەوسی دانراون"),
                          SentencesRow(
                            englishText: "We had seats in the circle.",
                            kurdishText: "جێگاکانمان لە لۆژە قەوسەکەدا بوو.",
                            onPressedBritish: () => speakcircles9("en-GB"),
                            onPressedAmerican: () => speakcircles9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵێک کەس کە پەیوەندییان ھەیە بەھۆی ئەوەی ھەمان کار، حەز و خولیا، ھتد ـیان ھەیە"),
                          SentencesRow(
                            englishText:
                                "Talk of religion was forbidden in the family circle.",
                            kurdishText:
                                "باسی ئایین قەدەغە بوو لە کۆڕە خێزانییەکەدا.",
                            onPressedBritish: () => speakcircles10("en-GB"),
                            onPressedAmerican: () => speakcircles10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her ideas have caused controversy in scientific circles in recent years.",
                            kurdishText:
                                "ئەم ساڵانەی دوایی بیرۆکەکانی مشتومڕیان درووستکردووە لەناو کۆڕە زانستییەکاندا.",
                            onPressedBritish: () => speakcircles11("en-GB"),
                            onPressedAmerican: () => speakcircles11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) کێشانی بازنەیەک"),
                          SentencesRow(
                            englishText:
                                "Respondents were asked to circle the appropriate answers.",
                            kurdishText:
                                "وەڵامدەرەوان داوایان لێکرا بازنەیەک بکێشن بە دەوری وەڵامە گونجاوەکاندا.",
                            onPressedBritish: () => speakcircles12("en-GB"),
                            onPressedAmerican: () => speakcircles12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Spelling mistakes are circled in red.",
                            kurdishText:
                                "ھەڵە ڕێنووسییەکان بە سوور دەخرێنە بازنەوە.",
                            onPressedBritish: () => speakcircles13("en-GB"),
                            onPressedAmerican: () => speakcircles13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) جوڵان لە بازنەیەکدا"),
                          SentencesRow(
                            englishText:
                                "The helicopter was circling slowly, very low.",
                            kurdishText:
                                "ھێلیکۆپتەرەکە بەھێواشی دەسووڕایەوە زۆر بە نزمی.",
                            onPressedBritish: () => speakcircles14("en-GB"),
                            onPressedAmerican: () => speakcircles14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Seagulls circled around above his head.",
                            kurdishText: "نەورەسەکان دەسووڕانەوە لەسەر سەری.",
                            onPressedBritish: () => speakcircles15("en-GB"),
                            onPressedAmerican: () => speakcircles15("en-US"),
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
- Noun: circle (derived forms: circles)
1. Ellipse in which the two axes are of equal length; a plane curve generated by one point moving at a constant distance from a fixed point
"he calculated the circumference of the circle"
 
2. An unofficial association of people or groups (= set, band, lot)
 
3. Something approximating the shape of a circle
"the chairs were arranged in a circle"
 
4. Movement once around a course (= lap, circuit)
 
5. A road junction at which traffic streams circularly around a central island (= traffic circle [N. Amer], rotary, roundabout [Brit])
"the accident blocked all traffic at the circle";
 
6. [slang] Street name for flunitrazepam (= R-2 [slang], Mexican valium [slang], rophy [slang], rope [slang], roofy [slang], roach [slang], forget me drug [slang])
 
6. A curved section or tier of seats in a hall or theatre or opera house; usually the first tier above the orchestra (= dress circle)
"they had excellent seats in the dress circle";

7. Any circular or rotating mechanism (= round)
"the machine punched out metal circles";

- Verb: circle (derived forms: circling, circles, circled)
1. Travel around something
"circle the globe"
 
2. Move in a circular path above (someone or something)
"the plane circled, looking for a landing spot"
 
3. Form or draw a circle around (= encircle)
"circle the errors";
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

  final String _videoId = 'PVQFvHuJHec';
  final double _startSeconds = 26;

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

  final String _videoId = '3gKvdrexKE4';
  final double _startSeconds = 51;

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

  final String _videoId = '4x6ETtAwUrg';
  final double _startSeconds = 82;

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

  final String _videoId = 'a9WNFqo2zQI';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'PhNUjg9X4g8';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 1907;

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

  final String _videoId = 'lldCsGsdwcw';
  final double _startSeconds = 70;

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

  final String _videoId = 'jBbiUirrCFM';
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

// end WORD_WEB
