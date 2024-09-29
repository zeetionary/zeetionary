import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycheat extends StatelessWidget {
  EnglishEntrycheat({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcheat(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cheat");
  }

  Future<void> speakcheats1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is accused of attempting to cheat the taxman.");
  }

  Future<void> speakcheats2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We will crack down on people who try to cheat the system.");
  }

  Future<void> speakcheats3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you ever cheated in an exam?");
  }

  Future<void> speakcheats4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You're not allowed to look at the answers—that's cheating.");
  }

  Future<void> speakcheats5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He’s cheating on his wife.");
  }

  Future<void> speakcheats6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You little cheat!");
  }

  Future<void> speakcheats7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you accusing me of being a cheat?");
  }

  Future<void> speakcheats8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You can use cocoa powder to make the cake rather than chocolate - it's a bit of a cheat, but nobody notices the difference.");
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
                            EntryTitle(word: "cheat"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃiːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcheat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃiːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcheat("en-US"),
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
کوردی: بنیادەمی گزەون، دەسبڕ،	گزەونی، گزە، فریو، خاپان، ھەڵخەڵەتاندن، خاپاندن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) خەڵەتەناندنی کەسێک یان وایان لێ بکەیت باوەڕ بە شتێک نکەن کە ڕاست نییە"),
                          SentencesRow(
                            englishText:
                                "She is accused of attempting to cheat the taxman.",
                            kurdishText:
                                "تۆمەتباری کرد بە ھەوڵدان بۆ فریودانی باجگرەکە.",
                            onPressedBritish: () => speakcheats1("en-GB"),
                            onPressedAmerican: () => speakcheats1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We will crack down on people who try to cheat the system.",
                            kurdishText:
                                "سزای ئەو کەسانە دەدەین کە ھەوڵ دەدەن فێڵ لە سیستەمەکە بکەن.",
                            onPressedBritish: () => speakcheats2("en-GB"),
                            onPressedAmerican: () => speakcheats2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) فێڵکردن بۆ ئەوەی سوود ببینیت"),
                          SentencesRow(
                            englishText: "Have you ever cheated in an exam?",
                            englishNote:
                                "American English is 'Have you ever cheated on an exam?'",
                            kurdishText: "ھەرگیز لە تاقیکردنەوەدا گزیت کردووە؟",
                            onPressedBritish: () => speakcheats3("en-GB"),
                            onPressedAmerican: () => speakcheats3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You're not allowed to look at the answers—that's cheating.",
                            kurdishText:
                                "نابێت سەیری وەڵامەکان بکەیت، ئەوە گزییە.",
                            onPressedBritish: () => speakcheats4("en-GB"),
                            onPressedAmerican: () => speakcheats4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) خیانەتکردن لە ھاوسەر یان دۆستەکەت بە ھەبوونی سێکس لەگەڵ کەسێکی دیکە"),
                          SentencesRow(
                            englishText: "He’s cheating on his wife.",
                            kurdishText: "خەریکە خیانەت لە ھاوسەرەکەی دەکات.",
                            onPressedBritish: () => speakcheats5("en-GB"),
                            onPressedAmerican: () => speakcheats5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کەسێک کە فێڵ دەکات"),
                          SentencesRow(
                            englishText: "You little cheat!",
                            kurdishText: "فێڵبازی بچووک!",
                            onPressedBritish: () => speakcheats6("en-GB"),
                            onPressedAmerican: () => speakcheats6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Are you accusing me of being a cheat?",
                            kurdishText: "ئایا بە فێڵباز تۆمەتبارم دەکەیت؟",
                            onPressedBritish: () => speakcheats7("en-GB"),
                            onPressedAmerican: () => speakcheats7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) فێڵبازی"),
                          SentencesRow(
                            englishText:
                                "You can use cocoa powder to make the cake rather than chocolate - it's a bit of a cheat, but nobody notices the difference.",
                            kurdishText:
                                "دەتوانیت ھاڕاوەی کەکاو لە جیاتی چکلێت بەکاربێنیت بۆ درووستکردنی کێکەکە، کەمێک فێڵبازییە، بەڵام کەس پێی نازانێت.",
                            onPressedBritish: () => speakcheats8("en-GB"),
                            onPressedAmerican: () => speakcheats8("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: cheat (derived forms: cheated, cheating, cheats)
1. Engage in deceitful behaviour; practice trickery or fraud (= chisel [informal])
"Who's cheating on the side?";

2. Deprive somebody of something by deceit (= rip off [informal], chisel [informal])
"we were cheated by their clever-sounding scheme";
 
3. Defeat someone through trickery or deceit (= chouse, shaft [informal], screw [informal], chicane, jockey)
 
4. Be sexually unfaithful to one's partner in marriage (= cheat on, cuckold, betray, wander)
"She cheats on her husband";

- Noun: cheat (derived forms: cheats)
1. Someone who obtains an advantage by unfair means, lying or breaking rules (= cheater)
 
2. Someone who leads you to believe something that is not true (= deceiver, cheater, trickster, beguiler, slicker [informal])
 
3. The act of swindling by some fraudulent scheme (= swindle, rig, fraud)
 
4. A deception for profit to yourself (= cheating)
 
5. A card game in which players make declarations about cards and the others have to say whether they think they are lying
 
6. Weedy annual grass often occurs in grainfields and other cultivated land; seeds sometimes considered poisonous (= darnel, tare, bearded darnel, Lolium temulentum)
 
7. Annual plant native to Europe but widely distributed as a weed, especially in wheat (= chess, Bromus secalinus)
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

  final String _videoId = 't093mNvl03c';
  final double _startSeconds = 0;

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

  final String _videoId = 'wizgxRBfVTY';
  final double _startSeconds = 90;

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

  final String _videoId = 'Se3RKA9HrzI';
  final double _startSeconds = 528;

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

  final String _videoId = 'xdgOrKkxKXc';
  final double _startSeconds = 73;

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

  final String _videoId = 'Iwa39iZ0zHo';
  final double _startSeconds = 470;

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

  final String _videoId = 's0hY04WnlWI';
  final double _startSeconds = 64;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 302;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 621;

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
