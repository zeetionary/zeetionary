import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycanvass extends StatelessWidget {
// blank divider
  EnglishEntrycanvass({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcanvass(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("canvass");
  }

  Future<void> speakcanvasss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Volunteers and staffers were manning the phones and organizing a canvass.");
  }

  Future<void> speakcanvasss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A canvass of council members showed that the proposal would not pass.");
  }

  Future<void> speakcanvasss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spent the whole month canvassing for votes.");
  }

  Future<void> speakcanvasss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has been canvassing opinion on the issue.");
  }

  Future<void> speakcanvasss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The proposal is currently being canvassed.");
  }

  Future<void> speakcanvasss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss66");
  }

  Future<void> speakcanvasss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss77");
  }

  Future<void> speakcanvasss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss88");
  }

  Future<void> speakcanvasss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss99");
  }

  Future<void> speakcanvasss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss1010");
  }

  Future<void> speakcanvasss11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss1111");
  }

  Future<void> speakcanvasss12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss1212");
  }

  Future<void> speakcanvasss13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcanvasss1313");
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
                            EntryTitle(word: "canvass"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkænvəs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcanvass("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkænvəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcanvass("en-US"),
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
کوردی: ڕاگەیاندن، بوارڕەخسان، گڵاڵەبوون، بۆ ھەڵکەوتن، ڕاپرسی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پڕۆسەی گەڕان بە ناوچەیەکدا و قسەکردن لەگەڵ خەڵکی، بەتایبەتی بۆ داواکردنی پشتگیری بۆ کەسێکی دیاریکراو، پارتێکی سیاسی، ھتد"),
                          SentencesRow(
                            englishText:
                                "Volunteers and staffers were manning the phones and organizing a canvass.",
                            kurdishText:
                                "خۆبەخشان و ئەندامانی ستاف ھێڵەکانی پەیوەندییان بەڕێوەدەبرد.", // canvass
                            onPressedBritish: () => speakcanvasss1("en-GB"),
                            onPressedAmerican: () => speakcanvasss1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پڕۆسەی کۆکردنەوەی زانیاری و بۆچوونی خەڵکی بە گەڕان و پرسیارکردن"),
                          SentencesRow(
                            englishText:
                                "A canvass of council members showed that the proposal would not pass.",
                            kurdishText:
                                "ڕاپرسییەکی ئەندامانی ئەنجوومەنەکە دەریخست کە پێشنیازەکە دەنگ ناھێنێت.",
                            onPressedBritish: () => speakcanvasss2("en-GB"),
                            onPressedAmerican: () => speakcanvasss2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) کۆکردنەوەی پشتگیری بۆ کەسێک، پارتێکی سیاسی، ھتد بە گەڕان و قسەکردن لەگەڵیان یان پەیوەندی کردن پێیانەوە"),
                          SentencesRow(
                            englishText:
                                "He spent the whole month canvassing for votes.",
                            kurdishText:
                                "تەواوی مانگەکەی بەسەربرد بە کۆکردنەوەی دەنگ.",
                            onPressedBritish: () => speakcanvasss3("en-GB"),
                            onPressedAmerican: () => speakcanvasss3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) قسەکردن لەگەڵ خەڵکی بۆ وەرگرتنی زانیاری و زانینی بۆچوونیان"),
                          SentencesRow(
                            englishText:
                                "He has been canvassing opinion on the issue.",
                            kurdishText:
                                "خەریکی ڕاپرسی لەسەر بۆچوونەکان بووە لەسەر بابەتەکە.",
                            onPressedBritish: () => speakcanvasss4("en-GB"),
                            onPressedAmerican: () => speakcanvasss4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) گەنگەشەکردنی بابەتێک بە تەواوی"),
                          SentencesRow(
                            englishText:
                                "The proposal is currently being canvassed.",
                            kurdishText:
                                "پێشنیازەکە لە ئێستادا گەنگەشە دەکرێت.",
                            onPressedBritish: () => speakcanvasss5("en-GB"),
                            onPressedAmerican: () => speakcanvasss5("en-US"),
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
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
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
- Verb: canvass (derived forms: canvassing, canvasses, canvassed)
1. Get the opinions (of people) by asking specific questions (= poll)
 
2. Solicit votes from potential voters in an electoral campaign
 
3. Consider in detail and subject to an analysis in order to discover essential features or meaning (= analyze [N. Amer], analyse [Brit, Cdn], study, examine)

- Noun: canvass (derived forms: canvasses)
1. The setting for a narrative, fictional or dramatic account (= canvas)
 
2. An inquiry into public opinion conducted by interviewing a random sample of people (= poll, opinion poll, public opinion poll)
 
3. A large piece of fabric (usually canvas fabric) by means of which wind is used to propel a sailing vessel (= sail, canvas, sheet)
 
4. A tent made of canvas fabric (= canvas tent, canvas)
 
5. An oil painting on canvas fabric (= canvas)
 
6. The mat that forms the floor of the ring in which boxers or professional wrestlers compete (= canvas)
 
7. A heavy, closely woven fabric (= canvas)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'MLIehuS4xyw';
  final double _startSeconds = 1028;

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

  final String _videoId = 'or9O1y_wQSg';
  final double _startSeconds = 546;

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

  final String _videoId = 'BJzOZuPgcMc';
  final double _startSeconds = 7;

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

  final String _videoId = 'G6kshs2ZQcQ';
  final double _startSeconds = 799;

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

  final String _videoId = 'B7V9KZjm_rs';
  final double _startSeconds = 611;

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

  final String _videoId = 'H1tFCSVykwk';
  final double _startSeconds = 389;

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

  final String _videoId = '1Z1KLpf_7tU';
  final double _startSeconds = 855;

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

  final String _videoId = 'YHCQJ7cZvII';
  final double _startSeconds = 784;

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

  final String _videoId = '8RWPwdqpzO0';
  final double _startSeconds = 25;

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

  final String _videoId = 'm0XTaHoOYEg';
  final double _startSeconds = 1575;

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

// end WORD_WEB
