import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryalert - replace speakAlert - replace alert - /əˈlɜːt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalert extends StatelessWidget {
  EnglishEntryalert({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakalert(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("alert");
  }

  Future<void> speakalert3524(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "An anonymous letter alerted police to the possibility of a terrorist attack at the airport.");
  }

  Future<void> speakalert352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Neighbours quickly alerted the emergency services.");
  }

  Future<void> speakalert29637(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had been alerted to the possibility of further price rises.");
  }

  Future<void> speakalert6277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("More than 5 000 troops have been placed on (full) alert.");
  }

  Future<void> speakalert96526(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I get text alerts when I have used 80% of my mobile data.");
  }

  Future<void> speakalert34655(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Two alert scientists spotted the mistake.");
  }

  Future<void> speakalert3566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We must be alert to the possibility of danger.");
  }

  // Future<void> speakalert(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlert
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alert");
  // }

  // Future<void> speakalert(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlert
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alert");
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
                            EntryTitle(word: "alert"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈlɜːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakalert("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈlɜːrt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakalert("en-US"),
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
کوردی: گوێ‌قوڵاخ، وریا، چاوکراوە، زیت، وازر، ھۆشیار، ئاگادار، بەئاگا، ھایدار، قوت، زیرەک، بیرا، ئامادەباش، ڕەوش یان بارودۆخی تەنگەتاوی، باری نائاسایی، ئاگادارکردنەوە لە مەترسی یان کێشەیێ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) وریاکردنەوەی کەسێک لەسەر بارودۆخێکی مەترسیدار، یان یەکێک کە پێویستە بەپەلە مامەڵەی لەگەڵ بکرێت"
                                  ""),
                          SentencesRow(
                            englishText:
                                "An anonymous letter alerted police to the possibility of a terrorist attack at the airport.",
                            kurdishText:
                                "نامەیەکی نھێنی پۆلیسی ئاگادارکردەوە لە ئەگەری ھێرشێکی تیرۆریستی لە فڕۆکەخانەکە.",
                            onPressedBritish: () => speakalert3524("en-GB"),
                            onPressedAmerican: () => speakalert3524("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Neighbours quickly alerted the emergency services.",
                            kurdishText:
                                "دراوسێیەکان بەپەلە تیمە فریاگوزارییەکانیان ئاگادارکردەوە.",
                            onPressedBritish: () => speakalert352("en-GB"),
                            onPressedAmerican: () => speakalert352("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ئاگادارکردنەوەی کەسێک لە شتێک"""),
                          SentencesRow(
                            englishText:
                                "They had been alerted to the possibility of further price rises.",
                            kurdishText:
                                "ئاگادارکرابوونەوە لە ئەگەری زیادبوونی زیاتری نرخ.",
                            onPressedBritish: () => speakalert29637("en-GB"),
                            onPressedAmerican: () => speakalert29637("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بارودۆخێک کە تێیدا خەڵکی ئاگادارکراون بۆ مەترسی"""),
                          SentencesRow(
                            englishText:
                                "More than 5 000 troops have been placed on (full) alert.",
                            kurdishText:
                                "زیاتر لە ٥٠٠٠ سەرباز خراونەتە ئامادابەشیی تەواو.",
                            onPressedBritish: () => speakalert6277("en-GB"),
                            onPressedAmerican: () => speakalert6277("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ئاگادارکەرەوە بۆ شتێک"""),
                          SentencesRow(
                            englishText:
                                "I get text alerts when I have used 80% of my mobile data.",
                            kurdishText:
                                "ئاگادارکەرەوەیەکی نووسراوم پێدەگات کە زیاتر لە ٨٠٪ ئینتەرنێتی موبایلەکەم بەکاربێنم.",
                            onPressedBritish: () => speakalert96526("en-GB"),
                            onPressedAmerican: () => speakalert96526("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) ھەبوونی توانای بیرکردنەوە بەخێرایی"""),
                          SentencesRow(
                            englishText:
                                "Two alert scientists spotted the mistake.",
                            kurdishText: "دوو زانای وریا تێبینی ھەڵەکەیان کرد.",
                            onPressedBritish: () => speakalert34655("en-GB"),
                            onPressedAmerican: () => speakalert34655("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) ئاگاداربوون لە شتێک"""),
                          SentencesRow(
                            englishText:
                                "We must be alert to the possibility of danger.",
                            kurdishText: "پێویستە چاوکراوە بین بۆ مەترسی.",
                            onPressedBritish: () => speakalert3566("en-GB"),
                            onPressedAmerican: () => speakalert3566("en-US"),
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
- Verb: alert (derived forms: alerts, alerting, alerted)
1. Warn or arouse to a sense of danger or call to a state of preparedness (= alarm)
"We alerted the new neighbours to the high rate of burglaries";


- Adjective: alert (derived forms: alerter, alertest)
1. Engaged in or accustomed to close observation (= watchful)
"alert enough to spot the opportunity when it came"; "constantly alert and vigilant, like a sentinel on duty"; "caught by a couple of alert cops";
 
2. Quick and energetic (= brisk, lively, merry, rattling, snappy [informal], spanking [informal], zippy [informal])
 
3. Mentally perceptive and responsive (= alive, awake, on the ball)
"an alert mind"; "alert to the problems";

- Noun: alert (derived forms: alerts)
1. Condition of heightened watchfulness or preparation for action (= qui vive)
"bombers were put on alert during the crisis";
 
2. A warning serves to make you more alert to danger (= alerting)
 
3. An automatic signal (usually a sound) warning of danger (= alarm, warning signal, alarum [archaic])
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

  final String _videoId = 'Br9bUTdKu0U';
  final double _startSeconds = 117;

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

  final String _videoId = 'T8LlB3psUtM';
  final double _startSeconds = 257;

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

  final String _videoId = '-5n7QMaGxgg';
  final double _startSeconds = 40;

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

  final String _videoId = 'bEb-0GzX0RY';
  final double _startSeconds = 91;

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

  final String _videoId = 'SVEoC-gkbOU';
  final double _startSeconds = 427;

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

  final String _videoId = '1HC3jZEnJNM';
  final double _startSeconds = 57;

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

  final String _videoId = '4Ww6CwfyZVE';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'eZnIUMAJtBo';
  final double _startSeconds = 2758;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1138;

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

  final String _videoId = 'PmlRbfSavbI';
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

// end
