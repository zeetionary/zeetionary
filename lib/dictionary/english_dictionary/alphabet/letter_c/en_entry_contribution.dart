import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontribution extends StatelessWidget {
  EnglishEntrycontribution({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontribution(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contribution");
  }

  Future<void> speakcontributions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All contributions will be gratefully received.");
  }

  Future<void> speakcontributions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We rely entirely on voluntary contributions.");
  }

  Future<void> speakcontributions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Financial contributions from individuals paid for the expenses.");
  }

  Future<void> speakcontributions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You can increase your monthly contributions to the pension plan.");
  }

  Future<void> speakcontributions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He made a very positive contribution to the success of the project.");
  }

  Future<void> speakcontributions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This book represents a major contribution to our understanding of the Holocaust.");
  }

  Future<void> speakcontributions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He made a major contribution to peace in the region.");
  }

  Future<void> speakcontributions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thank you for your contributions to the blog.");
  }

  Future<void> speakcontributions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There are no contributions by scholars based in North America.");
  }

  Future<void> speakcontributions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All contributions for the May issue must be received by Friday.");
  }

  Future<void> speakcontributions11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The institute is totally funded by voluntary contribution.");
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
                            EntryTitle(word: "contribution"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒntrɪˈbjuːʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontribution("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /ˌkɑːntrɪˈbjuːʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontribution("en-US"),
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
کوردی: یارمەتی، پیتاک، باروبۆ، باربوو، کۆمەک، یاریدە،	پێدان، بەخشین،	وتار، نووسراوە، نڤیسار، مژار، بابەت،	بەش، پشک،	ڕۆڵ،	بەشداری، تەڤلی‌بوون، ھاوبەشی، پشکداری، دەس‌گرتن، پەلگرتن، یارمەتی‌دان،	حەول، تێکۆشان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) خەڵاتێک یان بڕە پارەیەک کە دەدرێت بە کەسێک یان دامەزراوەیەک بۆ یارمەتیدان"),
                          SentencesRow(
                            englishText:
                                "All contributions will be gratefully received.",
                            kurdishText:
                                "ھەموو بەخشینێک بە سوپاسەوە وەردەگیرێن.",
                            onPressedBritish: () =>
                                speakcontributions1("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We rely entirely on voluntary contributions.",
                            kurdishText:
                                "بە تەواوی پشت بە بەخشینی خۆبەخشان دەبەستین.",
                            onPressedBritish: () =>
                                speakcontributions2("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Financial contributions from individuals paid for the expenses.",
                            kurdishText:
                                "کۆمەکی دارایی لە کەسایەتییەکانەوە خەرجییەکانیان دابینکرد.",
                            onPressedBritish: () =>
                                speakcontributions3("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بڕە پارەیەک کە دەیدەیت بە خاوەنکارەکەت یان حکومەت بۆ پێدانی پارەی بیمەی تەندرووستیت، خانەنشینیت، ھتد"),
                          SentencesRow(
                            englishText:
                                "You can increase your monthly contributions to the pension plan.",
                            kurdishText:
                                "دەتوانیت بەخشینی مانگانەت بە پلانی خانەنشینییەکە زیادبکەیت.",
                            onPressedBritish: () =>
                                speakcontributions4("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کردارێک یان خامەتگوزارییەک کە یارمەتی ڕوودان یان زیادبوونی شتێک دەدات"),
                          SentencesRow(
                            englishText:
                                "He made a very positive contribution to the success of the project.",
                            kurdishText:
                                "بەژاربوونێکی ئەرێنییانەی بۆ سەرکەوتنی پڕۆژەکە ھەبوو.",
                            onPressedBritish: () =>
                                speakcontributions5("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This book represents a major contribution to our understanding of the Holocaust.",
                            kurdishText:
                                "ئەم کتێبە پشکێکی گرنگی ھەبووە لە تێگەشتنمان بۆ ھۆڵۆکۆست.",
                            onPressedBritish: () =>
                                speakcontributions6("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He made a major contribution to peace in the region.",
                            kurdishText:
                                "پشکی گرنگی بۆ ئاشتی لە ھەرێمەکەدا ھەبوو.",
                            onPressedBritish: () =>
                                speakcontributions7("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شتێک کە بەشێکە لە کتێبێک، گۆڤارێک، وێبسایتێک، گفتوگۆیەک، ھتد"),
                          SentencesRow(
                            englishText:
                                "Thank you for your contributions to the blog.",
                            kurdishText: "سوپاس بۆ بەژدارییەکانت لە بلۆگەکەدا.",
                            onPressedBritish: () =>
                                speakcontributions8("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There are no contributions by scholars based in North America.",
                            kurdishText:
                                "ھیچ بەژدارییەک لە پسپۆڕانی باکووری ئەمریکاوە نییە.",
                            onPressedBritish: () =>
                                speakcontributions9("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "All contributions for the May issue must be received by Friday.",
                            kurdishText:
                                "ھەموو نووسینەکان بۆ مانگی ئایار دەبێت تاوەکو ھەینی پێشکەش بکرێن.",
                            onPressedBritish: () =>
                                speakcontributions10("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کرداری بەخشینی شتێک، بەتایبەتی پارە، وەک کۆمەک"),
                          SentencesRow(
                            englishText:
                                "The institute is totally funded by voluntary contribution.",
                            kurdishText:
                                "پەیمانگاکە بەتەواوی پشت بە کۆمەکی خۆبەخشان دەبەستێت.",
                            onPressedBritish: () =>
                                speakcontributions11("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributions11("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: contribution (derived forms: contributions)
1. The effort contributed by a person in bringing about a result (= part, share)
"I am proud of my contribution in advancing the project";
 
2. A voluntary gift (as of money, service or ideas) made to some worthwhile cause (= donation)
 
3. Act of giving in common with others for a common purpose especially to a charity (= donation)
 
4. An amount of money contributed
"he expected his contribution to be repaid with interest"
 
5. A writing for publication especially one of a collection of writings as an article or story
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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 2870;

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

  final String _videoId = 'IgF3OX8nT0w';
  final double _startSeconds = 441;

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

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 609;

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

  final String _videoId = 'oI_X2cMHNe0';
  final double _startSeconds = 536;

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

  final String _videoId = '1s5iz6ml-qA';
  final double _startSeconds = 392;

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

  final String _videoId = '3PX2d3Zwutg';
  final double _startSeconds = 478;

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

  final String _videoId = 'A0N9YF2jfiw';
  final double _startSeconds = 209;

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