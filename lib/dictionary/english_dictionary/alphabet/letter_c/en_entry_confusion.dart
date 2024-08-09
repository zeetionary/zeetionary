import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconfusion extends StatelessWidget {
// blank divider
  EnglishEntryconfusion({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconfusion(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("confusion");
  }

  Future<void> speakconfusions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The announcement caused a lot of confusion.");
  }

  Future<void> speakconfusions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is some confusion about what the correct procedure should be.");
  }

  Future<void> speakconfusions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "To avoid confusion, please write the children's names clearly on all their school clothes.");
  }

  Future<void> speakconfusions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They are very hard to tell apart, so the confusion is understandable.");
  }

  Future<void> speakconfusions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Fighting had broken out and all was chaos and confusion.");
  }

  Future<void> speakconfusions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her unexpected arrival threw us into total confusion.");
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
                            EntryTitle(word: "confusion"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈfjuːʒn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconfusion("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈfjuːʒn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconfusion("en-US"),
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
کوردی: سەرلێ‌شێواوی، سەرگەردانی، سەرکوێری، گێژی، وڕی، کاسی، پەشۆکاوی، تاساوی، ھێوان، واق‌وڕماوی، خەجڵان، واقمان، سەرسووڕمان، تێکچوون، شڵەژان، شڵەژاوی، شێوان، پشێوی، ئاژاوە، پاشاگەردانی،	ھەڵە، شاشی، لێ‌شێوان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دۆخی شڵەژاوی؛ کە تێیدا نازانیت چی بکەیت، چی بڵێیت، واتای شتێک چییە، ھتد"),
                          SentencesRow(
                            englishText:
                                "The announcement caused a lot of confusion.",
                            kurdishText:
                                "ڕاگەیاندنەکە بوو بەھۆی پەشۆکاوی زۆر.", // confusion",
                            onPressedBritish: () => speakconfusions1("en-GB"),
                            onPressedAmerican: () => speakconfusions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There is some confusion about what the correct procedure should be.",
                            kurdishText:
                                "ھەندێک سەرلێ‌شێواوی ھەیە سەبارەت بەوەی کە ڕێکاری دروست دەبێت چی بێت..",
                            onPressedBritish: () => speakconfusions2("en-GB"),
                            onPressedAmerican: () => speakconfusions2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) تێکەڵکردنی ئەوەی کەسێک کێیە یان شتێک چییە"),
                          SentencesRow(
                            englishText:
                                "To avoid confusion, please write the children's names clearly on all their school clothes.",
                            kurdishText:
                                "بۆ دووربوون لە تێکەڵکردن، تکایە ناوی منداڵەکان بە ڕوونی لەسەر جلی قوتابخانەیان بنووسن.",
                            onPressedBritish: () => speakconfusions3("en-GB"),
                            onPressedAmerican: () => speakconfusions3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They are very hard to tell apart, so the confusion is understandable.",
                            kurdishText:
                                "زۆر سەختن بۆ جیاکردنەوە، تێکەڵکردنەکە مایەی تێگەشتنە.",
                            onPressedBritish: () => speakconfusions4("en-GB"),
                            onPressedAmerican: () => speakconfusions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) دۆخێک کە نازانیت چی ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "Fighting had broken out and all was chaos and confusion.",
                            kurdishText:
                                "شەڕ دەستی پێکردبوو و ھەمووی پشێوی و سەرلێ‌شێواوی بوو.",
                            onPressedBritish: () => speakconfusions5("en-GB"),
                            onPressedAmerican: () => speakconfusions5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her unexpected arrival threw us into total confusion.",
                            kurdishText:
                                "گەشتنی لەناکاوی خستمانییە ئاڵۆزییەوە.",
                            onPressedBritish: () => speakconfusions6("en-GB"),
                            onPressedAmerican: () => speakconfusions6("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: confusion (derived forms: confusions)
1. Disorder resulting from a failure to behave predictably
"the army retreated in confusion"
 
2. A mental state characterized by a lack of clear and orderly thought and behaviour (= mental confusion, confusedness, muddiness, disarray)
"a confusion of impressions"; "a mental confusion of impressions";
 
3. A feeling of embarrassment that leaves you confused (= discombobulation)
 
4. An act causing a disorderly combination of elements with identities lost and distinctions blended
"the confusion of tongues at the Tower of Babel"
 
5. A mistake that results from taking one thing to be another (= mix-up)
"he changed his name in order to avoid confusion with the notorious outlaw";
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

  final String _videoId = 'eJHlVR4_dEE';
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

  final String _videoId = 'vB2EtclQLRA';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '-A6NPgARIrw';
  final double _startSeconds = 128;

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

  final String _videoId = 'RyeTuXdfn7s';
  final double _startSeconds = 6;

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

  final String _videoId = 'cwYTcufdOww';
  final double _startSeconds = 112;

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

  final String _videoId = '8l51ZiZVg_c';
  final double _startSeconds = 88;

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

  final String _videoId = 'DgnEtXsEzIo';
  final double _startSeconds = 1565;

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