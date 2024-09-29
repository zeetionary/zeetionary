import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycook extends StatelessWidget {
  EnglishEntrycook({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcook(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cook");
  }

  Future<void> speakcooks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Where did you learn to cook?");
  }

  Future<void> speakcooks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Add the onion and cook for three minutes.");
  }

  Future<void> speakcooks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He cooked lunch for me.");
  }

  Future<void> speakcooks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("While the pasta is cooking, prepare the sauce.");
  }

  Future<void> speakcooks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Turn the fish over so that it cooks evenly.");
  }

  Future<void> speakcooks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Everyone is being very secretive—there's something cooking.");
  }

  Future<void> speakcooks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("John is a very good cook.");
  }

  Future<void> speakcooks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who was the cook?");
  }

  Future<void> speakcooks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was employed as a cook in a hotel.");
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
                            EntryTitle(word: "cook"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kʊk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcook("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kʊk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcook("en-US"),
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
کوردی: ئاشپەز، چێشت‌کەر، نان‌کەر، چێشت‌لێنەر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ئامادەکردنی خواردن، بە کوڵاندن یان برژاندن"),
                          SentencesRow(
                            englishText: "Where did you learn to cook?",
                            kurdishText: "لە کوێ فێری خواردن لێنان بوویت؟",
                            onPressedBritish: () => speakcooks1("en-GB"),
                            onPressedAmerican: () => speakcooks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Add the onion and cook for three minutes.",
                            kurdishText:
                                "پیازەکان زیاد بکە و بۆ سێ خولەک لێی بنێ.",
                            onPressedBritish: () => speakcooks2("en-GB"),
                            onPressedAmerican: () => speakcooks2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He cooked lunch for me.",
                            englishNote: "also: He cooked me lunch.",
                            kurdishText: "خواردنی نیوەڕۆی بۆ ئامادەکردم.",
                            onPressedBritish: () => speakcooks3("en-GB"),
                            onPressedAmerican: () => speakcooks3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ئامادەبوونی خواردنی لە کاتی لێناندا"),
                          SentencesRow(
                            englishText:
                                "While the pasta is cooking, prepare the sauce.",
                            kurdishText:
                                "کە پاستاکە پێدەگات، سۆسەکە ئامادە بکە.",
                            onPressedBritish: () => speakcooks4("en-GB"),
                            onPressedAmerican: () => speakcooks4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Turn the fish over so that it cooks evenly.",
                            kurdishText:
                                "ماسییەکە ھەڵبگێڕەوە بۆ ئەوەی بە یەکسانی ببرژێت.",
                            onPressedBritish: () => speakcooks5("en-GB"),
                            onPressedAmerican: () => speakcooks5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) بەنھێنی پلان بۆ دانراو"),
                          SentencesRow(
                            englishText:
                                "Everyone is being very secretive—there's something cooking.",
                            kurdishText:
                                "ھەموان زۆر نھێنی‌گرن، دەبێت شتێک لە گۆڕێدا بێت.",
                            onPressedBritish: () => speakcooks6("en-GB"),
                            onPressedAmerican: () => speakcooks6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کەسێک کە خواردن لێدەنێت یان پیشەکەی خواردن لێنانە"),
                          SentencesRow(
                            englishText:
                                "John is a very good cook (= he cooks well).",
                            kurdishText: "جۆن چێشتلێنەرێکی زۆر باشە.",
                            onPressedBritish: () => speakcooks7("en-GB"),
                            onPressedAmerican: () => speakcooks7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Who was the cook (= who cooked the food)?",
                            kurdishText: "کێ چێشتلێنەر بوو؟",
                            onPressedBritish: () => speakcooks8("en-GB"),
                            onPressedAmerican: () => speakcooks8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was employed as a cook in a hotel.",
                            kurdishText:
                                "وەک چێشتلێنەرێک لە ھوتێلێک کاری پێدرا.",
                            onPressedBritish: () => speakcooks9("en-GB"),
                            onPressedAmerican: () => speakcooks9("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: cook (derived forms: cooked, cooks, cooking)
1. (of food) combine or process (e.g. heat) to make ready for eating (= fix [informal], ready, make, prepare)
"Cook me dinner, please";
 
2. Transform and make suitable for consumption by heating
"These potatoes have to cook for 20 minutes"
 
3. Transform by heating
"The apothecary cooked the medicinal mixture in a big iron kettle"
 
4. [informal] Tamper, with the purpose of deception (= fudge, manipulate, fake, falsify, wangle [informal], misrepresent, spoof [informal])
"cook the books";

- Noun: cook (derived forms: cooks)
1. Someone who cooks food

- Noun: Cook (derived forms: Cooks)
1. English navigator who claimed the east coast of Australia for Britain and discovered several Pacific islands (1728-1779) (= James Cook, Captain Cook, Captain James Cook)
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

  final String _videoId = 'JoGjIRVY9t4';
  final double _startSeconds = 1582;

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

  final String _videoId = 'vcCvMfpm-2s';
  final double _startSeconds = 1387;

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

  final String _videoId = '9Y1XazyDiwc';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'MwIRIcdDLBQ';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'nITZooG6ij8';
  final double _startSeconds = 41;

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

  final String _videoId = 'omcNGrnt7Sg';
  final double _startSeconds = 1974;

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

  final String _videoId = 'Vyb-sTrY_Y8';
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

// end WORD_WEB