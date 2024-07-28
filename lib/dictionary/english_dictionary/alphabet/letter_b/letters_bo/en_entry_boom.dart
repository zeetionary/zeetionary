import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "boom" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace boom - /buːm/

enum TtsState { playing }

class EnglishEntryboom extends StatelessWidget {
// blank divider
  EnglishEntryboom({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboom(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boom");
  }

  Future<void> speakbooms1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Living standards improved rapidly during the post-war boom.");
  }

  Future<void> speakbooms2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This year has seen a boom in book sales.");
  }

  Future<void> speakbooms3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The only way to satisfy the golf boom was to build more courses.");
  }

  Future<void> speakbooms4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sailors adjusted the boom to catch the wind.");
  }

  Future<void> speakbooms5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The deafening boom of the explosion was heard up to 10 kilometres away.");
  }

  Future<void> speakbooms6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A crash of thunder boomed so loudly that the floor shook.");
  }

  Future<void> speakbooms7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A voice boomed out from the darkness.");
  }

  Future<void> speakbooms8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By the 1980s, the computer industry was booming.");
  }

  Future<void> speakbooms9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbooms99");
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
                            EntryTitle(word: "boom"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /buːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboom("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /buːm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboom("en-US"),
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
کوردی: زۆربوونی کت‌وپڕ، بووژانەوە، تۆقینەوە، سەروبەند یان قۆناخی گەشە(کردن)، ھەڵدان، ئاوەدانی، گەشەونەشە، زرمە، زرم، گرمە، نەڕە، قۆڕە، قیڕە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) زیادبوونێکی لەناکاوی زیادبوونی چالاکیی بازرگانی و ئابووری"),
                          SentencesRow(
                            englishText:
                                "Living standards improved rapidly during the post-war boom.",
                            kurdishText:
                                "ستانداردی ژیان گەشەیکرد لە دەمی بووژانەوەی دوای جەنگ.",
                            onPressedBritish: () => speakbooms1("en-GB"),
                            onPressedAmerican: () => speakbooms1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This year has seen a boom in book sales.",
                            kurdishText:
                                "ئەمساڵ فرۆشتنی کتێب گەشەی بەخۆوە دیوە.",
                            onPressedBritish: () => speakbooms2("en-GB"),
                            onPressedAmerican: () => speakbooms2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ماوەیەک کە وەرزشێک یان جۆرە میوزیکێک زۆر بەناوبانگ دەبێت"),
                          SentencesRow(
                            englishText:
                                "The only way to satisfy the golf boom was to build more courses.",
                            kurdishText:
                                "تەنھا ڕێگە بۆ تێرکردنی حەز بە گۆڵف درووستکردنی یاریگای تازەیە.",
                            onPressedBritish: () => speakbooms3("en-GB"),
                            onPressedAmerican: () => speakbooms3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ستوونێکی درێژ کە بەشی خوارەوەی چارۆکەیەکی پێوە بەستراوە و بەکاردێت بۆ جوڵاندنی شوێنی چارۆکەکە"),
                          SentencesRow(
                            englishText:
                                "Sailors adjusted the boom to catch the wind.",
                            kurdishText:
                                "دەیاوانان کۆڵەکەسووڕاوەکەیان ڕێکخست بۆ ئەوەی بایەکە گلبداتەوە.",
                            onPressedBritish: () => speakbooms4("en-GB"),
                            onPressedAmerican: () => speakbooms4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) دەنگێکی بەرز"),
                          SentencesRow(
                            englishText:
                                "The deafening boom of the explosion was heard up to 10 kilometres away.",
                            kurdishText:
                                "دەنگی گوێ‌دڕی تەقینەوەکە بیسترا لە دووری ١٠ کیلۆمەترەوە.",
                            onPressedBritish: () => speakbooms5("en-GB"),
                            onPressedAmerican: () => speakbooms5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) درووستکردنی دەنگێکی بەرز"),
                          SentencesRow(
                            englishText:
                                "A crash of thunder boomed so loudly that the floor shook.",
                            kurdishText:
                                "لێدانی چەخماخە ھێندە دەنگی بەرز بوو زەوییەکە دەلەرزییەوە.",
                            onPressedBritish: () => speakbooms6("en-GB"),
                            onPressedAmerican: () => speakbooms6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) وتنی شتێک بە دەنگی بەرز"),
                          SentencesRow(
                            englishText:
                                "A voice boomed out from the darkness.",
                            kurdishText: "دەنگێک لە تاریکییەکەوە ھات.",
                            onPressedBritish: () => speakbooms7("en-GB"),
                            onPressedAmerican: () => speakbooms7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ھەبوونی بووژانەوە و گەشەی لەناکاو"),
                          SentencesRow(
                            englishText:
                                "By the 1980s, the computer industry was booming.",
                            kurdishText:
                                "لە دەستپێکی ١٩٨٠ کانەوە پیشەسازی کۆمپیوتەر دەگەشایەوە.",
                            onPressedBritish: () => speakbooms8("en-GB"),
                            onPressedAmerican: () => speakbooms8("en-US"),
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
                        YoutubeEmbeddedeight(),
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
- Noun: boom (derived forms: booms, booming, boomed)
1. A deep prolonged loud noise (= roar, roaring, thunder)
 
2. A state of economic prosperity
 
3. A sudden happening that brings good fortune (as a sudden opportunity to make money) (= bonanza, gold rush, gravy [informal], godsend, manna from heaven, windfall, bunce [Brit, informal])
"the demand for testing has created a boom for those unregulated laboratories where boxes of specimen jars are processed like an assembly line";
 
4. A pole carrying an overhead microphone projected over a film or tv set (= microphone boom)
 
5. Any of various more-or-less horizontal spars or poles used to extend the foot of a sail or for handling cargo or in mooring
 
6. A floating barrier used to obstruct the entry of a harbour, contain oil spills, etc.

- Verb: boom (derived forms: booms, booming, boomed)
1. Make a resonant sound, like artillery (= din)
"His deep voice boomed through the hall";
 
2. Hit with great force (= smash, nail, blast)
"He boomed a 3-run homer";
 
3. Be the case that thunder is being heard (= thunder)
"Whenever it booms, my dog crawls under the bed";
 
4. Make a deep hollow sound (= boom out)
"Her voice booms out the words of the song";
 
5. Grow vigorously (= thrive, flourish, expand)
"business is booming";
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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 57;

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

  final String _videoId = '6SYT0upjNac';
  final double _startSeconds = 1074;

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

  final String _videoId = '8DNv8HEGLsQ';
  final double _startSeconds = 3843;

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

  final String _videoId = 'sjDRzahgrTI';
  final double _startSeconds = 138;

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

  final String _videoId = 'cYzVhtiRkcU';
  final double _startSeconds = 664;

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

  final String _videoId = 'RHj-PIyyaDY';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'i--mhQWTwMs';
  final double _startSeconds = 1277;

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

  final String _videoId = 'cDhWr6s4Fb4';
  final double _startSeconds = 357;

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

// end boom
