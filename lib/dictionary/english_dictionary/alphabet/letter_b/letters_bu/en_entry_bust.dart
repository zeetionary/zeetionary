import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybust extends StatelessWidget {
// blank divider
  EnglishEntrybust({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbust(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bust");
  }

  Future<void> speakbusts1(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I bust my camera.");
  }

  Future<void> speakbusts2(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come out, or I'll bust the door down!");
  }

  Future<void> speakbusts3(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been busted for drugs.");
  }

  Future<void> speakbusts4(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was busted for drunk driving.");
  }

  Future<void> speakbusts5(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The prime minister unveiled a big bust of the former president.");
  }

  Future<void> speakbusts6(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What is your bust measurement, Madam?");
  }

  Future<void> speakbusts7(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dress was too big in the bust.");
  }

  Future<void> speakbusts8(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Will this year be boom or bust for the property market?");
  }

  Future<void> speakbusts9(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In their latest drugs bust, police entered a warehouse where cocaine dealers were meeting.");
  }

  Future<void> speakbusts10(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As a movie it was a big bust.");
  }

  Future<void> speakbusts11(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My watch is bust.");
  }

  Future<void> speakbusts12(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More than 20 companies in the district went bust during the last three months.");
  }

  Future<void> speakbusts13(String languageCode) async {
    // DOPSUM: CHANGE speakbust
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbusts1313");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bust"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bʌst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbust("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bʌst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbust("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: پەیکەری سەرەوەی لەش، سەرباڵا، نیوەپەیکەر، سنگ، مەمک، ئەندازەی دەوری سنگ (ژن)، سەرنەکەوتن، بنکەوتن، تێشکان (یەکجاری)، نابووتی، بەرشکستی، دەس‌بەسەری، گل‌دانەوە، گرتن، مستەکۆڵە، مشت نافەرمی، تەنگژە یا قەیرانی ئابووری، شتێکی بێ‌نرخ یان ھیچەکە، شکاو، لەکارکەوتوو، خراپ‌بوو، خەوتوو، نابووت، لات‌کەوتوو، بەرشکست (کەسێ یان کۆمپانیایێ)
"""),
                          const DefinitionKurdish(text: "١. (کردار) شکاندن"),
                          SentencesRow(
                            englishText: "I bust my camera.",
                            kurdishText:
                                "کامێراکەمم شکاند.", // bust", follow LX strictly
                            onPressedBritish: () => speakbusts1("en-GB"),
                            onPressedAmerican: () => speakbusts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Come out, or I'll bust the door down!",
                            kurdishText:
                                "وەرە دەرەوە، ئەگەرنا دەرگاکە دەشکێنم.",
                            onPressedBritish: () => speakbusts2("en-GB"),
                            onPressedAmerican: () => speakbusts2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) چوونی پۆلیس لەناکاو بۆ شوێنێک بۆ گەڕان یان دەستگیرکردن"),
                          SentencesRow(
                            englishText: "He's been busted for drugs.",
                            kurdishText: "بەھۆی مادەی ھۆشبەرەوە دەستگیرکراوە.",
                            onPressedBritish: () => speakbusts3("en-GB"),
                            onPressedAmerican: () => speakbusts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He was busted for drunk driving.",
                            kurdishText:
                                "دەستبەسەرکرا بەھۆی شۆفێریکردن بە سەرخۆشی.",
                            onPressedBritish: () => speakbusts4("en-GB"),
                            onPressedAmerican: () => speakbusts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پەیکەرێک کە ڕووخسار، شانەکان، و سنگ پیشان دەدات"),
                          SentencesRow(
                            englishText:
                                "The prime minister unveiled a big bust of the former president.",
                            kurdishText:
                                "سەرۆک وەزیران پەردەی لەسەر پەیکەرێکی سەرۆکی پێشوو لادا.",
                            onPressedBritish: () => speakbusts5("en-GB"),
                            onPressedAmerican: () => speakbusts5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) سنگی ژنێک یان ئەندازەی دەوری سنگی و پشتەوەی"),
                          SentencesRow(
                            englishText:
                                "What is your bust measurement, Madam?",
                            kurdishText: "قیاسی سنگت چەندە، خاتوون؟",
                            onPressedBritish: () => speakbusts6("en-GB"),
                            onPressedAmerican: () => speakbusts6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The dress was too big in the bust.",
                            kurdishText: "جلەکە لە سنگدا زۆر گەورە بوو.",
                            onPressedBritish: () => speakbusts7("en-GB"),
                            onPressedAmerican: () => speakbusts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ماوەیەک لە قەیرانی ئابووری دژوار"),
                          SentencesRow(
                            englishText:
                                "Will this year be boom or bust for the property market?",
                            kurdishText:
                                "ئەمساڵ بژێودار یان قەیراناوی دەبێت بۆ بازاڕی خانووبەرە؟",
                            onPressedBritish: () => speakbusts8("en-GB"),
                            onPressedAmerican: () => speakbusts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ھەڵکوتانەسەری شوێنێک لەلایەن پۆلیسەوە"),
                          SentencesRow(
                            englishText:
                                "In their latest drugs bust, police entered a warehouse where cocaine dealers were meeting.",
                            kurdishText:
                                "لە تازەترین ھەڵکوتانەسەریاندا، پۆلیس چوونە کۆگایەکەوە کە فرۆشیارانی کۆکاین تێیاندا یەکیان دەدی.",
                            onPressedBritish: () => speakbusts9("en-GB"),
                            onPressedAmerican: () => speakbusts9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) شتێک کە باش نییە"),
                          SentencesRow(
                            englishText: "As a movie it was a big bust.",
                            kurdishText: "وەک فیلمێک زۆر خراپ بوو.",
                            onPressedBritish: () => speakbusts10("en-GB"),
                            onPressedAmerican: () => speakbusts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٨. (ھاوەڵناو) شکاو"),
                          SentencesRow(
                            englishText: "My watch is bust.",
                            kurdishText: "کاتژمێرەکەم شکاوە.",
                            onPressedBritish: () => speakbusts11("en-GB"),
                            onPressedAmerican: () => speakbusts11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ھاوەڵناو) مایەپووچ"),
                          SentencesRow(
                            englishText:
                                "More than 20 companies in the district went bust during the last three months.",
                            kurdishText:
                                "زیاتر لە ٢٠ کۆمپانیا مایەپووچ بوونە لە سێ مانگی ڕابردوودا.",
                            onPressedBritish: () => speakbusts12("en-GB"),
                            onPressedAmerican: () => speakbusts12("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
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
- Noun: bust (derived forms: busts)
1. The chest of a woman (= female chest)
 
2. A sculpture of the head and shoulders of a person
 
3. [informal] A complete failure (= flop [informal], fizzle, clinker [N. Amer, informal], epic fail [informal])
"the play was a dismal bust";
 
4. [informal] An occasion for excessive eating or drinking (= tear [US, informal], binge [informal], bout)
"they went on a big bust that lasted three days";

- Adjective: bust 
Usage: informal
1. Without or very short of money (= broke [informal], skint [Brit, informal], stone-broke [N. Amer, informal], stony-broke [Brit, informal], strapped [informal], cash-strapped [informal], strapped for cash [informal])
"not so long ago that he was so bust his debit card was declined";
 
2. Financially ruined (= bankrupt, belly-up [informal])
 
3. [Brit, informal] Not in working order; not functioning (= broken, busted, up the spout [informal], knackered [Brit, informal], out of order, on the blink [informal], on the fritz [N. Amer, informal], kaput [informal], rooted [Austral, NZ, informal])

- Verb: bust (derived forms: busts, busting, bust)
Usage: informal
1. Ruin completely (= break)
 
2. Search without warning, make a sudden surprise attack on (= raid)
"The police bust the crack house";
 
3. Separate or cause to separate abruptly (= tear, rupture, snap)
"bust the paper";

4. Go to pieces (= break, wear, wear out, fall apart)
 
5. Break open or apart suddenly and forcefully (= burst)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 1108;

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

  final String _videoId = 'qm9BsAzMBhU';
  final double _startSeconds = 6;

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

  final String _videoId = '7CO-gpqF7yo';
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

  final String _videoId = 'tMKXbLBgkEc';
  final double _startSeconds = 569;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 901;

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

  final String _videoId = 'm5kIv2s1E6A';
  final double _startSeconds = 123;

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

  final String _videoId = 'dzhmA92F77s';
  final double _startSeconds = 4;

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

  final String _videoId = 'XZVHmRvfDHM';
  final double _startSeconds = 14;

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

  final String _videoId = 'Mw_fzNM90a8';
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

  final String _videoId = '6sJXXDMtPZU';
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

// end WORD_WEB
