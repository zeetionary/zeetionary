import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycurrent extends StatefulWidget {
  const EnglishEntrycurrent({super.key});

  @override
  State<EnglishEntrycurrent> createState() => _EnglishEntrycurrentState();
}

class _EnglishEntrycurrentState extends State<EnglishEntrycurrent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // const TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "current");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: current");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ˈkʌrənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("current");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcurrent("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ˈkɜːrənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("current");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcurrent("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrents1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Oil prices are expected to remain at current levels.");
  }

  Future<void> speakcurrents2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's the budget for the current year?");
  }

  Future<void> speakcurrents3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Under the current system, the entire process takes about two weeks.");
  }

  Future<void> speakcurrents4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our current financial situation is not good.");
  }

  Future<void> speakcurrents5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What are the current unemployment figures?");
  }

  Future<void> speakcurrents6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "\"Thou\" and \"thee\" are examples of words that are no longer current in modern English.");
  }

  Future<void> speakcurrents7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's easier to go with the current.");
  }

  Future<void> speakcurrents8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Birds use warm air currents to help their flight.");
  }

  Future<void> speakcurrents9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was swimming against the current.");
  }

  Future<void> speakcurrents10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was swept away by the treacherous currents.");
  }

  Future<void> speakcurrents11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Check all your wiring before switching on the current.");
  }

  Future<void> speakcurrents12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Measure the current flowing in the wire.");
  }

  Future<void> speakcurrents13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The current failure lasted three hours.");
  }

  Future<void> speakcurrents14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Ministers are worried by this current of anti-government feeling.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: برەو، باو، داب،	ھەنووکە، (کاتی) ئێستا، ڕۆژانە، ڕۆژ، ڕۆژەڤ ، ئێستاکانێ،	لەگەڕ(دابوون)، دەساودەس‌کردوو، ڕەوندە، دەس‌کردوو (پارە)،	ڕەوندی، ڕۆین، ڕەوەن، ڕەوندە، خوڕ، ڕەوان،	ڕۆین یان ڕۆیشتنی ئاو، لێشاو،	کۆڕان، تەوژم،	تەزوو (با، ئێلیکتریسیتە)،	ڕەوت، ڕەوڕەوە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕوودان لە ئێستادا؛ پەیوەندیدار بە ئێستا"),
          SentencesRow(
            englishText: "Oil prices are expected to remain at current levels.",
            kurdishText: "نرخی نەوت پێشبینی دەکرێت لە ئاستی ئێستادا بمێنێتەوە.",
            onPressedBritish: () => speakcurrents1("en-GB"),
            onPressedAmerican: () => speakcurrents1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What's the budget for the current year?",
            kurdishText: "بودجەی ئەمساڵە چەندە؟",
            onPressedBritish: () => speakcurrents2("en-GB"),
            onPressedAmerican: () => speakcurrents2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Under the current system, the entire process takes about two weeks."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەم سیستەمەی ئێستا، تەواوی پڕۆسەکە نزیکەی دوو ھەفتەی پێدەچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Our current financial situation is not good."),
                            ExampleSentenceKurdish(
                                text: "دۆخی دارایی ئێستامان باش نییە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "What are the current unemployment figures?"),
                            ExampleSentenceKurdish(
                                text: "ئامارەکانی ئێستای بێکاری چۆنن؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کە لەلایەن زۆرینەی خەڵکییەوە بەکاردێت"),
          SentencesRow(
            englishText:
                "\"Thou\" and \"thee\" are examples of words that are no longer current in modern English.",
            kurdishText:
                "\"Thou\" و \"thee\" نموونەی ئەو وشانەن کە چ دیکە لە بەکارھێناندا نین لە ئینگلیزی سەرمدا.",
            onPressedBritish: () => speakcurrents6("en-GB"),
            onPressedAmerican: () => speakcurrents6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) جوڵەی ئاو لە دەریا یان ڕووباردا؛ جوڵەی با بە ئاراستەیەکی دیاریکراودا"),
          SentencesRow(
            englishText: "It's easier to go with the current.",
            kurdishText: "ئاسانترە لەگەڵ شەپۆلەکەدا بچیت.",
            onPressedBritish: () => speakcurrents7("en-GB"),
            onPressedAmerican: () => speakcurrents7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Birds use warm air currents to help their flight.",
            kurdishText:
                "باڵندە ڕەوتی ھەوای گەرم بەکاردێنن بۆ یارمەتیدانیان لە گەشتەکانیاندا.",
            onPressedBritish: () => speakcurrents8("en-GB"),
            onPressedAmerican: () => speakcurrents8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was swimming against the current.",
            kurdishText: "دژ بە شەپۆلەکە مەلەی دەکرد.",
            onPressedBritish: () => speakcurrents9("en-GB"),
            onPressedAmerican: () => speakcurrents9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was swept away by the treacherous currents.",
            kurdishText: "تەوژنە بەھێزەکە ڕایماڵی.",
            onPressedBritish: () => speakcurrents10("en-GB"),
            onPressedAmerican: () => speakcurrents10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) جوڵەی تەزووی کارەبا بە وایەر، ھتد ـدا"),
          SentencesRow(
            englishText:
                "Check all your wiring before switching on the current.",
            kurdishText:
                "تەواوی وایەردانانەکان بپشکنە پێش داگیرساندنی سویچی تەزووەکە.",
            onPressedBritish: () => speakcurrents11("en-GB"),
            onPressedAmerican: () => speakcurrents11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Measure the current flowing in the wire.",
            kurdishText: "جوڵەی تەزووی وایەرەکە بپێوە.",
            onPressedBritish: () => speakcurrents12("en-GB"),
            onPressedAmerican: () => speakcurrents12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) (ئینگلیزی ھیندی) بڕی کارەبای بەردەست"),
          SentencesRow(
            englishText: "The current failure lasted three hours.",
            kurdishText: "نەبوونی کارەبا سێ کاتژمێری خایاند.",
            onPressedBritish: () => speakcurrents13("en-GB"),
            onPressedAmerican: () => speakcurrents13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) بوونی باوەڕ و ھەست لەناو گرووپێک لە خەڵکیدا"),
          SentencesRow(
            englishText:
                "Ministers are worried by this current of anti-government feeling.",
            kurdishText:
                "وەزیرەکان نیگەرانن سەبارەت بەم ڕەوتەی ھەستی دژ بە حکومەت.",
            onPressedBritish: () => speakcurrents14("en-GB"),
            onPressedAmerican: () => speakcurrents14("en-US"),
          ),
        ],
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
- Noun: current (derived forms: currents)
1. A flow of electricity through a conductor (= electric current)
"the current was measured in amperes";
 
2. A steady flow of a fluid (usually from natural causes) (= stream)
"the raft floated downstream on the current";
 
3. Dominant course (suggestive of running water) of successive events or ideas (= stream, flow)
"the current of history";

- Adjective: current 
1. Occurring in or belonging to the present time
"current events"; "the current topic"; "current negotiations"; "current psychoanalytic theories"; "the ship's current position"
 
2. Generally accepted or used at the moment
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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 318;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 438;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 79;

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

  final String _videoId = '_GFkHA5EZdE';
  final double _startSeconds = 20;

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

  final String _videoId = 'lsFPbgK1v9I';
  final double _startSeconds = 143;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 790;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 213;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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
    );
  }
}

// end WORD_WEB