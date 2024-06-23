import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommunity extends StatelessWidget {
// blank divider
  EnglishEntrycommunity({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommunity(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("community");
  }

  Future<void> speakcommunitys1(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The local community supported us from the start.");
  }

  Future<void> speakcommunitys2(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is hoped that the campaign will encourage members of the community to get active.");
  }

  Future<void> speakcommunitys3(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She comes from a small island community.");
  }

  Future<void> speakcommunitys4(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our aim is to serve the community.");
  }

  Future<void> speakcommunitys5(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The local community was shocked by the murders.");
  }

  Future<void> speakcommunitys6(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The library is open to all members of the community.");
  }

  Future<void> speakcommunitys7(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He urged the international community to take decisive action to stop the conflict.");
  }

  Future<void> speakcommunitys8(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Representatives of the city's Bangladeshi community had a meeting with the mayor.");
  }

  Future<void> speakcommunitys9(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is good news for the farming community.");
  }

  Future<void> speakcommunitys10(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is active in the city's Jewish community.");
  }

  Future<void> speakcommunitys11(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There is a strong sense of community here.");
  }

  Future<void> speakcommunitys12(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The town has a strong community spirit.");
  }

  Future<void> speakcommunitys13(String languageCode) async {
    // DOPSUM: CHANGE speakcommunity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The nuns live in a closed community.");
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
                            EntryTitle(word: "community"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmjuːnəti/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommunity("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmjuːnəti/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommunity("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: کۆمەڵگا، جڤاک، کۆمەڵ،	دەستە، پوورە، کۆمەڵ، گروپ، تاقم،	خەڵک، گەل، ئۆمەت،	کەمینە،	ھاوبەشی، شەریکی، ھاوخاوەنایەتی، خاوەنداری ھاوبەش،	یەکێتی، ھەڤگرتوویی،	لێکچوون، ھاوشێوەیی، نزیکایەتی،	ھەستان و دانیشتن، ھەڵس‌وکەوت،	(ژینگەناسی) کۆمەڵ، پوورە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) تەواوی ئەو کەسانەی کە لە ناوچەیەکی دیاریکراودا دەژین"),
                          SentencesRow(
                            englishText:
                                "The local community supported us from the start.",
                            kurdishText:
                                "کۆمەڵگە خپجێیەکە لە سەرەتادا پشتیوانییان کردین.", // community",
                            onPressedBritish: () => speakcommunitys1("en-GB"),
                            onPressedAmerican: () => speakcommunitys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It is hoped that the campaign will encourage members of the community to get active.",
                            kurdishText:
                                "ھیوای ئەوە ھەیە کە کەمپینەکە ھانی ئەندامانی کۆمەڵگاکە بدات چالاک بن.",
                            onPressedBritish: () => speakcommunitys2("en-GB"),
                            onPressedAmerican: () => speakcommunitys2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She comes from a small island community.",
                            kurdishText: "خەڵکی کۆمەڵگای دوورگەیەکی بچووکە.",
                            onPressedBritish: () => speakcommunitys3("en-GB"),
                            onPressedAmerican: () => speakcommunitys3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Our aim is to serve the community.",
                                    kurdishText:
                                        "ئامانجمان خزمەتکردنی کۆمەڵگاکەیە.",
                                    onPressedBritish: () =>
                                        speakcommunitys4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunitys4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The local community was shocked by the murders.",
                                    kurdishText:
                                        "کۆمەڵگا خۆجێیەکە شۆک بوون بە کوشتنەکان.",
                                    onPressedBritish: () =>
                                        speakcommunitys5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunitys5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The library is open to all members of the community.",
                                    kurdishText:
                                        "قوتابخانەکە کراوەیە بۆ ھەموو ئەندامانی کۆمەڵگاکە.",
                                    onPressedBritish: () =>
                                        speakcommunitys6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunitys6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He urged the international community to take decisive action to stop the conflict.",
                                    kurdishText:
                                        "داوای لە کۆمەڵگای نێودەوڵەتی کرد ھەنگاو بنێن بۆ وەستاندنی پێکدادانەکە.",
                                    onPressedBritish: () =>
                                        speakcommunitys7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommunitys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کۆمەڵە کەسێک کە سەر بە ھەمان ئایین، ڕەگەز، پیشە، ھتد ـن"),
                          SentencesRow(
                            englishText:
                                "Representatives of the city's Bangladeshi community had a meeting with the mayor.",
                            kurdishText:
                                "نوێنەرانی کۆمەڵگای بەنگلادشی شارەکە کۆبوونەوەیەکیان کرد لەگەڵ سەرۆک شارەوانییەکە.",
                            onPressedBritish: () => speakcommunitys8("en-GB"),
                            onPressedAmerican: () => speakcommunitys8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This is good news for the farming community.",
                            kurdishText:
                                "ئەمە ھەواڵێکی باشە بۆ دەستەی ئاژەڵداران.",
                            onPressedBritish: () => speakcommunitys9("en-GB"),
                            onPressedAmerican: () => speakcommunitys9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She is active in the city's Jewish community.",
                            kurdishText: "چالاکە لەگەڵ کۆمەڵگای جووی شارەکەدا.",
                            onPressedBritish: () => speakcommunitys10("en-GB"),
                            onPressedAmerican: () => speakcommunitys10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ھەستی بوون بە بەشێک لە گرووپێک لەو شوێنەی کە لێی دەژیت"),
                          SentencesRow(
                            englishText:
                                "There is a strong sense of community here.",
                            kurdishText: "ھەستێکی بەھێزی پێکەوەیی لێرە ھەیە.",
                            onPressedBritish: () => speakcommunitys11("en-GB"),
                            onPressedAmerican: () => speakcommunitys11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The town has a strong community spirit.",
                            kurdishText:
                                "شارؤچکەکە ڕۆحیەتێکی بەھێزی پێکەوەیی ھەیە.",
                            onPressedBritish: () => speakcommunitys12("en-GB"),
                            onPressedAmerican: () => speakcommunitys12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) گرووپێک کە پێکەوە دەژین و ھەموان بە ھاوبەشی خاوەنداری ئەوە دەکەن کە ھەیانە"),
                          SentencesRow(
                            englishText: "The nuns live in a closed community.",
                            kurdishText:
                                "ژنە ڕەبەنەکان لە کۆمەڵێکی داخراودا دەژین.",
                            onPressedBritish: () => speakcommunitys13("en-GB"),
                            onPressedAmerican: () => speakcommunitys13("en-US"),
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
- Noun: community (derived forms: communities)
1. A group of people living in a particular local area
"the team is drawn from all parts of the community"
 
2. A group of people having a religion, ethnic, profession, or other particular characteristic in common
"he was well known throughout the Catholic community"; "the news spread rapidly through the medical community"; "they formed a community of scientists"
 
3. Common ownership
"they shared a community of possessions"
 
4. A group of nations having common interests
"they hoped to join the NATO community"
 
5. Agreement as to goals (= community of interests)
"the preachers and the bootleggers found they had a community of interests";
 
6. A district where people live; occupied primarily by private residences (= residential district, residential area)
 
7. (ecology) a group of interdependent organisms inhabiting the same region and interacting with each other (= biotic community)
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '2GsK5feFt1U';
  final double _startSeconds = 424;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '0rBEQjXg7Ak';
  final double _startSeconds = 264;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'juK9c8zgUvU';
  final double _startSeconds = 368;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'GLIMSRZ80zE';
  final double _startSeconds = 221;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'WLeUt-jBE4Y';
  final double _startSeconds = 133;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'abPjtpNzO5U';
  final double _startSeconds = 74;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 's1SaD-gSZO4';
  final double _startSeconds = 180;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB