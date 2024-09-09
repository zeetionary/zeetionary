import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryburst extends StatelessWidget {
  EnglishEntryburst({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakburst(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("burst");
  }

  Future<void> speakbursts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("That balloon will burst if you blow it up any more.");
  }

  Future<void> speakbursts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dam burst under the weight of water.");
  }

  Future<void> speakbursts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Shells were bursting all around us.");
  }

  Future<void> speakbursts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He felt he would burst with anger and shame.");
  }

  Future<void> speakbursts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He burst into the room without knocking.");
  }

  Future<void> speakbursts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sun burst through the clouds.");
  }

  Future<void> speakbursts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The words burst from her in an angry rush.");
  }

  Future<void> speakbursts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The roads are bursting with cars.");
  }

  Future<void> speakbursts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I’m bursting (for a pee)!");
  }

  Future<void> speakbursts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I tend to work in bursts.");
  }

  Future<void> speakbursts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was a spontaneous burst of applause.");
  }

  Future<void> speakbursts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A burst in the water pipe flooded the floor.");
  }

  Future<void> speakbursts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Pedestrians scattered as a rapid burst of gunfire erupted unexpectedly.");
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
                            EntryTitle(word: "burst"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɜːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakburst("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɜːrst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakburst("en-US"),
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
کوردی: تەقینەوە، تەق، لێک‌بوونەوە، پەقین، دەربوون، ترەکین، درگاکردن، بڵاوبوونەوە، تەنینەوە، تەشەنە، ھەڵچوون، فیشقەکردن، گوڕبوون، لە پڕمەدان (گریان یان پێکەنین)، گوللەخستن، تەقاندن، پێوەنان، دەسپێک یان دەرکەوتنی ناکاو، جووڵانی توند و کت‌وپڕ، گڕ، سۆڵە، ڕەھێڵە، ڕێژنە
"""),
                          const DefinitionKurdish(text: "١. (کردار) تەقین"),
                          SentencesRow(
                            englishText:
                                "That balloon will burst if you blow it up any more.",
                            kurdishText:
                                "فودانکەکە دەتەقێت ئەگەر ھەوای زیاتری تێ بکەیت.",
                            onPressedBritish: () => speakbursts1("en-GB"),
                            onPressedAmerican: () => speakbursts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The dam burst under the weight of water.",
                            kurdishText: "بەنداوەکە تەقی لەژێر پەستانی ئاودا.",
                            onPressedBritish: () => speakbursts2("en-GB"),
                            onPressedAmerican: () => speakbursts2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Shells were bursting (= exploding) all around us.",
                                    kurdishText:
                                        "گوللەتۆپ دەتەقی لە دەوروبەرمان.",
                                    onPressedBritish: () =>
                                        speakbursts3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbursts3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He felt he would burst with anger and shame.",
                                    kurdishText:
                                        "(بەکارھێنانی خوازراوی) ھەستی دەکرد لە تووڕەیی و شەرمەزاریدا دەتەقێتەوە.",
                                    onPressedBritish: () =>
                                        speakbursts4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbursts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) چوون بۆ شوێنێک بە خێرایی"),
                          SentencesRow(
                            englishText:
                                "He burst into the room without knocking.",
                            kurdishText:
                                "خۆی کرد بە ژوورەکەدا بەبێ دان لە دەرگا.",
                            onPressedBritish: () => speakbursts5("en-GB"),
                            onPressedAmerican: () => speakbursts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The sun burst through the clouds.",
                            kurdishText: "خۆرەکە لە ھەورەکانەوە دەدرەوشایەوە.",
                            onPressedBritish: () => speakbursts6("en-GB"),
                            onPressedAmerican: () => speakbursts6("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The words burst from her in an angry rush.",
                                    kurdishText:
                                        "وشە لە دەمییەوە دەھاتە خوارەوە لە تووڕەییدا.",
                                    onPressedBritish: () =>
                                        speakbursts7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbursts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) پڕ لە شتێک"),
                          SentencesRow(
                            englishText: "The roads are bursting with cars.",
                            kurdishText: "ڕێگاکان پڕن لە ئۆتۆمبێل.",
                            onPressedBritish: () => speakbursts8("en-GB"),
                            onPressedAmerican: () => speakbursts8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I’m bursting (for a pee)! (= I need to use the toilet right now).",
                            kurdishText: "خەریکە ئەتەقم بۆ میزکردن!",
                            onPressedBritish: () => speakbursts9("en-GB"),
                            onPressedAmerican: () => speakbursts9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ماوەیەکی کەم لە چالاکییەکی دیاریکراو یان ھەستێکی بەھێز کەلەناکاو دەستپێ‌دەکات"),
                          SentencesRow(
                            englishText: "I tend to work in bursts.",
                            kurdishText: "خواستم وایە لە کت‌وپڕیدا کار بکەم.",
                            onPressedBritish: () => speakbursts10("en-GB"),
                            onPressedAmerican: () => speakbursts10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There was a spontaneous burst of applause.",
                            kurdishText: "چەپڵەڕێزانێکی لەناکاو دەستی پێکرد.",
                            onPressedBritish: () => speakbursts11("en-GB"),
                            onPressedAmerican: () => speakbursts11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) تەقین"),
                          SentencesRow(
                            englishText:
                                "A burst in the water pipe flooded the floor.",
                            kurdishText:
                                "تەقینێک لە بۆری ئاوەکەدا نھۆمەکانی پڕئاو کرد.",
                            onPressedBritish: () => speakbursts12("en-GB"),
                            onPressedAmerican: () => speakbursts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) زنجیرەیەک لە تەقەی چەکێک"),
                          SentencesRow(
                            englishText:
                                "Pedestrians scattered as a rapid burst of gunfire erupted unexpectedly.",
                            kurdishText:
                                "ڕێبواران پەرشوبڵاوبوون کە زنجیرەیەک لە تەقەکردن لەناکاو دەستی پێکرد.",
                            onPressedBritish: () => speakbursts13("en-GB"),
                            onPressedAmerican: () => speakbursts13("en-US"),
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
- Verb: burst (derived forms: burst, bursting, bursts)
1. Come open suddenly and violently, as if from internal pressure (= split, break open)
"The bubble burst";

2. Force out or release suddenly and often violently something pent up (= break, erupt)
"burst into tears";

3. Burst outward, usually with noise (= explode)
"The champagne bottle burst";
 
4. Move suddenly, energetically, or violently
"He burst out of the house into the cool night"
 
5. Be in a state of movement or action (= abound, bristle)
"The room burst with screaming children";
 
6. Emerge suddenly
"The sun burst into view"
 
7. Cause to burst (= collapse)
 
8. Break open or apart suddenly and forcefully (= bust [informal])
"The dam burst";

- Noun: burst (derived forms: bursts)
1. The act of exploding or bursting (= explosion)
"the burst of an atom bomb creates enormous radiation aloft";
 
2. Rapid simultaneous discharge of firearms (= fusillade, salvo, volley)
"our burst from the left flank caught them by surprise";
 
3. A sudden flurry of activity (often for no obvious reason) (= fit)
"a burst of applause";

4. A sudden intense happening (= outburst, flare-up)
"a burst of lightning";
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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 124;

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

  final String _videoId = 'NZ74oFctP_g';
  final double _startSeconds = 33;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 317;

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

  final String _videoId = 'L9Mu93VJLcc';
  final double _startSeconds = 956;

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

  final String _videoId = 'g9QneAV4fVo';
  final double _startSeconds = 1057;

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

  final String _videoId = 'yUZA04AtjIs';
  final double _startSeconds = 204;

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

  final String _videoId = 'QEbYo07jLoY';
  final double _startSeconds = 783;

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

  final String _videoId = 'P4tDxQby99A';
  final double _startSeconds = 572;

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

  final String _videoId = 'iiwBuUTTYio';
  final double _startSeconds = 383;

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

  final String _videoId = 'w-4I9OWH_68';
  final double _startSeconds = 120;

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
