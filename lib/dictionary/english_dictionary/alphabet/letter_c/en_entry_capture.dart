import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycapture extends StatelessWidget {
  // blank divider
  EnglishEntrycapture({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcapture(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("capture");
  }

  Future<void> speakcaptures1(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Allied troops captured over 300 enemy soldiers.");
  }

  Future<void> speakcaptures2(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Two of the soldiers were killed and the rest were captured.");
  }

  Future<void> speakcaptures3(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The city was captured in 1941.");
  }

  Future<void> speakcaptures4(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Google has captured 40 per cent of the digital advertising market.");
  }

  Future<void> speakcaptures5(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His story captured the attention of Hollywood.");
  }

  Future<void> speakcaptures6(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her photos capture the essence of her subjects.");
  }

  Future<void> speakcaptures7(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The photographer's camera captures images of extreme beauty.");
  }

  Future<void> speakcaptures8(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The attack was captured on film by security cameras.");
  }

  Future<void> speakcaptures9(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their first glance captured a spark that ignited into love.");
  }

  Future<void> speakcaptures10(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He evaded capture for three days.");
  }

  Future<void> speakcaptures11(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This information led to the capture of the murderer.");
  }

  Future<void> speakcaptures12(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They witnessed the capture of the city by rebel troops.");
  }

  Future<void> speakcaptures13(String languageCode) async {
    // DOPSUM: CHANGE speakcapture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was the first movie to use motion capture for its entire length.");
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
                            EntryTitle(word: "capture"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæptʃə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcapture("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæptʃər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcapture("en-US"),
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
کوردی: دیلی، گیراوی، یەخسیری، گرتن، دەس‌بەسەری، گل‌دانەوە، بنچاڤ‌کردن، داگیرکردن، گرتن، نێچیر، دەسکەوت، (فیزیک) مژین، گرتن، ھەڵچنین
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) گرتنی کەسێک یان ئاژەڵێک وەک دیل"),
                          SentencesRow(
                            englishText:
                                "Allied troops captured over 300 enemy soldiers.",
                            kurdishText:
                                "ھێزەکانی ھاوپەیمانان زیاد لە ٣٠٠ سەربازی دوژمنیان بەدیل گرت.", // capture
                            onPressedBritish: () => speakcaptures1("en-GB"),
                            onPressedAmerican: () => speakcaptures1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Two of the soldiers were killed and the rest were captured.",
                            kurdishText:
                                "دوو سەرباز کوژران و ئەوانی دیکە بەدیل گیردران.",
                            onPressedBritish: () => speakcaptures2("en-GB"),
                            onPressedAmerican: () => speakcaptures2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) کۆنترۆڵکردنی شوێنێک بە ھێز"),
                          SentencesRow(
                            englishText: "The city was captured in 1941.",
                            kurdishText: "شارەکە لە ساڵی ١٩٤١ گیردرا.",
                            onPressedBritish: () => speakcaptures3("en-GB"),
                            onPressedAmerican: () => speakcaptures3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) سەرکەوتن لە بەدەستھێنانی شتێک کە کەسانی دیکەش دەیانەوێت"),
                          SentencesRow(
                            englishText:
                                "Google has captured 40 per cent of the digital advertising market.",
                            kurdishText:
                                "گووگڵ ٤٠٪ بازاڕی ڕیکلامی دیجیتاڵی کۆنترۆڵکردووە.",
                            onPressedBritish: () => speakcaptures4("en-GB"),
                            onPressedAmerican: () => speakcaptures4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) سەرنجڕاکێشانی کەسێک بە لای شتێکدا"),
                          SentencesRow(
                            englishText:
                                "His story captured the attention of Hollywood.",
                            kurdishText: "چیرۆکەکەی سەرنجی ھۆڵیوودی ڕاکێشا.",
                            onPressedBritish: () => speakcaptures5("en-GB"),
                            onPressedAmerican: () => speakcaptures5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) سەرکەوتن لە دەربڕینی ھەستێک، کەشێک، ھتد لە وێنەیەک، نووسراوێک، فیلمێک، ھتددا"),
                          SentencesRow(
                            englishText:
                                "Her photos capture the essence of her subjects.",
                            kurdishText:
                                "وێنەکانی کرۆکی بابەتەکانی وێنا دەکەن.",
                            onPressedBritish: () => speakcaptures6("en-GB"),
                            onPressedAmerican: () => speakcaptures6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) گرتنی وێنە، فیلم، یان تۆمارێک، یان کێشانی وێنەی کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "The photographer's camera captures images of extreme beauty.",
                            kurdishText:
                                "کامێرای وێنەگرەکە وێنەی تەواو جوان دەگرێت.",
                            onPressedBritish: () => speakcaptures7("en-GB"),
                            onPressedAmerican: () => speakcaptures7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The attack was captured on film by security cameras.",
                            kurdishText:
                                "ھێرشەکە لەلایەن کامێراکانی چاودێرییەوە گیردرا.",
                            onPressedBritish: () => speakcaptures8("en-GB"),
                            onPressedAmerican: () => speakcaptures8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ڕاکێشانی دڵی کەسێک"),
                          SentencesRow(
                            englishText:
                                "Their first glance captured a spark that ignited into love.",
                            kurdishText:
                                "یەکەم نیگایان ھەستێکی دەستپێکرد کە بوو بە خۆشەویستی.",
                            onPressedBritish: () => speakcaptures9("en-GB"),
                            onPressedAmerican: () => speakcaptures9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) کردەی گرتنی کەسێک یان شتێک"),
                          SentencesRow(
                            englishText: "He evaded capture for three days.",
                            kurdishText: "بۆ سێ رۆژ خۆی گرتن پاراست.",
                            onPressedBritish: () => speakcaptures10("en-GB"),
                            onPressedAmerican: () => speakcaptures10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This information led to the capture of the murderer.",
                            kurdishText: "زانیارییەکە بوو بەھۆی گرتنی بکوژەکە.",
                            onPressedBritish: () => speakcaptures11("en-GB"),
                            onPressedAmerican: () => speakcaptures11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) کردەی گرتنی شوێنێک"),
                          SentencesRow(
                            englishText:
                                "They witnessed the capture of the city by rebel troops.",
                            kurdishText:
                                "شاھێدی گرتنی شارەکە بوون لەلایەن سەربازە یاخیبووەکانەوە.",
                            onPressedBritish: () => speakcaptures12("en-GB"),
                            onPressedAmerican: () => speakcaptures12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) کردە یان پڕۆسەی تۆمارکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "It was the first movie to use motion capture for its entire length.",
                            kurdishText:
                                "ئەوە یەکەم فیلم بوو وێنەی جوڵاو بۆ تەواوی ماوەکەی بەکاربێنێت.",
                            onPressedBritish: () => speakcaptures13("en-GB"),
                            onPressedAmerican: () => speakcaptures13("en-US"),
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
                        YoutubeEmbeddedeight(), //
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
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
- Verb: capture (derived forms: captures, capturing, captured)
1. Succeed in representing or expressing something intangible
"capture the essence of Spring"; "capture an idea"
 
2. Cause rapt attraction or admiration; attract love (= enamour [Brit, Cdn], trance, catch, becharm [archaic], enamor [US], captivate, beguile, charm, fascinate, bewitch, entrance, enchant)
"She captured all the men's hearts";
 
3. Succeed in catching or seizing, especially after a chase (= get, catch)
"We finally captured the suspect";

4. Bring about the capture of an elementary particle or celestial body and causing it to enter a new orbit
"This nucleus has captured the slow-moving neutrons"; "The star captured a comet"
 
5. Take possession of by force, as after an invasion (= appropriate, seize, conquer)
"The militia captured the castle";

6. Capture as if by hunting, snaring, or trapping (= catch)
"I captured a rabbit in the trap today";

- Noun: capture (derived forms: captures)
1. The act of forcibly dispossessing an owner of property (= gaining control, seizure)
 
2. A process whereby a star or planet holds an object in its gravitational field
 
3. Any process in which an atomic or nuclear system acquires an additional particle
 
4. The act of taking of a person by force (= seizure)
 
5. The removal of an opponent's piece from the chess board
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

  final String _videoId = 'BjSu2X5nJOs';
  final double _startSeconds = 54;

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

  final String _videoId = 'O0mLfzbmqcg';
  final double _startSeconds = 24;

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

  final String _videoId = 'zSNWg6byW5I';
  final double _startSeconds = 28;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 142;

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
  final double _startSeconds = 769;

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

  final String _videoId = 'Fa13JKGG0ds';
  final double _startSeconds = 907;

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

  final String _videoId = 'PmlRbfSavbI';
  final double _startSeconds = 172;

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

  final String _videoId = 'W8uXhQnWgj4';
  final double _startSeconds = 265;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'laGtd-b0vMY';
  final double _startSeconds = 18;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'AWwQGb5KWXM';
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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'Vg8NLipDiig';
  final double _startSeconds = 391;

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
