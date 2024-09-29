import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconscious extends StatelessWidget {
  EnglishEntryconscious({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconscious(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("conscious");
  }

  Future<void> speakconsciouss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's very conscious of the problems involved.");
  }

  Future<void> speakconsciouss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I am conscious of the fact that there's a limit to what we can achieve here.");
  }

  Future<void> speakconsciouss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He became acutely conscious of having failed his parents.");
  }

  Future<void> speakconsciouss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A patient who is not fully conscious should never be left alone.");
  }

  Future<void> speakconsciouss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She remained conscious throughout the operation.");
  }

  Future<void> speakconsciouss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Try to keep the patient conscious.");
  }

  Future<void> speakconsciouss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I made a conscious effort to get there on time.");
  }

  Future<void> speakconsciouss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She made a conscious decision to spend more time with her family.");
  }

  Future<void> speakconsciouss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They have become increasingly health-conscious.");
  }

  Future<void> speakconsciouss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's never been politically conscious.");
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
                            EntryTitle(word: "conscious"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnʃəs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconscious("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnʃəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconscious("en-US"),
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
کوردی: ھۆشیار، ئاگادار، خەبەردار، بەسەرنج، وریا، بەئاگا، خۆئاگا، وریا،	بەمەبەست، ئەنقەست، خۆکردوو،	بیریار، ھزرمەند،	ھەستیار،	شەرمێون، پەشۆکاو، تاساو
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) بائاگا لە شتێک"),
                          SentencesRow(
                            englishText:
                                "She's very conscious of the problems involved.",
                            kurdishText: "زۆر بەئاگایە لەو کێشانەی لە ڕێگان.",
                            onPressedBritish: () => speakconsciouss1("en-GB"),
                            onPressedAmerican: () => speakconsciouss1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I am conscious of the fact that there's a limit to what we can achieve here.",
                            kurdishText:
                                "بە ئاگام لەو ڕاستییەی کە سنوورێک ھەیە بۆ ئەوەی لێرە دەتوانین بەدەستی بھێنین.",
                            onPressedBritish: () => speakconsciouss2("en-GB"),
                            onPressedAmerican: () => speakconsciouss2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He became acutely conscious of having failed his parents.",
                            kurdishText:
                                "تەواو بەئاگا بوو لەوەی کە دایک و باوکی نائومێد کردووە.",
                            onPressedBritish: () => speakconsciouss3("en-GB"),
                            onPressedAmerican: () => speakconsciouss3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) ھەبوونی توانای بەکارھێنانی ھەستەکانت و ھێزی مێشکت بۆ زانینی ئەوەی چی ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "A patient who is not fully conscious should never be left alone.",
                            kurdishText:
                                "نەخۆشێک کە تەواو بەئاگا نییە نابێت بە تەنھا جێبھێڵدرێت.",
                            onPressedBritish: () => speakconsciouss4("en-GB"),
                            onPressedAmerican: () => speakconsciouss4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She remained conscious throughout the operation.",
                            kurdishText:
                                "لە ماوەی تەواوی نەشتەرگەرییەکە بە ئاگا ھێڵدرایەوە.",
                            onPressedBritish: () => speakconsciouss5("en-GB"),
                            onPressedAmerican: () => speakconsciouss5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Try to keep the patient conscious.",
                            kurdishText:
                                "ھەوڵ بدە نەخۆشەکە بە بەئاگایی بھێڵەرەوە.",
                            onPressedBritish: () => speakconsciouss6("en-GB"),
                            onPressedAmerican: () => speakconsciouss6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بە ئەنقەست؛ شتێک کە بە ئاگاییەوە دەکرێت"),
                          SentencesRow(
                            englishText:
                                "I made a conscious effort to get there on time.",
                            kurdishText:
                                "ھەوڵێکی بەمەبەستم دا لەکاتی خۆیدا بگەمە ئەوێ.",
                            onPressedBritish: () => speakconsciouss7("en-GB"),
                            onPressedAmerican: () => speakconsciouss7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She made a conscious decision to spend more time with her family.",
                            kurdishText:
                                "بڕیارێکی بەمەبەستی دا کاتی زیاتر لەگەڵ خێزانەکەی بەسەر ببات.",
                            kurdishNote:
                                "واتە خۆی بڕیارەکەی دا نەک ئەوەی بارودۆخی ژیان و کارەکەی وای خواستبێت",
                            onPressedBritish: () => speakconsciouss8("en-GB"),
                            onPressedAmerican: () => speakconsciouss8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) حەزکردن لە شتێک بە تایبەتی یان ئەوەی کە گرنگە"),
                          SentencesRow(
                            englishText:
                                "They have become increasingly health-conscious.",
                            kurdishText:
                                "زیاتر و زیاتر ھۆگربوونە بە تەندرووستی.",
                            onPressedBritish: () => speakconsciouss9("en-GB"),
                            onPressedAmerican: () => speakconsciouss9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He's never been politically conscious.",
                            kurdishText: "ھەرگیز ھۆگر بە سیاسەت نەبووە .",
                            onPressedBritish: () => speakconsciouss10("en-GB"),
                            onPressedAmerican: () => speakconsciouss10("en-US"),
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
                        // YoutubeEmbeddedseven(),
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

    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: conscious 
1. Intentionally conceived (= witting)
"a conscious policy";
 
2. Knowing and perceiving; having awareness of surroundings and sensations and thoughts
"remained conscious during the operation"; "conscious of his faults"; "became conscious that he was being followed"
 
3. (followed by 'of') showing realization or recognition of something
"few voters seem conscious of the issue's importance"; "conscious of having succeeded"; "the careful tread of one conscious of his alcoholic load"
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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 771;

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

  final String _videoId = '9finqZJJNA8';
  final double _startSeconds = 316;

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

  final String _videoId = '-Il7Er91P4U';
  final double _startSeconds = 42;

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

  final String _videoId = 'X5U9fei1uBU';
  final double _startSeconds = 227;

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

  final String _videoId = 'LgPvp-FWtK8';
  final double _startSeconds = 203;

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

  final String _videoId = 'pYf1WIHhL98';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'dQegiS9RbIg';
  final double _startSeconds = 75;

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