import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontraction extends StatelessWidget {
// blank divider
  EnglishEntrycontraction({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontraction(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contraction");
  }

  Future<void> speakcontractions1(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The design needs to allow for the expansion and contraction of the metal.");
  }

  Future<void> speakcontractions2(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sudden contraction of the markets left them with a lot of unwanted stock.");
  }

  Future<void> speakcontractions3(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The contractions started coming every five minutes.");
  }

  Future<void> speakcontractions4(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Neurons control the contraction of muscles.");
  }

  Future<void> speakcontractions5(String languageCode) async {
    // DOPSUM: CHANGE speakcontraction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("‘He's’ may be a contraction of ‘he is’ or ‘he has’.");
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
                            EntryTitle(word: "contraction"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈtrækʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontraction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtrækʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontraction("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: چوونەیەک، ھاتنەیەک، ھاوکێشی، یەک‌ترکێشی، چرچ‌ھەڵاتن، کرژبوون، ھەڵقرچان، کۆبوونەوە، کۆوەبوون، وێکھاتن، چکۆلەبوونەوە، تێک‌ترنجان، ھەڵقرچاندن، کرژاندن، وێکھێنان،	کورتە، وشەی کورتەوەکراو، تێک‌ھەڵکێشراو، شێوەی کورتەوەبووی وشەیێ،	ژانەبوون، ژان‌وبرک، ژان‌وژۆ (مناڵ‌بوون)،	بێ‌بازاڕی، کەسادی،	(نەخۆشی) تووش‌بوون، دوچاربوون، گرتن، پیاپێ‌کران
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) پڕۆسەی بچووکبوونەوە"),
                          SentencesRow(
                            englishText:
                                "The design needs to allow for the expansion and contraction of the metal.",
                            kurdishText:
                                "دیزاینەکە دەبێت ڕێگا بە کشان و چوونەوە یەکی کانزاکە بدات.", // contraction",
                            onPressedBritish: () => speakcontractions1("en-GB"),
                            onPressedAmerican: () =>
                                speakcontractions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The sudden contraction of the markets left them with a lot of unwanted stock.",
                            kurdishText:
                                "داتەپینی لەناکاوی بازاڕ ھێشتیانیەوە بە سەرمایەیەکی زۆری نەویستراو.",
                            onPressedBritish: () => speakcontractions2("en-GB"),
                            onPressedAmerican: () =>
                                speakcontractions2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) گرژبوونی لەناکاو و بەئازاری ماسوولکەکان، بەتایبەتی ماولکەی منداڵدانی ژنان لە کاتی منداڵبووندا"),
                          SentencesRow(
                            englishText:
                                "The contractions started coming every five minutes.",
                            kurdishText:
                                "ژانکردنەکە ھەر پێنج خولەکێک دەستی پێدەکرد.",
                            onPressedBritish: () => speakcontractions3("en-GB"),
                            onPressedAmerican: () =>
                                speakcontractions3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Neurons control the contraction of muscles.",
                            kurdishText:
                                "نیورۆنەکان گرژبوونی ماسوولکەکان کۆنترۆڵ دەکەن.",
                            onPressedBritish: () => speakcontractions4("en-GB"),
                            onPressedAmerican: () =>
                                speakcontractions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) شێوەی کورتکراوەی وشەیەک"),
                          SentencesRow(
                            englishText:
                                "‘He's’ may be a contraction of ‘he is’ or ‘he has’.",
                            kurdishText:
                                "\"He's\" دەکرێت کورتکراوەی \"he is\" یان \"he has\" بێت.",
                            onPressedBritish: () => speakcontractions5("en-GB"),
                            onPressedAmerican: () =>
                                speakcontractions5("en-US"),
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
- Noun: contraction (derived forms: contractions)
1. (physiology) a shortening or tensing of a part or organ (especially of a muscle or muscle fibre) (= muscular contraction, muscle contraction)
 
2. The process or result of becoming smaller or pressed together (= compression, condensation)
"the contraction of a gas on cooling";
 
3. A word formed from two or more words by omitting or combining some sounds
"'won't' is a contraction of 'will not'"; "'o'clock' is a contraction of 'of the clock'"
 
4. The act of decreasing (something) in size, volume, quantity or scope
 
5. (economics) a period of economic decline or negative growth
"The country's economic contraction was caused by high oil prices"
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

  final String _videoId = 'NfEJUPnqxk0';
  final double _startSeconds = 239;

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

  final String _videoId = 'TxW6_E3uLuo';
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

  final String _videoId = 'rKaoNaoqemM';
  final double _startSeconds = 3;

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

  final String _videoId = 'fs_PtSaC9Ik';
  final double _startSeconds = 144;

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

  final String _videoId = 'FPzGAksFCbs';
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

  final String _videoId = 'qu0kbc5Umk4';
  final double _startSeconds = 2;

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

  final String _videoId = 'i6ZkvUFBLSA';
  final double _startSeconds = 88;

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