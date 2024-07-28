import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychief extends StatelessWidget {
  // blank divider
  EnglishEntrychief({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchief(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chief");
  }

  Future<void> speakchiefs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He became the chief architect of the Treaty of Paris.");
  }

  Future<void> speakchiefs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cites the economy as her chief concern.");
  }

  Future<void> speakchiefs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her chief rival for the gold medal is Jones of the USA.");
  }

  Future<void> speakchiefs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The lion is the zebra's chief enemy.");
  }

  Future<void> speakchiefs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The new police chief has really made his presence felt.");
  }

  Future<void> speakchiefs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was a Zulu chief.");
  }

  Future<void> speakchiefs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is Washington bureau chief for The New York Times.");
  }

  Future<void> speakchiefs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He served as chief of police between 2002 and 2009.");
  }

  Future<void> speakchiefs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was appointed chief of the Fire Department.");
  }

  Future<void> speakchiefs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Security chiefs are keeping their men on full alert after the bomb threat.");
  }

  Future<void> speakchiefs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We spoke to a former CIA chief of European operations.");
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
                            EntryTitle(word: "chief"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃiːf/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchief("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃiːf/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchief("en-US"),
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
کوردی: سەرۆک، سەرەک، پایەبەرزترین، گەورە، سەر، کەڵان، میر،	سەرۆکی ھۆز، کەڵانتەر، سەرخێڵ، سەرھۆز، سەرتیرە،	ڕێبەر، فەرماندەر، فەرماندار، سالار، سەردار، سەرکردە،	بەڕێز، کاکە (لە بانگ‌کردن‌دا)، ـگشتی، سەرـ (لە لێکدان‌دا)، گرنگ، گرنگ‌ترین، سەرەکی، بنەڕەتی، بنچینەیی، بنگەھی
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) گرنگترین"),
                          SentencesRow(
                            englishText:
                                "He became the chief architect of the Treaty of Paris.",
                            kurdishText:
                                "بوو بە گرنگترین دانەری پەیماننامەی پاریس.", // chief",
                            onPressedBritish: () => speakchiefs1("en-GB"),
                            onPressedAmerican: () => speakchiefs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She cites the economy as her chief concern.",
                            kurdishText:
                                "ئابووری بە نیگەرانیی یەکەمی ناودێنێت.",
                            onPressedBritish: () => speakchiefs2("en-GB"),
                            onPressedAmerican: () => speakchiefs2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Her chief rival for the gold medal is Jones of the USA.",
                                    kurdishText:
                                        "ڕکابەری سەرەکیی بۆ مەدالیای زێڕ جۆن بوو لە ئەمریکاوە.",
                                    onPressedBritish: () =>
                                        speakchiefs3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The lion is the zebra's chief enemy.",
                                    kurdishText:
                                        "شێر دوژمنی سەرەکیی کەرەکێوییە.",
                                    onPressedBritish: () =>
                                        speakchiefs4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs4("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٢. (ھاوەڵناو) باڵترین لە پێگەدا"),
                                  SentencesRow(
                                    englishText:
                                        "The new police chief has really made his presence felt.",
                                    kurdishText:
                                        "بەڕێوبەرە تازەکەی پۆلیس جێ‌دەستی خۆی پیشانداوە.",
                                    onPressedBritish: () =>
                                        speakchiefs5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "He was a Zulu chief.",
                                    kurdishText: "سەرۆکی (تیرەی) زولو بوو.",
                                    onPressedBritish: () =>
                                        speakchiefs6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs6("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٣. (ناو) کەسێک کە پلەی بەرزە یان بەرزترین پلەی ھەیە لە کۆمپانیایەک یان دامەزراوەیەک"),
                                  SentencesRow(
                                    englishText:
                                        "She is Washington bureau chief for The New York Times.",
                                    kurdishText:
                                        "کاربەدەستی بەشی واشنتۆنە بۆ ڕۆژنامەی نیویۆرک تایمز.",
                                    onPressedBritish: () =>
                                        speakchiefs7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He served as chief of police between 2002 and 2009.",
                                    kurdishText:
                                        "وەک بەڕێوبەری پۆلیس کاربەدەست بوو لە ٢٠٠٢ بۆ ٢٠٠٩.",
                                    onPressedBritish: () =>
                                        speakchiefs8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchiefs8("en-US"),
                                  ),
                                  Column(
                                    children: [
                                      MyExpansionTile(
                                        children: [
                                          SentencesRow(
                                            englishText:
                                                "He was appointed chief of the Fire Department.",
                                            kurdishText:
                                                "وەک بەرپرسی بەشی ئاگرکوژێنەوە دانرا.",
                                            onPressedBritish: () =>
                                                speakchiefs9("en-GB"),
                                            onPressedAmerican: () =>
                                                speakchiefs9("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "Security chiefs are keeping their men on full alert after the bomb threat.",
                                            kurdishText:
                                                "بەرپرسانی ئەمنی پیاوەکانیان لەوپەڕی ئامادەباشی ھێشتووەتەوە لە دوای ھەڕەشەی بۆمبەکە.",
                                            onPressedBritish: () =>
                                                speakchiefs10("en-GB"),
                                            onPressedAmerican: () =>
                                                speakchiefs10("en-US"),
                                          ),
                                          const DividerSentences(),
                                          SentencesRow(
                                            englishText:
                                                "We spoke to a former CIA chief of European operations.",
                                            kurdishText:
                                                "دواین لەگەڵ بەرپرسێکی پێشووتری سی‌ئای‌ئەی بۆ ئۆپەراسیۆنەکانی ئەورووپا.",
                                            onPressedBritish: () =>
                                                speakchiefs11("en-GB"),
                                            onPressedAmerican: () =>
                                                speakchiefs11("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
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
- Adjective: chief (derived forms: chiefest, chiefer)
1. Most important element (= main, primary, principal, master)
"the chief aim of living";

- Noun: chief  cheef (derived forms: chiefest, chiefer)
1. A person who is in charge (= head, top dog [informal])
"the chief of the whole operation";
 
2. A person who exercises control over workers (= foreman, gaffer [Brit, informal], honcho [N. Amer, informal], boss)
"if you want to leave early you have to ask the chief";
 
3. The head of a tribe or clan (= headman, tribal chief, chieftain)
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

  final String _videoId = 'E_Ca1DkUocs';
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

  final String _videoId = 'sMZ7ppSqg6c';
  final double _startSeconds = 173;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 1076;

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

  final String _videoId = '3RkhZgRNC1k';
  final double _startSeconds = 167;

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

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 707;

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

  final String _videoId = 'MLd4K5hKosw';
  final double _startSeconds = 343;

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

  final String _videoId = 'Zn0GBm1ltIk';
  final double _startSeconds = 284;

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

  final String _videoId = 'CqkhjL3WvWQ';
  final double _startSeconds = 151;

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
