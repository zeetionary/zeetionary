import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycon extends StatelessWidget {
// blank divider
  EnglishEntrycon({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcon(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("con");
  }

  Future<void> speakcons1(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The so-called bargain was just a big con!");
  }

  Future<void> speakcons2(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The scheme was all a big con.");
  }

  Future<void> speakcons3(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Look, I'm an officer, and cons don't speak to me like that, okay?");
  }

  Future<void> speakcons4(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was conned into buying a useless car.");
  }

  Future<void> speakcons5(String languageCode) async {
    // DOPSUM: CHANGE speakcon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He conned his way into the job using false references.");
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
                            EntryTitle(word: "con"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɒn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcon("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɑːn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcon("en-US"),
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
کوردی: کەڵەک، فێڵ، فریو، دەسبڕی، زۆڵی (بۆ بەدەس‌ھێنانی باوەڕی خەڵک)، فڕوفێڵاوی، درۆزنە، دژی، بە دژی، دەنگی دژایەتی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) فێڵ؛ فێڵکردن"),
                          SentencesRow(
                            englishText:
                                "The so-called bargain was just a big con!",
                            kurdishText:
                                "ئەو بەناو ڕێکەوتە تەنھا دەسبڕییەک بوو.", // con",
                            onPressedBritish: () => speakcons1("en-GB"),
                            onPressedAmerican: () => speakcons1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The scheme was all a big con.",
                            kurdishText: "پلانەکە ھەمووی فێڵێکی گەورە بوو.",
                            onPressedBritish: () => speakcons2("en-GB"),
                            onPressedAmerican: () => speakcons2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) تاوانبارێک"),
                          SentencesRow(
                            englishText:
                                "Look, I'm an officer, and cons don't speak to me like that, okay?",
                            kurdishText:
                                "ببینە، من ئەفسەرێکم، و تاوانباران بەو شێوەیە قسەم لەگەڵ ناکەن، تەواوە؟",
                            onPressedBritish: () => speakcons3("en-GB"),
                            onPressedAmerican: () => speakcons3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) فێڵکردن لە کەسێک"),
                          SentencesRow(
                            englishText:
                                "I was conned into buying a useless car.",
                            kurdishText: "خەڵەتێنرام بە کڕینی ئۆتۆمبێلێکی کۆن.",
                            onPressedBritish: () => speakcons4("en-GB"),
                            onPressedAmerican: () => speakcons4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He conned his way into the job using false references.",
                            kurdishText:
                                "کارەکەی دەستکەوت بە فێڵ بە بەکارھێنانی ڕاسپاردن‌نامەی ناڕاست.",
                            onPressedBritish: () => speakcons5("en-GB"),
                            onPressedAmerican: () => speakcons5("en-US"),
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
- Verb: con (derived forms: conned, cons)
1. [informal] Deprive of by deceit (= victimize, swindle, rook, goldbrick [N. Amer, informal], nobble [Brit, informal], diddle [informal], bunco [N. Amer, informal], defraud, scam [informal], mulct, hornswoggle [N. Amer, informal], short-change, victimise [Brit], grift [N. Amer, informal], ream [N. Amer, informal], bunko [N. Amer, informal])
"He conned me out of my inheritance";
 
2. Conduct or direct the steering of a ship or plane (= conn [US])
 
3. [archaic] Commit to memory; learn by heart (= memorize, memorise [Brit], learn)

- Noun: con (derived forms: cons)
1. An argument opposed to a proposal
 
2. [informal] A person serving a sentence in a jail or prison (= convict, inmate, yard bird [N. Amer, informal], yardbird [N. Amer, informal])
 
3. [informal] A swindle in which you cheat at gambling or persuade a person to buy worthless property (= bunco [N. Amer, informal], bunco game [N. Amer, informal], bunko [N. Amer, informal], bunko game [N. Amer, informal], confidence trick, confidence game, con game [informal], hustle [informal], sting [informal], flimflam [informal])

- Adverb: con
1. In opposition to a proposition, opinion, etc.
"much was written pro and con"
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

  final String _videoId = 'tdhSAYcXvrA';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '5Z5-5xLGsk0';
  final double _startSeconds = 32;

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

  final String _videoId = 'arA5LS279Sw';
  final double _startSeconds = 1485;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 1569;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 421;

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

  final String _videoId = 'vb-p--iRFew';
  final double _startSeconds = 511;

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

  final String _videoId = 't1shnJT8NCY';
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