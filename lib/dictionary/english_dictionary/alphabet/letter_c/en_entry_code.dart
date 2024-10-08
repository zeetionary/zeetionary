import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycode extends StatelessWidget {
  EnglishEntrycode({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcode(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("code");
  }

  Future<void> speakcodes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's written in code.");
  }

  Future<void> speakcodes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In the event of the machine not operating correctly, an error code will appear.");
  }

  Future<void> speakcodes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The code was difficult to crack.");
  }

  Future<void> speakcodes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are three codes for London.");
  }

  Future<void> speakcodes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bill wrote the computer code for the project.");
  }

  Future<void> speakcodes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You only need to add a few lines of code.");
  }

  Future<void> speakcodes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She lives by her own moral code.");
  }

  Future<void> speakcodes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The school enforces a strict code of conduct.");
  }

  Future<void> speakcodes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The law includes amendments to the penal code.");
  }

  Future<void> speakcodes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Each order is coded separately.");
  }

  Future<void> speakcodes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Each story was coded into one of 31 categories for domestic news, while foreign news was separately coded by country.");
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
                            EntryTitle(word: "code"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcode("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcode("en-US"),
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
کوردی: کۆد، یاسا و ڕێسا،	ڕێ‌وشوێن، نەریت، دەستوور، عورف،	ھێما، ڕەمز، نیشانە،	قانوون، زاگۆن، زاکوون، یاسا،	(تەلەفون) کۆد،	(کۆمپیوتەر) بەرنامە، دەستوورەکان، کۆمەڵە دەستوور
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) سیستەمێک لە وشە، پیت، ژمارە، یان سمبول کە ئاماژەن بە پەیامێک یان زانیاری تۆمار دەکەن بە شێوەی نھێنی بە کورتی"),
                          SentencesRow(
                            englishText: "It's written in code.",
                            kurdishText: "بە کۆد نووسراوە.",
                            onPressedBritish: () => speakcodes1("en-GB"),
                            onPressedAmerican: () => speakcodes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In the event of the machine not operating correctly, an error code will appear.",
                            kurdishText:
                                "لە حاڵەتی ئەوەی ئامێرەکە بەباشی کار نەکات کۆدێکی نادرووستی دەردەکەوێت.",
                            onPressedBritish: () => speakcodes2("en-GB"),
                            onPressedAmerican: () => speakcodes2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The code was difficult to crack.",
                            kurdishText: "کۆدەکە سەخت بوو بشکێندرێت.",
                            onPressedBritish: () => speakcodes3("en-GB"),
                            onPressedAmerican: () => speakcodes3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کۆدی پەیوەندی کە بۆ شارۆچکەیەک، ناوچەیەک، یان وڵاتێکی دیاریکراو بەکاردێت لە پێش ژمارەی پەیوەندییەوە"),
                          SentencesRow(
                            englishText: "There are three codes for London.",
                            kurdishText: "سێ کۆد بۆ لەندەن ھەیە.",
                            onPressedBritish: () => speakcodes4("en-GB"),
                            onPressedAmerican: () => speakcodes4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) سیستەمێک لە ڕێنمایی پڕۆگرامی کۆمپیوتەر"),
                          SentencesRow(
                            englishText:
                                "Bill wrote the computer code for the project.",
                            kurdishText:
                                "بیڵ کۆدێکی کۆمپیوتەری نووسی بۆ پڕۆژەکە.",
                            onPressedBritish: () => speakcodes5("en-GB"),
                            onPressedAmerican: () => speakcodes5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You only need to add a few lines of code.",
                            kurdishText:
                                "پێویستە تەنھا چەند دێڕێکی کۆد بنووسیت.",
                            onPressedBritish: () => speakcodes6("en-GB"),
                            onPressedAmerican: () => speakcodes6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کۆمەڵێک ڕێسا و یاسا کە پەسەندکراوە لە کاتی ڕەفتارکردن و ھەڵسوکەوتدا"),
                          SentencesRow(
                            englishText: "She lives by her own moral code.",
                            kurdishText: "بە ڕێسای ئەخلاقی خۆی دەژی.",
                            onPressedBritish: () => speakcodes7("en-GB"),
                            onPressedAmerican: () => speakcodes7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The school enforces a strict code of conduct.",
                            kurdishText:
                                "قوتابخانەکە ڕێسا و یاسای ڕێسا و یاسای توند پەیڕەو دەکات.",
                            onPressedBritish: () => speakcodes8("en-GB"),
                            onPressedAmerican: () => speakcodes8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) سیستەمێکی یاسا و پەیڕەوی نووسراو کە دیاری دەکات کە ھەڵسوکەوتی پەسەندکراو لە دامەزراوەیەک یان وڵاتێک دیاری دەکات"),
                          SentencesRow(
                            englishText:
                                "The law includes amendments to the penal code.",
                            kurdishText:
                                "یاساکە ھەمواری تێدا دەبێت بۆ یاسای سزادان.",
                            onPressedBritish: () => speakcodes9("en-GB"),
                            onPressedAmerican: () => speakcodes9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دیاریکردنی شتێک، بۆ نموونە بە پیت، ژمارە، ناو، یان ڕەنگ بۆ ئەوەی بزانیت چییە"),
                          SentencesRow(
                            englishText: "Each order is coded separately.",
                            kurdishText: "ھەر بڕیارێک بە جیایی کۆدکراوە.",
                            onPressedBritish: () => speakcodes10("en-GB"),
                            onPressedAmerican: () => speakcodes10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Each story was coded into one of 31 categories for domestic news, while foreign news was separately coded by country.",
                            kurdishText:
                                "ھەر بابەتێک کۆد کرا بە ٣١ بەشەوە بۆ ھەواڵی ناوخۆیی، لە کاتێکدا ھەواڵی دەرەکی بە جیایی بەپێی وڵات کۆدیان پێدرا.",
                            onPressedBritish: () => speakcodes11("en-GB"),
                            onPressedAmerican: () => speakcodes11("en-US"),
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

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: code (derived forms: codes)
1. A set of rules, principles or laws (especially written ones) (= codification)
 
2. A coding system used for transmitting messages requiring brevity or secrecy
 
3. (computing) the symbolic arrangement of data or instructions in a computer program or the set of such instructions (= computer code)

- Verb: code (derived forms: coding, coded, codes)
1. Attach a code to
"Code the pieces with numbers so that you can identify them later"
 
2. Convert ordinary language into code (= encipher, cipher, cypher, encrypt, inscribe, write in code)
 
3. Create code, write a computer program (= write)
"She writes code faster than anybody else";
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

  final String _videoId = 'cjLooycOwVc';
  final double _startSeconds = 180;

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

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 59;

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

  final String _videoId = 'PL1j8UQJ2Qg';
  final double _startSeconds = 12;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 556;

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

  final String _videoId = 'rsaLUIeurZ8';
  final double _startSeconds = 465;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1039;

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

  final String _videoId = 'W331IxYkKJc';
  final double _startSeconds = 21;

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