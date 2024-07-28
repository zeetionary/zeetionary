import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychuck extends StatelessWidget {
  // blank divider
  EnglishEntrychuck({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchuck(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chuck");
  }

  Future<void> speakchucks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He chucked the paper in a drawer.");
  }

  Future<void> speakchucks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He picked up the letter and chucked it into the bin.");
  }

  Future<void> speakchucks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You haven't chucked your job!");
  }

  Future<void> speakchucks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had a go at learning the piano, but chucked it in after a year.");
  }

  Future<void> speakchucks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Has he chucked her?");
  }

  Future<void> speakchucks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That's no good—just chuck it.");
  }

  Future<void> speakchucks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She adjusted the chuck on the screwdriver to fit the size of the screw.");
  }

  Future<void> speakchucks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's up with you, chuck?");
  }

  Future<void> speakchucks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He bought a pound of chuck to make hamburgers.");
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
                            EntryTitle(word: "chuck"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃʌk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchuck("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃʌk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchuck("en-US"),
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
کوردی: باوانەکەم، گیانەکەم، کوڕە، گیرە یان قولاپێ بۆ ڕاگرتنی مەتە لە دەزگایێ‌دا، گیرە، مەھار،	گۆشتی سەرشان یان سەردەس (وڵاخ)
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) فڕێدانی شتێک بە کەمتەرخەمانە"),
                          SentencesRow(
                            englishText: "He chucked the paper in a drawer.",
                            kurdishText:
                                "پەڕەکەی فڕێدایە چەکمەجەکەوە.", // chuck",
                            onPressedBritish: () => speakchucks1("en-GB"),
                            onPressedAmerican: () => speakchucks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He picked up the letter and chucked it into the bin.",
                            kurdishText:
                                "نامەکەی ھەڵگرتەوە و فڕێیدایە ناو زباڵەکەوە.",
                            onPressedBritish: () => speakchucks2("en-GB"),
                            onPressedAmerican: () => speakchucks2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کۆڵدان یان وازھێنان لە کردنی شتێک"),
                          SentencesRow(
                            englishText: "You haven't chucked your job!",
                            kurdishText: "وازت لە کارەکەت نەھێناوە!",
                            onPressedBritish: () => speakchucks3("en-GB"),
                            onPressedAmerican: () => speakchucks3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She had a go at learning the piano, but chucked it in after a year.",
                            kurdishText:
                                "ھەوڵێکی فێربوونی پیانۆی دا، بەڵام دوای یەک ساڵ وازی ھێنا.",
                            onPressedBritish: () => speakchucks4("en-GB"),
                            onPressedAmerican: () => speakchucks4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) جێھێشتنی کچێک یان کوڕێک کە پەیوەندیت ھەیە لەگەڵی"),
                          SentencesRow(
                            englishText: "Has he chucked her?",
                            kurdishText: "وازی لە کچەکە ھێناوە؟",
                            onPressedBritish: () => speakchucks5("en-GB"),
                            onPressedAmerican: () => speakchucks5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) فڕێدانی شتێک و وازھێنان لێی"),
                          SentencesRow(
                            englishText: "That's no good—just chuck it.",
                            kurdishText: "ھیچ باش نییە، فڕێی بدە.",
                            onPressedBritish: () => speakchucks6("en-GB"),
                            onPressedAmerican: () => speakchucks6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەشێکی ئامێرێک کە بەکاردێت بۆ ڕاگیرکردن، بۆ نموونە ئەو بەشەی درێلێک کە دەمەکەی ڕادەگرێت"),
                          SentencesRow(
                            englishText:
                                "She adjusted the chuck on the screwdriver to fit the size of the screw.",
                            kurdishText:
                                "دەمی دەڕنەفیزەکەی ڕێکخست بۆ ئەوەی ڕێک بێت لەگەڵ قەبارەی بورغووەکە.",
                            onPressedBritish: () => speakchucks7("en-GB"),
                            onPressedAmerican: () => speakchucks7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) وشەیەکی ھاوڕێیانە بۆ بانگکردنی کەسێک"),
                          SentencesRow(
                            englishText: "What's up with you, chuck?",
                            kurdishText: "حاڵت چۆنە، کوڕە؟",
                            onPressedBritish: () => speakchucks8("en-GB"),
                            onPressedAmerican: () => speakchucks8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) گۆشتی شانی مانگایەک"),
                          SentencesRow(
                            englishText:
                                "He bought a pound of chuck to make hamburgers.",
                            kurdishText:
                                "پاوەندێک سەرشانی مانگای کڕی بۆ درووستکردنی ھەمبەرگر.",
                            onPressedBritish: () => speakchucks9("en-GB"),
                            onPressedAmerican: () => speakchucks9("en-US"),
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
- Verb: chuck (derived forms: chucks, chucked, chucking)
1. Throw carelessly (= toss, huck [N. Amer, informal], sling [Brit, informal])
"chuck the ball";
 
2. Throw away (= ditch [informal])
"Chuck these old notes";
 
3. Touch or squeeze fondly or playfully (= pat)
 
4. [informal] Eject the contents of the stomach through the mouth (= vomit, vomit up, purge, sick, cat [informal], be sick, disgorge, regorge [archaic], retch, barf [informal], spew [informal], spue [archaic], upchuck [N. Amer, informal], honk [Brit, informal], regurgitate, throw up, vom [informal], keck [informal], hurl [informal], chuck up [Brit, informal], chunder [Brit, informal], boke [UK, dialect], boak [UK, dialect])
"After drinking too much, the students chucked";
 
5. [Brit, informal] Sever all ties with, usually unceremoniously or irresponsibly (= dump [informal], ditch [informal])
 
6. [Brit, informal] Rain heavily (= pour, pelt, rain cats and dogs [informal], rain buckets [informal], belt down [informal], pelt down [informal], tip [Brit, informal], chuck it down [Brit, informal], bucket [Brit, informal], teem [informal])
"Put on your rain coat-- it's chucking it down outside!";

- Noun: chuck (derived forms: chucks)
1. [N. Amer, informal] The food and drink that are regularly served or consumed (= fare, chow [informal], eats [informal], grub [informal])
 
2. The part of a forequarter from the neck to the ribs and including the shoulder blade (= chuck steak)
 
3. A holding device consisting of adjustable jaws that centre a workpiece in a lathe or centre a tool in a drill
 
4. [Brit, informal] The termination of someone's employment (leaving them free to depart) (= dismissal, dismission, discharge, firing, liberation, release, sack, sacking, heave-ho [informal], the axe [informal], severance, the boot [informal], the chop [Brit, informal])
 
5. [UK, dialect] A friend or close acquaintance
"Are you alright, chuck?"
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

  final String _videoId = '_KfaSiD-7iY';
  final double _startSeconds = 39;

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

  final String _videoId = '-CJ4eUhE3Lw';
  final double _startSeconds = 798;

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

  final String _videoId = '5mZovjRlkWs';
  final double _startSeconds = 53;

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

  final String _videoId = 'd1oB1CLAsXI';
  final double _startSeconds = 710;

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

  final String _videoId = '53ivEr2Sd44';
  final double _startSeconds = 791;

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

  final String _videoId = '6Pwzh2JOFw4';
  final double _startSeconds = 25;

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

  final String _videoId = 'GpzicRUqHog';
  final double _startSeconds = 439;

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

  final String _videoId = 'tkLZYEIslWM';
  final double _startSeconds = 409;

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
