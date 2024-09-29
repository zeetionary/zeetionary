import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappeal extends StatelessWidget {
  EnglishEntryappeal({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakappeal(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("appeal");
  }

  Future<void> speakappeal932(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He made an emotional appeal to voters.");
  }

  Future<void> speakappeal939(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The police made an appeal to the public to remain calm.");
  }

  Future<void> speakappeal946(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was beginning to understand the appeal of living in the countryside.");
  }

  Future<void> speakappeal950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The court dismissed his appeal against the verdict.");
  }

  Future<void> speakappeal953(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government appealed to the British people for help.");
  }

  Future<void> speakappeal956(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His movies appeal to a broad audience.");
  }

  Future<void> speakappeal958(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(" The company is appealing against the ruling.");
  }

  // Future<void> speakappeal(String languageCode) async {
  //   // DOPSUM: CHANGE speakAppeal
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("appeal");
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
                            EntryTitle(word: "appeal"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈpiːl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakappeal("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈpiːl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakappeal("en-US"),
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
کوردی: داخوازی، خۆستەک، داوا، پاڕانەوە، لاڵانەوە، لاڤاھی، پەنابردنەبەر، داوێن‌گیری، ھانابردنەبەر، پیاچوونەوە، ڕاست‌کردنەوە، دڵڕفێنی، سەرنج‌ڕاکێشی، ڕاکێشان
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) پاڕانەوە؛ داوایەکی پڕ بەدڵ بۆ پارە، زانیاری، یان یارمەتی کە بەخێرایی پێویستە"""),
                          SentencesRow(
                            englishText:
                                "He made an emotional appeal to voters.",
                            kurdishText:
                                "پاڕانەوەیەکی ھەست‌بزوێنی ئاراستەی دەنگدەران کرد.",
                            onPressedBritish: () => speakappeal932("en-GB"),
                            onPressedAmerican: () => speakappeal932("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The police made an appeal to the public to remain calm.",
                            kurdishText:
                                "پۆلیس تکای لە خەڵکی کرد بە ھێمنی بمێننەوە.",
                            onPressedBritish: () => speakappeal939("en-GB"),
                            onPressedAmerican: () => speakappeal939("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) خاسیەتێک کە وادەکای کەسێک/شتێک سەرنجڕاکێش یان سەرسوڕھێنەر بێت"""),
                          SentencesRow(
                            englishText:
                                "He was beginning to understand the appeal of living in the countryside.",
                            kurdishText:
                                "خەریک‌بوو دەستی‌ دەکرد بە تێگەشتن لە دڵڕفێنی ژیان لە لادێ.",
                            onPressedBritish: () => speakappeal946("en-GB"),
                            onPressedAmerican: () => speakappeal946("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) داوایەکی فەرمی لە دادگا یان لای دەسەڵاتدارێک بۆ گۆڕینی بڕیارێک"""),
                          SentencesRow(
                            englishText:
                                "The court dismissed his appeal against the verdict.",
                            kurdishText:
                                "دادگا داوای پێداچوونەوەکەیی دژ بە بڕیارەکە ڕەتکردەوە.",
                            onPressedBritish: () => speakappeal950("en-GB"),
                            onPressedAmerican: () => speakappeal950("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) داواکردنی شتێک پڕبەدڵ بۆ داواکردنی شتێک کە بەپەلە پێویستە"""),
                          SentencesRow(
                            englishText:
                                "The government appealed to the British people for help.",
                            kurdishText:
                                "حکومەت تکای لە خەڵکی بەریتانیا کرد بۆ یارمەتی.",
                            onPressedBritish: () => speakappeal953("en-GB"),
                            onPressedAmerican: () => speakappeal953("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) سەرنج‌ڕاکێشان، یان بوون بە ھۆی سەرسوڕھێنەری"""),
                          SentencesRow(
                            englishText:
                                "His movies appeal to a broad audience.",
                            kurdishText:
                                "فیلمەکانی سەرنجی بیسەری بەرفراوان ڕادەکێشن.",
                            onPressedBritish: () => speakappeal956("en-GB"),
                            onPressedAmerican: () => speakappeal956("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) داواکردن لە دادگا یان کەسێکی بەدەسەڵات بۆ گۆڕینی بڕیارێک"""),
                          SentencesRow(
                            englishText:
                                " The company is appealing against the ruling.",
                            kurdishText:
                                "کۆمپانیاکە داوای پێداچوونەوە بە بڕیارەکە دەکات.",
                            onPressedBritish: () => speakappeal958("en-GB"),
                            onPressedAmerican: () => speakappeal958("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: appeal (derived forms: appealing, appealed, appeals)
1. Earnest or urgent request (= entreaty, prayer, suppliance)
"an appeal for help";
 
2. Attractiveness that interests, pleases or stimulates (= appealingness, charm)
"his smile was part of his appeal to her";
 
3. (law) a legal proceeding in which the appellant resorts to a higher court for the purpose of obtaining a review of a lower court decision and a reversal of the lower court's judgment or the granting of a new trial
"their appeal was denied in the superior court"
 
4. Request for a sum of money (= solicitation, collection, ingathering)
"an appeal to raise money for starving children";
 
5. Act of turning to for assistance (= recourse, resort, refuge)
"an appeal to his uncle was his last resort";
 
6. (cricket) the act, by the fielding side, of asking an umpire for a decision of whether a batsman is out or not

- Verb: appeal (derived forms: appealing, appealed, appeals)
1. Take a court case to a higher court for review
"He was found guilty but appealed immediately"
 
2. Request earnestly (something from somebody); ask for aid or protection (= invoke)
"appeal to somebody for help";
 
3. Be attractive to (= attract)
"The idea of a vacation appeals to me";
 
4. Challenge (a decision)
"She appealed the verdict"
 
5. Cite as an authority; resort to (= invoke)
"I appealed to the law of 1900";
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

  final String _videoId = 'IOuFE-6Awos';
  final double _startSeconds = 162;

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

  final String _videoId = 'lex6USTugUU';
  final double _startSeconds = 378;

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

  final String _videoId = 'YRhqMWUH2Ig';
  final double _startSeconds = 1092;

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

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 256;

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

  final String _videoId = 'eo62AEDwTKY';
  final double _startSeconds = 308;

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

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 5053;

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

  final String _videoId = 'T4gRYEjiyzQ';
  final double _startSeconds = 810;

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

  final String _videoId = 'mrkAmmMakMg';
  final double _startSeconds = 22;

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

  final String _videoId = 'MVu8QbxafJE';
  final double _startSeconds = 387;

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

  final String _videoId = 'dy2GCkJiR8E';
  final double _startSeconds = 131;

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

  final String _videoId = 'SG1vNoErfQw';
  final double _startSeconds = 429;

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

  final String _videoId = '9-wFM3nrKAI';
  final double _startSeconds = 255;

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