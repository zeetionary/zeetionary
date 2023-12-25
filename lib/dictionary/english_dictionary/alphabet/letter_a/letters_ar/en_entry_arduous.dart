import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// replace EnglishEntryAdopsummm - replace speakArduous

// replace arduous - /ˈɑːdʒuəs/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryarduous extends StatelessWidget {
  // blank divider
  EnglishEntryarduous({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakArduous(String languageCode) async {
    // DOPSUM: CHANGE speakArduous
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArduous530(String languageCode) async {
    // DOPSUM: CHANGE speakArduous
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road back to political stability is long and arduous."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArduous531(String languageCode) async {
    // DOPSUM: CHANGE speakArduous
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The work was arduous."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakArduous(String languageCode) async {
  //   // DOPSUM: CHANGE speakArduous
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arduous"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "arduous"), // Find /ˈɑːdʒuəs/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈɑːdʒuəs/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakArduous("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈɑːrdʒuəs/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakArduous("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 10,
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  // VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
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
کوردی: سەخت، گران، تاقەت‌پڕوقێن، چەتوون، ئاسێ، پڕزەحمەت، قورس، دژوار، لێژ، سەرەوخوار، تەلان، لاپێ، سینەکێش

١. (ھاوەڵناو) شتێک کە ھەوڵ و ماندووبوونی زۆری دەوێ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The road back to political stability is long and arduous."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێگای گەشتنەوە بە ئارامی سیاسی زەحمەتە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakArduous530("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArduous530(
                                        // REPLACE: arduous /ˈɑːrdʒuəs/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The work was arduous."),
                              const ExampleSentenceKurdish(
                                  text: "کارەکە تاقەت‌پڕوقێن بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakArduous531("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArduous531(
                                        // REPLACE: arduous /ˈɑːrdʒuəs/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
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
- Adjective: arduous 
1. Characterized by effort to the point of exhaustion; especially physical effort (= backbreaking, grueling [US], gruelling [Brit, Cdn], hard, heavy, laborious, operose, punishing, toilsome, killing [informal])
"worked their arduous way up the mining valley";
 
2. Taxing to the utmost; testing powers of endurance (= straining, strenuous)
"your willingness after these six arduous days to remain here";
 
3. Difficult to accomplish; demanding considerable mental effort and skill
"the arduous work of preparing a dictionary"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "J2eU4Ol3IDU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 149, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "YIXy2Kit4z4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 232, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "gk4tEO4jDUM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 4666, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "zHfha18xbtg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 100, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "TBhEuik14dg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 78, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "Ky1c6d7v0pQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1088, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "AecFpnj383A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 291, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "ePt108F00sU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 218, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
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

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
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

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
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

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
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

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddethirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddethirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end // TODO Implement this library.