import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychild extends StatelessWidget {
  // blank divider
  EnglishEntrychild({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchild(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("child");
  }

  Future<void> speakchilds1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Children grow up so quickly!");
  }

  Future<void> speakchilds2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The film is not suitable for young children.");
  }

  Future<void> speakchilds3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I lived in London as a child.");
  }

  Future<void> speakchilds4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had old-fashioned ideas on how to bring up children.");
  }

  Future<void> speakchilds5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always been a problem child.");
  }

  Future<void> speakchilds6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My father died while I was still a small child.");
  }

  Future<void> speakchilds7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are a lot of street children in the poorer parts of the city.");
  }

  Future<void> speakchilds8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He took the children to Disneyland.");
  }

  Future<void> speakchilds9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They can't have children.");
  }

  Future<void> speakchilds10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She didn't have her first child until she was nearly forty.");
  }

  Future<void> speakchilds11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She couldn't imagine the pain of losing a child at birth.");
  }

  Future<void> speakchilds12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are expecting a child in June.");
  }

  Future<void> speakchilds13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They have two children aged 21 and 17.");
  }

  Future<void> speakchilds14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Me, I'm a child of the 60s.");
  }

  Future<void> speakchilds15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's such a child if he doesn't get his own way.");
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
                            EntryTitle(word: "child"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃaɪld/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchild("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃaɪld/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchild("en-US"),
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
کوردی: مناڵ، منداڵ، زارۆک، بەچ، بەچە، وەچ، کۆرپە، ساوا، ڕۆڵە، فرزەند،	ئاوەڵمە، کۆرپەلە، تۆل، پێزە،	(خوازە) ئەنجام، زادە، ئاکام،	مرۆ یان کەسێکی بێ‌ئەزموون یان خاو،	مرید، بەردەست 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) منداڵێک کە ھێشتا پێگەشتوو نییە"),
                          SentencesRow(
                            englishText: "Children grow up so quickly!",
                            kurdishText:
                                "منداڵان زۆر خوو گەورە دەبن.", // child",
                            onPressedBritish: () => speakchilds1("en-GB"),
                            onPressedAmerican: () => speakchilds1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The film is not suitable for young children.",
                            kurdishText:
                                "فیلمەکە گونجاو نییە بۆ منداڵانی گەنج.",
                            onPressedBritish: () => speakchilds2("en-GB"),
                            onPressedAmerican: () => speakchilds2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I lived in London as a child.",
                                    kurdishText: "وەک منداڵێک لە لەندەن ژیام.",
                                    onPressedBritish: () =>
                                        speakchilds3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He had old-fashioned ideas on how to bring up children.",
                                    kurdishText:
                                        "بیرۆکەی کۆنەباوی لەسەر گەورەکردنی منداڵ.",
                                    onPressedBritish: () =>
                                        speakchilds4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He's always been a problem child.",
                                    kurdishText:
                                        "ھەمیشە منداڵێکی سەربەکێشە بووە.",
                                    onPressedBritish: () =>
                                        speakchilds5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "My father died while I was still a small child.",
                                    kurdishText:
                                        "باوکم کۆچی دوایی کرد کە ھێشتا من منداڵێک بووم.",
                                    onPressedBritish: () =>
                                        speakchilds6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "There are a lot of street children in the poorer parts of the city.",
                                    kurdishText:
                                        "ڕێژەیەکی زۆر منداڵی سەرشەقام ھەن لە بەشە ھەژارەکانی شارەکەدا.",
                                    onPressedBritish: () =>
                                        speakchilds7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He took the children to Disneyland.",
                                    kurdishText:
                                        "منداڵەکانی برد بۆ دیزنی‌لاند.",
                                    onPressedBritish: () =>
                                        speakchilds8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) کوڕ و کچی باوک و دایکێک"),
                          SentencesRow(
                            englishText: "They can't have children.",
                            kurdishText: "ناتوانن منداڵیان ببێت.",
                            onPressedBritish: () => speakchilds9("en-GB"),
                            onPressedAmerican: () => speakchilds9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She didn't have her first child until she was nearly forty.",
                            kurdishText:
                                "یەکەم منداڵی نەبوو تاوەکو نزیکەی تەمەنی ٤٠ ساڵی.",
                            onPressedBritish: () => speakchilds10("en-GB"),
                            onPressedAmerican: () => speakchilds10("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She couldn't imagine the pain of losing a child at birth.",
                                    kurdishText:
                                        "نەیدەتوانی خەیاڵی لەدەستدانی منداڵێکی بکات لەکاتی لەدایکبووندا.",
                                    onPressedBritish: () =>
                                        speakchilds11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They are expecting a child in June.",
                                    kurdishText:
                                        "لە حوزەیران منداڵێکیان دەبێت.",
                                    onPressedBritish: () =>
                                        speakchilds12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They have two children aged 21 and 17.",
                                    kurdishText:
                                        "دوو منداڵی ٢١ و ١٧ ساڵیان ھەیە.",
                                    onPressedBritish: () =>
                                        speakchilds13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchilds13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەسێک کە کاریگەر بوو بە سەردەمێک یان دۆخێک"),
                          SentencesRow(
                            englishText: "Me, I'm a child of the 60s.",
                            kurdishText: "من، من منداڵێکی ١٩٦٠ـەکانم.",
                            onPressedBritish: () => speakchilds14("en-GB"),
                            onPressedAmerican: () => speakchilds14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) پێگەشتوویەک کە وەک منداڵ ڕەفتار دەکات"),
                          SentencesRow(
                            englishText:
                                "He's such a child if he doesn't get his own way.",
                            kurdishText:
                                "دەبێت بە منداڵێک کە ئەوەی دەست نەکەوێت کە دەیەوێت.",
                            onPressedBritish: () => speakchilds15("en-GB"),
                            onPressedAmerican: () => speakchilds15("en-US"),
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: child (derived forms: children)
1. A young person of either sex (= kid [informal], youngster, minor, shaver [informal], nipper [informal], small fry [informal], tiddler [Brit, informal], tike [informal], tyke [informal], fry [archaic], nestling [informal], wean [UK, Ireland, dialect], kiddy [informal], kiddie [informal])
"she writes books for children";
 
2. A human offspring (son or daughter) of any age (= kid [informal])
"they had three children";

3. An immature childish person (= baby)
"he remained a child in practical matters as long as he lived";
 
4. A member of a clan or tribe
"the children of Israel"
 
5. (computing) an object that part of, derived from, or serving another object
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

  final String _videoId = 'FD5tIIkccHY';
  final double _startSeconds = 43;

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

  final String _videoId = 'gES-AewCOAI';
  final double _startSeconds = 1390;

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

  final String _videoId = '36EJUmw9flU';
  final double _startSeconds = 563;

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

  final String _videoId = 'V5r3T6RmfTk';
  final double _startSeconds = 297;

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

  final String _videoId = '75UUiYUx1Fo';
  final double _startSeconds = 165;

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

  final String _videoId = 'VVq2pA6dm2A';
  final double _startSeconds = 201;

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

  final String _videoId = '_GFkHA5EZdE';
  final double _startSeconds = 151;

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

  final String _videoId = 'gdgPAetNY5U';
  final double _startSeconds = 360;

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
