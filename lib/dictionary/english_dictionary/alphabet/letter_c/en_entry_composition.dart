import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomposition extends StatelessWidget {
// blank divider
  EnglishEntrycomposition({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomposition(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("composition");
  }

  Future<void> speakcompositions1(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The overall composition of the Senate was Democrats 57 and Republicans 43.");
  }

  Future<void> speakcompositions2(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The two drugs are nearly identical in composition.");
  }

  Future<void> speakcompositions3(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Has household composition changed in the last decade?");
  }

  Future<void> speakcompositions4(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In the exam you will have to do a composition.");
  }

  Future<void> speakcompositions5(String languageCode) async {
    // DOPSUM: CHANGE speakcomposition
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This concerto is one of her earlier compositions.");
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
                            EntryTitle(word: "composition"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒmpəˈzɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomposition("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkɑːmpəˈzɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomposition("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: پێکھێنان، دانان، پێکەوەنان، دروس‌کردن، ھەڵبەستن،	بەرھەم، شوێنەوار (ئآواز، ھەڵبەست، کتێب و ھتد)،	ئاوازدانان،	ئینشا (خوێندنگا)،	نووسین، نڤیسین،	پیت‌چنی،	ڕێکخستن،	سروشت، خۆڕسک، بوون،	شتی پێکھاتوو،	ڕێک‌کەوتن، سازان، قەراروبڕێ، قەرارومەدار،	کەرەسە یان مەتریاڵی دەسکرد
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەشە جیاوازەکانی پێکھێنەری شتێک"),
                          SentencesRow(
                            englishText:
                                "The overall composition of the Senate was Democrats 57 and Republicans 43.",
                            kurdishText:
                                "پێکھاتەی گشتی ئەنجوومەنی پیران ٥٧ دیموکرات و ٤٣ کۆماری بوو.", // composition",
                            onPressedBritish: () => speakcompositions1("en-GB"),
                            onPressedAmerican: () =>
                                speakcompositions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The two drugs are nearly identical in composition.",
                            kurdishText:
                                "دوو دەرمانەکە بەنزیکەیی لێکچوون لە پێکھاتەدا.",
                            onPressedBritish: () => speakcompositions2("en-GB"),
                            onPressedAmerican: () =>
                                speakcompositions2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Has household composition changed in the last decade?",
                            kurdishText:
                                "لە دەیەی ڕابردوودا پێکھاتەی ماڵ گۆڕاوە؟",
                            onPressedBritish: () => speakcompositions3("en-GB"),
                            onPressedAmerican: () =>
                                speakcompositions3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) وتارێکی کورت"),
                          SentencesRow(
                            englishText:
                                "In the exam you will have to do a composition.",
                            kurdishText:
                                "لە تاقیکردنەوەکەدا دەبێت کورتە وتارێک بنووسیت.",
                            onPressedBritish: () => speakcompositions4("en-GB"),
                            onPressedAmerican: () =>
                                speakcompositions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) پارچە میوزیکێک یان کارێکی ھونەری، یان ھۆنراوەیەک"),
                          SentencesRow(
                            englishText:
                                "This concerto is one of her earlier compositions.",
                            kurdishText:
                                "ئەم کۆنسێرتۆیە یەکێکە لە بەرھەمەکانی سەرەتای.",
                            onPressedBritish: () => speakcompositions5("en-GB"),
                            onPressedAmerican: () =>
                                speakcompositions5("en-US"),
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
- Noun: composition (derived forms: compositions)
1. The spatial property resulting from the arrangement of parts in relation to each other and to the whole (= composing)
"harmonious composition is essential in a serious work of art";
 
2. The way in which someone or something is composed (= constitution, physical composition, makeup, make-up)
 
3. A mixture of ingredients
 
4. A musical work that has been created (= musical composition, opus, piece, piece of music)
"the composition is written in four movements";
 
5. Musical creation (= composing)
 
6. The act of creating written works (= writing, authorship, penning)
"composition was a form of therapy for him";
 
7. Art and technique of printing with movable type (= typography)
 
8. An essay (especially one written as an assignment) (= paper, report, theme)
"he got an A on his composition";
 
9. Something that is created by arranging several things to form a unified whole
"he envied the composition of their faculty"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '0pAz6LTdTrw';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'MzSktgpfD84';
  final double _startSeconds = 384;

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

  final String _videoId = 'LJNtfyq3TDE';
  final double _startSeconds = 858;

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

  final String _videoId = 'BlU49dJhfcw';
  final double _startSeconds = 351;

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

  final String _videoId = 'DmqFbgKWoao';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'DgnEtXsEzIo';
  final double _startSeconds = 893;

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

  final String _videoId = 'Dl4dSVf7kgY';
  final double _startSeconds = 428;

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

  final String _videoId = 'SaOHTp07Vgw';
  final double _startSeconds = 1506;

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