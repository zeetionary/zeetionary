import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryand - replace speakAnd - replace and - /ənd/, /ən/, /n/, strong form  /ænd/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryand extends StatelessWidget {
  EnglishEntryand({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakand(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("and");
  }

  Future<void> speakand15005(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sue and I left early.");
  }

  Future<void> speakand5044(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She came in and took her coat off.");
  }

  Future<void> speakand2205(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Go and get me a pen please.");
  }

  Future<void> speakand0258(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘We talked for hours.’ ‘And what did you decide?’");
  }

  Future<void> speakand8854(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Miss another class and you'll fail.");
  }

  Future<void> speakand5560(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's 47 and 16?");
  }

  Future<void> speakand22410(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The pain got worse and worse.");
  }

  Future<void> speakand5570(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I like city life but there are cities and cities.");
  }

  // Future<void> speakand(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and");
  // }

  // Future<void> speakand(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and");
  // }

  // Future<void> speakand(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and");
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
                                word:
                                    "and"), // Find /ənd/, /ən/, /n/, strong form  /ænd/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ənd/, /ən/, /n/, strong form  /ænd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakand("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ənd/, /ən/, /n/, strong form  /ænd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakand("en-US"),
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
کوردی: و، وە، لەگەڵ، تا، ھەتا، کە، ھەروەھا
"""),
                          const DefinitionKurdish(text: """١. (لێکدەر) و"""),
                          SentencesRow(
                            englishText: "Sue and I left early.",
                            kurdishText: "من و سوو زوو ڕۆشتین.",
                            onPressedBritish: () => speakand15005("en-GB"),
                            onPressedAmerican: () => speakand15005(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (لێکدەر) دواتر، لە دوای شتێک"""),
                          SentencesRow(
                            englishText: "She came in and took her coat off.",
                            kurdishText: "ھاتە ژوورەوە و پاڵتاوەکەی داکەند.",
                            onPressedBritish: () => speakand5044("en-GB"),
                            onPressedAmerican: () => speakand5044(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (لێکدەر) لە دوای ھەندێک کردار بەکاردێت بەمەبەستی پیشاندانی ھۆکاری ئەنجام‌دانی کردارەکە"""),
                          SentencesRow(
                            englishText: "Go and get me a pen please.",
                            kurdishText: "تکایە بچۆ و پێنووسێکم بۆ بێنە.",
                            onPressedBritish: () => speakand2205("en-GB"),
                            onPressedAmerican: () => speakand2205(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (لێکدەر) بەکاردێت بۆ ناساندنی لێدوانێک یان پرسیارێک"""),
                          SentencesRow(
                            englishText:
                                "‘We talked for hours.’ ‘And what did you decide?’",
                            kurdishText:
                                "«بۆ چەندین کاتژمێر گفتوگۆمان کرد.» «ئەی چی بڕیارێکتان دا؟»",
                            onPressedBritish: () => speakand0258("en-GB"),
                            onPressedAmerican: () => speakand0258(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (لێکدەر) بۆ پیشاندانی ئەنجام"""),
                          SentencesRow(
                            englishText: "Miss another class and you'll fail.",
                            kurdishText: "یەک وانەی تر نەیەی دەرناچیت.",
                            onPressedBritish: () => speakand8854("en-GB"),
                            onPressedAmerican: () => speakand8854(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (لێکدەر) کۆ؛ لە کۆکردنەوەدا بو وتنی ژمارەیەک زیادبکرێت بۆ ژمارەیەکی تر"""),
                          SentencesRow(
                            englishText: "What's 47 and 16?",
                            kurdishText: "٤٧ کۆی ١٦ چەند دەکات؟",
                            onPressedBritish: () => speakand5560("en-GB"),
                            onPressedAmerican: () => speakand5560(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت بۆ پیشاندانی دووبارەبوونەوە و بەردەوامی"""),
                          SentencesRow(
                            englishText: "The pain got worse and worse.",
                            kurdishText: "ئازارەکە خراپتر و خراپتر بوو.",
                            onPressedBritish: () => speakand22410("en-GB"),
                            onPressedAmerican: () => speakand22410(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت وتنی ئەوەی دوو شت دەکرێت یەک خاسیەتیان ھەبێت بەڵام زۆر جیاواز بن"""),
                          SentencesRow(
                            englishText:
                                "I like city life but there are cities and cities.",
                            kurdishText:
                                "حەزم لە ژیانی شارە، بەڵام شار ھەیە و شاری تریش ھەیە.",
                            onPressedBritish: () => speakand5570("en-GB"),
                            onPressedAmerican: () => speakand5570(
                                // REPLACE: and /ənd/, /ən/, /n/, strong form  /ænd/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
- Conjunction: and 
1. Used to connect words, clauses or sentences; used to indicate that the following thing is also included, or add an additional point
"eggs, chips and bacon"
 
2. In order to; used instead of "to", especially after try, come, go
"I'll try and do that before tomorrow"
 
3. Used to indicate causation or something that follows
"do that and I'll scream"

- Preposition: and 
1. With the addition of; increased by (= plus)
"one and one is two";
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

  final String _videoId = 'ML8IL77gQ3k';
  final double _startSeconds = 50;

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

  final String _videoId = 'njn6krU3tQ8';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'LDP08F3op80';
  final double _startSeconds = 6;

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

  final String _videoId = 'Btu0O47u3rY';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '2ihOXaU0I8o';
  final double _startSeconds = 12;

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

  final String _videoId = 'z7JU0BoX0nQ';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'sSdMX8AWurI';
  final double _startSeconds = 7;

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

  final String _videoId = 'kNw8V_Fkw28';
  final double _startSeconds = 87;

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
  final double _startSeconds = 29;

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

  final String _videoId = 'wmiIUN-7qhE';
  final double _startSeconds = 25;

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

  final String _videoId = '4J0xFUyz1nw';
  final double _startSeconds = 183;

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

  final String _videoId = 'Zi4LMpSDccc';
  final double _startSeconds = 69;

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