import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace EnglishEntryAdopsum - replace speakAny

// replace any - /ˈeni/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryany extends StatelessWidget {
  // blank divider
  EnglishEntryany({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakany(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("any");
  }

  Future<void> speakany812(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I didn't eat any meat.");
  }

  Future<void> speakany814(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can't go out without any shoes.");
  }

  Future<void> speakany815(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He forbids any talking in class.");
  }

  Future<void> speakany817(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take any book you like.");
  }

  Future<void> speakany819(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Any teacher will tell you that students learn at different rates.");
  }

  Future<void> speakany821(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It isn't just any day—it's my birthday!");
  }

  Future<void> speakany944(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need some more paint; there isn't any left.");
  }

  Future<void> speakany947(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll take any you don't want.");
  }

  Future<void> speakany951(String languageCode) async {
    // DOPSUM: CHANGE speakAny
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He wasn't any good at French.");
  }

  // Future<void> speakany(String languageCode) async {
  //   // DOPSUM: CHANGE speakAny
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("any");
  // }

  // Future<void> speakany(String languageCode) async {
  //   // DOPSUM: CHANGE speakAny
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("any");
  // }

  // Future<void> speakany(String languageCode) async {
  //   // DOPSUM: CHANGE speakAny
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("any");
  // }

  // Future<void> speakany(String languageCode) async {
  //   // DOPSUM: CHANGE speakAny
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("any");
  // }

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
                            EntryTitle(word: "any"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈeni/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakany("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈeni/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakany("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ھیچ‌چەشنە، ھیچ‌کەس، ھیچ‌کەسێ، ھەرکەس، ھەموو کەس، ھەرکەسێ، ھیچ‌یەک، ھەر، ھەریەک، ھەرکام، ئیدی، ئیتر
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (دیارخەر) بۆ پیشاندانی بڕ لەگەڵ ناوی نەژمێردراو یان کۆ لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether، یان لە دوای ھەندێک کردارەوە، بۆ نموونە prevent و ban و forbid"""),
                          SentencesRow(
                            englishText: "I didn't eat any meat.",
                            kurdishText: "ھیچ گۆشتم نەخوارد.",
                            onPressedBritish: () => speakany812("en-GB"),
                            onPressedAmerican: () =>
                                speakany812(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "You can't go out without any shoes.",
                            kurdishText: "ناتوانی بێ ھیچ پێڵاوێک بچیتە دەرەوە.",
                            onPressedBritish: () => speakany814("en-GB"),
                            onPressedAmerican: () =>
                                speakany814(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "He forbids any talking in class.",
                            kurdishText:
                                "ھەموو جۆرە قسەکردنێک لە پۆلدا قەدەغە دەکات.",
                            onPressedBritish: () => speakany815("en-GB"),
                            onPressedAmerican: () =>
                                speakany815(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (دیارخەر) لەگەڵ ناوی ژمێردراوی تاک بەکاردێت بۆ ئاماژە بە یەکێک لە کۆمەڵێک کاتێک گرنگ نییە کەمەیان بێت"""),
                          SentencesRow(
                            englishText: "Take any book you like.",
                            kurdishText: "ھەر کتێبێکت دەوێت بیبە.",
                            onPressedBritish: () => speakany817("en-GB"),
                            onPressedAmerican: () =>
                                speakany817(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Any teacher will tell you that students learn at different rates.",
                            kurdishText:
                                "ھەموو مامۆستایەک پێت دەڵێت قوتابیان بەخێرایی جیاواز فێردەبن.",
                            onPressedBritish: () => speakany819("en-GB"),
                            onPressedAmerican: () =>
                                speakany819(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (دیارخەر) پیشاندانی ئەوەی شتێک گرنگە"""),
                          SentencesRow(
                            englishText:
                                "It isn't just any day—it's my birthday!",
                            kurdishText:
                                "ئەمڕۆ ھەر ڕۆژێکی وا ئاسایی نییە، لەدایکبوونی منە!",
                            onPressedBritish: () => speakany821("en-GB"),
                            onPressedAmerican: () =>
                                speakany821(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (جێناو) بەکاردەھێنرێت لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether بۆ ئاماژەکردن بە بڕ یان ژمارە"""),
                          SentencesRow(
                            englishText:
                                "We need some more paint; there isn't any left.",
                            kurdishText:
                                "پێویستیمان بە ھەندێکی تر بۆیەیە؛ ھیچ نەماوە.",
                            onPressedBritish: () => speakany944("en-GB"),
                            onPressedAmerican: () =>
                                speakany944(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (جێناو) یەکێک یان زیاتر لە ژمارەیەک شت یان خەڵک کە گرنگ نییە"""),
                          SentencesRow(
                            englishText: "I'll take any you don't want.",
                            kurdishText: "ئەوەیان دەبەم کە ناتەوێ.",
                            onPressedBritish: () => speakany947("en-GB"),
                            onPressedAmerican: () =>
                                speakany947(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (جێناو) بەکاردێت بۆ جەختکردنەوە لە ھاوەڵناوێک یان ھاوەڵکارێک لە ڕستەی نەرێ و پرسیاری، بە واتای 'بە ھیچ شێوەیەک'"""),
                          SentencesRow(
                            englishText: "He wasn't any good at French.",
                            kurdishText: "ھیچ لە فەرەنسی باش نەبوو.",
                            onPressedBritish: () => speakany951("en-GB"),
                            onPressedAmerican: () =>
                                speakany951(// REPLACE: any /ˈeni/
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Adverb: any 
1. To any degree or extent
"it isn't any better"

-Adjective: any 
1. One, some, every or all without specification; entity, elective existential pronoun; quantifier, elective existential (= whatever, whatsoever)
"give me any peaches you don't want"; "not any milk is left"; "any child would know that"; "pick any card"; "any day now"; "cars can be rented at almost any airport"; "at twilight or any other time"; "beyond any doubt"; "need any help we can get";
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

  final String _videoId = '21Z4RIOFhMA';
  final double _startSeconds = 752;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 276;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 322;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 761;

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

  final String _videoId = 'PUvp9fmAAAY';
  final double _startSeconds = 720;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 455;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 139;

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

  final String _videoId = 'qsobCAGiuRU';
  final double _startSeconds = 251;

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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 281;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 412;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'W4mmfzFazoI';
  final double _startSeconds = 221;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 547;

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

// end