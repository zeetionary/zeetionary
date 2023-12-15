import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "Dopsum1" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace Dopsum1 - replace EnglishEntry2

// replace speakB3 - haʊʊʊʊʊʊʊ4

enum TtsState { playing }

class EnglishEntry2 extends StatelessWidget {
// blank divider
  EnglishEntry2({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakB3(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dopsum1"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s1(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "speakB3s111111111111111111111111111111111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s2(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s22"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s3(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s33"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s4(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s44"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s5(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s6(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakB3s7(String languageCode) async {
    // DOPSUM: CHANGE speakB3
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakB3s77"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "Dopsum1"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: haʊʊʊʊʊʊʊ4"),
                            CustomIconButtonBritish(
                              onPressed: () => speakB3("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: haʊʊʊʊʊʊʊ4"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakB3("en-US"),
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
                  // VideoIconForTab(), // 01
                  // VideoIconForTab(), // 02
                  // VideoIconForTab(), // 03
                  // VideoIconForTab(), // 04
                  // VideoIconForTab(), // 05
                  // VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 2
                  // VideoIconForTab(), // 07 --- FIND: speakB3s111111111111111111111111111111111
                  // VideoIconForTab(), // 08
                  // VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
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
کوردی: 

١. (ھاوەڵناو) پێنناسە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "speakB3s111111111111111111111111111111111"),
                              const ExampleSentenceKurdish(
                                  text: "رستە_رستە_رستە_رستە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakB3s1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakB3s1("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    // YoutubeEmbeddedone(),
                    // YoutubeEmbeddedtwo(),
                    // YoutubeEmbeddedthree(),
                    // YoutubeEmbeddedfour(),
                    // YoutubeEmbeddedfive(),
                    // YoutubeEmbeddedsix(), // FIND: VideoIconForTab
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """

WORD_WEB haʊʊʊʊʊʊʊ4

WORD_WEB
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end Dopsum1

// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider

class YoutubeEmbeddedmulti extends StatelessWidget {
  YoutubeEmbeddedmulti({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controllerthree = YoutubePlayerController(
    initialVideoId: myVideoIdThree,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFour = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controllerfour = YoutubePlayerController(
    initialVideoId: myVideoIdFour,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFive = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controllerfive = YoutubePlayerController(
    initialVideoId: myVideoIdFive,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesign(controller: _controller),
            YouTubeContainerDesign(controller: _controllertwo),
            YouTubeContainerDesign(controller: _controllerthree),
            YouTubeContainerDesign(controller: _controllerfour),
            YouTubeContainerDesign(controller: _controllerfive),
          ],
        ),
      ),
    );
  }
}


// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider
// divider


// Future<void> speakBands8(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands88"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands9(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands99"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands10(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1010"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands11(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1111"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands12(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1212"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands13(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1313"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands14(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1414"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands15(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1515"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands16(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1616"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands17(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1717"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands18(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1818"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands19(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands1919"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands20(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2020"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands21(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2121"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands22(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2222"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands23(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2323"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands24(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2424"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands25(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2525"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands26(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2626"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands27(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2727"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands28(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2828"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands29(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands2929"); // DOPSUM: CHANGE TEXT
//   }

//   Future<void> speakBands30(String languageCode) async {
//     // DOPSUM: CHANGE speakBand
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("speakBands3030"); // DOPSUM: CHANGE TEXT
//   }