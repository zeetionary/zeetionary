import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconflict extends StatelessWidget {
  EnglishEntryconflict({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconflict(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("conflict");
  }

  Future<void> speakconflicts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The violence was the result of political conflicts.");
  }

  Future<void> speakconflicts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His task will be to resolve potential conflicts between the British and Scottish governments.");
  }

  Future<void> speakconflicts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She found herself in conflict with her parents over her future career.");
  }

  Future<void> speakconflicts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The country has experienced internal conflict over the last decade.");
  }

  Future<void> speakconflicts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Hopes of ending the conflict in the region are fading.");
  }

  Future<void> speakconflicts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A conflict between the two countries could easily spread across the whole region.");
  }

  Future<void> speakconflicts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her diary was a record of her inner conflict.");
  }

  Future<void> speakconflicts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many of these ideas appear to be in conflict with each other.");
  }

  Future<void> speakconflicts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Reports conflicted on how much of the aid was reaching the famine victims.");
  }

  Future<void> speakconflicts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There are several major areas where their interests conflict.");
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
                            EntryTitle(word: "conflict"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnflɪkt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconflict("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnflɪkt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconflict("en-US"),
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
کوردی: تێک‌ھەڵچوون، پێکادان، لێکدان، شەڕ، شەڕوکێشە، کێشە، مشت‌ومڕ، جوڕڕە، کێشمەکێش، ناکۆکی، ململانێ، کێشەوبەرە، دژبەری، دژایەتی، یەک‌نەگرتنەوە، جیاوازی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دۆخێک کە تێیدا خەڵک، ژمارەیەک گرووپ یان وڵات ناکۆکن یان لە مشتومڕی توندان"),
                          SentencesRow(
                            englishText:
                                "The violence was the result of political conflicts.",
                            kurdishText:
                                "توندوتیژییەکە ئەنجامی ڕووبەڕووبوونەوەی سیاسی بوو.",
                            onPressedBritish: () => speakconflicts1("en-GB"),
                            onPressedAmerican: () => speakconflicts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His task will be to resolve potential conflicts between the British and Scottish governments.",
                            kurdishText:
                                "ئەرکی چارەسەری ھەر ناکۆکییەکە کە دەکرێت درووست ببێت لە نێوان حکومەتەکانی بەریتانیا و سکۆتلەندا.",
                            onPressedBritish: () => speakconflicts2("en-GB"),
                            onPressedAmerican: () => speakconflicts2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She found herself in conflict with her parents over her future career.",
                            kurdishText:
                                "خۆی لە ناکۆکیدا بینییەوە لەگەڵ دایک و باوکی سەبارەت بە کاری داھاتووی.",
                            onPressedBritish: () => speakconflicts3("en-GB"),
                            onPressedAmerican: () => speakconflicts3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕووبەڕووبوونەوەی توندوتیژانە یان پێکدادان لە نێوان دوو لایەندا"),
                          SentencesRow(
                            englishText:
                                "The country has experienced internal conflict over the last decade.",
                            kurdishText:
                                "وڵاتەکە بە ڕووبەڕووبوونەوەی ناوخۆییدا تێپەڕێوە لە دەیەی ڕابردوودا.",
                            onPressedBritish: () => speakconflicts4("en-GB"),
                            onPressedAmerican: () => speakconflicts4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Hopes of ending the conflict in the region are fading.",
                            kurdishText:
                                "ھیوای کۆتایی ھێنان بە پێکدادان لە ھەرێمەکە ئاوا دەبێت.",
                            onPressedBritish: () => speakconflicts5("en-GB"),
                            onPressedAmerican: () => speakconflicts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "A conflict between the two countries could easily spread across the whole region.",
                            kurdishText:
                                "پێکدادانێک لە نێوان دوو وڵاتەکەدا دەکرێت بە ئاسانی بە ھەرێمەکەدا بڵاوببێتەوە.",
                            onPressedBritish: () => speakconflicts6("en-GB"),
                            onPressedAmerican: () => speakconflicts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دۆخێک کە تێیدا بیرۆکە، بۆچوون، ھەست، و ھیوا کە پێکەوە ناگونجێن پێکەوەن"),
                          SentencesRow(
                            englishText:
                                "Her diary was a record of her inner conflict.",
                            kurdishText:
                                "یادنامەکەی تۆمارێکی ململانێی ناوەکی خۆی بوو.",
                            onPressedBritish: () => speakconflicts7("en-GB"),
                            onPressedAmerican: () => speakconflicts7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Many of these ideas appear to be in conflict with each other.",
                            kurdishText:
                                "زۆرێک لەم بیرۆکانە وادەردەکەون دژبەری یەکدی بن.",
                            onPressedBritish: () => speakconflicts8("en-GB"),
                            onPressedAmerican: () => speakconflicts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دژبوونی بیرۆکە، باوەڕ، چیرۆک، ھتد و ئەوەی کە پێکەوە نەگونجێن"),
                          SentencesRow(
                            englishText:
                                "Reports conflicted on how much of the aid was reaching the famine victims.",
                            kurdishText:
                                "ڕاپۆرتەکان ناکۆک بوون لەسەر ئەوەی چەند لە یارمەتییەکە دەگەشتە قوربانییانی وشکەساڵییەکە.",
                            onPressedBritish: () => speakconflicts9("en-GB"),
                            onPressedAmerican: () => speakconflicts9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There are several major areas where their interests conflict.",
                            kurdishText:
                                "ژمارەیەک لایەنی گرنگ ھەن کە بەرژەوەندییەکانیان دژ بە یەکن.",
                            onPressedBritish: () => speakconflicts10("en-GB"),
                            onPressedAmerican: () => speakconflicts10("en-US"),
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
- Noun: conflict (derived forms: conflicts)
1. An open clash between two opposing groups (or individuals) (= struggle, battle)
"the harder the conflict the more glorious the triumph";
 
2. Opposition between two simultaneous but incompatible feelings
"he was immobilized by conflict and indecision"
 
3. A hostile meeting of opposing military forces in the course of a war (= battle, fight, engagement)
 
4. A state of opposition between persons, ideas or interests
"his conflict of interest made him ineligible for the post"; "a conflict of loyalties"
 
5. An incompatibility of dates or events
"he noticed a conflict in the dates of the two meetings"
 
6. Opposition in a work of drama or fiction between characters or forces (especially an opposition that motivates the development of the plot)
"this form of conflict is essential to Mann's writing"
 
7. A disagreement or argument about something important (= dispute, difference, difference of opinion)
"the familiar conflict between Republicans and Democrats";

- Verb: conflict (derived forms: conflicts, conflicting, conflicted)
1. Be in disagreement or be incompatible
"The two proposals conflict!"
 
2. Go against, as of rules and laws (= run afoul, infringe, contravene)
"This behaviour conflicts with our rules";
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

  final String _videoId = 'J1aeEdtGeKQ';
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

  final String _videoId = '61IJ8bmsosI';
  final double _startSeconds = 14;

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

  final String _videoId = '5J8CS8-BVfE';
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

  final String _videoId = 'fhS6Q27LbUc';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'PUY8eXfng-w';
  final double _startSeconds = 45;

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

  final String _videoId = 'B6L9mS9ti6o';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'RHgRZax3Xws';
  final double _startSeconds = 45;

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