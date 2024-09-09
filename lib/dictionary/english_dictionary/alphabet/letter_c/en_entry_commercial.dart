import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommercial extends StatelessWidget {
  EnglishEntrycommercial({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommercial(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("commercial");
  }

  Future<void> speakcommercials1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They have offices in the commercial heart of the city.");
  }

  Future<void> speakcommercials2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She is developing the commercial side of the organization.");
  }

  Future<void> speakcommercials3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The movie was not a commercial success.");
  }

  Future<void> speakcommercials4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The data cannot be used for commercial purposes.");
  }

  Future<void> speakcommercials5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The newspaper is acting solely in its own commercial interests.");
  }

  Future<void> speakcommercials6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The decision has been made on a purely commercial basis.");
  }

  Future<void> speakcommercials7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their more recent music is far too commercial.");
  }

  Future<void> speakcommercials8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The marketing campaign is starting with four online commercials.");
  }

  Future<void> speakcommercials9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She began her career appearing in commercials.");
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
                            EntryTitle(word: "commercial"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɜːʃl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommercial("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmɜːrʃl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommercial("en-US"),
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
کوردی: کارداری، بازرگانی، بازاڕداری،	بازاڕی، بەخێر، پڕقازانج، بەقازانج، پڕداھات،	تایبەتی (ڕادیۆ و تەلەفیزیۆن)،	(سووکانە) بازاڕی، ئایەخ، ڕەشۆکی، ئاگاداری بازرگانی، ڕیکلام، بانگەواز یان ڕاگەیاندنی کارداری
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پەیوەندیدار بە کڕین و فرۆشتنی کەلوپەل و خزمەتگوزاری"),
                          SentencesRow(
                            englishText:
                                "They have offices in the commercial heart of the city.",
                            kurdishText: "ئۆفیسیان لە ناوجەرگەی شار ھەیە.",
                            onPressedBritish: () => speakcommercials1("en-GB"),
                            onPressedAmerican: () => speakcommercials1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She is developing the commercial side of the organization.",
                            kurdishText:
                                "لایەنی بازرگانی دامەزراوەکە گەشە پێدەدات.",
                            onPressedBritish: () => speakcommercials2("en-GB"),
                            onPressedAmerican: () => speakcommercials2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) شتێک کە قازانج دەکات، یان مەبەست لێی ئەوەیە قازانج بکات"),
                          SentencesRow(
                            englishText:
                                "The movie was not a commercial success (= did not make money).",
                            kurdishText: "فیلمەکە سەرکەوتنێکی بەقازانج نەبوو.",
                            onPressedBritish: () => speakcommercials3("en-GB"),
                            onPressedAmerican: () => speakcommercials3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The data cannot be used for commercial purposes.",
                            kurdishText:
                                "داتاکە نابێت بۆ مەبەستی قازانج بەکاربێت.",
                            onPressedBritish: () => speakcommercials4("en-GB"),
                            onPressedAmerican: () => speakcommercials4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The newspaper is acting solely in its own commercial interests.",
                            kurdishText:
                                "ڕۆژنامەکە تەنھا بۆ قازانجی خۆی کاردەکات.",
                            onPressedBritish: () => speakcommercials5("en-GB"),
                            onPressedAmerican: () => speakcommercials5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The decision has been made on a purely commercial basis.",
                            kurdishText:
                                "بڕیارەکە تەنھا لەسەر بنەمای قازانج دراوە.",
                            onPressedBritish: () => speakcommercials6("en-GB"),
                            onPressedAmerican: () => speakcommercials6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) زیاتر گرنگیدان بە لایەنی قازانج و ناوبانگ وەک لە کوالێتی"),
                          const AlsoEnglishckb(word: "ھەروەھا: commercialized"),
                          SentencesRow(
                            englishText:
                                "Their more recent music is far too commercial.",
                            kurdishText:
                                "تازەترین کاری میوزیکییان ئێجگار زۆر بازاڕییە.",
                            onPressedBritish: () => speakcommercials7("en-GB"),
                            onPressedAmerican: () => speakcommercials7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕیکلامێک لەسەر تەلەفیزیۆن، ڕادیۆ، یان وێبسایتێک"),
                          SentencesRow(
                            englishText:
                                "The marketing campaign is starting with four online commercials.",
                            kurdishText:
                                "کەمپینی بەبازاڕکردنەکە دەستپێ دەکات بە ڕیکلامی ئینتەرنێتی.",
                            onPressedBritish: () => speakcommercials8("en-GB"),
                            onPressedAmerican: () => speakcommercials8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She began her career appearing in commercials.",
                            kurdishText:
                                "دەستی بە کار کرد بە دەرکەوتن لە ڕیکلامدا.",
                            onPressedBritish: () => speakcommercials9("en-GB"),
                            onPressedAmerican: () => speakcommercials9("en-US"),
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
- Adjective: commercial 
1. Connected with or engaged in or sponsored by or used in commerce or commercial enterprises
"commercial trucker"; "commercial TV"; "commercial diamonds"
 
2. Of the kind or quality used in commerce; average or inferior (= commercial-grade)
"commercial grade of beef";
 
3. Profit oriented (= mercantile, mercenary, moneymaking)
"a commercial book";
 
4. Of or relating to commercialism
"a commercial attaché"; "commercial paper"; "commercial law"

- Noun: commercial (derived forms: commercials)
1. A commercially sponsored ad on radio or television (= commercial message)
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

  final String _videoId = '2k-VOSyYoHk';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'IB1xMhjveQM';
  final double _startSeconds = 8;

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

  final String _videoId = 'HYjHld318p0';
  final double _startSeconds = 203;

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

  final String _videoId = 'esfChb49_Rk';
  final double _startSeconds = 459;

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

  final String _videoId = '1nLHIM2IPRY';
  final double _startSeconds = 3002;

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

  final String _videoId = '0f9GpMWdvWI';
  final double _startSeconds = 1327;

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

  final String _videoId = 't9cJbEg3r1c';
  final double _startSeconds = 669;

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