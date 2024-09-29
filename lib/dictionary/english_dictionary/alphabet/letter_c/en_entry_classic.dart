import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclassic extends StatelessWidget {
  EnglishEntryclassic({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclassic(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("classic");
  }

  Future<void> speakclassics1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This classic novel was first published in 1938.");
  }

  Future<void> speakclassics2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I grew up watching classic movies.");
  }

  Future<void> speakclassics3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This was a classic case of what not to do.");
  }

  Future<void> speakclassics4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She displayed the classic symptoms of depression.");
  }

  Future<void> speakclassics5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was wearing a classic little black dress.");
  }

  Future<void> speakclassics6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's not going to help? Oh, that's classic!");
  }

  Future<void> speakclassics7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Then she fell over backwards into the flowerbed - it was absolutely classic!");
  }

  Future<void> speakclassics8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The song became an instant classic.");
  }

  Future<void> speakclassics9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The novel may become a modern classic.");
  }

  Future<void> speakclassics10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The second goal was an absolute classic.");
  }

  Future<void> speakclassics11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The professor's reply was a classic.");
  }

  Future<void> speakclassics12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Classics don't lose their style.");
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
                            EntryTitle(word: "classic"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈklæsɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclassic("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈklæsɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclassic("en-US"),
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
کوردی: کلاسیک،	زۆرباش، پەسندکراو، ھەرەچاک،	بەرز، دیار، بەرجەستە، نموونە،	ناسراو، ناودار،	کۆن، لەمێژینە، کەونار، قەدیمی،	نەریتی، ڕەسەن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) دانراو وەک یەکێک لە باشترین جۆرەکانی ھاوشێوەی خۆی"),
                          SentencesRow(
                            englishText:
                                "This classic novel was first published in 1938.",
                            kurdishText:
                                "ئەم ڕۆمانە مێژووییە یەکەم جار لە ١٩٣٨ بڵاوکرایەوە.",
                            onPressedBritish: () => speakclassics1("en-GB"),
                            onPressedAmerican: () => speakclassics1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I grew up watching classic movies.",
                            kurdishText:
                                "گەورەبووم بە تەماشاکردنی فیلمە کلاسیکەکانەوە.",
                            onPressedBritish: () => speakclassics2("en-GB"),
                            onPressedAmerican: () => speakclassics2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بە ھەموو ئەو خاسیەتانەی کە لێی چاوەڕێ دەکەیت"),
                          SentencesRow(
                            englishText:
                                "This was a classic case of what not to do.",
                            kurdishText:
                                "ئەمە کەیسێکی نموونەیی بوو ئەوەی کە نابێت بیکەیت.",
                            onPressedBritish: () => speakclassics3("en-GB"),
                            onPressedAmerican: () => speakclassics3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She displayed the classic symptoms of depression.",
                            kurdishText: "نیشانە ھەمیشەییەکانی بێزاری تێدابوو.",
                            onPressedBritish: () => speakclassics4("en-GB"),
                            onPressedAmerican: () => speakclassics4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) جوان بەڵام سادە، بەشێوەیەک کە کاریگەر نەبوو بە گۆڕانکارییەکانی سەردەم"),
                          SentencesRow(
                            englishText:
                                "She was wearing a classic little black dress.",
                            kurdishText: "جلێکی بچووکی ڕەشی کلاسیکی پۆشیبوو.",
                            onPressedBritish: () => speakclassics5("en-GB"),
                            onPressedAmerican: () => speakclassics5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بە شتێک دەوترێت کە پێکەنیناوییە، بێزارکەرە، یان خراپە"),
                          SentencesRow(
                            englishText:
                                "She's not going to help? Oh, that's classic!",
                            kurdishText: "یارمەتی نادا؟ ئۆھ، خراپە!",
                            onPressedBritish: () => speakclassics6("en-GB"),
                            onPressedAmerican: () => speakclassics6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Then she fell over backwards into the flowerbed - it was absolutely classic!",
                            kurdishText:
                                "دواتر بە پشتدا کەوتە ناو باخچەکەدا، تەواو پێکەنیناوی بوو.",
                            onPressedBritish: () => speakclassics7("en-GB"),
                            onPressedAmerican: () => speakclassics7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) فیلمێک، گۆرانییەک، یان ڕۆمانێک کە زۆر باش ناسراوە و بە یەکێک لە باشترینەکان دادەنرێت"),
                          SentencesRow(
                            englishText: "The song became an instant classic.",
                            kurdishText: "گۆرانییەکە ڕاستەوخۆ بوو بە کلاسیکێک.",
                            onPressedBritish: () => speakclassics8("en-GB"),
                            onPressedAmerican: () => speakclassics8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The novel may become a modern classic.",
                            kurdishText:
                                "ڕۆمانەکە ڕەنگە ببێت بە کلاسیکێکی سەردەمییانە.",
                            onPressedBritish: () => speakclassics9("en-GB"),
                            onPressedAmerican: () => speakclassics9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شتێک کە نموونەیەکی باڵای ھاوشێوەی خۆیەتی"),
                          SentencesRow(
                            englishText:
                                "The second goal was an absolute classic.",
                            kurdishText: "گۆڵی دووەم نایاب بوو.",
                            onPressedBritish: () => speakclassics10("en-GB"),
                            onPressedAmerican: () => speakclassics10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The professor's reply was a classic.",
                            kurdishText: "وەڵامی پڕۆفیسۆرەکە ناوازە بوو.",
                            onPressedBritish: () => speakclassics11("en-GB"),
                            onPressedAmerican: () => speakclassics11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شتێک، بۆ نموونە جلوبەرگ یان ئۆتۆمبێل، کە جوانە و کاریگەری گۆڕانکاری سەردەمی پێوە دیار نییە"),
                          SentencesRow(
                            englishText: "Classics don't lose their style.",
                            kurdishText: "کلاسیکەکان ستایلی خۆیان ون ناکەن.",
                            onPressedBritish: () => speakclassics12("en-GB"),
                            onPressedAmerican: () => speakclassics12("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: classic 
1. Considered of the highest quality and lasting significance or worth
"a classic car"; "'War and Peace' is a classic novel"
 
2. Of a well-known type; remarkably typical
"the classic struggle between good and evil"; "I woke up with all the classic symptoms of the flu"; "she made the classic mistake of choosing style over substance"
 
3. Well-known and long-established in form or style (= classical)
"classic double-breasted suit"; "the classic struggle between good and evil";
 
4. Of or relating to the first significant period of a civilization, culture, area of study, etc. (= classical)
"classic Chinese pottery";

- Noun: classic (derived forms: classics)
1. A creation of the highest excellence
 
2. An artist who has created classic works
 
3. A major, long-standing sporting event
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

  final String _videoId = '7HMzq6Mi-Is';
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

  final String _videoId = 'cVLpdzhcU0g';
  final double _startSeconds = 700;

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

  final String _videoId = 'RrV9nC0EYUQ';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'pwYUEQT0OkM';
  final double _startSeconds = 19;

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

  final String _videoId = 'PW8Rt6JFSiY';
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

  final String _videoId = 'A_8sj7Yb9ZQ';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Se3RKA9HrzI';
  final double _startSeconds = 17;

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

  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 109;

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