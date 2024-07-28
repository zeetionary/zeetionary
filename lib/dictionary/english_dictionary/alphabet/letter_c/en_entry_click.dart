import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclick extends StatelessWidget {
  // blank divider
  EnglishEntryclick({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclick(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("click");
  }

  Future<void> speakclicks1(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Click here to add your opinion to the survey.");
  }

  Future<void> speakclicks2(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Click the OK button to start.");
  }

  Future<void> speakclicks3(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door clicked shut.");
  }

  Future<void> speakclicks4(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He clicked his fingers at the waiter.");
  }

  Future<void> speakclicks5(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police officer clicked a pair of handcuffs around his wrists.");
  }

  Future<void> speakclicks6(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Suddenly it clicked—we'd been talking about different people.");
  }

  Future<void> speakclicks7(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We met at a party and clicked immediately.");
  }

  Future<void> speakclicks8(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The team don't seem to have clicked yet.");
  }

  Future<void> speakclicks9(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A vast amount of information now available at the click of a mouse.");
  }

  Future<void> speakclicks10(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It only took me a couple of clicks to find what I was looking for.");
  }

  Future<void> speakclicks11(String languageCode) async {
    // DOPSUM: CHANGE speakclick
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door closed with a click.");
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
                            EntryTitle(word: "click"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclick("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclick("en-US"),
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
کوردی: (دەنگ) تەقە، تەق‌وکوت، قرتە، کرتە، چرکە، چرتە،	داگرتن (دوگمەی کۆمپیوتەر)، گیرە، بەند
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ئەنجامدانیشتێک لەسەر کۆمپیوتەر بە پەنجەنان بە ماوسەکەدا"),
                          SentencesRow(
                            englishText:
                                "Click here to add your opinion to the survey.",
                            kurdishText:
                                "لێرە گرتە بکە بۆ زیادکردنی بۆچوونت بۆ ڕاپرسییەکە.", // click",
                            onPressedBritish: () => speakclicks1("en-GB"),
                            onPressedAmerican: () => speakclicks1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Click the OK button to start.",
                            kurdishText:
                                "کلیک لە دووگمەی OK بکە بۆ دەستپێکردن.",
                            onPressedBritish: () => speakclicks2("en-GB"),
                            onPressedAmerican: () => speakclicks2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) درووستکردنی قرتەیەکی کورت و خێرا"),
                          SentencesRow(
                            englishText: "The door clicked shut.",
                            kurdishText: "دەرگاکە بە قرتەیەک گیرا.",
                            onPressedBritish: () => speakclicks3("en-GB"),
                            onPressedAmerican: () => speakclicks3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He clicked his fingers at the waiter.",
                            kurdishText:
                                "چەقەنەیەک لێدا بۆ گارسۆنەکە بە پەنجەکانی.",
                            onPressedBritish: () => speakclicks4("en-GB"),
                            onPressedAmerican: () => speakclicks4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The police officer clicked a pair of handcuffs around his wrists.",
                            kurdishText:
                                "ئەفسەرە پۆلیسەکە کەلەپچەیەکی لە مەچەکەکانی ئاڵاند.",
                            onPressedBritish: () => speakclicks5("en-GB"),
                            onPressedAmerican: () => speakclicks5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) (بۆ شتێک) کە لەناکاو ڕوون دەبێت و خەڵکی لێی تێ دەگەن"),
                          SentencesRow(
                            englishText:
                                "Suddenly it clicked—we'd been talking about different people.",
                            kurdishText:
                                "لەناکاو ڕوونبووەوە، قسەمان لەسەر کەسی جیاواز دەکرد.",
                            onPressedBritish: () => speakclicks6("en-GB"),
                            onPressedAmerican: () => speakclicks6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) لەناکاو بوون بە ھاوڕێ لەگەڵ کەسێک"),
                          SentencesRow(
                            englishText:
                                "We met at a party and clicked immediately.",
                            kurdishText:
                                "لە ئاھەنگێک یەکمان ناسی و دەستبەجێ بووین بە دۆست.",
                            onPressedBritish: () => speakclicks7("en-GB"),
                            onPressedAmerican: () => speakclicks7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) باش کارکردن پێکەوە"),
                          SentencesRow(
                            englishText:
                                "The team don't seem to have clicked yet.",
                            kurdishText:
                                "تیمەکە وادەرناکەوێت ھێشتا پێکەوە بگونجێن.",
                            onPressedBritish: () => speakclicks8("en-GB"),
                            onPressedAmerican: () => speakclicks8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دەستنان بە دووگمەی ماوسی کۆمپیوتەردا"),
                          SentencesRow(
                            englishText:
                                "A vast amount of information now available at the click of a mouse.",
                            kurdishText:
                                "ڕێژەیەکی زۆر لە زانیاری بەردەستە ئێستا بە کلیکی ماوسێک.",
                            onPressedBritish: () => speakclicks9("en-GB"),
                            onPressedAmerican: () => speakclicks9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It only took me a couple of clicks to find what I was looking for.",
                            kurdishText:
                                "دۆزینەوەی ئەوەی دەمویست تەنھا چەند کلیکێکی پێچوو.",
                            onPressedBritish: () => speakclicks10("en-GB"),
                            onPressedAmerican: () => speakclicks10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) دەنگێکی تیژی کورت"),
                          SentencesRow(
                            englishText: "The door closed with a click.",
                            kurdishText: "دەرگاکە بە قرتەیەک گیرا.",
                            onPressedBritish: () => speakclicks11("en-GB"),
                            onPressedAmerican: () => speakclicks11("en-US"),
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
- Noun: click (derived forms: clicks)
1. A short light metallic sound (= chink, clink)
 
2. Depression of a button on a computer mouse (= mouse click)
"a click on the right button for example";
 
3. A stop consonant made by the suction of air into the mouth (as in Bantu) (= suction stop)
 
4. A hinged catch that fits into a notch of a ratchet to move a wheel forward or prevent it from moving backward (= pawl, detent, dog)

- Verb: click (derived forms: clicked, clicks, clicking)
1. Move or strike with a noise (= snap)
"he clicked on the light";
 
2. Make a clicking or ticking sound (= tick)
"The clock clicked away";
 
3. Make a clicking sound repeatedly or uncontrollably (= chatter)
"clicking teeth";
 
4. Cause to make a snapping sound (= snap, flick)
"click your fingers";
 
5. Produce a click
"Xhosa speakers click"
 
6. Make a clucking sounds, characteristic of hens (= cluck, clack)
 
7. Become clear or enter one's consciousness or emotions (= get through, dawn, come home, get across, sink in, penetrate, fall into place)
 
8. [informal] Immediately develop a good friendly relationship (with someone) (= hit it off [informal])
 
9. Depress a button on a computer mouse, usually to move the cursor or invoke some action
"Click the third of three icons located in the top right hand part of the screen"
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

  final String _videoId = 'EFO6Gqtmccc';
  final double _startSeconds = 4;

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

  final String _videoId = 'r87A-Ql2czg';
  final double _startSeconds = 101;

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

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 57;

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
  final double _startSeconds = 164;

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
  final double _startSeconds = 1825;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 3881;

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

  final String _videoId = 'cjLooycOwVc';
  final double _startSeconds = 176;

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

  final String _videoId = 'omcNGrnt7Sg';
  final double _startSeconds = 93;

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