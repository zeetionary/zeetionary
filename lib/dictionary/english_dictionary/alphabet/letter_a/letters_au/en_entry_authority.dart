import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "authority" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

enum TtsState { playing }

class EnglishEntryauthority extends StatelessWidget {
  EnglishEntryauthority({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakauthority(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("authority");
  }

  Future<void> speakauthority804(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She now has authority over the people who used to be her bosses.");
  }

  Future<void> speakauthority805(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Central government has extensive authority over teachers.");
  }

  Future<void> speakauthority808(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Some experts think the agency may have exceeded its authority.");
  }

  Future<void> speakauthority809(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He took the car without authority.");
  }

  Future<void> speakauthority811(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have to report this to the authorities.");
  }

  Future<void> speakauthority814(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spoke with authority on the topic.");
  }

  Future<void> speakauthority816(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's an authority on criminal law.");
  }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
  // }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
  // }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
  // }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
  // }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
  // }

  // Future<void> speakauthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority");
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
                            EntryTitle(word: "authority"),
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ɔːˈθɒrəti/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakauthority("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈθɔːrəti/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakauthority("en-US"),
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
کوردی: دەسەڵات، حوکم، ڕایە، ھێز، توانایی، کەلێژ، دەس‌ڕۆیشتوویی، سەرپشکی، ڕێدان، ڕێ‌پێدان، دەستووردان، ماف، دەستوورنامە، خاوەن‌دەسەڵات، بەرپرس، بەرپرسایەتی، لێپرسراوێتی، ژێدەر، سەرچاوەی باوەڕپێکراو، کتێبی جێی‌باوەڕ، شارەزا، پسپۆڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) دەسەڵاتی بڕیاردان بەسەر خەڵکی تردا"""),
                          SentencesRow(
                            englishText:
                                "She now has authority over the people who used to be her bosses.",
                            kurdishText:
                                "ئێستا دەسەڵاتی ھەیە بەسەر ئەو کەسانەی کە جاران گەورەی بوون.",
                            onPressedBritish: () => speakauthority804("en-GB"),
                            onPressedAmerican: () => speakauthority804("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Central government has extensive authority over teachers.",
                            kurdishText:
                                "حکومەتی ناوەندی دەسەڵاتی فراوانی ھەیە بەسەر مامۆستایاندا.",
                            onPressedBritish: () => speakauthority805("en-GB"),
                            onPressedAmerican: () => speakauthority805("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) دەسەڵات یان مافی کردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "Some experts think the agency may have exceeded its authority.",
                            kurdishText:
                                "ھەندێک شارەزا باوەڕیان وایە کە دەزگاکە ئەگەری ھەیە دەسەڵاتی خۆی تێپەڕاندبێ.",
                            onPressedBritish: () => speakauthority808("en-GB"),
                            onPressedAmerican: () => speakauthority808("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مۆڵەت"""),
                          SentencesRow(
                            englishText: "He took the car without authority.",
                            kurdishText: "ئۆتۆمبێلەکەی بەبێ مۆڵەت برد.",
                            onPressedBritish: () => speakauthority809("en-GB"),
                            onPressedAmerican: () => speakauthority809("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کۆمەڵە کەسێک یان ڕێکخراوێک کە مافی بڕیاردانیان ھەیە"""),
                          SentencesRow(
                            englishText:
                                "I have to report this to the authorities.",
                            kurdishText: "دەبێت ئەمە بە دەسەڵاتداران بڵێم.",
                            onPressedBritish: () => speakauthority811("en-GB"),
                            onPressedAmerican: () => speakauthority811("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) دەسەڵاتی درووستکردنی کاریگەری بەھۆی ڕێزلێگیراوی بەھۆی زانیارییەکانت یان پێگەکەت"""),
                          SentencesRow(
                            englishText:
                                "He spoke with authority on the topic.",
                            kurdishText:
                                "بە جێی‌باوەڕەوە قسەی لەسەر بابەتەکە دەکرد.",
                            onPressedBritish: () => speakauthority814("en-GB"),
                            onPressedAmerican: () => speakauthority814("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) کەسێکی شارەزا"""),
                          SentencesRow(
                            englishText: "She's an authority on criminal law.",
                            kurdishText:
                                "کەسێکی شارەزایە لەسەر یاسای تاوانبارێتی.",
                            onPressedBritish: () => speakauthority816("en-GB"),
                            onPressedAmerican: () => speakauthority816("en-US"),
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
- Noun: authority (derived forms: authorities)
1. The power or right to give orders or make decisions (= authorization, authorisation [Brit], potency, dominance, say-so)
"he has the authority to issue warrants";
 
2. (usually plural) persons who exercise (administrative) control over others
"the authorities have issued a curfew"
 
3. An expert whose views are taken as definitive
"he is an authority on corporate law"
 
4. Freedom from doubt; belief in yourself and your abilities (= assurance, self-assurance, confidence, self-confidence, sureness)
"she spoke with authority";
 
5. An administrative unit of government (= agency, federal agency, government agency, bureau, office)
"Tennessee Valley Authority";
 
6. Official permission or approval (= authorization, authorisation [Brit], sanction, clearance)
"authority for the program was renewed several times";
 
7. An authoritative written work
"this book is the final authority on the life of Milton"
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 314;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 1570;

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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 226;

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

  final String _videoId = 'TRGHIN2PGIA';
  final double _startSeconds = 923;

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

  final String _videoId = 'Cln0J87vulU';
  final double _startSeconds = 73;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 698;

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

  final String _videoId = '4X2ES8HfLys';
  final double _startSeconds = 791;

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

  final String _videoId = 'hkO8qXCFYWA';
  final double _startSeconds = 557;

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

  final String _videoId = '-C3CjOkF-jY';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end

// end authority // TODO Implement this library.