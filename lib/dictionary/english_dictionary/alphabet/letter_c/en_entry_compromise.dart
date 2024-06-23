import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompromise extends StatelessWidget {
// blank divider
  EnglishEntrycompromise({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompromise(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("compromise");
  }

  Future<void> speakcompromises1(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After lengthy talks the two sides finally reached a compromise.");
  }

  Future<void> speakcompromises2(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("In any relationship, you have to make compromises.");
  }

  Future<void> speakcompromises3(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This model represents the best compromise between price and quality.");
  }

  Future<void> speakcompromises4(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a fair compromise between the two sides.");
  }

  Future<void> speakcompromises5(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There is no prospect of compromise in sight.");
  }

  Future<void> speakcompromises6(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Compromise is an inevitable part of life.");
  }

  Future<void> speakcompromises7(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Neither side is prepared to compromise.");
  }

  Future<void> speakcompromises8(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were unwilling to compromise with the terrorists.");
  }

  Future<void> speakcompromises9(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I refuse to compromise my principles.");
  }

  Future<void> speakcompromises10(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If we back down on this issue, our reputation will be compromised.");
  }

  Future<void> speakcompromises11(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had already compromised herself by accepting his invitation.");
  }

  Future<void> speakcompromises12(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The affair seriously compromised the party's prospects of electoral success.");
  }

  Future<void> speakcompromises13(String languageCode) async {
    // DOPSUM: CHANGE speakcompromise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Users perform tasks every day that can compromise the security of their computers.");
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
                            EntryTitle(word: "compromise"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmprəmaɪz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompromise("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːmprəmaɪz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompromise("en-US"),
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
کوردی: ڕێک‌کەوتن، سازان، پێکھاتن، ھاوکۆکی، تەبایی، ئاشتی، نێو(ان)گیری
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) سازان؛ ڕێککەوتنێک کە تێیدا دوو لایەن ئامادە دەبن دەستبەرداری ھەندێک داواکاری ببن بۆ ئەوەی لە کۆتاییدا بگەن بە ڕیکەوتنێک بە دڵی ھەردوولا"),
                          SentencesRow(
                            englishText:
                                "After lengthy talks the two sides finally reached a compromise.",
                            kurdishText:
                                "لە دوای گفروگۆی دوور و درێژ دوو لایەنەکە گەشتن بە سازان.", // compromise",
                            onPressedBritish: () => speakcompromises1("en-GB"),
                            onPressedAmerican: () => speakcompromises1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In any relationship, you have to make compromises.",
                            kurdishText:
                                "لە ھەر ڕێککەوتنێکدا دەبێت بگەیت بە سازان.",
                            onPressedBritish: () => speakcompromises2("en-GB"),
                            onPressedAmerican: () => speakcompromises2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) چارەسەری کێشەیەک کە تێدا دوو شت یان زیاتر پێکەوە ناتوانن ھەبن بەو شێوەیەی ھەن، بۆیە کەمێک دەگۆڕدرێن بۆ ئەوەی پێکەوە ھەبن"),
                          SentencesRow(
                            englishText:
                                "This model represents the best compromise between price and quality.",
                            kurdishText:
                                "ئەم نموونە باشترین نێوانگیرییە لە نێوان نرخ و کوالێتیدا.",
                            onPressedBritish: () => speakcompromises3("en-GB"),
                            onPressedAmerican: () => speakcompromises3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It was a fair compromise between the two sides.",
                            kurdishText:
                                "نێوانگیرییەکی باش بوو لە نێوان دوو لایەنەکەدا.",
                            onPressedBritish: () => speakcompromises4("en-GB"),
                            onPressedAmerican: () => speakcompromises4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) کرداری گەشتن بە سازان"),
                          SentencesRow(
                            englishText:
                                "There is no prospect of compromise in sight.",
                            kurdishText: "ھیچ ھیوایەکی سازان لەبەرچاو نییە.",
                            onPressedBritish: () => speakcompromises5("en-GB"),
                            onPressedAmerican: () => speakcompromises5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Compromise is an inevitable part of life.",
                            kurdishText: "سازان بەشێکی دانەبڕاوی ژیانە.",
                            onPressedBritish: () => speakcompromises6("en-GB"),
                            onPressedAmerican: () => speakcompromises6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) گەشتن بە سازان"),
                          SentencesRow(
                            englishText:
                                "Neither side is prepared to compromise.",
                            kurdishText: "ھیچ لایەنێک ئامادە نییە بۆ سازان.",
                            onPressedBritish: () => speakcompromises7("en-GB"),
                            onPressedAmerican: () => speakcompromises7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They were unwilling to compromise with the terrorists.",
                            kurdishText:
                                "ئامادە نەبوون بسازێن لەگەڵ تیرۆریستان.",
                            onPressedBritish: () => speakcompromises8("en-GB"),
                            onPressedAmerican: () => speakcompromises8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) کردنی شتێک کە دژ بەوەیە کە بڕوات پێی ھەیە"),
                          SentencesRow(
                            englishText:
                                "I refuse to compromise my principles.",
                            kurdishText:
                                "ڕەتیدەکەمەوە دەستبەرداری بنچینەکانم بم.",
                            onPressedBritish: () => speakcompromises9("en-GB"),
                            onPressedAmerican: () => speakcompromises9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If we back down on this issue, our reputation will be compromised.",
                            kurdishText:
                                "ئەگەر لەم بابەتە پاشگەزبینەوە، ناوبانگمان لەکەدار دەبێت.",
                            onPressedBritish: () => speakcompromises10("en-GB"),
                            onPressedAmerican: () =>
                                speakcompromises10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ھێنانی گومان یان مەترسی بۆ سەر خۆت/کەسێک/شتێک، بە تایبەتی بە ڕەفتارکردن بە شێوەیەک کە درووست نییە"),
                          SentencesRow(
                            englishText:
                                "She had already compromised herself by accepting his invitation.",
                            kurdishText:
                                "پێشوەختە خۆی لەکەدار کردبوو بە پەسەندکردنی بانگھێشتەکەی.",
                            onPressedBritish: () => speakcompromises11("en-GB"),
                            onPressedAmerican: () =>
                                speakcompromises11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The affair seriously compromised the party's prospects of electoral success.",
                            kurdishText:
                                "بابەتەکە بە سەختی ھیواکانی پارتەکەی بۆ سەرکەوتن لە ھەڵبژاردندا لاوازکرد.",
                            onPressedBritish: () => speakcompromises12("en-GB"),
                            onPressedAmerican: () =>
                                speakcompromises12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) خستنە مەترسی"),
                          SentencesRow(
                            englishText:
                                "Users perform tasks every day that can compromise the security of their computers.",
                            kurdishText:
                                "بەکارھێنەران ھەموو ڕۆژێک ئەرکێک ئەنجام دەدەن کە دەکرێت سەلامەتی کۆمپیوتەرەکانیان بخاتە مەترسییەوە.",
                            onPressedBritish: () => speakcompromises13("en-GB"),
                            onPressedAmerican: () =>
                                speakcompromises13("en-US"),
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
- Verb: compromise (derived forms: compromised, compromising, compromises)
1. Make an accommodation in which both sides make concessions
"nobody will get everything he wants; we all must compromise"
 
2. Decide on a middle way between extremes or a balance between otherwise conflicting choices; settle for less than optimal
"we won't compromise on safety";"
 
3. Expose or make liable to danger, suspicion, or disrepute
"The nuclear secrets of the state were compromised by the spy"

- Noun: compromise (derived forms: compromises)
1. A middle way between two extremes (= via media [formal], halfway house [Brit, informal])
 
2. An accommodation in which both sides make concessions (= halfway house [Brit, informal])
"the newly elected congressmen rejected a compromise because they considered it 'business as usual'";
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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 312;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'zZM57oTu9Ng';
  final double _startSeconds = 112;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'FSHITL5oedk';
  final double _startSeconds = 915;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'oB-UjvNwpic';
  final double _startSeconds = 118;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'vS1NF56-1Dc';
  final double _startSeconds = 371;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'tUR9UIscLGU';
  final double _startSeconds = 1027;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 708;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB