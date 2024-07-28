import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconstant extends StatelessWidget {
// blank divider
  EnglishEntryconstant({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconstant(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("constant");
  }

  Future<void> speakconstants1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were constant interruptions.");
  }

  Future<void> speakconstants2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The ruined buildings serve as a constant reminder of the war.");
  }

  Future<void> speakconstants3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors are under constant pressure to treat more and more patients.");
  }

  Future<void> speakconstants4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Babies need constant attention.");
  }

  Future<void> speakconstants5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This entrance is in constant use.");
  }

  Future<void> speakconstants6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her constant chatter was beginning to annoy him.");
  }

  Future<void> speakconstants7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her daughter is a constant source of worry to her.");
  }

  Future<void> speakconstants8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car was travelling at a constant speed of 50 mph.");
  }

  Future<void> speakconstants9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Crime levels remain constant.");
  }

  Future<void> speakconstants10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The mathematician used the constant \"π\" in his calculations.");
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
                            EntryTitle(word: "constant"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnstənt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconstant("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnstənt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconstant("en-US"),
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
کوردی: جێگیر، خۆگرتوو، چەسپیو، نەگۆڕ، بنگر، چەقیو، سەقام‌گیر، سەقام‌گرتوو، نەگۆڕ،	بەردەوام، یەکبینە، ھەمیشەیی، لەسەریەک، یەکڕیز،	وەفادار، بەوەفا، بەئەمەگ، یەکلا، یەکڕوو، یەکڕەنگ، دڵسۆز،	شتی جێگیر و نەگۆڕ،	بڕ یان ژمارەیەکی جێگیر
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) بەردەوام ڕوودان"),
                          SentencesRow(
                            englishText: "There were constant interruptions.",
                            kurdishText: "پچڕانی بەردەوام ھەبوو.", // constant",
                            onPressedBritish: () => speakconstants1("en-GB"),
                            onPressedAmerican: () => speakconstants1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The ruined buildings serve as a constant reminder of the war.",
                            kurdishText:
                                "بینا وێرانبووەکان بیرھێنەرەوەی بەردەوامی جەنگەکە بوون.",
                            onPressedBritish: () => speakconstants2("en-GB"),
                            onPressedAmerican: () => speakconstants2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Doctors are under constant pressure to treat more and more patients.",
                                    kurdishText:
                                        "پزیشکان لە ژێر فشاری بەردەوامن بۆ چارەسەری نەخۆشی زیاتر و زیاتر.",
                                    onPressedBritish: () =>
                                        speakconstants3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconstants3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Babies need constant attention.",
                                    kurdishText:
                                        "منداڵان پێویستییان بە گرنگیپێدانی بەردەوامە.",
                                    onPressedBritish: () =>
                                        speakconstants4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconstants4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "This entrance is in constant use.",
                                    kurdishText:
                                        "دەروازەکە لە بەکارھێنانی بەردەوامدایە.",
                                    onPressedBritish: () =>
                                        speakconstants5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconstants5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her constant chatter was beginning to annoy him.",
                                    kurdishText:
                                        "چەنەدانی بەردەوامی خەریک بوو دەستی بە بێزارکردنی دەکرد.",
                                    onPressedBritish: () =>
                                        speakconstants6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconstants6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her daughter is a constant source of worry to her.",
                                    kurdishText:
                                        "کچەکەی سەرچاوەی نیگەرانی بەردەوامە بۆی.",
                                    onPressedBritish: () =>
                                        speakconstants7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconstants7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ھاوەڵناو) نەگۆڕ"),
                          SentencesRow(
                            englishText:
                                "The car was travelling at a constant speed of 50 mph.",
                            kurdishText:
                                "ئۆتۆمبێلەکە بە خێرایی نەگۆڕی ٥٠ میل/کاتژمێرێکدا دەچوو.",
                            onPressedBritish: () => speakconstants8("en-GB"),
                            onPressedAmerican: () => speakconstants8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Crime levels remain constant.",
                            kurdishText: "ڕێژەی تاوان بە نەگۆڕ ماوەتەوە.",
                            onPressedBritish: () => speakconstants9("en-GB"),
                            onPressedAmerican: () => speakconstants9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ژمارە یان بڕێکی نەگۆڕ"),
                          SentencesRow(
                            englishText:
                                "The mathematician used the constant \"π\" in his calculations.",
                            kurdishText:
                                "بیرکاریزانەکە نەگۆڕی 'π' ـی بەکارھێنا لە شیکارییەکەی.",
                            onPressedBritish: () => speakconstants10("en-GB"),
                            onPressedAmerican: () => speakconstants10("en-US"),
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
- Adjective: constant 
1. Unvarying in nature (= changeless, invariant, unvarying)
"maintained a constant temperature";
 
2. Steadfast in purpose, devotion or affection
"a man constant in adherence to his ideals"; "a constant lover"; "constant as the northern star"
 
3. Continuing forever, or for an indefinitely long time (= ceaseless, incessant, never-ending, perpetual, unceasing, unremitting)
"in constant pain";
 
4. (of a number) having an unchanging value (= fixed)

- Noun: constant (derived forms: constants)
1. A quantity that does not vary (= constant quantity, invariable)
 
2. A number representing a quantity assumed to have a fixed value in a specified mathematical context
"the velocity of light is a constant"
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

  final String _videoId = 'ZvTxFsJMUPM';
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

  final String _videoId = '1IY93VzCa-Y';
  final double _startSeconds = 604;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 1248;

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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 111;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 1306;

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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 280;

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

  final String _videoId = 'Zad6v8ZHzdg';
  final double _startSeconds = 636;

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