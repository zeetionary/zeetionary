import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "boil" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace boil - /bɔɪl/

enum TtsState { playing }

class EnglishEntryboil extends StatelessWidget {
// blank divider
  EnglishEntryboil({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboil(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boil");
  }

  Future<void> speakboils1(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Boil plenty of water, then add the spaghetti.");
  }

  Future<void> speakboils2(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Water boils at 100°C.");
  }

  Future<void> speakboils3(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The kettle's boiling.");
  }

  Future<void> speakboils4(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll boil the kettle and make some tea.");
  }

  Future<void> speakboils5(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She put some potatoes on to boil.");
  }

  Future<void> speakboils6(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She can scarcely boil an egg.");
  }

  Future<void> speakboils7(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was boiling with rage.");
  }

  Future<void> speakboils8(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bring the soup to the boil, then allow it to simmer for five minutes.");
  }

  Future<void> speakboils9(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor lanced the boil.");
  }

  Future<void> speakboils10(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1010");
  }

  Future<void> speakboils11(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1111");
  }

  Future<void> speakboils12(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1212");
  }

  Future<void> speakboils13(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1313");
  }

  Future<void> speakboils14(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1414");
  }

  Future<void> speakboils15(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1515");
  }

  Future<void> speakboils16(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1616");
  }

  Future<void> speakboils17(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1717");
  }

  Future<void> speakboils18(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1818");
  }

  Future<void> speakboils19(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1919");
  }

  Future<void> speakboils20(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2020");
  }

  Future<void> speakboils21(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2121");
  }

  Future<void> speakboils22(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2222");
  }

  Future<void> speakboils23(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2323");
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
                            EntryTitle(word: "boil"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔɪl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboil("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔɪl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboil("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: کوڵ، کوڵان، خاڵی کوڵان، زیپکە، پیزۆکە، زیتکە، بزرک، کوڵک، کوان، دمەڵ، زیەم
"""),
                          const DefinitionKurdish(text: "١. (کردار) کوڵان"),
                          SentencesRow(
                            englishText:
                                "Boil plenty of water, then add the spaghetti.",
                            kurdishText:
                                "ڕێژەیەکی زۆر ئاو بکوڵێنە و دواتر سپاگێتییەکە زیاد بکە.",
                            onPressedBritish: () => speakboils1("en-GB"),
                            onPressedAmerican: () => speakboils1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Water boils at 100°C.",
                            kurdishText: "ئاو لە ١٠٠ پلەی سیلیزی دەکوڵێت.",
                            onPressedBritish: () => speakboils2("en-GB"),
                            onPressedAmerican: () => speakboils2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کوڵان یان کوڵاندنی کترییەک، مەنجەڵێک، ھتد تاوەکو ئاوەکەی ناوی دەکوڵێت"),
                          SentencesRow(
                            englishText: "The kettle's boiling.",
                            kurdishText: "کترییەکە دەکوڵێت.",
                            onPressedBritish: () => speakboils3("en-GB"),
                            onPressedAmerican: () => speakboils3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I'll boil the kettle and make some tea.",
                            kurdishText:
                                "کترییەکە دەکوڵێنم و ھەندێک چا ئامادە دەکەم.",
                            onPressedBritish: () => speakboils4("en-GB"),
                            onPressedAmerican: () => speakboils4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) خواردن ئامادەکردن یان شۆردن لە ئاوی کوڵاو"),
                          SentencesRow(
                            englishText: "She put some potatoes on to boil.",
                            kurdishText: "ھەندێک پەتاتەی کوڵاند.",
                            onPressedBritish: () => speakboils5("en-GB"),
                            onPressedAmerican: () => speakboils5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She can scarcely boil an egg.",
                            kurdishText: "بە ئەستەم دەتوانێت ھێلکەش بکوڵێنێت.",
                            onPressedBritish: () => speakboils6("en-GB"),
                            onPressedAmerican: () => speakboils6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) زۆر تووڕەبوون"),
                          SentencesRow(
                            englishText: "He was boiling with rage.",
                            kurdishText: "خەریک بوو دەتەقی لە داخدا.",
                            onPressedBritish: () => speakboils7("en-GB"),
                            onPressedAmerican: () => speakboils7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) خاڵی کوڵان"),
                          SentencesRow(
                            englishText:
                                "Bring the soup to the boil, then allow it to simmer for five minutes.",
                            kurdishText:
                                "شۆرباکە بھێنە کوڵان و دواتر بھێڵە مێروولەکوڵ بێت بۆ پێنج خولەک.",
                            onPressedBritish: () => speakboils8("en-GB"),
                            onPressedAmerican: () => speakboils8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ھەڵئاوسانێکی بەئازار"),
                          SentencesRow(
                            englishText: "The doctor lanced the boil.",
                            kurdishText: "دکتۆرەکە زیپکەکەی تەقاند.",
                            onPressedBritish: () => speakboils9("en-GB"),
                            onPressedAmerican: () => speakboils9("en-US"),
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
- Verb: boil (derived forms: boiled, boiling, boils)
1. Come to the boiling point and change from a liquid to vapour
"Water boils at 100 degrees Celsius"
 
2. Immerse or be immersed in a boiling liquid, often for cooking purposes
"boil potatoes"; "boil wool"
 
3. Bring to, or maintain at, the boiling point
"boil this liquid until it evaporates"
 
4. Be agitated (= churn, moil [N. Amer], roil)
"the sea was boiling in the storm";
 
5. Be in an agitated emotional state (= seethe)
"The customer was boiling with anger";

- Noun: boil  
1. A painful sore with a hard core filled with pus (= furuncle)
 
2. The temperature at which a liquid boils at sea level (= boiling point)
"they brought the water to a boil";

3. The state, action or process of boiling
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 42;

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

  final String _videoId = 'fsQVfQt0HOk';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'zqUopiAYdRg';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 183;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 255;

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
  final double _startSeconds = 81;

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

  final String _videoId = 'h0IPcqF2q9U';
  final double _startSeconds = 213;

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

  final String _videoId = 'X5oD_thIk3c';
  final double _startSeconds = 157;

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

  final String _videoId = 'dXt1ftcdxNg';
  final double _startSeconds = 368;

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

  final String _videoId = 'zDdAPHuRGN0';
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'veTo6eWJQrM';
  final double _startSeconds = 121;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'jX1dYKV-a_c';
  final double _startSeconds = 127;

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

// end boil
