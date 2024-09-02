import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychop extends StatelessWidget {
  // blank divider
  EnglishEntrychop({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chop");
  }

  Future<void> speakchops1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was chopping logs for firewood.");
  }

  Future<void> speakchops2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Add the finely chopped onions.");
  }

  Future<void> speakchops3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Chop the carrots up into small pieces.");
  }

  Future<void> speakchops4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The country was chopped up into small administrative areas.");
  }

  Future<void> speakchops5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their training courses are to be chopped.");
  }

  Future<void> speakchops6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The share price was chopped from 50 pence to 20 pence.");
  }

  Future<void> speakchops7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The butcher displayed a variety of chops.");
  }

  Future<void> speakchops8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Give the mushrooms a quick chop before adding them to the pan.");
  }

  Future<void> speakchops9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dog sat licking its chops.");
  }

  Future<void> speakchops10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has the acting chops to carry a major film.");
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
                            EntryTitle(word: "chop"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɒp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchop("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɑːp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchop("en-US"),
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
کوردی: پیاکێشان، لێدان، تەکان، ڕاتڵەکان، جووڵانی توند و ناکاو،	لەتە گۆشت (مەڕ و بەراز)، گۆشتی پەراسوو،	مۆر، مۆری فەرمی، مۆری ستاندارد، ناوی کارداری، دروشمی کارداری، دروشمی بازرگانی،	داخستن،	جۆر، چەشن، ئاوا
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بڕینی شتێک بۆ پارچەی بچووکتر بە شتێکی تیژ"),
                          SentencesRow(
                            englishText: "He was chopping logs for firewood.",
                            kurdishText: "کۆلکەداری دەشکاند بۆ ئێزنگ.",
                            onPressedBritish: () => speakchops1("en-GB"),
                            onPressedAmerican: () => speakchops1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Add the finely chopped onions.",
                            kurdishText: "پیازە جوان وردکراوەکان زیاد بکە.",
                            onPressedBritish: () => speakchops2("en-GB"),
                            onPressedAmerican: () => speakchops2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Chop the carrots up into small pieces.",
                                    kurdishText:
                                        "گێزەرەکان وردبکە بۆ پارچەی بچووکتر.",
                                    onPressedBritish: () =>
                                        speakchops3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchops3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The country was chopped up into small administrative areas.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) وڵاتەکە دابەشکرا بۆ ژمارەیەک لە ناوچەی بەڕێوبەرایەتی.",
                            onPressedBritish: () => speakchops4("en-GB"),
                            onPressedAmerican: () => speakchops4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) لەناکاو وەستان لە ڕێگەدان یان دابینکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "Their training courses are to be chopped.",
                            kurdishText: "کۆرسی ڕاھێنانەکان دەوەستێنرێن.",
                            onPressedBritish: () => speakchops5("en-GB"),
                            onPressedAmerican: () => speakchops5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The share price was chopped from 50 pence to 20 pence.",
                            kurdishText:
                                "نرخی پشکەکە لە ٥٠ پێنسەوە بوو بە ٢٠ پێنس.",
                            onPressedBritish: () => speakchops6("en-GB"),
                            onPressedAmerican: () => speakchops6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پارچە گۆشتێکی پڕ کە ئێسکێکی پێوەیە"),
                          SentencesRow(
                            englishText:
                                "The butcher displayed a variety of chops.",
                            kurdishText:
                                "قەسابەکە ژمارەیەک لەتە گۆشتی نمایش کردبوو.",
                            onPressedBritish: () => speakchops7("en-GB"),
                            onPressedAmerican: () => speakchops7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) وردکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "Give the mushrooms a quick chop before adding them to the pan.",
                            kurdishText:
                                "وردکردنێکی باشی قارچکەکان بکە پێش ئەوەی بیانخەیتە تاوەکەوە.",
                            onPressedBritish: () => speakchops8("en-GB"),
                            onPressedAmerican: () => speakchops8("en-US"),
                          ),
                          // skipped_meaning
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) قەراغی لێوی ئاژەڵ یان مرۆڤ"),
                          SentencesRow(
                            englishText: "The dog sat licking its chops.",
                            kurdishText: "سەگەکە دانیشتبوو لچی دەلێسایەوە.",
                            onPressedBritish: () => speakchops9("en-GB"),
                            onPressedAmerican: () => speakchops9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) توانای تەکنیکی ئەکتەرێک یان میوزیکژەنێکی جاز یان ڕۆک"),
                          SentencesRow(
                            englishText:
                                "He has the acting chops to carry a major film.",
                            kurdishText:
                                "توانای نواندنی ھەبوو بۆ فیلمێکی گرنگ.",
                            onPressedBritish: () => speakchops10("en-GB"),
                            onPressedAmerican: () => speakchops10("en-US"),
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
- Verb: chop (derived forms: chops, chopped, chopping)
1. Cut into pieces with repeated blows (= chop up)
"Chop wood"; "chop meat"; "chop up wood";
 
2. Move suddenly
 
3. Form or shape by chopping
"chop a hole in the ground"
 
4. Strike sharply, as in some sports
 
5. Cut with heavy blows, usually using a large hand-held tool (= hack)
"chop into the trees to draw out the gummy sap";
 
6. Hit sharply

- Noun: chop 
1. The irregular motion of waves (usually caused by wind blowing in a direction opposite to the tide)
"the boat headed into the chop"
 
2. A small cut of meat including part of a rib
 
3. A jaw
"I'll hit him on the chops"
 
4. A tennis return made with a downward motion that puts backspin on the ball (= chop shot)
 
5. A grounder that bounces high in the air (= chopper)
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

  final String _videoId = 'oWoqikXlEDw';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'N8_pMgHMtPY';
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

  final String _videoId = 'goSfIoNq3xM';
  final double _startSeconds = 38;

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

  final String _videoId = '_2k-18KP_YM';
  final double _startSeconds = 86;

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

  final String _videoId = 'yEs933aETJU';
  final double _startSeconds = 37;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 425;

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

  final String _videoId = 'Rzd0mLf366I';
  final double _startSeconds = 39;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 390;

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
