import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryalarm - replace speakAlarm - replace alarm - /əˈlɑːm/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalarm extends StatelessWidget {
  EnglishEntryalarm({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakalarm(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("alarm");
  }

  Future<void> speakalarm355(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She decided to sound the alarm.");
  }

  Future<void> speakalarm466(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hammered on all the doors to raise the alarm.");
  }

  Future<void> speakalarm4255(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A car alarm went off in the middle of the night.");
  }

  Future<void> speakalarm4522(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The alarm went off at 7 o'clock.");
  }

  Future<void> speakalarm4277(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor said there was no cause for alarm.");
  }

  Future<void> speakalarm7692(String languageCode) async {
    // DOPSUM: CHANGE speakAlarm
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It alarms me that nobody takes this problem seriously.");
  }

  // Future<void> speakalarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlarm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alarm");
  // }

  // Future<void> speakalarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlarm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alarm");
  // }

  // Future<void> speakalarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlarm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alarm");
  // }

  // Future<void> speakalarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlarm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alarm");
  // }

  // Future<void> speakalarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlarm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alarm");
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
                            EntryTitle(word: "alarm"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈlɑːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakalarm("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈlɑːrm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakalarm("en-US"),
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
کوردی: لوورە، زەنگی مەترسی، نیشانەی مەترسی، ئاگادارکردنەوە، ھوشیارکردنەوە،	ترس، تۆقین، مەترسی، دڵەتەپێ، دڵەخورپە، سەعاتی زەنگ‌دار، چاڵمە، شەیپوور یان دەھۆڵی ئامادەبوون، ئاژیر، دەھۆڵی ئامادەباش(ی)
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دەنگێکی بەرز کە خەڵکی لە کێشە ئاگادار دەکاتەوە"
                                  ""),
                          SentencesRow(
                            englishText:
                                "She decided to sound the alarm (= warn people that the situation was dangerous).",
                            kurdishText: "بڕیاریدا زەنگی مەترسی لێبدا.",
                            onPressedBritish: () => speakalarm355("en-GB"),
                            onPressedAmerican: () => speakalarm355("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I hammered on all the doors to raise the alarm.",
                            kurdishText:
                                "لە ھەموو دەرگاکانم دا بۆ ئاگادارکردنەوە.",
                            onPressedBritish: () => speakalarm466("en-GB"),
                            onPressedAmerican: () => speakalarm466("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ئامێرێک کە زەنگی مەترسی لێدەدات"""),
                          SentencesRow(
                            englishText:
                                "A car alarm went off in the middle of the night (= started ringing).",
                            kurdishText:
                                "زەنگی ئاگادارکەرەوەی ئۆتۆمبێلێک لە نیوە شەودا دەستی بە لێدان کرد.",
                            onPressedBritish: () => speakalarm4255("en-GB"),
                            onPressedAmerican: () => speakalarm4255("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) زەنگێک کە دیاری دەکەیت لەسەر کاتژمێرێک یان موبایل بۆ ئەوەی لە کاتێکی دیاریکراو لێبدات"""),
                          SentencesRow(
                            englishText: "The alarm went off at 7 o'clock.",
                            kurdishText:
                                "زەنگەکە لە کاتژمێر ٧ دەستی بە لێدان کرد.",
                            onPressedBritish: () => speakalarm4522("en-GB"),
                            onPressedAmerican: () => speakalarm4522("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ترس و نیگەرانی لە کاتی مەترسی"""),
                          SentencesRow(
                            englishText:
                                "The doctor said there was no cause for alarm.",
                            kurdishText:
                                "پزیشکەکە وتی ھیچ ھۆکارێک نییە بۆ دڵەخورپە.",
                            onPressedBritish: () => speakalarm4277("en-GB"),
                            onPressedAmerican: () => speakalarm4277("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) درووستکردنی نیگەرانی یان مەترسی لای کەسێک"""),
                          SentencesRow(
                            englishText:
                                "It alarms me that nobody takes this problem seriously.",
                            kurdishText:
                                "تووشی دڵەخورپە دەبم کە ھیچ کەس ئەم کێشەیە بە جدی وەرناگرێت.",
                            onPressedBritish: () => speakalarm7692("en-GB"),
                            onPressedAmerican: () => speakalarm7692("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
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
- Noun: alarm (derived forms: alarms)
1. Fear resulting from the awareness of danger (= dismay, consternation)
 
2. A device that signals the occurrence of some undesirable event (= warning device, alarm system)
 
3. An automatic signal (usually a sound) warning of danger (= alert, warning signal, alarum [archaic])
 
4. A clock that wakes a sleeper at some preset time (= alarm clock)

- Verb: alarm (derived forms: alarms, alarming, alarmed)
1. Fill with apprehension or alarm; cause to be unpleasantly surprised (= dismay, appal [Brit, Cdn], appall [US], horrify)
"I was alarmed at the thought of being late for my interview";

2. Warn or arouse to a sense of danger or call to a state of preparedness (= alert)
"The empty house alarmed him";
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

  final String _videoId = 'lyErdsXeMuA';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'C3CeB0X16LA';
  final double _startSeconds = 1;

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

  final String _videoId = 'DuAeaIcAXtg';
  final double _startSeconds = 154;

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

  final String _videoId = 'To2L5aNAmfk';
  final double _startSeconds = 63;

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

  final String _videoId = 'JmVF-HW7W0U';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'ivJj8NDb-jk';
  final double _startSeconds = 33;

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

  final String _videoId = 'LTFmuNxsnKg';
  final double _startSeconds = 9;

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

  final String _videoId = 'SU0v2fz0F8g';
  final double _startSeconds = 362;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 504;

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

  final String _videoId = 'yOp0cyWp_P4';
  final double _startSeconds = 590;

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
