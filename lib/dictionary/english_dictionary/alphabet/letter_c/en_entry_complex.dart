import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomplex extends StatelessWidget {
// blank divider
  EnglishEntrycomplex({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomplex(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("complex");
  }

  Future<void> speakcomplexs1(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists need a better understanding of the complex interactions that cause hurricanes to intensify.");
  }

  Future<void> speakcomplexs2(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We live in an increasingly complex world.");
  }

  Future<void> speakcomplexs3(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the complex sentence, ‘I'd like to go to the beach, if it's warm enough’, ‘I'd like to go to the beach’ is the main clause, and ‘if it's warm enough’ is the subordinate clause.");
  }

  Future<void> speakcomplexs4(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They live in a large apartment complex.");
  }

  Future<void> speakcomplexs5(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is just one of a whole complex of issues.");
  }

  Future<void> speakcomplexs6(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He suffers from a guilt complex.");
  }

  Future<void> speakcomplexs7(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has a complex about her big ears.");
  }

  Future<void> speakcomplexs8(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My parents never spoke about my height because they didn't want me to grow up with a complex.");
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
                            EntryTitle(word: "complex"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmpleks/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomplex("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /kəmˈpleks/,  /ˈkɑːmpleks/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomplex("en-US"),
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
کوردی: ئاڵۆز، پێچەڵاوپێچ، سەخت، گرفت، دژوار، ئاریش، ئاسێ،	تێکەڵاو، لێکدراو (ڕستە، ڕێزمان)،	(بیرکاری) ئاوێتە، کۆخانوو، کۆمەڵەخانووی لێکچوو
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) ئاڵۆز، پێکھاتوو لە ژمارەیەک بەش"),
                          SentencesRow(
                            englishText:
                                "Scientists need a better understanding of the complex interactions that cause hurricanes to intensify.",
                            kurdishText:
                                "زاناکان پێویستییان بە تێگەشتنی زیاتر ھەیە بۆ تێگەشتن لەو کارلێکە ئاڵۆزانەی کە دەبنە ھۆی بەھێزبوونی گەردەلوولەکان.", // complex",
                            onPressedBritish: () => speakcomplexs1("en-GB"),
                            onPressedAmerican: () => speakcomplexs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We live in an increasingly complex world.",
                            kurdishText:
                                "لە جیھانێکی بەردەوام ئاڵۆزتربوودا دەژین.",
                            onPressedBritish: () => speakcomplexs2("en-GB"),
                            onPressedAmerican: () => speakcomplexs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) ڕستەیەک یان وشەیەک کە لە بەشێکی سەرەکی و بەشێکی دیکە پێکدێت"),
                          SentencesRow(
                            englishText:
                                "In the complex sentence, ‘I'd like to go to the beach, if it's warm enough’, ‘I'd like to go to the beach’ is the main clause, and ‘if it's warm enough’ is the subordinate clause.",
                            kurdishText:
                                "لە ڕستەی 'I'd like to go to the beach, if it's warm enough'، بەشی 'I'd like to go to the beach' شاڕستەیە، و 'if it's warm enough' پاڕستەیە.",
                            onPressedBritish: () => speakcomplexs3("en-GB"),
                            onPressedAmerican: () => speakcomplexs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کۆمەڵە بینایەکی ھاوشێوە لە ھەمان شوێندا"),
                          SentencesRow(
                            englishText:
                                "They live in a large apartment complex.",
                            kurdishText: "لە کۆخانوویەکی دەستەژووریدا دەژین.",
                            onPressedBritish: () => speakcomplexs4("en-GB"),
                            onPressedAmerican: () => speakcomplexs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کۆمەڵە شتێک کە گرێدراون"),
                          SentencesRow(
                            englishText:
                                "This is just one of a whole complex of issues.",
                            kurdishText: "ئەمە تەنھا یەکێکە لە کۆمەڵە کێشەیەک.",
                            onPressedBritish: () => speakcomplexs5("en-GB"),
                            onPressedAmerican: () => speakcomplexs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵە باوەڕ و ترسێک کە دەکرێت ببێتە ھۆکاری دڵتەنگی یان نەخۆشی دەروونی"),
                          SentencesRow(
                            englishText: "He suffers from a guilt complex.",
                            kurdishText: "بەدەست گرێیەکی تاوانەوە دەناڵێنێت.",
                            onPressedBritish: () => speakcomplexs6("en-GB"),
                            onPressedAmerican: () => speakcomplexs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ھەستی نیگەرانی یان شەرمەزاری سەبارەت بە شتێک کە گرنگ نییە"),
                          SentencesRow(
                            englishText:
                                "She has a complex about her big ears.",
                            kurdishText:
                                "نیگەرانییەکی ھەیە سەبارەت بە گوێیە گەورەکانی.",
                            onPressedBritish: () => speakcomplexs7("en-GB"),
                            onPressedAmerican: () => speakcomplexs7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "My parents never spoke about my height because they didn't want me to grow up with a complex.",
                            kurdishText:
                                "دایک و باوکم ھەرگیز سەبارەت بە باڵام قسەیان نەدەکرد چونکە نەیان دەویست شەرمەزاربم پێی.",
                            onPressedBritish: () => speakcomplexs8("en-GB"),
                            onPressedAmerican: () => speakcomplexs8("en-US"),
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
- Adjective: complex 
1. Complicated in structure; consisting of interconnected parts
"a complex set of variations based on a simple folk melody"; "a complex mass of diverse laws and customs"
 
2. Difficult to analyse or understand (= complicated)
"he's more complex than he seems on the surface";
 
3. (mathematics) having values of the form a + bi, where a and b are real numbers and i is the square root of -1; not purely real

- Noun: complex 
1. A conceptual whole made up of complicated and related parts (= composite)
"the complex of shopping malls, houses, and roads created a new town";
 
2. A compound described in terms of the central atom to which other atoms are bound or coordinated (= coordination compound)
 
3. (psychoanalysis) a combination of emotions and impulses that have been rejected from awareness but still influence a person's behaviour
 
4. A whole structure (as a building) made up of interconnected or related structures (= building complex)

- Verb: complex (derived forms: complexing, complexes, complexed)
1. (chemistry) form a complex with another substance
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

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 89;

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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 84;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 1109;

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

  final String _videoId = 'Pl8AJAt3TDg';
  final double _startSeconds = 298;

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

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 329;

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

  final String _videoId = 'PmlRbfSavbI';
  final double _startSeconds = 96;

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

  final String _videoId = 'X3TAROotFfM';
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