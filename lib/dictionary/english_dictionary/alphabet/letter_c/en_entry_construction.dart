import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconstruction extends StatelessWidget {
// blank divider
  EnglishEntryconstruction({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconstruction(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("construction");
  }

  Future<void> speakconstructions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Work has begun on the construction of the new airport.");
  }

  Future<void> speakconstructions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our new offices are still under construction.");
  }

  Future<void> speakconstructions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Construction of the new road has now been completed.");
  }

  Future<void> speakconstructions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Constructing a new building generates employment opportunities in the construction industry.");
  }

  Future<void> speakconstructions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The bridges are similar in construction.");
  }

  Future<void> speakconstructions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The earliest Greek temples were small buildings, simple in construction.");
  }

  Future<void> speakconstructions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house was a simple wooden construction.");
  }

  Future<void> speakconstructions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The writer has used several complex grammatical constructions.");
  }

  Future<void> speakconstructions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "How can they put such a damning construction on a perfectly innocent phrase?");
  }

  Future<void> speakconstructions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What construction do you put on this letter?");
  }

  Future<void> speakconstructions11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I don't want them to put the wrong construction on my actions.");
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
                            EntryTitle(word: "construction"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈstrʌkʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconstruction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈstrʌkʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconstruction("en-US"),
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
کوردی: دروست‌کردن، دانان، سازکردن، بنیات‌نان، پێکەوەنان، دامەزراندن، سازاندن، خانووبەرە، خانوو، ماڵ، بینا، دەزگا،	پێکھێنان، پێکھاتە،	ڕاڤە، لێکدانەوە، بۆچوون،	واتا،	(ڕێزمان) لێکدان، ڕێکخستن، داڕشتن،	گۆڕان
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) پڕۆسە یان شێوازی بنیاتنانی شتێک"),
                          SentencesRow(
                            englishText:
                                "Work has begun on the construction of the new airport.",
                            kurdishText:
                                "کاری بنیاتنانی فڕۆکەخانە تازەکە دەستیپێکردووە.", // construction",
                            onPressedBritish: () =>
                                speakconstructions1("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Our new offices are still under construction (= being built).",
                            kurdishText:
                                "ئۆفیسە تازەکانمان ھێشتا لە پڕۆسەی درووستکردندان.",
                            onPressedBritish: () =>
                                speakconstructions2("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Construction of the new road has now been completed.",
                            kurdishText:
                                "بنیاتنانی ڕێگا تازەکە ئێستا تەواو بووە.",
                            onPressedBritish: () =>
                                speakconstructions3("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کرێکاران و چالاکییەکانی درووستکردنی بینایەک"),
                          SentencesRow(
                            englishText:
                                "Constructing a new building generates employment opportunities in the construction industry.",
                            kurdishText:
                                "بنیاتنانی بینایەکی تازە ھەلی کار دەڕەخسێنێت لە پیشەسازی بیناسازی.",
                            onPressedBritish: () =>
                                speakconstructions4("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) شێوازی درووستکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "The bridges are similar in construction.",
                            kurdishText: "پردەکان ھاوشێوەن لە درووستکردندا.",
                            onPressedBritish: () =>
                                speakconstructions5("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The earliest Greek temples were small buildings, simple in construction.",
                            kurdishText:
                                "پەرستگا سەرەتاییە یۆنانییەکان بینای بچووک بوون و سادە بوون لە بنیاتناندا.",
                            onPressedBritish: () =>
                                speakconstructions6("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) شتێک کە درووستکراوە"),
                          SentencesRow(
                            englishText:
                                "The house was a simple wooden construction.",
                            kurdishText: "خانووەکە بینایەکی سادەی دارین بوو.",
                            onPressedBritish: () =>
                                speakconstructions7("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) شێوازی پێکەوەنانی وشە بۆ درووستکردنی ڕستە، زاراوە، ھتد"),
                          SentencesRow(
                            englishText:
                                "The writer has used several complex grammatical constructions.",
                            kurdishText:
                                "نووسەرەکە ژمارەیەک داڕشتنی ڕێزمانی ئاڵۆزی بەکارھێناوە.",
                            onPressedBritish: () =>
                                speakconstructions8("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) تێگەشتن لە شتێک بە شێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "How can they put such a damning construction on a perfectly innocent phrase?",
                            kurdishText:
                                "چۆن دەتوانن واتایەکی ھێندە خراپ لێکبدەنەوە لە زاراوەیەکی تەواو بێ مەبەست؟",
                            onPressedBritish: () =>
                                speakconstructions9("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شێوازی تێگەشتن لە وشە، کردار، لێدوان، ھتد لەلایەن کەسانی دیکەوە"),
                          SentencesRow(
                            englishText:
                                "What construction do you put on this letter (= what do you think it means)?",
                            kurdishText: "چۆن لەم نامەیە تێدەگەیت؟",
                            onPressedBritish: () =>
                                speakconstructions10("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't want them to put the wrong construction on my actions.",
                            kurdishText: "نامەوێت خراپ لە کردارەکانم تێبگەن.",
                            onPressedBritish: () =>
                                speakconstructions11("en-GB"),
                            onPressedAmerican: () =>
                                speakconstructions11("en-US"),
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
- Noun: construction (derived forms: constructions)
1. The act of constructing something (= building)
"during the construction we had to take a detour";
 
2. A group of words that form a constituent of a sentence and are considered as a single unit (= grammatical construction, expression)
"I concluded from his awkward constructions that he was a foreigner";
 
3. The creation of a construct; the process of combining ideas into a congruous object of thought (= mental synthesis)
 
4. A thing constructed; a complex entity constructed of many parts (= structure)
"she wore her hair in an amazing construction of whirls and ribbons";
 
5. Drawing a figure satisfying certain conditions as part of solving a problem or proving a theorem
"the assignment was to make a construction that could be used in proving the Pythagorean theorem"
 
6. An interpretation of a text or action (= twist)
"they put an unsympathetic construction on his conduct";
 
7. The commercial activity involved in repairing old structures or constructing new ones (= building)
"their main business is home construction";
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

  final String _videoId = 'k1AvNnJRMts';
  final double _startSeconds = 406;

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

  final String _videoId = 'kUa-JrisgrY';
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

  final String _videoId = 'EfVQzJVnxUM';
  final double _startSeconds = 134;

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

  final String _videoId = '22W5tRWbUVI';
  final double _startSeconds = 9;

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

  final String _videoId = 'dOe_6vuaR_s';
  final double _startSeconds = 31;

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

  final String _videoId = '_PpDwut_2Lw';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'ZmaSEMKb8rU';
  final double _startSeconds = 9;

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