import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycirculation extends StatelessWidget {
  // blank divider
  EnglishEntrycirculation({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcirculation(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("circulation");
  }

  Future<void> speakcirculations1(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Regular exercise will improve blood circulation.");
  }

  Future<void> speakcirculations2(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have poor circulation.");
  }

  Future<void> speakcirculations3(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Copies of the magazine were withdrawn from circulation.");
  }

  Future<void> speakcirculations4(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The new banknotes will go into general circulation next year.");
  }

  Future<void> speakcirculations5(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The newspaper has a daily circulation of 20 000.");
  }

  Future<void> speakcirculations6(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Poor air circulation can result in vapor inside cars.");
  }

  Future<void> speakcirculations7(String languageCode) async {
    // DOPSUM: CHANGE speakcirculation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Anne has been ill but now she's back in circulation.");
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
                            EntryTitle(word: "circulation"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌsɜːkjəˈleɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcirculation("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌsɜːrkjəˈleɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcirculation("en-US"),
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
کوردی: ڕەوت، لێشاو، تەوژم،	سووڕان، گەڕان، زڤرین،	سووڕ، سووڕان یان گەڕانی خوێن،	بڵاوبوونەوە، تەشەنە،	بڵاوک، تیراژ (ڕۆژنامە و کۆڤار).	چوون، بڕەوی، پارە، پووڵ 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) سوڕی خوێن بە جەستەدا"),
                          SentencesRow(
                            englishText:
                                "Regular exercise will improve blood circulation.",
                            kurdishText:
                                "ڕاھێنانی بەدەوام سووڕی خوێن بەھێز دەکات.", // circulation",
                            onPressedBritish: () => speakcirculations1("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I have poor circulation.",
                            kurdishText: "سووڕی خوێنم لاوازە.",
                            onPressedBritish: () => speakcirculations2("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بڵاوبوونەوەی شتێک لە کەسێک یان شوێنێکەوە بۆ یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "Copies of the magazine were withdrawn from circulation.",
                            kurdishText:
                                "کۆپییەکانی گۆڤارەکە لە بڵاوبوونەوە گەێندرانەوە.",
                            onPressedBritish: () => speakcirculations3("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The new banknotes will go into general circulation next year.",
                            kurdishText:
                                "دراوە کاغەزییە تازەکان ساڵی داھاتوو دەخرێنە بڵاوبوونەوەوە.",
                            onPressedBritish: () => speakcirculations4("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ڕێژەی ئاسایی کۆپی ئەو ڕۆژنامە و گۆڤارانەی دەفرۆشرێن لە ڕۆژێکدام ھەفتەیەکدا، ھتد"),
                          SentencesRow(
                            englishText:
                                "The newspaper has a daily circulation of 20 000.",
                            kurdishText:
                                "ڕۆژنامەکە فرۆشی ڕۆژانەی ٢٠٠٠٠ کۆپی ھەیە.",
                            onPressedBritish: () => speakcirculations5("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) جوڵەی شتێک، بۆ نموونە ئاو یان گاز، لەناو شتێکدا یان بە ناو سیستەمێک یان ئامێرێکدا"),
                          SentencesRow(
                            englishText:
                                "Poor air circulation can result in vapor inside cars.",
                            kurdishText:
                                "کەمی سووڕی ھەوا دەکرێت ببێتە ھۆی ھەڵم لە ناو ئۆتۆمبێلدا.",
                            onPressedBritish: () => speakcirculations6("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەژداریکردن لە چالاکییە کۆمەڵایەتییەکان"),
                          SentencesRow(
                            englishText:
                                "Anne has been ill but now she's back in circulation.",
                            kurdishText:
                                "ئان ماوەیەک دەبێت نەخۆشە بەڵام ئێستا گەڕاوەتەوە بۆ ناو چالاکییە کۆمەڵایەتییەکان.",
                            onPressedBritish: () => speakcirculations7("en-GB"),
                            onPressedAmerican: () =>
                                speakcirculations7("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: circulation (derived forms: circulations)
1. The dissemination of copies of periodicals (as newspapers or magazines)
 
2. Movement through a circuit; especially the movement of blood through the heart and blood vessels
 
3. (library science) the count of books that are loaned by a library over a specified period
 
4. Number of copies of a newspaper or magazine that are sold
"by increasing its circulation the newspaper hoped to increase its advertising"
 
5. Free movement or passage (as of cytoplasm within a cell or sap through a plant)
"ocean circulation is an important part of global climate"; "a fan aids air circulation"
 
6. The spread or transmission of something (as news or money) to a wider group or area
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

  final String _videoId = '79VSiCHm63w';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'vwtD_UwX4wA';
  final double _startSeconds = 163;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'SWvj8N96rLs';
  final double _startSeconds = 13;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Xnod8fBdUfk';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Fa13JKGG0ds';
  final double _startSeconds = 799;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'ZQvfHyfgBtA';
  final double _startSeconds = 403;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'K3YnaQ64ELY';
  final double _startSeconds = 14;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'CsTmgX32Uk8';
  final double _startSeconds = 30;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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
