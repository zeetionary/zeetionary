import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconcentrate extends StatelessWidget {
// blank divider
  EnglishEntryconcentrate({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconcentrate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("concentrate");
  }

  Future<void> speakconcentrates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I can't concentrate with all that noise going on.");
  }

  Future<void> speakconcentrates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I struggled to concentrate on my job because I was worried about my son.");
  }

  Future<void> speakconcentrates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She tried to concentrate on reading her book but couldn't.");
  }

  Future<void> speakconcentrates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I decided to concentrate all my efforts on finding somewhere to live.");
  }

  Future<void> speakconcentrates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Power is largely concentrated in the hands of a small elite.");
  }

  Future<void> speakconcentrates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Fighting was concentrated around the towns to the north.");
  }

  Future<void> speakconcentrates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Singapore has a much smaller and more geographically concentrated population than Australia.");
  }

  Future<void> speakconcentrates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These jams made with fruit juice concentrate are lower in added sugar.");
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
                            EntryTitle(word: "concentrate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnsntreɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconcentrate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnsntreɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconcentrate("en-US"),
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
//                           const KurdishVocabulary(text: """
// کوردی:
// """),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) پێدانی تەواوی سەرنجت بە شتێک و بیرنەکردنەوە لە شتی دیکە"),
                          SentencesRow(
                            englishText:
                                "I can't concentrate with all that noise going on.",
                            kurdishText:
                                "ناتوانم سەرنج بدەم بەو ھەموو دەنگەدەنگەی ھەیە.", // concentrate",
                            onPressedBritish: () => speakconcentrates1("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I struggled to concentrate on my job because I was worried about my son.",
                            kurdishText:
                                "نەمدەتوانی بیروھۆشـ بدەم بە کارەکەم بەھۆی ئەوەی نیگەران بووم سەبارەت بە کوڕەکەم.",
                            onPressedBritish: () => speakconcentrates2("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She tried to concentrate on reading her book but couldn't.",
                            kurdishText:
                                "ھەوڵی دەدا سەرنج بخاتە سەر خوێندنەوە بەڵام نەیدەتوانی.",
                            onPressedBritish: () => speakconcentrates3("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I decided to concentrate all my efforts on finding somewhere to live.",
                            kurdishText:
                                "بڕیارم تەواوی ھەوڵم بدەم بۆ ئەوەی شوێنێک بدۆزمەوە بۆ ژیان.",
                            onPressedBritish: () => speakconcentrates4("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) پێکەوەنانی شتێک لە شوێنێکدا"),
                          SentencesRow(
                            englishText:
                                "Power is largely concentrated in the hands of a small elite.",
                            kurdishText:
                                "دەسەڵات کۆکراوەتەوە لە دەستی کۆمەڵێکی بچووک لە دەسەڵاتداراندا.",
                            onPressedBritish: () => speakconcentrates5("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Fighting was concentrated around the towns to the north.",
                            kurdishText:
                                "شەڕکردن لە دەوری شارۆچکەکانی باکوور چڕکرابوویەوە.",
                            onPressedBritish: () => speakconcentrates6("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Singapore has a much smaller and more geographically concentrated population than Australia.",
                            kurdishText:
                                "سنگاپوور دانیشتوانێکی بچووکتر و لە ڕووی جوگرافییەوە چڕتری ھەیە لە ئوسترالیا.",
                            onPressedBritish: () => speakconcentrates7("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) مادەیەک کە خەستکراوەتەوە بەھۆی ئەوەی ئاو و مادەکانی دیکەی لێ دەرکراوە"),
                          SentencesRow(
                            englishText:
                                "These jams made with fruit juice concentrate are lower in added sugar.",
                            kurdishText:
                                "ئەم مرەبایانەی کە لە شەربەتی خەستی میوە درووستکراون شەکری تێکراویان کەمترە.",
                            onPressedBritish: () => speakconcentrates8("en-GB"),
                            onPressedAmerican: () =>
                                speakconcentrates8("en-US"),
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
- Verb: concentrate (derived forms: concentrates, concentrating, concentrated)
1. Hold attention and exert mental effort on something (= focus, center [US], centre [Brit, Cdn], pore, rivet, pore over)
"Please concentrate on your studies and not on your hobbies";
 
2. Make denser, stronger, or purer
"concentrate juice"
 
3. Make central (= centralize, centralise [Brit])
 
5. Make more concise (= digest, condense, distill [N. Amer], distil [Brit])
"concentrate the contents of a book into a summary";
 
6. Draw together or meet in one common centre
"These groups concentrate in the inner cities"
 
7. Compress or concentrate (= condense, contract)
 
8. (cooking) be cooked until very little liquid is left (= boil down, reduce, decoct [archaic])
"The sauce should concentrate to one cup";
 
9. (cooking) cook until very little liquid is left (= reduce, boil down)
"The cook concentrated the sauce by boiling it for a long time";

- Noun: concentrate (derived forms: concentrates)
1. The desired mineral that is left after impurities have been removed from mined ore (= dressed ore)

2. A concentrated form of a foodstuff; the bulk is reduced by removing water
 
3. A concentrated example of something
"the concentrate of contemporary despair"
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

  final String _videoId = 'nANGQ_9wD-0';
  final double _startSeconds = 150;

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

  final String _videoId = 'DEFD9TSHg_A';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '1Gxrwh4zGPg';
  final double _startSeconds = 1023;

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

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 1068;

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

  final String _videoId = '9wY7u3bVnDs';
  final double _startSeconds = 379;

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

  final String _videoId = 'CmhFPjE6U8k';
  final double _startSeconds = 77;

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

  final String _videoId = 'PGPVpil2UmE';
  final double _startSeconds = 166;

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
