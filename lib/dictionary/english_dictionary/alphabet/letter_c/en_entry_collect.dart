import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycollect extends StatelessWidget {
  // blank divider
  EnglishEntrycollect({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcollect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("collect");
  }

  Future<void> speakcollects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The purpose of his trip was to collect material for a book.");
  }

  Future<void> speakcollects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Samples were collected from over 200 patients.");
  }

  Future<void> speakcollects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've been collecting data from various sources.");
  }

  Future<void> speakcollects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He began collecting antiquities in 1785.");
  }

  Future<void> speakcollects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He started to collect art seriously soon after the turn of the century.");
  }

  Future<void> speakcollects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In spite of their efforts a large pool of liquid continued to collect.");
  }

  Future<void> speakcollects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dirt had collected in the corners of the room.");
  }

  Future<void> speakcollects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It’s amazing how she collects friends.");
  }

  Future<void> speakcollects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The package is waiting to be collected.");
  }

  Future<void> speakcollects10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What day do they collect the rubbish/garbage?");
  }

  Future<void> speakcollects11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Someone will be at the airport to collect you.");
  }

  Future<void> speakcollects12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's gone to collect her son from school.");
  }

  Future<void> speakcollects13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're collecting for local charities.");
  }

  Future<void> speakcollects14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Volunteers have been going door to door, collecting money.");
  }

  Future<void> speakcollects15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She collected £25 000 in compensation.");
  }

  Future<void> speakcollects16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A crowd began to collect in front of the embassy.");
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
                            EntryTitle(word: "collect"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈlekt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcollect("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈlekt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcollect("en-US"),
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
کوردی: دۆعا، نزا، کورتەنوێژ، کۆکردنەوە، خڕ کردنەوە، کۆبوونەوە، خڕبوونەوە، گردبوونەوە
"""),
                          const DefinitionKurdish(text: "١. (کردار) کۆکردنەوە"),
                          SentencesRow(
                            englishText:
                                "The purpose of his trip was to collect material for a book.",
                            kurdishText:
                                "ئامانجی گەشتەکەی کۆکردنەوەی زانیاری بوو بۆ کتێبێک.", // collect",
                            onPressedBritish: () => speakcollects1("en-GB"),
                            onPressedAmerican: () => speakcollects1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Samples were collected from over 200 patients.",
                            kurdishText: "نموونە لە ٢٠٠ نەخۆشەوە کۆکرایەوە.",
                            onPressedBritish: () => speakcollects2("en-GB"),
                            onPressedAmerican: () => speakcollects2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We've been collecting data from various sources.",
                            kurdishText:
                                "لە سەرچاوەی جیاوازەوە زانیاریمان کۆکردووەتەوە.",
                            onPressedBritish: () => speakcollects3("en-GB"),
                            onPressedAmerican: () => speakcollects3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) کۆکردنەوە شت وەک خولیا"),
                          SentencesRow(
                            englishText:
                                "He began collecting antiquities in 1785.",
                            kurdishText:
                                "لە ساڵی ١٧٨٥ دەستیکرد بە کۆکردنەوەی ئەنتیک.",
                            onPressedBritish: () => speakcollects4("en-GB"),
                            onPressedAmerican: () => speakcollects4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He started to collect art seriously soon after the turn of the century.",
                            kurdishText:
                                "لە دوای سەرەتای سەدەکەوە دەستی بە کۆکردنەوەی کاری ھونەری کرد.",
                            onPressedBritish: () => speakcollects5("en-GB"),
                            onPressedAmerican: () => speakcollects5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) زیادبوونی لە بڕدا لە شوێنێک"),
                          SentencesRow(
                            englishText:
                                "In spite of their efforts a large pool of liquid continued to collect.",
                            kurdishText:
                                "سەرەڕای ھەوڵەکانیان ڕێژەیەکی زۆر لە شلە بەردەوام بوو لە کۆبوونەوە.",
                            onPressedBritish: () => speakcollects6("en-GB"),
                            onPressedAmerican: () => speakcollects6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Dirt had collected in the corners of the room.",
                            kurdishText: "قوڕ لە سووچی ژوورەکە کۆبوویەوە.",
                            onPressedBritish: () => speakcollects7("en-GB"),
                            onPressedAmerican: () => speakcollects7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It’s amazing how she collects friends.",
                            kurdishText: "دۆزینەوەی ھاوڕێی سەرسوڕھێنەرە.",
                            onPressedBritish: () => speakcollects8("en-GB"),
                            onPressedAmerican: () => speakcollects8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) چوونە شوێنێک بۆ بردنی شتێک/کەسێک"),
                          SentencesRow(
                            englishText:
                                "The package is waiting to be collected.",
                            kurdishText: "پاکێجەکە ئامادەیە بۆ بردنەوە.",
                            onPressedBritish: () => speakcollects9("en-GB"),
                            onPressedAmerican: () => speakcollects9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "What day do they collect the rubbish/garbage?",
                            kurdishText: "چی ڕۆژێک زباڵە کۆدەکەنەوە؟",
                            onPressedBritish: () => speakcollects10("en-GB"),
                            onPressedAmerican: () => speakcollects10("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She's gone to collect her son from school.",
                                    kurdishText:
                                        "ڕۆشتووە بۆ ھێنانەوەی منداڵەکەی لە قوتابخانە.",
                                    onPressedBritish: () =>
                                        speakcollects12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcollects12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Someone will be at the airport to collect you.",
                            kurdishText: "کەسێک لە فڕۆکەخانە ھەڵتدەگرێت.",
                            onPressedBritish: () => speakcollects11("en-GB"),
                            onPressedAmerican: () => speakcollects11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) داواکردنی پارە لە خەڵکی بۆ مەبەستێکی دیاریکراو، یان بۆ داواکردنەوەی قەرز"),
                          SentencesRow(
                            englishText:
                                "We're collecting for local charities.",
                            kurdishText:
                                "پارە بۆ ڕێکخراوە خێرخوازییەکان کۆدەکەینەوە.",
                            onPressedBritish: () => speakcollects13("en-GB"),
                            onPressedAmerican: () => speakcollects13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Volunteers have been going door to door, collecting money.",
                            kurdishText:
                                "خۆبەخشان دەرگا بە دەرگا گەڕاون بۆ کۆکردنەوەی پارە.",
                            onPressedBritish: () => speakcollects14("en-GB"),
                            onPressedAmerican: () => speakcollects14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) وەرگرتن یان بردنەوەی شتێک"),
                          SentencesRow(
                            englishText:
                                "She collected £25 000 in compensation.",
                            kurdishText: "٢٥,٠٠٠ پاوەندی وەک قەرەبوو وەرگرت.",
                            onPressedBritish: () => speakcollects15("en-GB"),
                            onPressedAmerican: () => speakcollects15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) کۆبوونەوەی خەڵکی"),
                          SentencesRow(
                            englishText:
                                "A crowd began to collect in front of the embassy.",
                            kurdishText:
                                "جەماوەرێک دەستیان بە کۆبوونەوە کرد لە پێش باڵیۆزخانەکە.",
                            onPressedBritish: () => speakcollects16("en-GB"),
                            onPressedAmerican: () => speakcollects16("en-US"),
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
- Verb: collect (derived forms: collects, collecting, collected)
1. Get or gather together (a large number of something) (= roll up, accumulate, pile up, amass, compile, hoard)
"She collected a small fortune";
 
2. Call for and obtain payment of (= take in)
"we collected over a million dollars in outstanding debts"; "he collected the rent";
 
3. Assemble or get together (= gather, garner, pull together)
"collect some stones";
 
4. Get or bring together (= pull in)
 
5. Go to meet, esp. to then take somewhere in a vehicle (= pick up, gather up, call for)
"She collected the children at the day care centre";

- Noun: collect (derived forms: collects)
1. A short prayer generally preceding the lesson in the Church of Rome or the Church of England

- Adjective: collect  
1. Payable by the recipient on delivery (= COD)
"a collect call"; "the letter came collect";

- Adverb: collect 
1. Make a telephone call or mail a package so that the recipient pays
"call collect"; "send a package collect"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '8RNxDWJMQR8';
  final double _startSeconds = 289;

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

  final String _videoId = 'DesEUpFgGrQ';
  final double _startSeconds = 269;

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

  final String _videoId = 'rjOx3W5GtXg';
  final double _startSeconds = 38;

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

  final String _videoId = 'ECGMfI7w41o';
  final double _startSeconds = 86;

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

  final String _videoId = 'xXMvtT2gwog';
  final double _startSeconds = 845;

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

  final String _videoId = 'I2MpwzX_FPc';
  final double _startSeconds = 46;

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

  final String _videoId = 'lLBmElR0Luw';
  final double _startSeconds = 264;

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