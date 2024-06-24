import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycharm extends StatelessWidget {
  // blank divider
  EnglishEntrycharm({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcharm(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("charm");
  }

  Future<void> speakcharms1(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was a man of great charm.");
  }

  Future<void> speakcharms2(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He oozes charm, but I wouldn't trust him.");
  }

  Future<void> speakcharms3(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The area is a little run-down, but that's just part of its charm.");
  }

  Future<void> speakcharms4(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The town still retains a lot of its old-world charm.");
  }

  Future<void> speakcharms5(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was unable to resist her charms.");
  }

  Future<void> speakcharms6(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Many women had succumbed to his charms.");
  }

  Future<void> speakcharms7(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He keeps a rabbit's paw as a lucky charm.");
  }

  Future<void> speakcharms8(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was charmed by her beauty and wit.");
  }

  Future<void> speakcharms9(String languageCode) async {
    // DOPSUM: CHANGE speakcharm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He charmed his mother into letting him have his own way.");
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
                            EntryTitle(word: "charm"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɑːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcharm("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɑːrm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcharm("en-US"),
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
کوردی: جوانی، دڵڕفێنی، چەلەنگی، سەرنج‌ڕاکێشی،	جادوو، نێڕەنگ، ئەفسوون، تەلەسم، دێوبەند، نووشتە، چاچۆل 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) جوانی و دڵڕفێنی"),
                          SentencesRow(
                            englishText: "He was a man of great charm.",
                            kurdishText: "پیاوێکی دڵڕفێنەر بوو.", // charm",
                            onPressedBritish: () => speakcharms1("en-GB"),
                            onPressedAmerican: () => speakcharms1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He oozes charm, but I wouldn't trust him.",
                            kurdishText:
                                "سەرنجڕاکێشی لێدەبارێت، بەڵام متمانەی پێ ناکەم.",
                            onPressedBritish: () => speakcharms2("en-GB"),
                            onPressedAmerican: () => speakcharms2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The area is a little run-down, but that's just part of its charm.",
                                    kurdishText:
                                        "ناوچەکە کەمێک شپرزەیە، بەڵام ئەوە بەشێکە لە جوانییەکەی.",
                                    onPressedBritish: () =>
                                        speakcharms3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcharms3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The town still retains a lot of its old-world charm.",
                            kurdishText:
                                "شارۆچکەکە ھێشتا ژمارەیەکی زۆر لە جوانییە کۆنەکەی پاراستووە.",
                            onPressedBritish: () => speakcharms4("en-GB"),
                            onPressedAmerican: () => speakcharms4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) تایبەتمەندییەک یان خاسیەتێک کە سەرنجڕاکێشە"),
                          SentencesRow(
                            englishText: "He was unable to resist her charms.",
                            kurdishText:
                                "نەیدەتوانی بەرگەی دڵڕفێنەرییەکەی بگرێت .",
                            onPressedBritish: () => speakcharms5("en-GB"),
                            onPressedAmerican: () => speakcharms5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Many women had succumbed to his charms.",
                            kurdishText: "زۆر ژن کەوتبوونە داوی جوانییەکەی.",
                            onPressedBritish: () => speakcharms6("en-GB"),
                            onPressedAmerican: () => speakcharms6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شتێکی بچووک کە لە ملوانکەیەک یان دەستبەندێک دەبەسترێت و باوەڕ وایە بەختھێنەرە"),
                          SentencesRow(
                            englishText:
                                "He keeps a rabbit's paw as a lucky charm.",
                            kurdishText:
                                "چنگە کەروێشکێکی پاراستووە وەک بەختھێنەرێک.",
                            onPressedBritish: () => speakcharms7("en-GB"),
                            onPressedAmerican: () => speakcharms7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دڵخۆشکردن یان سەرنجڕاکێشانی کەسێک بۆ ئەوەی وای لێ بکەیت ئەوە بکات کە دەتەوێت"),
                          SentencesRow(
                            englishText:
                                "He was charmed by her beauty and wit.",
                            kurdishText: "دڵبەستە بوو بە جوانی و داناییەکەی.",
                            onPressedBritish: () => speakcharms8("en-GB"),
                            onPressedAmerican: () => speakcharms8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He charmed his mother into letting him have his own way.",
                            kurdishText:
                                "دایکی قایلکرد کە ئەوە بکات کە خۆی دەیەوێت.",
                            onPressedBritish: () => speakcharms9("en-GB"),
                            onPressedAmerican: () => speakcharms9("en-US"),
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
- Noun: charm (derived forms: charms)
1. Attractiveness that interests, pleases or stimulates (= appeal, appealingness)
"his smile was part of his charm to her";
 
2. A verbal formula believed to have magical force (= spell, magic spell, magical spell)
"inscribed around its base is a charm in Balinese";
 
3. Something believed to bring good luck (= good luck charm)
 
4. (physics) one of the six flavours of quark, the third most massive of all quarks
 
5. A small trinket on a bracelet or necklace

- Verb: charm (derived forms: charming, charms, charmed) 
1. Cause rapt attraction or admiration; attract love (= capture, enamour [Brit, Cdn], trance, catch, becharm [archaic], enamor [US], captivate, beguile, fascinate, bewitch, entrance, enchant)
"She charmed all the men's hearts";
 
2. Control by magic spells, as by practising witchcraft (= becharm [archaic])
"He has led a charmed life (= he has been lucky even in dangerous or difficult situations).";

3. Protect through supernatural powers or charms
 
4. Induce into action by using one's charm (= influence, tempt)
"She charmed him into giving her all his money";
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

  final String _videoId = '4KkpbFKBaKA';
  final double _startSeconds = 26;

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

  final String _videoId = 'Jk7NYEhai0g';
  final double _startSeconds = 7;

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

  final String _videoId = 'QEbYo07jLoY';
  final double _startSeconds = 932;

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

  final String _videoId = '2bplCvAM2Kg';
  final double _startSeconds = 49;

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

  final String _videoId = 'BoP86oboAdI';
  final double _startSeconds = 311;

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

  final String _videoId = 'RyeTuXdfn7s';
  final double _startSeconds = 253;

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

  final String _videoId = 'fJXrvl4KjWM';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 450;

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
