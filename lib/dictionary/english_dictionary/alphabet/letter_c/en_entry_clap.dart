import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclap extends StatelessWidget {
  EnglishEntryclap({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclap(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("clap");
  }

  Future<void> speakclaps1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("After she performed, Ariana stood up and clapped for her.");
  }

  Future<void> speakclaps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Everyone clapped us when we went up to get our prize.");
  }

  Future<void> speakclaps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Everyone clapped to the music.");
  }

  Future<void> speakclaps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She clapped her hands in delight.");
  }

  Future<void> speakclaps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He clapped his daughter on the back and told her how proud of her he was.");
  }

  Future<void> speakclaps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In the old days they would have clapped you in jail for that.");
  }

  Future<void> speakclaps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She clapped her hand over her mouth to try to stop herself from laughing.");
  }

  Future<void> speakclaps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("With a clap of his hands he ordered more food.");
  }

  Future<void> speakclaps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's give a big clap for our winning contestant!");
  }

  Future<void> speakclaps10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There was a clap of thunder and then it started to pour with rain.");
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
                            EntryTitle(word: "clap"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klæp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclap("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klæp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclap("en-US"),
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
کوردی: چەپڵە(لێدان)، چەپک(لێدان)،	شریخە، گرمە، گرم‌وھۆڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) چەپڵە لێدان بۆ دەربڕینی ئەوەی ڕازیت بە شتێک یان چێژت لە شتێک دیوە"),
                          SentencesRow(
                            englishText:
                                "After she performed, Ariana stood up and clapped for her.",
                            kurdishText:
                                "لەدوای ئەوەی نمایشەکەی پێشکەشکرد، ئاریانا ھەستایە سەرپێ و چەپڵەی بۆ لێدا.",
                            onPressedBritish: () => speakclaps1("en-GB"),
                            onPressedAmerican: () => speakclaps1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Everyone clapped us when we went up to get our prize.",
                            kurdishText:
                                "ھەموان چەپڵەیان بؤ لێداین کە چووینە سەرەوە بۆ وەرگرتنی خەڵاتەکەمان.",
                            onPressedBritish: () => speakclaps2("en-GB"),
                            onPressedAmerican: () => speakclaps2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) چەپڵە لێدان"),
                          SentencesRow(
                            englishText: "Everyone clapped to the music.",
                            kurdishText: "ھەموان چەپڵەیان بۆ میوزیکەکە لێدا.",
                            onPressedBritish: () => speakclaps3("en-GB"),
                            onPressedAmerican: () => speakclaps3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She clapped her hands in delight.",
                            kurdishText: "لە خۆشیدا چەپڵەی لێدا.",
                            onPressedBritish: () => speakclaps4("en-GB"),
                            onPressedAmerican: () => speakclaps4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) لێدان لە کەسێک بە دەستی کراوەت بە ھێواشی و شێوەیەکی ھاورێیانە"),
                          SentencesRow(
                            englishText:
                                "He clapped his daughter on the back and told her how proud of her he was.",
                            kurdishText:
                                "دای بە پشتی کچەکەیدا و پێی گوت چەندە شانازی پێوە دەکات.",
                            onPressedBritish: () => speakclaps5("en-GB"),
                            onPressedAmerican: () => speakclaps5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دانانی شتێک بە خێرایی و لەناکاو لە شوێنێک"),
                          SentencesRow(
                            englishText:
                                "In the old days they would have clapped you in jail for that.",
                            kurdishText:
                                "لە سەردەمانی کۆندا فڕێیان دەدایتە زیندان بۆ ئەوە.",
                            onPressedBritish: () => speakclaps6("en-GB"),
                            onPressedAmerican: () => speakclaps6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She clapped her hand over her mouth to try to stop herself from laughing.",
                            kurdishText:
                                "دەستی نا بە دەمییەوە بۆ ئەوەی ھەوڵ بدات خۆی بوەستێنێت لە پێکەنین.",
                            onPressedBritish: () => speakclaps7("en-GB"),
                            onPressedAmerican: () => speakclaps7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) چەپڵەلێدان"),
                          SentencesRow(
                            englishText:
                                "With a clap of his hands he ordered more food.",
                            kurdishText:
                                "بە چەپڵەلێدانێک داوای خواردنی زیاتری کرد.",
                            onPressedBritish: () => speakclaps8("en-GB"),
                            onPressedAmerican: () => speakclaps8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Let's give a big clap for our winning contestant!",
                            kurdishText:
                                "با چەپڵەیەک لێبدەین بۆ ڕکابەرە براوەکەمان!",
                            onPressedBritish: () => speakclaps9("en-GB"),
                            onPressedAmerican: () => speakclaps9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) دەنگێکی بەھێز و لەناکاو"),
                          SentencesRow(
                            englishText:
                                "There was a clap of thunder and then it started to pour with rain.",
                            kurdishText:
                                "دەنگێکی ھەورە چەخماخە بوو و دواتر باران خوڕەمی کرد.",
                            onPressedBritish: () => speakclaps10("en-GB"),
                            onPressedAmerican: () => speakclaps10("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: clap (derived forms: claps)
1. A sudden very loud noise (= bang, eruption, blast, bam)
 
2. A common venereal disease caused by the bacterium Neisseria gonorrhoeae; symptoms are painful urination and pain around the urethra (= gonorrhea [N. Amer], gonorrhoea [Brit, Cdn])
 
3. A sharp abrupt noise as if two objects hit together; may be repeated (= clack)

- Verb: clap (derived forms: claps, clapping, clapped)
1. Put quickly or forcibly
"The judge clapped him in jail"
 
2. Cause to strike the air in flight
"The big bird clapped its wings"
 
3. Clap one's hands or shout after performances to indicate approval (= applaud, spat, acclaim)
 
4. Clap one's hands together (= spat)
"The children were clapping to the music";
 
5. Strike the air in flight
"the wings of the birds clapped loudly"
 
6. Strike with the flat of the hand; usually in a friendly way, as in encouragement or greeting
 
7. Strike together so as to produce a sharp percussive noise
"clap two boards together"
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

  final String _videoId = 'yDONdPpRmtQ';
  final double _startSeconds = 19;

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

  final String _videoId = 'ko7oA65y3XE';
  final double _startSeconds = 10;

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

  final String _videoId = 'Ak-kwWMKYsE';
  final double _startSeconds = 13;

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

  final String _videoId = 'OrnpSe4OChM';
  final double _startSeconds = 86;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 15;

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

  final String _videoId = 't4uOxnokGnQ';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'gDxBN1y5C8o';
  final double _startSeconds = 207;

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

  final String _videoId = 'CtbcRFSzRrk';
  final double _startSeconds = 187;

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