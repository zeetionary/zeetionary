import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "assist" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace EnglishEntryassist - replace speakAssist

// replace assist - /əˈsɪst/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryassist extends StatelessWidget {
  // blank divider
  EnglishEntryassist({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAssist(String languageCode) async {
    // DOPSUM: CHANGE speakAssist
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssist848(String languageCode) async {
    // DOPSUM: CHANGE speakAssist
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are looking for people who would be willing to assist in the group's work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssist849(String languageCode) async {
    // DOPSUM: CHANGE speakAssist
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His task is to advise and assist his colleagues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssist852(String languageCode) async {
    // DOPSUM: CHANGE speakAssist
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Volcanic eruptions like this probably assisted the development of life on this planet."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAssist(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssist
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAssist(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssist
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAssist(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssist
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAssist(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssist
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAssist(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssist
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assist"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "assist"), // Find /əˈsɪst/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈsɪst/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAssist("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈsɪst/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAssist("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14,
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
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
کوردی: ھاوکاری، یارمەتی دان، ھاریکاری کردن

١. (کردار) یارمەتی‌دان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We are looking for people who would be willing to assist in the group's work."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆ کەسانێک دەگەڕێین کە ئامادەبن یارمەتیدەربن لە کاری گرووپەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssist848("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssist848(
                                        // REPLACE: assist /əˈsɪst/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His task is to advise and assist his colleagues."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەرکەکەی ئەوەیە ڕاوێژ بدات بە ھاوکارەکانی و یارمەتییان بدات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssist849("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssist849(
                                        // REPLACE: assist /əˈsɪst/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) یارمەتیدان بۆ ڕوودانی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Volcanic eruptions like this probably assisted the development of life on this planet."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەقینەوەی گڕکانی وەک ئەمە ئەگەری ھەیە یارمەتیدەر بووبن لە گەشەی ژیان لەسەر زەوی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssist852("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssist852(
                                        // REPLACE: assist /əˈsɪst/
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
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
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
- Verb: assist (derived forms: assists, assisting, assisted)
1. Give assistance; be of service (= help, aid)
 
2. Act as an assistant in a subordinate or supportive function
 
3. Work for, or be a servant to (= serve, attend to, wait on, attend)
"Is a salesperson assisting you?";

- Noun: assist 
1. The activity of contributing to the fulfilment of a need or furtherance of an effort or purpose (= aid, assistance, help)
"he gave me an assist with the housework";
 
2. (sport) the act of enabling another player to make a good play
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "y1sF6ZeASU0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 459, // DOPSUM: CHANGE IT
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
  static String myVideoId = "qg2nGY1aqlg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 769, // DOPSUM: CHANGE IT
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
  static String myVideoId = "Mhlpk5ZrYLM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 591, // DOPSUM: CHANGE IT
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
  static String myVideoId = "OP7l1n_8Lh4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 492, // DOPSUM: CHANGE IT
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
  static String myVideoId = "dHPTR96Sc1g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 595, // DOPSUM: CHANGE IT
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
  static String myVideoId = "xoYS_j7uEAk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1111, // DOPSUM: CHANGE IT
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
  static String myVideoId = "DER7bCtHLLM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 166, // DOPSUM: CHANGE IT
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
  static String myVideoId = "ugYPoWShl6k";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1416, // DOPSUM: CHANGE IT
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
  static String myVideoId = "62EGPCEmeh4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 875, // DOPSUM: CHANGE IT
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
  static String myVideoId = "J0mZYeb4C8k";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 748, // DOPSUM: CHANGE IT
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
  static String myVideoId = "sth0GSJdzFY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 571, // DOPSUM: CHANGE IT
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
  static String myVideoId = "caVoqAfdkYQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 339, // DOPSUM: CHANGE IT
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

// class YoutubeEmbeddedthirteen extends StatelessWidget {
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
      // autoPlay: false,
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
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

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