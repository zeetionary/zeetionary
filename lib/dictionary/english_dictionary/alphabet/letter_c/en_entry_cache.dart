import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycache extends StatelessWidget {
// blank divider
  EnglishEntrycache({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcache(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cache"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches1(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The squirrel stored nuts in a cache beneath the tree."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches2(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The browser stores frequently visited sites in a cache."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches3(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Pirates cached treasures in a beachside."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches4(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Modern browsers cache images for faster loading."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches5(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches6(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches7(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches8(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches9(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches10(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches11(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches12(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaches13(String languageCode) async {
    // DOPSUM: CHANGE speakcache
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaches1313"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "cache"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kæʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcache("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcache("en-US"),
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
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- find:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: عەماری نهێنی، نهێنگە، هەڵگرتنگە، پەناگە، حەشارگە (نهێنی)، کۆگا یان عەماری کاتی (چەک‌وچۆڵ، خۆراک و هتد)، (کامپیوتێڕ) یادگەی نهێنی، حەشارگە

١. (ناو) حەشارگەی نهێنی، بۆ نموونە بۆ چەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The squirrel stored nuts in a cache beneath the tree."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سمۆرەکە کاکڵەکەی شاردەوە لە حەشارگەیەک لە ژێر دارەکەدا."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "cache", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcaches1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcaches1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بەشێکی یادگەی کۆمپیوتەرێک کە زانیاری کۆگا دەکات کە زۆرجار پێویستن لە کاتێکدا پڕۆگرامەکە کار دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The browser stores frequently visited sites in a cache."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "براوزەرەکە ئەو وێبسایتانەی کە زووزوو سەردانکراون لە یادگەیەک کۆگا دەکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcaches2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcaches2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) شاردنەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Pirates cached treasures in a beachside."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چەتەکان گەنجینەیان لە کەنار دەریایەک شاردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcaches3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcaches3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) هەڵگرتنی داتا لە یادگەی کۆمپیوتەرێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Modern browsers cache images for faster loading."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "براوزەرەکانی ئەم سەردەمە وێنە لە یادگە هەڵدەگرن بۆ خێرا کردنەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcaches4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcaches4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Noun: cache (Derived forms: caches)
1. A hidden storage space (for money, provisions or weapons)
 
2. A secret store of valuables or money (= hoard, stash)
 
3. (computing) RAM memory that is set aside as a specialized buffer storage that is continually updated; used to optimize data transfers between system elements with different characteristics (= memory cache)

- Verb: cache (Derived forms: caching, caches, cached, cacheing)
1. Save up as for future use (= hoard, stash, lay away, hive up, squirrel away [informal], sock away [N. Amer, informal])
 
2. (computer) store temporarily in memory or disk for quick re-use later
"web pages are often cached for quick retrieval the next time they are needed"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedone({super.key});
  static String myVideoId = "https://youtu.be/3DxMSufIIqY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  static String myVideoId = "https://youtu.be/evvVtqmvE5w?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 170, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "https://youtu.be/f8euUepDo5w?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 394, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  static String myVideoId = "https://youtu.be/-obKX-mqjXQ?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 83, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  static String myVideoId = "https://youtu.be/tlezBUdD53w?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 236, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  static String myVideoId = "https://youtu.be/8F1xmbYucec?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 88, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  static String myVideoId = "https://youtu.be/2XcRZIMgqKU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 65, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "https://youtu.be/e4rw3d7mu28?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 43, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  static String myVideoId = "https://youtu.be/7nPknkgc-Ps";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  static String myVideoId = "https://youtu.be/O1jpck31Ask?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 167, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB