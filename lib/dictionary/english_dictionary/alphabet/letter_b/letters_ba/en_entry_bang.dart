import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bang" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bang - replace EnglishEntrybang

// replace speakBang - /bæŋ/

enum TtsState { playing }

class EnglishEntrybang extends StatelessWidget {
// blank divider
  EnglishEntrybang({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbang(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bang");
  }

  Future<void> speakbangs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The baby was banging the table with his spoon.");
  }

  Future<void> speakbangs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She banged the door shut.");
  }

  Future<void> speakbangs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He kept banging his chair against the wall.");
  }

  Future<void> speakbangs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She tripped and banged her knee on the desk.");
  }

  Future<void> speakbangs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had banged a ton of guys by the time she was 25.");
  }

  Future<void> speakbangs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door swung shut with a bang.");
  }

  Future<void> speakbangs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think she must have got a bang on the head.");
  }

  Future<void> speakbangs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She blew her bangs out of her face.");
  }

  Future<void> speakbangs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My estimate was bang on target.");
  }

  Future<void> speakbangs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "'Bang! Bang! You're dead!' said the child, pointing a plastic gun at me.");
  }

  Future<void> speakbangs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBangs1111");
  }

  Future<void> speakbangs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBangs1212");
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
                            EntryTitle(
                                word: "bang"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bæŋ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbang("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bæŋ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbang("en-US"),
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
کوردی: (دەنگ) تەق، تەق‌تەق، شەق، زرمە، بەنگ، دەنگ، دەنگی تەقینەوە، بەمب، بزووتنەوەی کت‌وپڕ، لێدان، (شێوازێکی قژ) پەرچەم، (کۆمپیوتەر) نیشانەی (!)، بەتەواوەتی، ورد، بەوردی، دروست، کیوکیو (دەنگی تەقینی گوللە)
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) لێدان لە شتێک بەشێوەیەک کە دەنگێکی بەرز درووست بکات"""),
                          SentencesRow(
                            englishText:
                                "The baby was banging the table with his spoon.",
                            kurdishText:
                                "منداڵەکە بە کەوچکەکەی زرمەی ھەڵساندبوو لە مێزەکە.",
                            onPressedBritish: () => speakbangs1("en-GB"),
                            onPressedAmerican: () => speakbangs1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) گرتنی شتێک بە دەنگێکی بەرزەوە"""),
                          SentencesRow(
                            englishText: "She banged the door shut.",
                            kurdishText: "دەرگاکەی بەتوندی قەپاتکرد.",
                            onPressedBritish: () => speakbangs2("en-GB"),
                            onPressedAmerican: () => speakbangs2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) دانانی شتێک لە شوێنێک بە توندی و لەناکاو"""),
                          SentencesRow(
                            englishText:
                                "He kept banging his chair against the wall.",
                            kurdishText:
                                "بەردەوام بوو لە کێشانی کورسییەکە بە دیوارەکەدا.",
                            onPressedBritish: () => speakbangs3("en-GB"),
                            onPressedAmerican: () => speakbangs3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) کێشانی شتێک، زۆرجار ئەندامێکی جەستە، بە شتێکدا"""),
                          SentencesRow(
                            englishText:
                                "She tripped and banged her knee on the desk.",
                            kurdishText: "پێی ھەڵکەوت و چۆکی کێشا بە مێزەکەدا.",
                            onPressedBritish: () => speakbangs4("en-GB"),
                            onPressedAmerican: () => speakbangs4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) کردنی سێکس لەگەڵ کەسێک"""),
                          SentencesRow(
                            englishText:
                                "She had banged a ton of guys by the time she was 25.",
                            kurdishText:
                                "سێکسی لەگەڵ یەک دونیا پیاو کردبوو کە تەمەنی ٢٥ ساڵان بوو.",
                            onPressedBritish: () => speakbangs5("en-GB"),
                            onPressedAmerican: () => speakbangs5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) دەنگێکی بەرز"""),
                          SentencesRow(
                            englishText: "The door swung shut with a bang.",
                            kurdishText: "دەرگاکە بە زرمیەکەوە قەپات بوو.",
                            onPressedBritish: () => speakbangs6("en-GB"),
                            onPressedAmerican: () => speakbangs6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) لێدانێکی توند لەسەر جەستە"""),
                          SentencesRow(
                            englishText:
                                "I think she must have got a bang on the head.",
                            kurdishText:
                                "پێم‌وایە دەبێت شتێک کێشابێتی بەسەریدا.",
                            onPressedBritish: () => speakbangs7("en-GB"),
                            onPressedAmerican: () => speakbangs7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) پەرچەمی قژ؛ بەشی پێشەوە کە شۆڕ دەبێتەوە بۆ ناوچاوان"""),
                          const AlsoEnglishckb(word: "ھەروەھا: fringe"),
                          SentencesRow(
                            englishText: "She blew her bangs out of her face.",
                            kurdishText: "پەرچەمی لەسەر ڕووخساری لادا.",
                            onPressedBritish: () => speakbangs8("en-GB"),
                            onPressedAmerican: () => speakbangs8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە تەواوی"""),
                          SentencesRow(
                            englishText: "My estimate was bang on target.",
                            kurdishText:
                                "خەمڵاندنەکەم بە تەواوی لەجێی خۆی بوو.",
                            onPressedBritish: () => speakbangs9("en-GB"),
                            onPressedAmerican: () => speakbangs9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (سەرسوڕمان) بەکاردێت بۆ ئاماژە بە دەنگێکی بەرز، بۆ نموونە دەنگی فیشەک"""),
                          SentencesRow(
                            englishText:
                                "'Bang! Bang! You're dead!' said the child, pointing a plastic gun at me.",
                            kurdishText:
                                "کە منداڵە بچووکەکە چەکێکی پلاستیکی ڕووم تێکردبوو وتی 'تەق تەق، تۆ مردووی'.",
                            onPressedBritish: () => speakbangs10("en-GB"),
                            onPressedAmerican: () => speakbangs10("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Noun: bang (derived forms: banged, bangs, banging)
1. A sudden very loud noise (= clap, eruption, blast, bam)
 
2. A vigorous blow (= knock, bash [informal], smash, belt [informal], sock [informal])
"he got a bang on the head";
 
3. [N. Amer] A border of hair that is cut short and hangs across the forehead (= fringe)
 
4. A sudden pleasurable excitement (= charge, rush, flush, thrill, kick, buzz [informal])
"they got a great bang out of it";
 
5. [informal] A conspicuous success (= hit, smash, smasher [informal], strike, sizzler [informal])
"the party went with a bang";
 
6. A preparation of the leaves and flowers of the hemp plant; much used in India (= bhang)
 
7. [vulgar] Slang for sexual intercourse (= rumpy-pumpy [informal])
 
8. [N. Amer] A punctuation mark (!) used after an exclamation (= exclamation mark [Brit, Cdn], exclamation point [N. Amer])

- Verb: bang
1. Strike violently (= slam)
"bang the ball";
 
2. To produce a sharp often metallic explosive or percussive sound
"One of them banged the sash of the window nearest my bed"
 
3. Close violently (= slam)
"He banged the door shut";
 
4. Move noisily
"The window banged shut"; "The old man banged around the house"
 
5. [vulgar] Have sexual intercourse (= sleep together, love, make love, sleep with, have sex, know [archaic], do it [informal], be intimate, have intercourse, lie with [archaic], bed [informal], get it on [informal])
"they banged in the back of the car";
 
6. Leap, jerk, bang (= spang)
"Bullets banged into the trees";

- Adverb: bang
1. Directly (= slap, slapdash, smack [informal], bolt)
"he ran bang into the pole";
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

  final String _videoId = 'XlHzvTEstz8';
  final double _startSeconds = 339;

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

  final String _videoId = 'qjqh9UVfNNk';
  final double _startSeconds = 581;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 1211;

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

  final String _videoId = 'cykdSb7xqI4';
  final double _startSeconds = 119;

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

  final String _videoId = 'enjLYKFLG6U';
  final double _startSeconds = 255;

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

  final String _videoId = '0e8woEkKmG8';
  final double _startSeconds = 2429;

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

  final String _videoId = 'Ic_IapE_D-Q';
  final double _startSeconds = 821;

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

  final String _videoId = 'Mhlpk5ZrYLM';
  final double _startSeconds = 423;

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

  final String _videoId = 'DvDwlyGthtY';
  final double _startSeconds = 271;

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

  final String _videoId = 'ff-Fsop_82I';
  final double _startSeconds = 1078;

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

  final String _videoId = 'Rez9pBbdCMk';
  final double _startSeconds = 47;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = '0e8woEkKmG8';
  final double _startSeconds = 366;

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

// end

// end bang// TODO Implement this library.