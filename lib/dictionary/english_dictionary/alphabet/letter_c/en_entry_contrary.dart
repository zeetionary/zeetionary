import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontrary extends StatelessWidget {
// blank divider
  EnglishEntrycontrary({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontrary(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contrary");
  }

  Future<void> speakcontrarys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Contrary to popular belief, many cats dislike milk.");
  }

  Future<void> speakcontrarys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Contrary to the weather forecast, we had a fine day for the experiment.");
  }

  Future<void> speakcontrarys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These results run contrary to our expectations.");
  }

  Future<void> speakcontrarys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Despite all the contrary evidence, they still believed that the Earth was flat.");
  }

  Future<void> speakcontrarys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My own experience is completely contrary.");
  }

  Future<void> speakcontrarys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His death will be considered accidental unless the contrary is shown by evidence.");
  }

  Future<void> speakcontrarys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I was worried that it might be too hard for me but it turned out the contrary was true.");
  }

  Future<void> speakcontrarys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She was such a contrary child—it was impossible to please her.");
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
                            EntryTitle(word: "contrary"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntrəri/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontrary("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntreri/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontrary("en-US"),
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
کوردی: دژ، پێچەوانە، بە پێچەوانەوە، چەواشە، بەرڤاژی، لاسار، گوێ‌نەبیس، لا، ناحاڵی، کەللەڕەق
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) جیاواز یان پێچەوانەی شتێک"),
                          SentencesRow(
                            englishText:
                                "Contrary to popular belief, many cats dislike milk.",
                            kurdishText:
                                "پێچەوانەی باوەڕی بەرفراوان، زۆر پشیلە ڕقیان لە شیرە.", // contrary",
                            onPressedBritish: () => speakcontrarys1("en-GB"),
                            onPressedAmerican: () => speakcontrarys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Contrary to the weather forecast, we had a fine day for the experiment.",
                            kurdishText:
                                "پێچەوانەی پێشبینیی کەشووھەوا، ڕۆژێکی گونجاومان ھەبوو بۆ تاقیکردنەوەکە .",
                            onPressedBritish: () => speakcontrarys2("en-GB"),
                            onPressedAmerican: () => speakcontrarys2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These results run contrary to our expectations.",
                            kurdishText:
                                "ئەم ئەنجامانە دژ بە پێشبینییەکانمان دەوەستنەوە.",
                            onPressedBritish: () => speakcontrarys3("en-GB"),
                            onPressedAmerican: () => speakcontrarys3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) تەواو جیاواز لەوەی دەردەکەوێت یان باوەڕ دەکرێت"),
                          SentencesRow(
                            englishText:
                                "Despite all the contrary evidence, they still believed that the Earth was flat.",
                            kurdishText:
                                "سەرەڕای ھەموو بەڵگە دژەکان، ھێشتا باوەڕیان وابوو زەوی تەختە.",
                            onPressedBritish: () => speakcontrarys4("en-GB"),
                            onPressedAmerican: () => speakcontrarys4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "My own experience is completely contrary.",
                            kurdishText: "ئەزموونی خۆم تەواو پێچەوانەیە.",
                            onPressedBritish: () => speakcontrarys5("en-GB"),
                            onPressedAmerican: () => speakcontrarys5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) خراپ ڕەفتارکردن"),
                          SentencesRow(
                            englishText:
                                "She was such a contrary child—it was impossible to please her.",
                            kurdishText:
                                "منداڵێکی زۆر لاسار بوو، ئەستەم بوو دڵخۆش بکرێت.",
                            onPressedBritish: () => speakcontrarys8("en-GB"),
                            onPressedAmerican: () => speakcontrarys8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕاستی، دۆخ، یان بۆنەیەکی پێچەوانە"),
                          SentencesRow(
                            englishText:
                                "His death will be considered accidental unless the contrary is shown by evidence.",
                            kurdishText:
                                "مردنەکەی بە ڕووداوێک دادەنرێت مەگەر ئەوەی پێچەوانەکەی پیشان بدرێت بە بەڵگە.",
                            onPressedBritish: () => speakcontrarys6("en-GB"),
                            onPressedAmerican: () => speakcontrarys6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I was worried that it might be too hard for me but it turned out the contrary was true.",
                            kurdishText:
                                "نیگەران بووم کە زۆر سەخت بێت بۆم بەڵام دەرکەوت پێچەوانەکەی ڕاستە.",
                            onPressedBritish: () => speakcontrarys7("en-GB"),
                            onPressedAmerican: () => speakcontrarys7("en-US"),
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
- Adjective: contrary 
1. Very opposed in nature, character or purpose
"acts contrary to our code of ethics"; "the facts point to a contrary conclusion"
 
2. Of words or propositions so related that both cannot be true but both may be false
"'hot' and 'cold' are contrary terms"
 
3. In an opposing direction (= adverse)
"a contrary wind";

- Noun: contrary (derived forms: contraries)
1. A relation of direct opposition (= reverse, opposite)
 
2. Exact opposition
"public opinion to the contrary he is not guilty"
 
3. A logical relation such that two propositions are contraries if both cannot be true but both can be false

- Adjective: contrary
1. Resistant to guidance or discipline; tending to do the opposite of what is normal or wanted (= obstinate, perverse, wayward)
"Mary Mary quite contrary";
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

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 190;

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

  final String _videoId = 'b6zf5VkuiEQ';
  final double _startSeconds = 261;

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

  final String _videoId = 'mwhROjklvcE';
  final double _startSeconds = 1113;

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

  final String _videoId = 'Mhlpk5ZrYLM';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'IwJzsE8CvzQ';
  final double _startSeconds = 995;

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

  final String _videoId = 'tExo3ovEBWQ';
  final double _startSeconds = 149;

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

  final String _videoId = 'DmqFbgKWoao';
  final double _startSeconds = 847;

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