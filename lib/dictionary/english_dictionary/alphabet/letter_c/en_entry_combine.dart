import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycombine extends StatelessWidget {
  // blank divider
  EnglishEntrycombine({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcombine(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("combine");
  }

  Future<void> speakcombines1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Hydrogen and oxygen combine to form water.");
  }

  Future<void> speakcombines2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Several factors had combined to ruin our plans.");
  }

  Future<void> speakcombines3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Archaeological and historical evidence combine to create a picture of what life must have been like at that time.");
  }

  Future<void> speakcombines4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We are still looking for someone who combines all the necessary qualities.");
  }

  Future<void> speakcombines5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This model combines a printer and scanner.");
  }

  Future<void> speakcombines6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The other room was a kitchen and dining room combined.");
  }

  Future<void> speakcombines7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The trip will combine business with pleasure.");
  }

  Future<void> speakcombines8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She successfully combines her career with family life.");
  }

  Future<void> speakcombines9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They combined against a common enemy.");
  }

  Future<void> speakcombines10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You should try to combine exercise with a healthy diet.");
  }

  Future<void> speakcombines11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The farmer used a combine to harvest the wheat.");
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
                            EntryTitle(word: "combine"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈbaɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcombine("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈbaɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcombine("en-US"),
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
کوردی: پێکەوەنان، پێکەوەلکاندن، یەک‌گرتن، یەک‌گرتویی،	ھاوبەندی،	کارتێل، تراست،	دەزگای دوورینەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) یەکگرتن بۆ درووستکردنی یەکەیەک یان گرووپێک"),
                          SentencesRow(
                            englishText:
                                "Hydrogen and oxygen combine to form water.",
                            kurdishText:
                                "ھایدرۆجین و ئۆکسجین یەکدەگرن بۆ درووستکردنی ئاو.", // combine",
                            onPressedBritish: () => speakcombines1("en-GB"),
                            onPressedAmerican: () => speakcombines1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Several factors had combined to ruin our plans.",
                            kurdishText:
                                "ژمارەیەک فاکتەر یەکیان گرتبوو بۆ تێکدانی پلانەکانمان.",
                            onPressedBritish: () => speakcombines2("en-GB"),
                            onPressedAmerican: () => speakcombines2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Archaeological and historical evidence combine to create a picture of what life must have been like at that time.",
                            kurdishText:
                                "بەڵگەی شوێنەوارناسی و مێژووی یەکدەگرن بۆ درووستکردنی وێنەیەکی ئەوەی دەکرێت ژیان چۆن بووبا ئەوکاتە.",
                            onPressedBritish: () => speakcombines3("en-GB"),
                            onPressedAmerican: () => speakcombines3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) ھەبوونی دوو خاسیەت یان زیاتر"),
                          SentencesRow(
                            englishText:
                                "We are still looking for someone who combines all the necessary qualities.",
                            kurdishText:
                                "ھێشتا بۆ کەسێک دەگەڕێین کە ھەموو خاسیەتە پێویستەکانی تێدایە.",
                            onPressedBritish: () => speakcombines4("en-GB"),
                            onPressedAmerican: () => speakcombines4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This model combines a printer and scanner.",
                            kurdishText:
                                "بەرھەمەکە کۆکەرەوەی پرینتەرێک و سکانەرێک.",
                            onPressedBritish: () => speakcombines5("en-GB"),
                            onPressedAmerican: () => speakcombines5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The other room was a kitchen and dining room combined.",
                            kurdishText:
                                "ژوورەکەی دیکە لە یەک کاتدا چێشتخانە و ژووری نانخواردن بوو.",
                            onPressedBritish: () => speakcombines6("en-GB"),
                            onPressedAmerican: () => speakcombines6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کردنی دوو شت یان زیاتر لە یەک کاتدا"),
                          SentencesRow(
                            englishText:
                                "The trip will combine business with pleasure.",
                            kurdishText:
                                "گەشتەکە ھەم بازرگانی و ھەم خۆشی دەبێت.",
                            onPressedBritish: () => speakcombines7("en-GB"),
                            onPressedAmerican: () => speakcombines7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She successfully combines her career with family life.",
                            kurdishText:
                                "سەرکەوتووانە کارەکەی لەگەڵ ژیانی خێزانیدا دەکات.",
                            onPressedBritish: () => speakcombines8("en-GB"),
                            onPressedAmerican: () => speakcombines8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) یەکگرتن بۆ پێکەوە کارکردن یان ھەنگانان"),
                          SentencesRow(
                            englishText:
                                "They combined against a common enemy.",
                            kurdishText: "دژ بە دووژمنێکی ھاوبەش یەکیان گرت.",
                            onPressedBritish: () => speakcombines9("en-GB"),
                            onPressedAmerican: () => speakcombines9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You should try to combine exercise with a healthy diet.",
                            kurdishText:
                                "دەبێت ھەوڵ بدەیت ڕاھێنان تێکەڵ بە خواردنی تەندرووست بکەیت.",
                            onPressedBritish: () => speakcombines10("en-GB"),
                            onPressedAmerican: () => speakcombines10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) دەڕاسە کە بۆ دوورینەوەی دروێنە بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "The farmer used a combine to harvest the wheat.",
                            kurdishText:
                                "جوتیارەکە دەڕاسەیەکی بەکارھێنا بۆ دوورینەوەی گەنمەکە.",
                            onPressedBritish: () => speakcombines11("en-GB"),
                            onPressedAmerican: () => speakcombines11("en-US"),
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
- Verb: combine (derived forms: combined, combines, combining)
1. Put or add together (= compound)
"combine resources";
 
2. Have or possess in combination (= unite)
"she combines charm with a good business sense";
 
3. Combine so as to form a whole; mix (= compound)
"combine the ingredients";
 
4. Add together from different sources
"combine resources"
 
5. Join for a common purpose or in a common action
"These forces combined with others"
 
6. Gather in a mass, sum, or whole (= aggregate)
 
7. Add together different elements (= blend, flux, mix, conflate, commingle, immix, fuse, coalesce, meld, merge)
"The colours combine well";

- Noun: combine (derived forms: combines)
1. Harvester that heads and threshes and cleans grain while moving across the field
 
2. A consortium of independent organizations formed to limit competition by controlling the production and distribution of a product or service (= trust, corporate trust, cartel)
"they set up the combine in the hope of gaining a monopoly";
 
3. An occurrence that results in things being united (= combining)
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

  final String _videoId = '_f_FslVR1D0';
  final double _startSeconds = 261;

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

  final String _videoId = 'I8S4k_s97HE';
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

  final String _videoId = 'Csq8RfiRLNg';
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

  final String _videoId = 'IuWQGpswvyY';
  final double _startSeconds = 142;

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

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 48;

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

  final String _videoId = 'lldCsGsdwcw';
  final double _startSeconds = 224;

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

  final String _videoId = 'lGSOWwUvJiU';
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

// end WORD_WEB