import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclutch extends StatelessWidget {
  // blank divider
  EnglishEntryclutch({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclutch(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clutch");
  }

  Future<void> speakclutchs1(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He clutched the child to him.");
  }

  Future<void> speakclutchs2(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She stood there, the flowers still clutched in her hand.");
  }

  Future<void> speakclutchs3(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She clutched her handbag tightly in one hand.");
  }

  Future<void> speakclutchs4(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He collapsed, clutching his stomach.");
  }

  Future<void> speakclutchs5(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put your foot on the clutch.");
  }

  Future<void> speakclutchs6(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Put it into first gear and let the clutch out slowly.");
  }

  Future<void> speakclutchs7(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car needs a new clutch.");
  }

  Future<void> speakclutchs8(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's won a whole clutch of awards.");
  }

  Future<void> speakclutchs9(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He managed to escape from their clutches.");
  }

  Future<void> speakclutchs10(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She fell into the clutches of the rebel forces.");
  }

  Future<void> speakclutchs11(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She felt the sudden clutch of fear.");
  }

  Future<void> speakclutchs12(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The female lays a clutch of about seven eggs, laying one egg each day.");
  }

  Future<void> speakclutchs13(String languageCode) async {
    // DOPSUM: CHANGE speakclutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Miami succeeds in clutch situations better than any other team.");
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
                            EntryTitle(word: "clutch"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klʌtʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclutch("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klʌtʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclutch("en-US"),
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
کوردی: گرتن، دەس یان چنگ لێ‌گیرکردن، گیرخستن، بەرنەدان،	چنگ،	باوەش، حمێز، ئامێز،	کڵاچ، پێدالی کڵاچ (ئۆتۆمبێل)، دەس‌بەسەراگرتن، کۆنتڕۆڵ، مەھار، ھێز، دەسەڵات، جووچکە پێکەوەبووەکان، جووچکە پێکەوە سەرجووقاندووەکان،	ڕاوکە، ڕامکە،	دەستە، کۆمەڵە، کۆما، لۆدە، کۆگا، ڕان، مێگەڵ، ڕەوە
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) گرتنی کەسێک/شتێک بە توندی"),
                          SentencesRow(
                            englishText: "He clutched the child to him.",
                            kurdishText: "منداڵەکەی توند گرتبوو.", // clutch",
                            onPressedBritish: () => speakclutchs1("en-GB"),
                            onPressedAmerican: () => speakclutchs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She stood there, the flowers still clutched in her hand.",
                            kurdishText:
                                "لەوێ وەستابوو، و گوڵەکان ھێشتا لەناو دەستی بوون.",
                            onPressedBritish: () => speakclutchs2("en-GB"),
                            onPressedAmerican: () => speakclutchs2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She clutched her handbag tightly in one hand.",
                            kurdishText:
                                "جانتا دەستییەکەی توند گرتبوو بە دەستییەوە.",
                            onPressedBritish: () => speakclutchs3("en-GB"),
                            onPressedAmerican: () => speakclutchs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) گرتنی شتێک لەناکاو، بەتایبەتی بەھۆی ئەوەی دەترسیت یان لە ئازاردایت"),
                          SentencesRow(
                            englishText: "He collapsed, clutching his stomach.",
                            kurdishText: "کەوت و گەدەی گرتبوو.",
                            onPressedBritish: () => speakclutchs4("en-GB"),
                            onPressedAmerican: () => speakclutchs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کلاچی ئۆتۆمبێل کە بەکاردێت لە کاتی گێڕ گۆڕیندا"),
                          SentencesRow(
                            englishText: "Put your foot on the clutch.",
                            kurdishText: "پێت بخە سەر کلاچەکە.",
                            onPressedBritish: () => speakclutchs5("en-GB"),
                            onPressedAmerican: () => speakclutchs5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Put it into first gear and let the clutch out slowly.",
                            kurdishText:
                                "بیخە گێڕی یەک و بەھێواشی کلاچەکە بەربدە.",
                            onPressedBritish: () => speakclutchs6("en-GB"),
                            onPressedAmerican: () => speakclutchs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دەزگایەک لە ئامێرێکدا کە بەشەکان پێکەوە دەبەستێت و جیادەکاتەوە"),
                          SentencesRow(
                            englishText: "The car needs a new clutch.",
                            kurdishText: "کلاچی ئۆتۆمبێلەکە پێویستی بە گۆڕینە.",
                            onPressedBritish: () => speakclutchs7("en-GB"),
                            onPressedAmerican: () => speakclutchs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) ژمارەیەک لە خەڵک، ئاژەڵ، یان شت"),
                          SentencesRow(
                            englishText: "He's won a whole clutch of awards.",
                            kurdishText: "دەستەیەک خەڵاتی بردووەتەوە.",
                            onPressedBritish: () => speakclutchs8("en-GB"),
                            onPressedAmerican: () => speakclutchs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) ھێز و دەسەڵات"),
                          SentencesRow(
                            englishText:
                                "He managed to escape from their clutches.",
                            kurdishText: "توانی لە کۆنترۆڵیان ھەڵبێت.",
                            onPressedBritish: () => speakclutchs9("en-GB"),
                            onPressedAmerican: () => speakclutchs9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She fell into the clutches of the rebel forces.",
                            kurdishText: "کەوتە ژێر چنگی ھێزە یاخییەکان.",
                            onPressedBritish: () => speakclutchs10("en-GB"),
                            onPressedAmerican: () => speakclutchs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) گرتنی توندی شتێک"),
                          SentencesRow(
                            englishText: "She felt the sudden clutch of fear.",
                            kurdishText: "ھەستی بە تارمایی لەناکاوی ترس کرد.",
                            onPressedBritish: () => speakclutchs11("en-GB"),
                            onPressedAmerican: () => speakclutchs11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ژمارەیەک ھێلکە کە باڵندەیەک لە یەک کاتدا دەیانکات"),
                          SentencesRow(
                            englishText:
                                "The female lays a clutch of about seven eggs, laying one egg each day.",
                            kurdishText:
                                "مێینەکە حەوت ھێلکە بەنزیکەیی دەکات، یەک ھێلکە بۆ ھەر ڕۆژێک.",
                            onPressedBritish: () => speakclutchs12("en-GB"),
                            onPressedAmerican: () => speakclutchs12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) کردنی شتێک کە سەختە یان پێویستە"),
                          SentencesRow(
                            englishText:
                                "Miami succeeds in clutch situations better than any other team.",
                            kurdishText:
                                "میامی سەردەکەوێت لە دۆخە ھەستیارەکاندا باشتر لە ھەر تیمێکی دیکە.",
                            onPressedBritish: () => speakclutchs13("en-GB"),
                            onPressedAmerican: () => speakclutchs13("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
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
- Verb: clutch (derived forms: clutched, clutching, clutches)
1. Take hold of; grab (= seize, prehend [archaic])
"She clutched her purse";
 
2. Hold firmly, usually with one's hands (= cling to, hold close, hold tight)
"She clutched my arm when she got scared";
 
3. Affect (= seize, get hold of)
"Fear clutched the prisoners";

- Noun: clutch (derived forms: clutches)
1. A coupling that connects or disconnects driving and driven parts of a driving mechanism
"this year's model has an improved clutch"
 
2. A pedal or lever that engages or disengages a rotating shaft and a driving mechanism (= clutch pedal)
"he smoothly released the clutch with one foot and stepped on the gas with the other";
 
3. The act of grasping (= clasp, clench, clutches, grasp, grip, hold)
"he released his clutch on my arm";
 
4. A tense critical situation
"he is a good man in the clutch"
 
5. A number of birds hatched at the same time
 
6. A collection of things or persons to be handled together (= batch)
 
7. [N. Amer] A woman's strapless purse that is carried in the hand (= clutch bag)
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

  final String _videoId = 'KoPFuUXGA04';
  final double _startSeconds = 5;

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

  final String _videoId = 'O4WfpAu7aGQ';
  final double _startSeconds = 95;

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

  final String _videoId = 'gygJWx82QTU';
  final double _startSeconds = 58;

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

  final String _videoId = 'P3E8IYt9a5Y';
  final double _startSeconds = 7;

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

  final String _videoId = 'XKqWnOtbSr8';
  final double _startSeconds = 528;

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

  final String _videoId = '-7bIDbaU_zQ';
  final double _startSeconds = 427;

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

  final String _videoId = 'fn--IVarumw';
  final double _startSeconds = 518;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'WoNAt9bQZtY';
  final double _startSeconds = 64;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'C1oxhniG_Fc';
  final double _startSeconds = 962;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'Bc8Yj9J8MQs';
  final double _startSeconds = 464;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'Ep6-bNu16_I';
  final double _startSeconds = 411;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'QcWELyTbdP4';
  final double _startSeconds = 0; // 411;

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