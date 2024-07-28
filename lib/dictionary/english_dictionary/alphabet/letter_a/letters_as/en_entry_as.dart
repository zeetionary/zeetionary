import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// as

// replace EnglishEntryas - replace speakAs

// replace as - /əz/, strong form  /æz/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryas extends StatelessWidget {
  // blank divider
  EnglishEntryas({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakas(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("as");
  }

  Future<void> speakas1035(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children were all dressed as police officers.");
  }

  Future<void> speakas1038(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bomb was disguised as a package.");
  }

  Future<void> speakas1041(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Treat me as a friend.");
  }

  Future<void> speakas1042(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The news came as a shock.");
  }

  Future<void> speakas1044(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're as tall as your father.");
  }

  Future<void> speakas1046(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As always, he said little.");
  }

  Future<void> speakas1047(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As many as 2 million people could be affected.");
  }

  Future<void> speakas1049(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He sat watching her as she got ready.");
  }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
  // }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
  // }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
  // }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
  // }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
  // }

  // Future<void> speakas(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as");
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
                            EntryTitle(
                                word: "as"), // Find /əz/, strong form  /æz/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /əz/, strong form  /æz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakas("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /əz/, strong form  /æz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakas("en-US"),
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
کوردی: ھەر ئەوندە، بە ھەمان ڕادە، (بە) ھەمان ئەندازە، بەقەد ئەوە، کاتێ، وەختێ کە، لە کاتی، کاتێ کە، چون، چۆنکە، چونکو، وەکوو، مینا، وەک، ڤەکی، بەوجۆرەی، بەوچەشنەی، بەدەردی، ھەروەکوو، ھەروەک، گەرچی، ئەگەرچی، ھەرچەند، وەکوو، لەچاوی، ھەرچی، کە، تا، ھەتا
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک/شتێک وەک کەسێکی تر یان شتێکی تر دەردەکەوێت"""),
                          SentencesRow(
                            englishText:
                                "The children were all dressed as police officers.",
                            kurdishText:
                                "منداڵەکان ھەموویان وەک ئەفسەری پۆلیس جلیان پۆشیبوو.",
                            onPressedBritish: () => speakas1035("en-GB"),
                            onPressedAmerican: () => speakas1035(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "The bomb was disguised as a package.",
                            kurdishText: "بۆمبەکە لە شێوەی پاکێجێکدا بوو.",
                            onPressedBritish: () => speakas1038("en-GB"),
                            onPressedAmerican: () => speakas1038(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بۆ پیشاندانی پیشە یان ئەرک"""),
                          SentencesRow(
                            englishText: "Treat me as a friend.",
                            kurdishText: "وەک ھاوڕێیەک بمبینە.",
                            onPressedBritish: () => speakas1041("en-GB"),
                            onPressedAmerican: () => speakas1041(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "The news came as a shock.",
                            kurdishText: "ھەواڵەکە وەک شۆکێک وابوو.",
                            onPressedBritish: () => speakas1042("en-GB"),
                            onPressedAmerican: () => speakas1042(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بۆ بەراوردکردن بەکاردێ"""),
                          SentencesRow(
                            englishText: "You're as tall as your father.",
                            kurdishText: "ھێندەی باوکت درێژی.",
                            onPressedBritish: () => speakas1044("en-GB"),
                            onPressedAmerican: () => speakas1044(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک بە ھەمان شێوە روودەدات"""),
                          SentencesRow(
                            englishText: "As always, he said little.",
                            kurdishText: "وەک ھەمیشە، کەمێک قسەی کرد.",
                            onPressedBritish: () => speakas1046("en-GB"),
                            onPressedAmerican: () => speakas1046(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بەکاردێت بۆ سەرنج‌خستنەسەر بڕێک"""),
                          SentencesRow(
                            englishText:
                                "As many as 2 million people could be affected.",
                            kurdishText: "تا ٢ ملیۆن کەس دەکرێت کاریگەر بن.",
                            onPressedBritish: () => speakas1047("en-GB"),
                            onPressedAmerican: () => speakas1047(
                                // REPLACE: as /əz/, strong form  /æz/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (لێکدەر) لە کاتی ڕوودانی شتێکی تر"""),
                          SentencesRow(
                            englishText:
                                "He sat watching her as she got ready.",
                            kurdishText: "دانیشتوو سەیری کرد کە خۆی دەگۆڕی.",
                            onPressedBritish: () => speakas1049("en-GB"),
                            onPressedAmerican: () => speakas1049(
                                // REPLACE: as /əz/, strong form  /æz/
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
- Adverb: as 
1. To the same degree (= equally, every bit)
"birds were singing and the child sang as sweetly"; "sang as sweetly as a nightingale"; "he is every bit as mean as she is";
 
2. In the idea, character, or condition of, limiting the view to certain attributes or relations
"dressed up as a ghost"

- Conjunction: as  
1. For the reason that; on account of (= because, since, for, coz [Brit, informal], cos [Brit, informal], cuz [non-standard, informal])
"empty, as it had been upside down";
 
3. At the same time that (= when, while, whilst [Brit])
"they were walking home as they were discussing the problem";

- Noun: AS
1. A United States territory on the eastern part of the island of Samoa (= American Samoa, Eastern Samoa)

- Noun: As
1. A very poisonous metallic element that has three allotropic forms; arsenic and arsenic compounds are used as herbicides and insecticides and in various alloys; found in arsenopyrite and orpiment and realgar (= arsenic, atomic number 33)

- Noun: a 
1. The 1st letter of the Roman alphabet (= A)
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

  final String _videoId = 'fsQVfQt0HOk';
  final double _startSeconds = 93;

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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 102;

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
  final double _startSeconds = 62;

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

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 128;

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

  final String _videoId = 'Cd1EmYRZynw';
  final double _startSeconds = 216;

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

  final String _videoId = 'zAGVQLHvwOY';
  final double _startSeconds = 119;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 10;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 631;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 521;

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

  final String _videoId = '2L7hhxT-pck';
  final double _startSeconds = 544;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 53;

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