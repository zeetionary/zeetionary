import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomfortable extends StatelessWidget {
  EnglishEntrycomfortable({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomfortable(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("comfortable");
  }

  Future<void> speakcomfortables1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's such a comfortable bed.");
  }

  Future<void> speakcomfortables2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These new shoes are not very comfortable.");
  }

  Future<void> speakcomfortables3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The hotel was comfortable enough.");
  }

  Future<void> speakcomfortables4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you comfortable?");
  }

  Future<void> speakcomfortables5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Please make yourself comfortable while I get some coffee.");
  }

  Future<void> speakcomfortables6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The patient is comfortable after his operation.");
  }

  Future<void> speakcomfortables7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I was not entirely comfortable about the plans they had made.");
  }

  Future<void> speakcomfortables8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I didn't feel comfortable about accepting the money.");
  }

  Future<void> speakcomfortables9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She seems comfortable giving a speech without notes.");
  }

  Future<void> speakcomfortables10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I never feel very comfortable in her presence.");
  }

  Future<void> speakcomfortables11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They're not millionaires, but they're certainly very comfortable.");
  }

  Future<void> speakcomfortables12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He makes a comfortable living.");
  }

  Future<void> speakcomfortables13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They come from comfortable middle-class families.");
  }

  Future<void> speakcomfortables14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The party won with a comfortable majority.");
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
                            EntryTitle(word: "comfortable"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /ˈkʌmftəbl/,  /ˈkʌmfətəbl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomfortable("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /ˈkʌmftəbl/,  /ˈkʌmfərtəbl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomfortable("en-US"),
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
کوردی: ئاسوودە، تەناھـ، حەساوە، ڕاحەت، خۆش، خۆش‌گوزەران،	خەم‌ڕەوێن، ئاسوودەبەخش، مایەی دڵخۆشی،	زیاد، زۆر،	تەواو 
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) شتێک کە ئاسوودەبەخشە"),
                          SentencesRow(
                            englishText: "It's such a comfortable bed.",
                            kurdishText: "جێخەوێکی تەواو ئاسوودەبەخش بوو.",
                            onPressedBritish: () => speakcomfortables1("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These new shoes are not very comfortable.",
                            kurdishText:
                                "ئەم پێڵاوە تازانە زۆر ئاسوودەبەخش نین.",
                            onPressedBritish: () => speakcomfortables2("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The hotel was comfortable enough.",
                            kurdishText:
                                "ھوتێلەکە بەشی پێویست ئاسوودەبەخش بوو.",
                            onPressedBritish: () => speakcomfortables3("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کەسێک کە ئاسوودەیە"),
                          SentencesRow(
                            englishText: "Are you comfortable?",
                            kurdishText: "ئاسوودەیت؟",
                            onPressedBritish: () => speakcomfortables4("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Please make yourself comfortable while I get some coffee.",
                            kurdishText:
                                "تکایە ئاسوودە بە کە من ھەندێک قاوە ئامادە دەکەم.",
                            onPressedBritish: () => speakcomfortables5("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The patient is comfortable (= not in pain) after his operation.",
                            kurdishText:
                                "نەخۆشەکە ئاسوودەیە لە دوای نەشتەرگەرییەکەی.",
                            onPressedBritish: () => speakcomfortables6("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) ھەبوونی متمانە و نەبوونی نیگەرانی سەبارەت بە شتێک"),
                          SentencesRow(
                            englishText:
                                "I was not entirely comfortable about the plans they had made.",
                            kurdishText:
                                "تەواو ئاسوودە نەبووم سەبارەت بەو پلانانەی کە دایان نابوو.",
                            onPressedBritish: () => speakcomfortables7("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I didn't feel comfortable about accepting the money.",
                            kurdishText:
                                "ھەستمم بە ئاسوودەیی نەدەکرد سەبارەت بە پەسەندکردنی پارەکە.",
                            onPressedBritish: () => speakcomfortables8("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She seems comfortable giving a speech without notes.",
                            kurdishText:
                                "ھەست بە ئاسوودەیی دەکات کە وتارێک بەبێ تێبینی بدات.",
                            onPressedBritish: () => speakcomfortables9("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I never feel very comfortable in her presence.",
                            kurdishText: "ھەست بە ئاسوودەیی ناکەم لە پێشیدا.",
                            onPressedBritish: () =>
                                speakcomfortables10("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) ھەبوونی ھێندە پارە کە ئەوەی دەتەوێت دەیکڕیت بەبێ گرنگیدان بە نرخەکەی"),
                          SentencesRow(
                            englishText:
                                "They're not millionaires, but they're certainly very comfortable.",
                            kurdishText: "ملیۆنەر نین، بەڵام دەوڵەمەندن.",
                            onPressedBritish: () =>
                                speakcomfortables11("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He makes a comfortable living.",
                            kurdishText: "ژیانێکی دەوڵەمەندانەی ھەیە.",
                            onPressedBritish: () =>
                                speakcomfortables12("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They come from comfortable middle-class families.",
                            kurdishText:
                                "سەر بە خێزانێکی دەوڵەمەندی چینی ناوەندن.",
                            onPressedBritish: () =>
                                speakcomfortables13("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) پێنناسە"),
                          SentencesRow(
                            englishText:
                                "The party won with a comfortable majority.",
                            kurdishText:
                                "پارتەکە بە زۆرینەیەکی گەورەوە بردییەوە.",
                            onPressedBritish: () =>
                                speakcomfortables14("en-GB"),
                            onPressedAmerican: () =>
                                speakcomfortables14("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: comfortable 
1. Providing or experiencing physical well-being or relief (= comfy)
"comfortable clothes"; "made himself comfortable in an armchair"; "the antihistamine made her feel more comfortable"; "are you comfortable?";
 
2. Free from stress or conducive to mental ease; having or affording peace of mind
"was settled in a comfortable job, one for which he was well prepared"; "the comfortable thought that nothing could go wrong"; "was comfortable in his religious beliefs"; "she's a comfortable person to be with"; "she felt comfortable with her fiancé's parents"
 
3. Having a wide margin
"the home team had a comfortable lead"
 
4. Sufficient to provide comfort
"a comfortable salary"
 
5. In fortunate circumstances financially; moderately rich (= easy, prosperous, well-fixed, well-heeled, well-off, well-situated, well-to-do)
"they were comfortable or even wealthy by some standards";
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

  final String _videoId = 'RpzgPyuy614';
  final double _startSeconds = 8;

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

  final String _videoId = '8O6Ex4h4Qp4';
  final double _startSeconds = 96;

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

  final String _videoId = 'xkYved-ucGg';
  final double _startSeconds = 1039;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 556;

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

  final String _videoId = 'VAlnB-JfU7c';
  final double _startSeconds = 155;

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

  final String _videoId = 'NCLZi2Rn_ug';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'YFvjoXaw-MI';
  final double _startSeconds = 502;

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