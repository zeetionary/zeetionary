import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycancellation extends StatelessWidget {
// blank divider
  EnglishEntrycancellation({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcancellation(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cancellation"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations1(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cancellations must be made in writing.Cancellations must be made in writing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations2(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the event of a flight cancellation, you will be compensated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations3(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are there any cancellations for this evening's performance?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations4(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is time for the West to think of answering the call for a cancellation of Third World debt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations5(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations6(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations7(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations8(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations9(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations10(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations11(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations12(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcancellations13(String languageCode) async {
    // DOPSUM: CHANGE speakcancellation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcancellations1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cancellation"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkænsəˈleɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcancellation("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkænsəˈleɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcancellation("en-US"),
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
کوردی: پووچ‌کردنەوە، بەتاڵ‌کردنەوە، هەڵوەشێنراوی، هەڵوەشاندن، هەڵوەشیان، پووچەڵ‌کردنەوە, شتی پووچەوەکراو، پووچەک, مۆری پووچەڵ‌کردنەوە, لابردن

١. (ناو) هەڵوەشاندنەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Cancellations must be made in writing.Cancellations must be made in writing."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەڵوەشاندنەوە دەبێت بە نووسراو بکرێت."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "cancellation", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcancellations1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcancellations1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "In the event of a flight cancellation, you will be compensated."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ئەگەری هەڵوەشانەوەی گەشتەکەت، قەرەبوو دەکرێیتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcancellations2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcancellations2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) شتێک کە هەڵوەشێنراوەتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Are there any cancellations for this evening's performance? (= tickets that have been returned)"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچ هەڵوەشاندنەوەیەکی نمایشەکەی ئەمشەو هەبووە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcancellations3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcancellations3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) کۆتاییهێنان بە ڕێککەوتنێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It is time for the West to think of answering the call for a cancellation of Third World debt."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاتی هاتووە بۆ وڵاتانی ڕۆژاوا کە چاو لە داواکاری سفرکردنەوەی قەرزی وڵاتانی جیهانی سێیەم بکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcancellations4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcancellations4("en-US"),
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
- Noun: cancellation (Derived forms: cancellations)
1. The act of cancelling; calling off some arrangement (= cancelation [US, rare])
 
2. The speech act of revoking, annulling or making void (= cancelation [US, rare])
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
  static String myVideoId = "https://youtu.be/KUQOnxhtjqA?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 13, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/OxOdyU00FkE?t=";

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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "https://youtu.be/IDQO7ogQ_RU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 91, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/O1u_WA581Q0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 19, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/io6wi8DVZ3o?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 558, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/1I1vxu5qIUM?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1245, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/qOY8F_ngNWI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 633, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/uhIdijSrnVc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 55, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/inlflEHGWo0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 632, // DOPSUM: CHANGE IT
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
  static String myVideoId = "https://youtu.be/TLpgkcZ8wnE?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2058, // DOPSUM: CHANGE IT
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