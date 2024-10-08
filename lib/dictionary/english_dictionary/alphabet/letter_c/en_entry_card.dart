import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycard extends StatelessWidget {
  EnglishEntrycard({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcard(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("card");
  }

  Future<void> speakcards1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The model of the building was made of card.");
  }

  Future<void> speakcards2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Each person wrote their question on a card.");
  }

  Future<void> speakcards3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When they got engaged I sent them a card.");
  }

  Future<void> speakcards4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Did you get my card from Italy?");
  }

  Future<void> speakcards5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My phone number is here on my business card.");
  }

  Future<void> speakcards6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can I pay with a card?");
  }

  Future<void> speakcards7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("John shuffled the cards before he dealt them (out).");
  }

  Future<void> speakcards8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've never been very good at cards.");
  }

  Future<void> speakcards9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The security guard cards visitors to ensure safety.");
  }

  Future<void> speakcards10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcards1010");
  }

  Future<void> speakcards11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcards1111");
  }

  Future<void> speakcards12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcards1212");
  }

  Future<void> speakcards13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcards1313");
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
                            EntryTitle(word: "card"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɑːd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcard("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɑːrd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcard("en-US"),
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
کوردی: کارت، پسوولە، پەڕ (ھی یاری)، کارتی پیرۆزبایی، کەسێکی نائاسایی یان پێکەنینی، شانە، شیکەنە، شانە، دەفە، شیکەنە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کاغەزێکی ئەستوور و پتەو بۆ نووسین لەسەری"),
                          SentencesRow(
                            englishText:
                                "The model of the building was made of card.",
                            kurdishText: "نموونەی بیناکە لەسەر کارد کێشرا.",
                            onPressedBritish: () => speakcards1("en-GB"),
                            onPressedAmerican: () => speakcards1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Each person wrote their question on a card.",
                            kurdishText:
                                "ھەر کەسێک پرسیارەکەی لەسەر کاغەزێک نووسی.",
                            onPressedBritish: () => speakcards2("en-GB"),
                            onPressedAmerican: () => speakcards2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کاغەزێکی پتەو کە لە ناوەڕاستدا چەمێندراوەتەوە و وێنەیەکی لەسەرە. بەکاردێت بۆ ناردنی پیرۆزبایی، بانگھێشت، ھتد"),
                          SentencesRow(
                            englishText:
                                "When they got engaged I sent them a card.",
                            kurdishText: "کە مارە بڕدران، کاردێکم بۆ ناردن.",
                            onPressedBritish: () => speakcards3("en-GB"),
                            onPressedAmerican: () => speakcards3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پۆستکارد؛ کاردێک کە بۆ نامەناردن بە پۆستە بەکاردێت"),
                          SentencesRow(
                            englishText: "Did you get my card from Italy?",
                            kurdishText: "پۆستکاردەکەمت لە ئیتالیاوە پێگەشت؟",
                            onPressedBritish: () => speakcards4("en-GB"),
                            onPressedAmerican: () => speakcards4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) پەڕەیەک یان پارچە پلاستیکێک کە زانیاری لەسەر کەسێک لەسەرە"),
                          SentencesRow(
                            englishText:
                                "My phone number is here on my business card.",
                            kurdishText:
                                "ژمارە موبایلەکەم لێرەیە لەسەر کارتی کارەکەم.",
                            onPressedBritish: () => speakcards5("en-GB"),
                            onPressedAmerican: () => speakcards5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) کاردی بانکی"),
                          SentencesRow(
                            englishText: "Can I pay with a card?",
                            kurdishText: "دەتوانم بە کاردەکەم پارە بدەم؟",
                            onPressedBritish: () => speakcards6("en-GB"),
                            onPressedAmerican: () => speakcards6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) یەکێک لە کاردەکانی یاری کۆنکان"),
                          SentencesRow(
                            englishText:
                                "John shuffled (= mixed up) the cards before he dealt them (out) (= gave them to the players).",
                            kurdishText:
                                "جۆن کاردەکانی تێکدا پێش ئەوەی دابەشیان بکات.",
                            onPressedBritish: () => speakcards7("en-GB"),
                            onPressedAmerican: () => speakcards7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) یەرییەک کە بە کارد دەکرێت"),
                          SentencesRow(
                            englishText: "I've never been very good at cards.",
                            kurdishText: "ھەرگیز لە یاری کۆنکاندا باش نەبوومە.",
                            onPressedBritish: () => speakcards8("en-GB"),
                            onPressedAmerican: () => speakcards8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) داواکردنی بینینی کارتی پێناسی کەسێک"),
                          SentencesRow(
                            englishText:
                                "The security guard cards visitors to ensure safety.",
                            kurdishText:
                                "پاسەوانەکە داوای پێناسی ھەر سەردانکارێکی دەکرد بۆ دڵنیایی لە پاراستن.",
                            onPressedBritish: () => speakcards9("en-GB"),
                            onPressedAmerican: () => speakcards9("en-US"),
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
                        YoutubeEmbeddedeight(), //
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
- Noun: card (derived forms: cards)
1. One of a set of small pieces of stiff paper marked in various ways and used for playing games or for telling fortunes
"he collected cards and traded them with the other boys"
 
2. A rectangular piece of stiff paper used to send messages (may have printed greetings or pictures)
"they sent us a card from Miami"
 
3. A card certifying the identity of the bearer (= identity card, ID card)
"he had to show his card to get in";

4. Thin cardboard, usually rectangular
 
5. A witty amusing person who makes jokes (= wag, wit, dag [US, Austral, informal])
 
6. A sign posted in a public place as an advertisement (= poster, posting, placard, notice, bill)
"a card advertised the coming attractions";
 
7. A printed or written greeting that is left to indicate that you have visited (= calling card, visiting card)
 
8. (golf) a record of scores (as in golf, etc.) (= scorecard, scoresheet)
"you have to turn in your card to get a handicap"; 

9. A list of dishes available at a restaurant (= menu, bill of fare, carte du jour, carte)
"the card was in French";

10. (baseball) a list of batters in the order in which they will bat (= batting order, lineup, line-up)
"the managers presented their cards to the umpire at home plate";
 
11. A printed circuit that can be inserted into expansion slots in a computer to increase the computer's capabilities (= circuit board, circuit card, board, plug-in, add-in)

- Verb: card (derived forms: cards, carding, carded)
1. Separate the fibers of (= tease)
"card wool";

2. Ask someone for identification to determine whether he or she is old enough to consume liquor
"I was carded when I tried to buy a beer!"
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

  final String _videoId = 'qbfGPo_IUyc';
  final double _startSeconds = 22;

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

  final String _videoId = 'NYGnMH9fPwY';
  final double _startSeconds = 36;

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

  final String _videoId = 'ySLtbtsm-Ls';
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

  final String _videoId = '7TRSCpp_IcU';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'VUk9_yNp14M';
  final double _startSeconds = 26;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 869;

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

  final String _videoId = '99i-Uo7rIpw';
  final double _startSeconds = 238;

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

  final String _videoId = '_TfJh0kLJCw';
  final double _startSeconds = 78;

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

  final String _videoId = 'IXZJKiOR_rs';
  final double _startSeconds = 12;

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

  final String _videoId = '64q6JODrhj8';
  final double _startSeconds = 29;

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

  final String _videoId = 'vXcFGgwP1J4';
  final double _startSeconds = 22;

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
