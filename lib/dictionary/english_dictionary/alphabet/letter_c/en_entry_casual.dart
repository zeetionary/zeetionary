import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycasual extends StatelessWidget {
  EnglishEntrycasual({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcasual(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("casual");
  }

  Future<void> speakcasuals1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She felt comfortable in casual clothes and wore them most of the time.");
  }

  Future<void> speakcasuals2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His clothes were artfully arranged to look casual.");
  }

  Future<void> speakcasuals3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was just a casual remark—I wasn't really serious.");
  }

  Future<void> speakcasuals4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He tried to sound casual, but I knew he was worried.");
  }

  Future<void> speakcasuals5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At a casual glance, everything seemed normal.");
  }

  Future<void> speakcasuals6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They are employed on a casual basis.");
  }

  Future<void> speakcasuals7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They were having casual sex, but it never became a serious relationship.");
  }

  Future<void> speakcasuals8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The disease is not spread by casual contact.");
  }

  Future<void> speakcasuals9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She changed into flat casuals before walking round the town.");
  }

  Future<void> speakcasuals10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcasuals1010");
  }

  Future<void> speakcasuals11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcasuals1111");
  }

  Future<void> speakcasuals12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcasuals1212");
  }

  Future<void> speakcasuals13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcasuals1313");
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
                            EntryTitle(word: "casual"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæʒuəl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcasual("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæʒuəl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcasual("en-US"),
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
کوردی: ڕێکەوتی، ھەڵکەوتی، بەختەکی، نامەبەستی، نائەنقەست، کەمتەرخەم، بێ‌خەیاڵ، بێ‌دەربەست، لامسەرلا، بێ‌ئەندێشە، گوێ‌پێنەدەر، لاسار، ئالۆری، نەڕشت، بەتەنگەوەنەبوو، نابەرپرس، سەرزارەکی، ڕەمەکی، فشە، سەرسەرەکی، کاتی، خۆمانە، نافەرمی، ناھەمیشەیی، کاتی، بەروەخت، پچڕپچڕ، ناڕێک‌وپێک، کرێکاری کاتی، بەرکاتی، کەوش و جل‌وبەرگی نافەرمی
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) شتێک کە فەرمی نییە"),
                          SentencesRow(
                            englishText:
                                "She felt comfortable in casual clothes and wore them most of the time.",
                            kurdishText:
                                "ھەستی بە ئاسوودەیی دەکرد بە جلی نافەرمییەوە و زۆرجار لەبەری دەکردن.",
                            onPressedBritish: () => speakcasuals1("en-GB"),
                            onPressedAmerican: () => speakcasuals1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His clothes were artfully arranged to look casual.",
                            kurdishText:
                                "جلەکانی زیرەکانە ڕێکخرابوون بۆ ئەوەی نافەرمی دەربکەوێت.",
                            onPressedBritish: () => speakcasuals2("en-GB"),
                            onPressedAmerican: () => speakcasuals2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) بەبێ پیشاندانی گرنگی"),
                          SentencesRow(
                            englishText:
                                "It was just a casual remark—I wasn't really serious.",
                            kurdishText:
                                "تەنھا لێدوانێکی نامەبەست بوو، بە جدیم نەبوو.",
                            onPressedBritish: () => speakcasuals3("en-GB"),
                            onPressedAmerican: () => speakcasuals3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He tried to sound casual, but I knew he was worried.",
                            kurdishText:
                                "ھەوڵیدا ئاسایی دەربکەوێت، بەڵام دەمزانی نیگەرانە.",
                            onPressedBritish: () => speakcasuals4("en-GB"),
                            onPressedAmerican: () => speakcasuals4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) بەبێ گرنگیدان بە وردەکاری"),
                          SentencesRow(
                            englishText:
                                "At a casual glance, everything seemed normal.",
                            kurdishText:
                                "بە ڕوانینێکی ڕەمەکی، ھەموو شتێک ئاسایی دیاربوو.",
                            onPressedBritish: () => speakcasuals5("en-GB"),
                            onPressedAmerican: () => speakcasuals5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) شتێک کە ھەمیشەیی نییە"),
                          SentencesRow(
                            englishText:
                                "They are employed on a casual basis (= they do not have a permanent job with the company).",
                            kurdishText: "بە ناھەمیشەیی دامەزروان.",
                            onPressedBritish: () => speakcasuals6("en-GB"),
                            onPressedAmerican: () => speakcasuals6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) پەیوەندییەکی ڕووکەشانە کە ھەستی بۆ یەکدی تێدا نییە"),
                          SentencesRow(
                            englishText:
                                "They were having casual sex, but it never became a serious relationship.",
                            kurdishText:
                                "سێکسی بۆخۆشییان دەکرد، بەڵام ھەرگیز نەگەشتن بە پەیوەندییەکی ڕاست.",
                            onPressedBritish: () => speakcasuals7("en-GB"),
                            onPressedAmerican: () => speakcasuals7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) بەڕێکەوت"),
                          SentencesRow(
                            englishText:
                                "The disease is not spread by casual contact.",
                            kurdishText:
                                "نەخۆشییەکە بە بەرکەوتنی بەڕێکەوت بڵاونابێتەوە.",
                            onPressedBritish: () => speakcasuals8("en-GB"),
                            onPressedAmerican: () => speakcasuals8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) جلوبەرگ و پێڵاوی نافەرمی"),
                          SentencesRow(
                            englishText:
                                "She changed into flat casuals before walking round the town.",
                            kurdishText:
                                "فلاتی نافەرمی لەپێ‌کرد پێش ئەوەی بە شارۆچکەکە بگەڕێت.",
                            onPressedBritish: () => speakcasuals9("en-GB"),
                            onPressedAmerican: () => speakcasuals9("en-US"),
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
- Adjective: casual 
1. Marked by blithe unconcern (= insouciant, nonchalant)
"an ability to interest casual students"; "showed a casual disregard for cold weather";
 
2. Without or seeming to be without plan or method; offhand
"a casual remark"; "information collected by casual methods and in their spare time"
 
3. Appropriate for ordinary or routine occasions (= everyday, daily)
"casual clothes";

4. Occurring, appearing or singled out by chance (= chance)
"seek help from casual passers-by"; "a casual meeting";
 
5. Hasty and without attention to detail; not thorough (= cursory, passing, perfunctory, superficial)
"a casual inspection failed to reveal the house's structural flaws";
 
6. Not regular; working on an informal or ad hoc basis (= occasional)
"casual employment"; "a casual correspondence with a former teacher";
 
7. Characterized by a feeling of irresponsibility (= fooling)
"a broken back is nothing to be casual about; it is no fooling matter";
 
8. Natural and unstudied (= free-and-easy)
"using their Christian names in a casual way";
 
9. Not showing effort or strain (= effortless)
"casual grace"; "a difficult feat performed with casual mastery";

- Noun: casual (derived forms: casuals)
Usage: Brit
1. A worker (especially in an office) hired on a temporary basis (= temp [informal], temporary, temporary worker, casual worker)
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

  final String _videoId = 'ygzSSDEo7Dk';
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

  final String _videoId = 'vbbQxOJbK7s';
  final double _startSeconds = 28;

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

  final String _videoId = 'cYmBDyRXRas';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '_nxZxJK2usk';
  final double _startSeconds = 116;

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

  final String _videoId = '7ER4ozbVvpM';
  final double _startSeconds = 50;

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

  final String _videoId = 'F7AUQWFXXv0';
  final double _startSeconds = 17;

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

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 272;

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

  final String _videoId = 'oD9BaNAH-eE';
  final double _startSeconds = 269;

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
