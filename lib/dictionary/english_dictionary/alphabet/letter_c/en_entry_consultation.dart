import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconsultation extends StatelessWidget {
// blank divider
  EnglishEntryconsultation({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconsultation(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("consultation");
  }

  Future<void> speakconsultations1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The decision was taken after close consultation with local residents.");
  }

  Future<void> speakconsultations2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There will be a period of public consultation before a decision is reached.");
  }

  Future<void> speakconsultations3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There have been extensive consultations between the two countries.");
  }

  Future<void> speakconsultations4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The police chiefs will hold a consultation with all the relevant groups.");
  }

  Future<void> speakconsultations5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A 30-minute consultation will cost £50.");
  }

  Future<void> speakconsultations6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I had a consultation with a dermatologist.");
  }

  Future<void> speakconsultations7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is a large collection of texts available for consultation in the library.");
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
                            EntryTitle(word: "consultation"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒnslˈteɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconsultation("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkɑːnslˈteɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconsultation("en-US"),
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
کوردی: ڕاوێژکاری، ڕاوێژگەری، شیرەت، شێور، پرس‌وڕا،	کۆبوونەوەی پزشکە پسپۆڕەکان (بۆ ڕاوێژ و چارەسەری)،	کۆبوونەوەی ڕاوێژکاری،	کۆبوونەوەی فەرمی،	پیاچوونەوە 
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) باسکردنی شتێک لەگەڵ کەسێک  یان گرووپێک لەپێش بڕیاردان"),
                          SentencesRow(
                            englishText:
                                "The decision was taken after close consultation with local residents.",
                            kurdishText:
                                "بڕیارەکە درا لە دوای ڕاوێژی نزیک لەگەڵ ھاوڵاتییە خۆجێییەکان.", // consultation",
                            onPressedBritish: () =>
                                speakconsultations1("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There will be a period of public consultation before a decision is reached.",
                            kurdishText:
                                "ماوەیەک لە پرس‌وڕای گشتی دەبێت پێش گەشتن بە بڕیارێک.",
                            onPressedBritish: () =>
                                speakconsultations2("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کۆبوونەوەیەکی فەرمی بۆ باسکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "There have been extensive consultations between the two countries.",
                            kurdishText:
                                "کۆبوونەوەی چڕوپڕ لە نێوان دوو وڵاتەکەدا ھەبووە.",
                            onPressedBritish: () =>
                                speakconsultations3("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The police chiefs will hold a consultation with all the relevant groups.",
                            kurdishText:
                                "بەرپرسانی پۆلیس چاوپێکەوتنێک سازدەکەن لەگەڵ ھەموو گرووپە پەیوەندیدارەکان.",
                            onPressedBritish: () =>
                                speakconsultations4("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) چاوپێکەوتنێک لەگەڵ شارەزایەک، بەتایبەتی پزیشکێک، بۆ وەرگرتنی ڕاوێژ یان چارەسەر"),
                          SentencesRow(
                            englishText:
                                "A 30-minute consultation will cost £50.",
                            kurdishText:
                                "بینینێکی ٣٠ خولەکی ٥٠ پاوەندی تێدەچێت.",
                            onPressedBritish: () =>
                                speakconsultations5("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I had a consultation with a dermatologist.",
                            kurdishText: "بینینێکم لەگەڵ پزیشکێکی پێست ھەبوو.",
                            onPressedBritish: () =>
                                speakconsultations6("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) گەڕان بۆ زانیاری لە کتێبێک، ھتد"),
                          SentencesRow(
                            englishText:
                                "There is a large collection of texts available for consultation in the library.",
                            kurdishText:
                                "کۆمەڵێکی گەورە لە نووسراو بەردەستن بۆ پیاچوونەوە لە کتێبخانەکە.",
                            onPressedBritish: () =>
                                speakconsultations7("en-GB"),
                            onPressedAmerican: () =>
                                speakconsultations7("en-US"),
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
- Noun: consultation (derived forms: consultations)
1. A conference (usually with someone important) (= audience, interview)
"he had a consultation with the judge";
 
2. A conference between two or more people to consider a particular question
"frequent consultations with his lawyer"; "a consultation of several medical specialists"
 
3. The act of referring or consulting (= reference)
"consultation to an encyclopaedia produced the answer";
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

  final String _videoId = 'n4bucphC9r4';
  final double _startSeconds = 549;

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

  final String _videoId = 'ZvGFV1WoVeo';
  final double _startSeconds = 355;

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

  final String _videoId = 'apmF_FXcZKc';
  final double _startSeconds = 152;

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

  final String _videoId = 'VK2405H3Hjk';
  final double _startSeconds = 11;

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

  final String _videoId = '8hK4UzAH0rk';
  final double _startSeconds = 105;

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

  final String _videoId = '9X5Vuh4U5Wo';
  final double _startSeconds = 193;

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

  final String _videoId = 'q5NuH2J92n8';
  final double _startSeconds = 8;

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