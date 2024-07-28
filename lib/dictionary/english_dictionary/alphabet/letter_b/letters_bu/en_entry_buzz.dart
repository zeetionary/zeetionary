import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybuzz extends StatelessWidget {
// blank divider
  EnglishEntrybuzz({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbuzz(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("buzz");
  }

  Future<void> speakbuzzs1(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bees buzzed lazily among the flowers.");
  }

  Future<void> speakbuzzs2(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doorbell buzzed loudly.");
  }

  Future<void> speakbuzzs3(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("New York buzzes from dawn to dusk.");
  }

  Future<void> speakbuzzs4(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The place was buzzing with journalists.");
  }

  Future<void> speakbuzzs5(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The doctor buzzed for the next patient to come in.");
  }

  Future<void> speakbuzzs6(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I heard a buzz and then saw the plane in the distance.");
  }

  Future<void> speakbuzzs7(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was woken by the buzz of a mosquito in his ear.");
  }

  Future<void> speakbuzzs8(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The buzz of conversation suddenly stopped when she came into the room.");
  }

  Future<void> speakbuzzs9(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Flying gives me a real buzz.");
  }

  Future<void> speakbuzzs10(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was a buzz of excitement all around the room.");
  }

  Future<void> speakbuzzs11(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The buzz is that Matt is in Scotland. Have you heard anything?");
  }

  Future<void> speakbuzzs12(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuzzs1212");
  }

  Future<void> speakbuzzs13(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuzzs1313");
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
                            EntryTitle(word: "buzz"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bʌz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbuzz("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bʌz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbuzz("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: ویزەویز، گیزەگیز، (دەزگا) فڕەفڕ، ڤڕەڤڕ، زرنگانەوە، دەنگەدەنگ، ھەراوھوریا، قیژەقیژ، دەنگۆ، قسەڵۆک، دەنگی بوزێر (یان تەلەفۆن)، زەنگ یان زڕەی تەلەفۆن، ھەستی وروژان یان خۆشی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) دەرکردنی دەنگێکی نزمی بەردەوام"),
                          SentencesRow(
                            englishText:
                                "Bees buzzed lazily among the flowers.",
                            kurdishText:
                                "ھەنگ بەھێواشی گیزەیان دەھات لەناو گوڵەکاندا.", // buzz", follow LX strictly
                            onPressedBritish: () => speakbuzzs1("en-GB"),
                            onPressedAmerican: () => speakbuzzs1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) دەرکردنی دەنگێک کە وەک دەنگی ھەنگ وای"),
                          SentencesRow(
                            englishText: "The doorbell buzzed loudly.",
                            kurdishText: "زەنگی دەرگاکە بە بەرزی دەنگی دەھات.",
                            onPressedBritish: () => speakbuzzs2("en-GB"),
                            onPressedAmerican: () => speakbuzzs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) پڕ لە خرۆشاوی و چالاکی"),
                          SentencesRow(
                            englishText: "New York buzzes from dawn to dusk.",
                            kurdishText:
                                "نیویۆرک لە بەرەبەیانەوە تا مەغریب ھاژەی دێت.",
                            onPressedBritish: () => speakbuzzs3("en-GB"),
                            onPressedAmerican: () => speakbuzzs3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The place was buzzing with journalists.",
                            kurdishText: "شوێنەکە پڕبوو لە ڕۆژنامەنووس.",
                            onPressedBritish: () => speakbuzzs4("en-GB"),
                            onPressedAmerican: () => speakbuzzs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بانگکردنی کەسێک بە دەستنان بە زەنگێکدا"),
                          SentencesRow(
                            englishText:
                                "The doctor buzzed for the next patient to come in.",
                            kurdishText:
                                "پزیشکەکە زەنگی بۆ نەخۆشی دواتر لێدا بچێتە ژوورەوە.",
                            onPressedBritish: () => speakbuzzs5("en-GB"),
                            onPressedAmerican: () => speakbuzzs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) دەنگێکی بەردەوامی نزم"),
                          SentencesRow(
                            englishText:
                                "I heard a buzz and then saw the plane in the distance.",
                            kurdishText:
                                "گوێم لە ھاژەکە بوو و دواتر فڕۆکەکەم لە دوورەوە دیت.",
                            onPressedBritish: () => speakbuzzs6("en-GB"),
                            onPressedAmerican: () => speakbuzzs6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was woken by the buzz of a mosquito in his ear.",
                            kurdishText:
                                "لە خەو ھەستا بە دەنگی مێشوولەیەک لە گوێیدا.",
                            onPressedBritish: () => speakbuzzs7("en-GB"),
                            onPressedAmerican: () => speakbuzzs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دەنگی قسەی خەڵکی، بە تایبەتی کە خرۆشاون"),
                          SentencesRow(
                            englishText:
                                "The buzz of conversation suddenly stopped when she came into the room.",
                            kurdishText:
                                "دەنگی گفتوگۆ لەناکاو وەستا کە ئەو ھاتە ژوورەکە.",
                            onPressedBritish: () => speakbuzzs8("en-GB"),
                            onPressedAmerican: () => speakbuzzs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ھەستێکی بەھێزی خۆشحاڵی، جۆشھوخرۆشی، ھتد"),
                          SentencesRow(
                            englishText: "Flying gives me a real buzz.",
                            kurdishText:
                                "فڕین ھەستێکی تەواو ڕاستەقینەم پێ دەبەخشێت.",
                            onPressedBritish: () => speakbuzzs9("en-GB"),
                            onPressedAmerican: () => speakbuzzs9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There was a buzz of excitement all around the room.",
                            kurdishText:
                                "ھەستێکی خۆشی لە تەواوی ژوورەکەدا ھەبوو.",
                            onPressedBritish: () => speakbuzzs10("en-GB"),
                            onPressedAmerican: () => speakbuzzs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ھەواڵێک کە خەڵکی بە یەکدی دەڵێن و لەوانەیە ڕاست بێت و لەوانەیە ڕاست نەبێت"),
                          SentencesRow(
                            englishText:
                                "The buzz is that Matt is in Scotland. Have you heard anything?",
                            kurdishText:
                                "قسەڵۆکەکە ئەوەیە مات لە سکۆتلەندایە. ھیچت بیستووە؟",
                            onPressedBritish: () => speakbuzzs11("en-GB"),
                            onPressedAmerican: () => speakbuzzs11("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
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
- Noun: buzz (derived forms: buzzes)
1. Sound of rapid vibration (= bombilation, bombination)
"the buzz of a bumble bee";
 
2. [informal] A confusion of activity and gossip
"the buzz of excitement was so great that a formal denial was issued"
 
3. [informal] A sudden pleasurable excitement (= bang, charge, rush, flush, thrill, kick)
 
4. Strong widespread interest and excitement about a particular topic
"This book is generating quite a buzz"

- Verb: buzz (derived forms: buzzing, buzzes, buzzed)
1. Make a buzzing sound (= bombinate, bombilate)
"bees were buzzing around the hive";
 
2. Be noisy with activity (= hum, seethe)
"This office is buzzing with activity";
 
3. Call with a buzzer
"he buzzed the servant"
 
4. [informal] (air travel) fly low
"Planes buzzed the crowds in the square"
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 133;

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

  final String _videoId = 'bGqvimnOTeg';
  final double _startSeconds = 232;

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

  final String _videoId = 'n4BrXiSgW7M';
  final double _startSeconds = 38;

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

  final String _videoId = 'Bi2jES0T9zY';
  final double _startSeconds = 84;

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

  final String _videoId = 'MqYM0Lo3He8';
  final double _startSeconds = 219;

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

  final String _videoId = 'O5xC8T1XsE4';
  final double _startSeconds = 3649;

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

  final String _videoId = 'd7TJuAt5hkk';
  final double _startSeconds = 586;

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

  final String _videoId = 'w20q6ofJYBY';
  final double _startSeconds = 1675;

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

  final String _videoId = 'AMrT2DjG0gE';
  final double _startSeconds = 922;

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

  final String _videoId = 'DTvOL7EszHc';
  final double _startSeconds = 27;

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
