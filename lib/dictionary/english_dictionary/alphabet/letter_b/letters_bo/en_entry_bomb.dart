import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bomb" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bomb - /bɒm/

enum TtsState { playing }

class EnglishEntrybomb extends StatelessWidget {
// blank divider
  EnglishEntrybomb({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbomb(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bomb");
  }

  Future<void> speakbombs1(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hundreds of bombs were dropped on the city.");
  }

  Future<void> speakbombs2(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A terrorist bomb ripped through the town's packed shopping centre.");
  }

  Future<void> speakbombs3(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Police suspect terrorists planted the bomb.");
  }

  Future<void> speakbombs4(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The US was the first country to have the bomb.");
  }

  Future<void> speakbombs5(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That dress must have cost a bomb!");
  }

  Future<void> speakbombs6(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The play was a real bomb.");
  }

  Future<void> speakbombs7(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They have deliberately bombed civilians.");
  }

  Future<void> speakbombs8(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Warplanes bombed targets around the capital.");
  }

  Future<void> speakbombs9(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were bombing down the road at about 80 miles an hour.");
  }

  Future<void> speakbombs10(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The exam was very hard! I definitely bombed it.");
  }

  Future<void> speakbombs11(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His latest movie bombed and lost millions of dollars.");
  }

  Future<void> speakbombs12(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("India started to build a nuclear bomb.");
  }

  Future<void> speakbombs13(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eighty people died when bombs rained down on the city's crowded streets.");
  }

  Future<void> speakbombs14(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1414");
  }

  Future<void> speakbombs15(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1515");
  }

  Future<void> speakbombs16(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1616");
  }

  Future<void> speakbombs17(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1717");
  }

  Future<void> speakbombs18(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1818");
  }

  Future<void> speakbombs19(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1919");
  }

  Future<void> speakbombs20(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2020");
  }

  Future<void> speakbombs21(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2121");
  }

  Future<void> speakbombs22(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2222");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bomb"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbomb("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbomb("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١. (ناو) چەکێک کە دیزاین کراوە لە کاتێکی دیاریکراودا بتەقێتەوە یان کاتێک کە بەردەدرێتەوە"""),
                          SentencesRow(
                            englishText:
                                "Hundreds of bombs were dropped on the city.",
                            kurdishText:
                                "سەدان بۆمب بەسەر شارەکەدا بەردرانەوە.",
                            onPressedBritish: () => speakbombs1("en-GB"),
                            onPressedAmerican: () => speakbombs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "A terrorist bomb ripped through the town's packed shopping centre.",
                            kurdishText:
                                "بۆمبێکی تیرۆریستی سەنتەری بازاڕکردنی قەرەباڵغی شارەکەی ھەژاند.",
                            onPressedBritish: () => speakbombs2("en-GB"),
                            onPressedAmerican: () => speakbombs2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Police suspect terrorists planted the bomb.",
                                    kurdishText:
                                        "پۆلیس گومان دەکەن تیرۆریستان بۆمبەکەیان چاندبێت.",
                                    onPressedBritish: () =>
                                        speakbombs3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbombs3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "India started to build a nuclear bomb.",
                                    kurdishText:
                                        "ھندستان دەستیکرد بە بنیادنانی چەکی ئەتۆمی.",
                                    onPressedBritish: () =>
                                        speakbombs12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbombs12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Eighty people died when bombs rained down on the city's crowded streets.",
                                    kurdishText:
                                        "ھەشتا کەس گیانیان لە دەستدا کە بۆمبەکان دەستیان بە بارین کرد بەسەر شەقامە قەرەباڵغەکانی شارەکەدا.",
                                    onPressedBritish: () =>
                                        speakbombs13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbombs13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) چەکی ناوەکی (ئەتۆمی یان ھایدرۆجینی)"),
                          SentencesRow(
                            englishText:
                                "The US was the first country to have the bomb.",
                            kurdishText:
                                "ئەمریکا یەکەم وڵات بوو چەکی ناوەکی ھەبێت.",
                            onPressedBritish: () => speakbombs4("en-GB"),
                            onPressedAmerican: () => speakbombs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ژمارەیەکی زۆر پارە"),
                          SentencesRow(
                            englishText: "That dress must have cost a bomb!",
                            kurdishText:
                                "ئەو جلە دەبێت پارەیەکی زۆری تێچووبێت.",
                            onPressedBritish: () => speakbombs5("en-GB"),
                            onPressedAmerican: () => speakbombs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) شکستێکی تەواو"),
                          SentencesRow(
                            englishText: "The play was a real bomb.",
                            kurdishText: "شانۆکە شکستێکی یەکجارەکی بوو.",
                            onPressedBritish: () => speakbombs6("en-GB"),
                            onPressedAmerican: () => speakbombs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھێرشکردنە سەر شوێنێک بە چاندنی بۆمبێک یان بەردانەوەی لە فڕۆکەوە"),
                          SentencesRow(
                            englishText:
                                "They have deliberately bombed civilians.",
                            kurdishText:
                                "بە ئەنقەست ھاوڵاتی مەدەنییان بۆمباران کردووە.",
                            onPressedBritish: () => speakbombs7("en-GB"),
                            onPressedAmerican: () => speakbombs7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Warplanes bombed targets around the capital.",
                            kurdishText:
                                "فڕۆکە جەنگییەکان ئامانجیان لە دەورووبەری نەخۆشخانەکە بۆمباران کرد.",
                            onPressedBritish: () => speakbombs8("en-GB"),
                            onPressedAmerican: () => speakbombs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) جوڵان زۆر بەخێرایی بەتایبەتی لە ئامرازێکی گواستنەوەدا"),
                          SentencesRow(
                            englishText:
                                "They were bombing down the road at about 80 miles an hour.",
                            kurdishText:
                                "بە ڕێگاکەدا بەنزیکەیی خێرایی ٨٠ میل لەکاتژمێرێکدا بەخێرایی دەچوون.",
                            onPressedBritish: () => speakbombs9("en-GB"),
                            onPressedAmerican: () => speakbombs9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) شکستھێنان لە تاقیکردنەوەیەک زۆر بە خراپی"),
                          SentencesRow(
                            englishText:
                                "The exam was very hard! I definitely bombed it.",
                            kurdishText:
                                "تاقیکردنەوەکە زۆر سەخت بوو! بە دڵنیاییەوە دەکەوم.",
                            onPressedBritish: () => speakbombs10("en-GB"),
                            onPressedAmerican: () => speakbombs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) شانۆیەک یان نمایشێک کە زۆر خراپ دەبێت"),
                          SentencesRow(
                            englishText:
                                "His latest movie bombed and lost millions of dollars.",
                            kurdishText:
                                "کۆتا فیلمی شکستێک بوو و ملیۆنان دۆلاری لەدەستدا.",
                            onPressedBritish: () => speakbombs11("en-GB"),
                            onPressedAmerican: () => speakbombs11("en-US"),
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
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Noun: bomb (derived forms: bombs)
1. An explosive device fused to explode under specific conditions
 
2. Strong sealed vessel for measuring heat of combustion (= bomb calorimeter)
 
3. An event that fails badly or is totally ineffectual (= turkey [informal], dud, flop [informal], clunker [N. Amer, informal])
"the first experiment was a real bomb";

4. [Brit, informal] A large sum of money (especially as pay or profit) (= pile [informal], bundle [informal], big bucks [informal], megabucks [informal], big money [informal])
"she made a bomb selling real estate";

- Verb: bomb (derived forms: bombed, bombing, bombs)
1. Throw bombs at or attack with bombs (= bombard)
"The Americans bombed Dresden";

2. Be unsuccessful in a test, get lower than the passing grade (= fail, flunk [N. Amer, informal], flush it)
"She studied hard but bombed nevertheless";

3. [Brit, informal] Move quickly and violently (= tear [informal], shoot, shoot down, charge, buck, scream [informal])
"The car bombed down the street";

4. [informal] Fail badly (= tank [N. Amer, informal], crash and burn [informal])
"How many contracting businesses will bomb this year?";
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

  final String _videoId = 'VrKW58MS12g';
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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 164;

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

  final String _videoId = 'E7uGvsT_nnM';
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

  final String _videoId = '63tQ7yGmsmI';
  final double _startSeconds = 67;

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

  final String _videoId = '5yxtXRKSfXg';
  final double _startSeconds = 379;

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

  final String _videoId = 'VAa8cVw09mE';
  final double _startSeconds = 389;

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

  final String _videoId = 'QlVmo_jvBQE';
  final double _startSeconds = 35;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'R6TU1UVB83E';
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'fwaQvHAWzkQ';
  final double _startSeconds = 8;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'UXUkameA0r8';
  final double _startSeconds = 106;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'iaKkZJAoqCA';
  final double _startSeconds = 675;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'zhnNIhV4EsU';
  final double _startSeconds = 444;

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

// end bomb
