import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychoke extends StatelessWidget {
  // blank divider
  EnglishEntrychoke({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchoke(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("choke");
  }

  Future<void> speakchokes1(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She almost choked to death in the thick fumes.");
  }

  Future<void> speakchokes2(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was choking on a piece of toast.");
  }

  Future<void> speakchokes3(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Very small toys can choke a baby.");
  }

  Future<void> speakchokes4(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fumes from the burning tyres made her choke.");
  }

  Future<void> speakchokes5(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He may have been choked or poisoned.");
  }

  Future<void> speakchokes6(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had been choked to death in her room.");
  }

  Future<void> speakchokes7(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His voice was choking with rage.");
  }

  Future<void> speakchokes8(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The roads are choked up with traffic.");
  }

  Future<void> speakchokes9(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pond was choked with rotten leaves.");
  }

  Future<void> speakchokes10(String languageCode) async {
    // DOPSUM: CHANGE speakchoke
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were the only team not to choke at the big moment.");
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
                            EntryTitle(word: "choke"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃəʊk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchoke("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃəʊk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchoke("en-US"),
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
کوردی: خنکان، تاسەنە، خنکاندن، پشوولێ‌بڕین،	گیران، بەستران، داخران،	ساسات
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) نەبوونی توانای ھەناسەدان بەھۆی ئەوەی ڕێچکەی ھەوات گیراوە یان ناتوانی ھەناسەی پێویست ھەڵبمژیت"),
                          SentencesRow(
                            englishText:
                                "She almost choked to death in the thick fumes.",
                            kurdishText:
                                "لە تەمە دژوارەکەدا خەریک بوو بخنکێت.", // choke",
                            onPressedBritish: () => speakchokes1("en-GB"),
                            onPressedAmerican: () => speakchokes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He was choking on a piece of toast.",
                            kurdishText: "پارچەیەک پەڕییە قوڕگی.",
                            onPressedBritish: () => speakchokes2("en-GB"),
                            onPressedAmerican: () => speakchokes2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Very small toys can choke a baby.",
                                    kurdishText:
                                        "یاریی منداڵانی زۆر بچووک دەکرێت قوڕگی منداڵ بگرن.",
                                    onPressedBritish: () =>
                                        speakchokes3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchokes3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The fumes from the burning tyres made her choke.",
                            kurdishText:
                                "دووکەڵی تایە سووتاوەکان تەنگەنەفەسی کرد.",
                            onPressedBritish: () => speakchokes4("en-GB"),
                            onPressedAmerican: () => speakchokes4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) خنکاندنی کەسێک بە دەستخستنە ملی"),
                          SentencesRow(
                            englishText: "He may have been choked or poisoned.",
                            kurdishText:
                                "لەوانەیە خنکێندرابێت یان ژەھرخوارد کرابێت.",
                            onPressedBritish: () => speakchokes5("en-GB"),
                            onPressedAmerican: () => speakchokes5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She had been choked to death in her room.",
                            kurdishText: "لە ژوورەکەیدا خنکێندرابوو.",
                            onPressedBritish: () => speakchokes6("en-GB"),
                            onPressedAmerican: () => speakchokes6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) بێ توانابوون لەوەی بە ئاسایی قسە بکەیت بەھۆی ھەستی زۆرەوە"),
                          SentencesRow(
                            englishText: "His voice was choking with rage.",
                            kurdishText: "دەنگی لە تووڕەییدا دەلەرزی.",
                            onPressedBritish: () => speakchokes7("en-GB"),
                            onPressedAmerican: () => speakchokes7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گرتنی ڕێچکەیەک، ڕێگایەک، شوێنێک، ھتد بەشێوەیەک کە جوڵان تێیدا ئاستەنگ بێت"),
                          SentencesRow(
                            englishText:
                                "The roads are choked up with traffic.",
                            kurdishText: "ڕێگاکان بە زۆری ھاتووچۆ گیراون.",
                            onPressedBritish: () => speakchokes8("en-GB"),
                            onPressedAmerican: () => speakchokes8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The pond was choked with rotten leaves.",
                            kurdishText: "زۆنگاوەکە بە گەڵا گیرابوو.",
                            onPressedBritish: () => speakchokes9("en-GB"),
                            onPressedAmerican: () => speakchokes9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) شکستھێنان لە شتێک، بۆ نموونە بەھۆی ئەوەی شڵەژاوی"),
                          SentencesRow(
                            englishText:
                                "We were the only team not to choke at the big moment.",
                            kurdishText:
                                "تەنھا تیم بووین لە ساتەوەختە گەورەکەدا شکست نەھێنین.",
                            onPressedBritish: () => speakchokes10("en-GB"),
                            onPressedAmerican: () => speakchokes10("en-US"),
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
- Verb: choke (derived forms: choked, choking, chokes)
1. Breathe with great difficulty, as when experiencing a strong emotion
"She choked with emotion when she spoke about her deceased husband"
 
2. Be too tight; rub or press (= gag, fret)
"This neckband is choking the cat";
 
3. Wring the neck of (= scrag [N. Amer, informal])
"The man choked his opponent";
 
4. Constrict (someone's) throat and keep from breathing (= strangle)
 
5. Struggle for breath; have insufficient oxygen intake (= gag, strangle, suffocate)
"he swallowed a fishbone and choked";
 
6. Fail to perform adequately due to tension or agitation
"The team should have won hands down but choked, disappointing the coach and the audience"
 
7. Check or slow down the action or effect of
"She choked her anger"
 
8. Become or cause to become obstructed (= clog, choke off, clog up, back up, congest, foul)
"The leaves choke off our drains in the Fall";
 
9. Impair the respiration of or obstruct the air passage of (= suffocate, stifle, asphyxiate)
"The foul air was slowly choking the children";
 
10. Become stultified, suppressed, or stifled (= suffocate)
"He is choking--living at home with his aged parents in the small village";
 
11. Suppress the development, creativity, or imagination of (= suffocate)
"His job choked him";
 
12. Reduce the air supply (= throttle)
"choke a carburettor";
 
13. Cause to retch or choke (= gag)
 
14. Cease to live; lose all bodily attributes and functions necessary to sustain life (= die, decease [archaic], perish, go, exit, pass away, expire, pass, kick the bucket [informal], cash in one's chips [informal], buy the farm [N. Amer, informal], conk [informal], give-up the ghost [informal], drop dead, pop off [informal], croak [informal], snuff it [informal], flatline [informal], cop it [Brit, informal], cash in [informal], pop one's clogs [informal])

- Noun: choke (derived forms: chokes)
1. A coil of low resistance and high inductance used in electrical circuits to pass direct current and attenuate alternating current (= choke coil, choking coil)
 
2. A valve that controls the flow of air into the carburettor of a petrol engine
 
3. A narrowing at the end of a shotgun barrel used to restrict the spread of the shot
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

  final String _videoId = 'bnJAl_V9oI0';
  final double _startSeconds = 11;

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

  final String _videoId = 'v2Rzhr1OtN4';
  final double _startSeconds = 0;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '4BTiXcMHdXM';
  final double _startSeconds = 0;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '0H5IBSFgYJE';
  final double _startSeconds = 0;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'TKoCWh2yneM';
  final double _startSeconds = 1061;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'T48_SrFCdaQ';
  final double _startSeconds = 88;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '1j_k5WCFShQ';
  final double _startSeconds = 795;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'XwNUBD6VUrU';
  final double _startSeconds = 236;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
