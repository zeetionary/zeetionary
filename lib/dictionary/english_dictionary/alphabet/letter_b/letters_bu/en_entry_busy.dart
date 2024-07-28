import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybusy extends StatelessWidget {
// blank divider
  EnglishEntrybusy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbusy(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("busy");
  }

  Future<void> speakbusys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you busy tonight?");
  }

  Future<void> speakbusys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The principal is a very busy woman.");
  }

  Future<void> speakbusys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were busy enjoying themselves at the party.");
  }

  Future<void> speakbusys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Kate's busy with her homework.");
  }

  Future<void> speakbusys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you had a busy day?");
  }

  Future<void> speakbusys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've got a busy week ahead of us.");
  }

  Future<void> speakbusys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The place gets very busy at lunchtimes.");
  }

  Future<void> speakbusys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We have to cross a busy main road to get to school.");
  }

  Future<void> speakbusys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The line is busy—I'll try again later.");
  }

  Future<void> speakbusys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This wallpaper is too busy for the bedroom.");
  }

  Future<void> speakbusys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She busied herself with the preparations for the party.");
  }

  Future<void> speakbusys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("While we talked, Bill busied himself fixing lunch.");
  }

  Future<void> speakbusys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbusys1313");
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
                            EntryTitle(word: "busy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɪzi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbusy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɪzi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbusy("en-US"),
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
کوردی: خەریکی، سەرقاڵی، سەرقاڵ، پڕکار، پژگاڵ، پڕ لە چالاکی، پڕکار، نەپەژراو، پڕجم‌وجۆڵ، (سەر)شلوق، (تەلەفۆن) گیراو، خەریک‌قسە 
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) سەرقاڵ"),
                          SentencesRow(
                            englishText: "Are you busy tonight?",
                            kurdishText:
                                "ئەمشەو سەرقاڵیت؟", // busy", follow LX strictly
                            onPressedBritish: () => speakbusys1("en-GB"),
                            onPressedAmerican: () => speakbusys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The principal is a very busy woman.",
                            kurdishText: "بەڕێوبەرەکە ژنێکی زۆر سەرقاڵە.",
                            onPressedBritish: () => speakbusys2("en-GB"),
                            onPressedAmerican: () => speakbusys2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) پێدانی تەواوی سەرنجت بە چالاکییەک"),
                          SentencesRow(
                            englishText:
                                "They were busy enjoying themselves at the party.",
                            kurdishText:
                                "سەرقاڵبوون بە چێژوەرگرتن لە ئاھەنگەکە.",
                            onPressedBritish: () => speakbusys3("en-GB"),
                            onPressedAmerican: () => speakbusys3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Kate's busy with her homework.",
                            kurdishText: "کەیت سەرقاڵە بە ئەرکی ماڵەوەی.",
                            onPressedBritish: () => speakbusys4("en-GB"),
                            onPressedAmerican: () => speakbusys4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) پڕ لە کار و چالاکی"),
                          SentencesRow(
                            englishText: "Have you had a busy day?",
                            kurdishText: "ڕۆژێکی پڕکارت بوو؟",
                            onPressedBritish: () => speakbusys5("en-GB"),
                            onPressedAmerican: () => speakbusys5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We've got a busy week ahead of us.",
                            kurdishText: "ھەفتەیەکی پڕجم‌وجۆڵمان لەپێشە.",
                            onPressedBritish: () => speakbusys6("en-GB"),
                            onPressedAmerican: () => speakbusys6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) شوێنێک کە پڕ لە چالاکی، خەڵک، ئۆتۆمبێل، ھتد"),
                          SentencesRow(
                            englishText:
                                "The place gets very busy at lunchtimes.",
                            kurdishText:
                                "شوێنەکە لەکاتی نانخواردندا زۆر قەرەباڵخ دەبێت.",
                            onPressedBritish: () => speakbusys7("en-GB"),
                            onPressedAmerican: () => speakbusys7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We have to cross a busy main road to get to school.",
                            kurdishText:
                                "دەبێت بە شەقامێکی سەرەکیی زۆر قەرەباڵخدا تێپەڕین بۆ گەشتن بە قوتابخانە.",
                            onPressedBritish: () => speakbusys8("en-GB"),
                            onPressedAmerican: () => speakbusys8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) ھێڵێکی پەیوەندی کە پەیوەندی تری لەگەڵدایە"),
                          SentencesRow(
                            englishText:
                                "The line is busy—I'll try again later.",
                            kurdishText:
                                "ھێڵەکە گیراوە، دواتر پەیوەندی دەکەمەوە.",
                            onPressedBritish: () => speakbusys9("en-GB"),
                            onPressedAmerican: () => speakbusys9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دیزاینێک یان نەخشێک کە پڕ لە وردەکارییە"),
                          SentencesRow(
                            englishText:
                                "This wallpaper is too busy for the bedroom.",
                            kurdishText:
                                "ئەم وێنەیە زۆر پڕوردەکارییە بۆ ژووری خەو.",
                            onPressedBritish: () => speakbusys10("en-GB"),
                            onPressedAmerican: () => speakbusys10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) خۆسەرقاڵکردن"),
                          SentencesRow(
                            englishText:
                                "She busied herself with the preparations for the party.",
                            kurdishText:
                                "خۆی سەرقاڵکرد بە ئامادەکاری بۆ ئاھەنگەکە.",
                            onPressedBritish: () => speakbusys11("en-GB"),
                            onPressedAmerican: () => speakbusys11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "While we talked, Bill busied himself fixing lunch.",
                            kurdishText:
                                "کە قسەمان کرد، بیڵ خۆی سەرقاڵ کرد بە ئامادەکردنی نانی نیوەڕۆ.",
                            onPressedBritish: () => speakbusys12("en-GB"),
                            onPressedAmerican: () => speakbusys12("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
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
- Adjective: busy (derived forms: busier, busiest)
1. Actively or fully engaged or occupied
"busy with her work"; "a busy man"; "too busy to eat lunch"
 
2. Overcrowded or cluttered with detail (= fussy)
"a busy painting";

3. Intrusive in a meddling or offensive manner (= interfering, meddlesome, meddling, officious, busybodied)
"busy about other people's business";

4. Crowded with or characterized by much activity
"a very busy week"; "a busy life"; "a busy street"; "a busy seaport"
 
5. (of facilities such as telephones or lavatories) unavailable for use by anyone else or indicating unavailability (= engaged, in use)
"her line is busy"; "kept getting a busy signal";

- Verb: busy (derived forms: busying, busied, busies)
1. Keep busy with (= occupy)
"She busies herself with her butterfly collection";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 408;

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

  final String _videoId = 'VZqttqSbvVY';
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

  final String _videoId = 'w_uT3GW1ycE';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'sZC6-u13-dM';
  final double _startSeconds = 4109;

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

  final String _videoId = 'cM4q33O2Qys';
  final double _startSeconds = 13;

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

  final String _videoId = 'h_h7y9HfLgI';
  final double _startSeconds = 123;

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

  final String _videoId = 'TV0mAUczNPc';
  final double _startSeconds = 47;

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

  final String _videoId = 'LO9hUrEjLM4';
  final double _startSeconds = 54;

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

  final String _videoId = 'MZxx7H-rTEU';
  final double _startSeconds = 892;

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

  final String _videoId = 'D1dDnuziIa4';
  final double _startSeconds = 608;

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

// end WORD_WEB
