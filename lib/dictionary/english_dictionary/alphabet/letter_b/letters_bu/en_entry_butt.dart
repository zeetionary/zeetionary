import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrybutt extends StatelessWidget {
  EnglishEntrybutt({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbutt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("butt");
  }

  Future<void> speakbutts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The goat butted the door to open it.");
  }

  Future<void> speakbutts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He butted his opponent in the wrestling match.");
  }

  Future<void> speakbutts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They struck him with their rifle butts.");
  }

  Future<void> speakbutts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He flicked the butt of his cigarette into the ashtray.");
  }

  Future<void> speakbutts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Get your butt over here!");
  }

  Future<void> speakbutts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A butt from his head left him momentarily disorientated.");
  }

  Future<void> speakbutts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts77");
  }

  Future<void> speakbutts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts88");
  }

  Future<void> speakbutts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts99");
  }

  Future<void> speakbutts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts1010");
  }

  Future<void> speakbutts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts1111");
  }

  Future<void> speakbutts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts1212");
  }

  Future<void> speakbutts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbutts1313");
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
                            EntryTitle(word: "butt"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bʌt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbutt("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bʌt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbutt("en-US"),
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
کوردی: کەللە، لێدان بە سەر، مەودای بڕینی تیر، تیراوێژ، سەگمان، نیشانە، ئامانج، بابەتی ڕەخنە، گاڵتەجاڕ، مایەی پێکەنین، بنەچەک، قۆنداخ، پاژنە(چەک)، کنکەچەک، کنگەسیگار، قنچکەسیگار، بنەجگەرە، کنگ، سمت، پاشڵ، بن، قنچک، بێخ، بنک، کۆتەرە، کنگە، (داری ڕاوەماسی) دەسک، قوڵفە، بۆشکە، کۆس، پیپ، بەرمیل، کووپە
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) لێدان لە کەسێک بە سەرت"),
                          SentencesRow(
                            englishText: "The goat butted the door to open it.",
                            kurdishText:
                                "بزنەکە کێشای بە دەرگاکەدا بۆ ئەوەی بیکاتەوە.",
                            onPressedBritish: () => speakbutts1("en-GB"),
                            onPressedAmerican: () => speakbutts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He butted his opponent in the wrestling match.",
                            kurdishText:
                                "کەلەیەکی کێشا بە ڕکابەرەکەیدا لە یاری زۆرانبازییەکەدا.",
                            onPressedBritish: () => speakbutts2("en-GB"),
                            onPressedAmerican: () => speakbutts2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) دەسکی چەکێک"),
                          SentencesRow(
                            englishText:
                                "They struck him with their rifle butts.",
                            kurdishText: "بە دەسکە دەمانچەکانیان لێیان دان.",
                            onPressedBritish: () => speakbutts3("en-GB"),
                            onPressedAmerican: () => speakbutts3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو بەشەی جگەرە کە ناسووتێت و فڕێ دەدرێت"),
                          SentencesRow(
                            englishText:
                                "He flicked the butt of his cigarette into the ashtray.",
                            kurdishText: "بنەجگەرەکەی فڕێدایە ناو تەپڵەکێکەوە.",
                            onPressedBritish: () => speakbutts4("en-GB"),
                            onPressedAmerican: () => speakbutts4("en-US"),
                          ),
                          // skipped_meaning 3rd oxford
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (ناو) سمت"),
                          SentencesRow(
                            englishText:
                                "Get your butt over here! (= Come here!)",
                            kurdishText: "وەرە ئێرە!",
                            onPressedBritish: () => speakbutts5("en-GB"),
                            onPressedAmerican: () => speakbutts5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) لێدان لە کەسێک بە سەر"),
                          SentencesRow(
                            englishText:
                                "A butt from his head left him momentarily disorientated.",
                            kurdishText: "کەللەیەک لەسەری بۆ ماوەی گێژی کرد.",
                            onPressedBritish: () => speakbutts6("en-GB"),
                            onPressedAmerican: () => speakbutts6("en-US"),
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
- Verb: butt (derived forms: butted, butts, butting)
1. To strike, thrust or shove against (= bunt)
"The goat butted the hiker with his horns"; "He butted his sister out of the way";
 
2. Lie adjacent to another or share a boundary (= border, adjoin, edge, abut, march, butt against, butt on)
"Canada butts the U.S.";

3. Place end to end without overlapping
"The frames must be butted at the joints"

- Noun: butt 
1. Thick end of the handle (= butt end)
"a rifle butt";

2. Someone who is the target of ridicule or pranks (= stooge)
 
3. [N. Amer, informal] The fleshy part of the human body that you sit on (= buttocks, nates [technical], backside, bum [Brit, informal], buns [N. Amer, informal], can [N. Amer, informal], fundament, hindquarters, hind end, posterior, rear [informal], rear end [informal], rump, stern [informal], seat, tail [N. Amer, informal], tail end, tooshie [informal], tush [N. Amer, informal], bottom, behind, derriere, bahookie [UK, dialect, informal], botty [informal], heinie [US, informal], duff [N. Amer, informal], booty [N. Amer, informal], patootie [US, informal], tushy [N. Amer, informal], derrière)
"he deserves a good kick in the butt";

4. A joint made by fastening ends together without overlapping (= butt joint)
 
5. A large cask (especially one holding a volume equivalent to 2 hogsheads or 126 gallons)
 
6. The small unused part of something (especially the end of a cigarette that is left after smoking) (= stub)
 
7. Sports equipment consisting of an object set up for a marksman or archer to aim at (= target)
 
8. The part of a plant from which the roots spring or the part of a stalk or trunk nearest the roots
 
9. Finely ground tobacco wrapped in paper; for smoking (= cigarette, cigaret [US], coffin nail [informal], fag [Brit, informal], gasper [Brit, informal], durry [Austral, informal], cig [informal], ciggy [Brit, informal])
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 414;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 234;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 1573;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1676;

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

  final String _videoId = 'modppXCKk4g';
  final double _startSeconds = 89;

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

  final String _videoId = 'jHOMQt_hSDg';
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

  final String _videoId = 'MGacKah0ASs';
  final double _startSeconds = 9;

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

  final String _videoId = 'OXv0dVFsuMI';
  final double _startSeconds = 65;

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

  final String _videoId = 'p-g8ZcKBcqU';
  final double _startSeconds = 30;

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

  final String _videoId = 'Bfjp2ypNwX8';
  final double _startSeconds = 398;

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

// end WORD_WEB
