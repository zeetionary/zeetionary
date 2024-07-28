import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycollapse extends StatelessWidget {
  // blank divider
  EnglishEntrycollapse({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollapse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("collapse");
  }

  Future<void> speakcollapses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The roof collapsed under the weight of snow.");
  }

  Future<void> speakcollapses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The building had partially collapsed.");
  }

  Future<void> speakcollapses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She collapsed and was rushed to hospital.");
  }

  Future<void> speakcollapses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He collapsed in the street and died two hours later.");
  }

  Future<void> speakcollapses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When I get home I like to collapse on the sofa and listen to music.");
  }

  Future<void> speakcollapses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Talks between management and unions have collapsed.");
  }

  Future<void> speakcollapses7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All opposition to the plan has collapsed.");
  }

  Future<void> speakcollapses8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She lost a lot of money when the property market collapsed.");
  }

  Future<void> speakcollapses9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The table collapses for easy storage.");
  }

  Future<void> speakcollapses10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The peace talks were on the verge of collapse.");
  }

  Future<void> speakcollapses11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They thought their strategy would cause the collapse of the regime.");
  }

  Future<void> speakcollapses12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The war has led to the collapse of agriculture in the area.");
  }

  Future<void> speakcollapses13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The walls were strengthened to protect them from collapse.");
  }

  Future<void> speakcollapses14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was taken to hospital after her collapse at work.");
  }

  Future<void> speakcollapses15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was in a state of mental and physical collapse.");
  }

  Future<void> speakcollapses16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Shares suffered a fresh collapse today.");
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
                            EntryTitle(word: "collapse"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlæps/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollapse("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlæps/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollapse("en-US"),
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
کوردی: ڕووخان، داڕووخان، کەوتن، داتەپین، تێک‌تەپین، تیاچوون، لەنێوچوون، ھەرەس‌ھێنان، ڕمان، داڕمان، ھەڕەمین، لێک‌ھەڵوەشان، تێشکان، بەزین،	پێچوون، کزبوون، داچوون،	کەم‌بوونەوەی کت‌وپڕی نرخ،	(جوگڕافی) تلیسانەوە 
"""),
                          const DefinitionKurdish(text: "١. (کردار) ڕووخان"),
                          SentencesRow(
                            englishText:
                                "The roof collapsed under the weight of snow.",
                            kurdishText:
                                "سەربانەکە لەژێر کێشی بەفردا ڕووخا.", // collapse",
                            onPressedBritish: () => speakcollapses1("en-GB"),
                            onPressedAmerican: () => speakcollapses1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The building had partially collapsed.",
                            kurdishText: "بیناکە بەشێکی داڕما.",
                            onPressedBritish: () => speakcollapses2("en-GB"),
                            onPressedAmerican: () => speakcollapses2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) لەھۆشچوون"),
                          SentencesRow(
                            englishText:
                                "She collapsed and was rushed to hospital.",
                            kurdishText:
                                "لەھۆش خۆی چوو و گوازرایەوە بۆ نەخۆشخانە.",
                            onPressedBritish: () => speakcollapses3("en-GB"),
                            onPressedAmerican: () => speakcollapses3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He collapsed in the street and died two hours later.",
                            kurdishText:
                                "لەسەر شەقامەکە بێھۆش بوو و دوای دوو کاتژمێر گیانی لەدەستدا.",
                            onPressedBritish: () => speakcollapses4("en-GB"),
                            onPressedAmerican: () => speakcollapses4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) دانیشتن و حەسانەوە، بەتایبەتی لە دوای کارکردنی زۆر"),
                          SentencesRow(
                            englishText:
                                "When I get home I like to collapse on the sofa and listen to music.",
                            kurdishText:
                                "کە دەگەمەوە ماڵەوە دەمەوێت لەسەر قەنەفەکە پاڵبکەوم و گوێ لە میوزیک بگرم.",
                            onPressedBritish: () => speakcollapses5("en-GB"),
                            onPressedAmerican: () => speakcollapses5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) شکستھێنانی لەناکاو یان تەواوەتی"),
                          SentencesRow(
                            englishText:
                                "Talks between management and unions have collapsed.",
                            kurdishText:
                                "دانوستانی نێوان بەڕێوبەرایەتی و سەندیکاکان شکستیھێناوە.",
                            onPressedBritish: () => speakcollapses6("en-GB"),
                            onPressedAmerican: () => speakcollapses6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "All opposition to the plan has collapsed.",
                            kurdishText:
                                "ھەموو دژبەرییەک بەرامبەر پلانەکان شکستیان ھێناوە.",
                            onPressedBritish: () => speakcollapses7("en-GB"),
                            onPressedAmerican: () => speakcollapses7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) کەمبوونی لەناکاو لە بڕ یان نرخدا"),
                          SentencesRow(
                            englishText:
                                "She lost a lot of money when the property market collapsed.",
                            kurdishText:
                                "ڕێژەیەکی زۆر لە پارەی لەدەستدا کە بازاڕی خانووبەرە داتەپی.",
                            onPressedBritish: () => speakcollapses8("en-GB"),
                            onPressedAmerican: () => speakcollapses8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) قەدکردنی شتێک بۆ شێوەیەک کە جێگای کەمتر دەگرێت"),
                          SentencesRow(
                            englishText:
                                "The table collapses for easy storage.",
                            kurdishText:
                                "مێزەکە دەنووشتێیەوە بۆ ھەڵگرتنی ئاسان.",
                            onPressedBritish: () => speakcollapses9("en-GB"),
                            onPressedAmerican: () => speakcollapses9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شکستھێنانی لەناکاوی شتێک، وەک دامەزراوەیەک، بازرگانییەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "The peace talks were on the verge of collapse.",
                            kurdishText:
                                "گفتوگۆکانی ئاشتی لەسەر لێواری داڕمانن.",
                            onPressedBritish: () => speakcollapses10("en-GB"),
                            onPressedAmerican: () => speakcollapses10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They thought their strategy would cause the collapse of the regime.",
                            kurdishText:
                                "وایان دەفکری کە ستراتیژییەکەیان دەبێتە ھۆی داڕمانی ڕژێمەکە.",
                            onPressedBritish: () => speakcollapses11("en-GB"),
                            onPressedAmerican: () => speakcollapses11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The war has led to the collapse of agriculture in the area.",
                            kurdishText:
                                "جەنگەکە بووە بەھۆی داڕمانی کشتوکاڵ لە ناوچەکە.",
                            onPressedBritish: () => speakcollapses12("en-GB"),
                            onPressedAmerican: () => speakcollapses12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) داڕمانی بینایەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "The walls were strengthened to protect them from collapse.",
                            kurdishText:
                                "دیوارەکان بەھێز کران بۆ پاراستن لە داڕووخان.",
                            onPressedBritish: () => speakcollapses13("en-GB"),
                            onPressedAmerican: () => speakcollapses13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) دۆخێکی تەندرووستی کە کەسێک لەناکاو زۆر نەخۆش دەکەوێت، یان لەھۆش دەچێت کە زۆر نەخۆش دەکەوێت"),
                          SentencesRow(
                            englishText:
                                "She was taken to hospital after her collapse at work.",
                            kurdishText:
                                "بردرا بۆ نەخۆشخانە لە دوای لەھۆشچوونی لەسەر کار.",
                            onPressedBritish: () => speakcollapses14("en-GB"),
                            onPressedAmerican: () => speakcollapses14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was in a state of mental and physical collapse.",
                            kurdishText:
                                "لە دۆخی داڕووخانی دەروونی و جەستەیی بوو.",
                            onPressedBritish: () => speakcollapses15("en-GB"),
                            onPressedAmerican: () => speakcollapses15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (ناو) داکەوتنی لەناکاو لە نرخدا"),
                          SentencesRow(
                            englishText:
                                "Shares suffered a fresh collapse today.",
                            kurdishText:
                                "پشکەکان تووشی داتەپینی تازە بوونەوە ئەمڕۆ.",
                            onPressedBritish: () => speakcollapses16("en-GB"),
                            onPressedAmerican: () => speakcollapses16("en-US"),
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
                        // YoutubeEmbeddedseven(),
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
- Verb: collapse (derived forms: collapsed, collapses, collapsing)
1. Break down, literally or metaphorically (= fall in, cave in, give, give way, break, founder)
"The wall collapsed"; "The business collapsed"; "The roof collapsed";
 
2. Fall or become unconscious due to fatigue, illness, or a sudden attack (= break down)
 
3. Fold or close up
"collapse the music stand"
 
4. Fall apart (= crumble, crumple, tumble, break down)
"the building collapsed after the explosion";
 
5. Cause to burst (= burst)
 
6. Suffer a nervous breakdown (= crack up, crack, crock up, break up)
 
7. Lose significance, effectiveness, or value
"The school system is collapsing"; "The stock market collapsed"

- Noun: collapse (derived forms: collapses)
1. An abrupt failure of function or complete physical exhaustion (= prostration)
"the commander's collapse demoralized his men";
 
2. A natural event caused by something suddenly falling down or caving in
"the roof is in danger of collapse"; "the collapse of the old star under its own gravity"
 
3. The act of throwing yourself down; collapse; sink (= flop)
 
4. A sudden large decline of business or the prices of stocks (especially one that causes additional failures) (= crash)
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'ZyITTiR3nlo';
  final double _startSeconds = 768;

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

  final String _videoId = 'V30VyMMce9s';
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

  final String _videoId = '0ZhHoyqQEhA';
  final double _startSeconds = 62;

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

  final String _videoId = 'Tehby1VApMk';
  final double _startSeconds = 282;

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

  final String _videoId = 'Ydw6k01_OPk';
  final double _startSeconds = 444;

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

  final String _videoId = '5mkeoVpTaMA';
  final double _startSeconds = 24;

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

  final String _videoId = 'dJr2DJRKy5c';
  final double _startSeconds = 58;

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