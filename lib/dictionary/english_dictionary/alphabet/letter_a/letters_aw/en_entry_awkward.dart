import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "awkward" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace awkward - replace EnglishEntryawkward

// replace speakAwkward - /ˈɔːkwəd/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryawkward extends StatelessWidget {
  // blank divider
  EnglishEntryawkward({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAwkward(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("awkward"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards1(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was an awkward silence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards2(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I felt awkward because they obviously wanted to be alone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards3(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You've put me in an awkward position."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards4(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Have I come at an awkward time?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards5(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This box is very awkward for one person to carry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards6(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I must have slept in an awkward position—I'm aching all over."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAwkwards7(String languageCode) async {
    // DOPSUM: CHANGE speakAwkward
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakAwkwards77"); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(
                                word: "awkward"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈɔːkwəd/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAwkward("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈɔːkwərd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAwkward("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
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
کوردی: نەگونجاو، نالەبار، نەشیاو، ناشارەزا، سەرەندەرنەکردوو، دەس‌خاو، ناوەستایانە، ناشی، سەخت، گران، دژوار، چەتوون، ناخۆش، سەرلێ‌شێواو، پەشۆکاو، ناڕێک، ناقۆڵا، قۆڕ، ناجۆر، قەبە، ناتەرز، بارناخۆش، نالەبار، نابار، خراپ‌ھەڵکەوتوو، مەترسی‌دار، جێی‌ترس

١. (ھاوەڵناو) بەشێوەیەک کە تووشی شەرمت دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "There was an awkward silence."),
                              const ExampleSentenceKurdish(
                                  text: "بێ‌دەنگییەکی شەرمھێنەر بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards1(// REPLACE: awkward
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
                                      "I felt awkward because they obviously wanted to be alone."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەستم بە شەرم دەکرد چونکە ئاشکرا بوو دەیانویست تەنھا بن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards2(// REPLACE: awkward
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە ئاسان نییە مامەڵەی لەگەڵ بکەیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You've put me in an awkward position."),
                              const ExampleSentenceKurdish(
                                  text: "منت خستووەتە بارودۆخێکی نالەبارەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards3(// REPLACE: awkward
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) نەگونجاو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Have I come at an awkward time?"),
                              const ExampleSentenceKurdish(
                                  text: "لە کاتێکی نەگونجاو ھاتووم؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards4(// REPLACE: awkward
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) گران یان مەترسیدار بەھۆی شێوە و دیزاین"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This box is very awkward for one person to carry."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم سندووقە زۆر نەشیاوە بۆ ھەڵگرتنی لەلایەن یەک کەس."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards5(// REPLACE: awkward
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) نا ئاسوودە؛ ڕۆشتن بەشێوەیەکی ناڕاست"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I must have slept in an awkward position—I'm aching all over."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت لەسەر لایەکی خراپ خەوتبم، تەواوی جەستەم دێشێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAwkwards6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAwkwards6(// REPLACE: awkward
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
Adjective: awkward (derived forms: awkwarder, awkwardest)
1. Causing inconvenience
"they arrived at an awkward time"
 
2. Lacking grace or skill in manner or movement or performance
"an awkward dancer"; "an awkward gesture"; "too awkward with a needle to make her own clothes"; "his clumsy fingers produced an awkward knot"
 
3. Difficult to handle or manage especially because of shape (= bunglesome, clumsy, ungainly)
"an awkward bundle to carry";

4. Not elegant or graceful in expression (= clumsy, cumbersome, inapt, inept, ill-chosen, clunky [informal])
"an awkward prose style";
 
5. Hard to deal with; especially causing pain or embarrassment (= embarrassing, sticky, unenviable)
"awkward moments in the discussion"; "an awkward pause followed his remark";
 
6. Socially uncomfortable; unsure and constrained in manner (= ill at ease, uneasy)
"awkward and reserved at parties";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 367, // DOPSUM: CHANGE IT
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
  static String myVideoId = "QyB5ofy9RaY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1126, // DOPSUM: CHANGE IT
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
  static String myVideoId = "ffsxyPC4000";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 110, // DOPSUM: CHANGE IT
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
  static String myVideoId = "zqllxbPWKNI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 382, // DOPSUM: CHANGE IT
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
  static String myVideoId = "yjhibJ-OqxE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 629, // DOPSUM: CHANGE IT
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
  static String myVideoId = "lex6USTugUU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 198, // DOPSUM: CHANGE IT
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
  static String myVideoId = "jgkMFBDyzE8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1069, // DOPSUM: CHANGE IT
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
  static String myVideoId = "737Xp2J2KSs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 28, // DOPSUM: CHANGE IT
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
  static String myVideoId = "P8m-KThvtxA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 381, // DOPSUM: CHANGE IT
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
  static String myVideoId = "9K_CZizKdVs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 496, // DOPSUM: CHANGE IT
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
  static String myVideoId = "xVQxvthAcLU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1677, // DOPSUM: CHANGE IT
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
  static String myVideoId = "PbKYAks6044";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 865, // DOPSUM: CHANGE IT
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

// end awkward // TODO Implement this library.
