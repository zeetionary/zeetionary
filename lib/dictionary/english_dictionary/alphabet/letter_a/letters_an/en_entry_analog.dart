import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: replace EnglishEntryanalog - replace speakAnalog - replace analogue - /ˈænəlɒɡ/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryanalog extends StatelessWidget {
  EnglishEntryanalog({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAnalog(String languageCode) async {
    // DOPSUM: CHANGE speakAnalog
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("analog"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnalog85096(String languageCode) async {
    // DOPSUM: CHANGE speakAnalog
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is the standard method used to convert analog signals to digital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnalog79005(String languageCode) async {
    // DOPSUM: CHANGE speakAnalog
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She still uses an old-fashioned analog alarm clock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnalog8506(String languageCode) async {
    // DOPSUM: CHANGE speakAnalog
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists are attempting to compare features of extinct animals with living analogs."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAnalog(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnalog
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("analogue"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnalog(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnalog
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("analogue"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnalog(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnalog
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("analogue"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnalog(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnalog
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("analogue"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnalog(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnalog
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("analogue"); // DOPSUM: CHANGE TEXT
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
                            Expanded(
                              child: Text(
                                "analog", // DOPSUM: CHANGE WORD ENTRY - Find /ˈænəlɒɡ/
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Text(
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUK: /ˈænəlɒɡ/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAnalog(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: const Text(
                                "IpaUS: /ˈænəlɔːɡ/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAnalog(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: const [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(), // 07
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                ],
                indicator: BoxDecoration(
                  color: Pallete.tabsbackgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4.0),
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
                          const DefinitionKurdish(text: """
کوردی: (تکنیکی و فەرمی) ھاوشێوە، ھاوچەشن، لێکچوو، ھاوتا، وەکیەک،  شتێکی ھاوشێوە یان لێکچوو

١. (ھاوەڵناو) ئامێرێکی ئەلیکترۆنی کە مەودایەکی بەردەوام گۆڕاوی بڕی فیزیایی بەکاردێنێت بۆ پێوان و کۆگاکردنی زانیاری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This is the standard method used to convert analog signals to digital."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمە ڕێگای ستانداردە بۆ گۆڕینی شەپۆلی ئەنالۆگ بۆ دیجیتاڵ"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAnalog85096("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAnalog85096(
                                    // REPLACE: analogue /ˈænəlɔːɡ/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) کاتژمێرێک کە میلی ھەیە وەک ئەوەی ژمارەکان پیشان‌بدات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She still uses an old-fashioned analog alarm clock."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێشتا کاتژمێرێکی ئەنالۆگی کۆنەباو وەک چاڵمە بەکاردێنێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAnalog79005("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAnalog79005(
                                    // REPLACE: analogue /ˈænəlɔːɡ/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شتێک کە ھاوشێوەی شتێکی ترە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Scientists are attempting to compare features of extinct animals with living analogs."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زاناکان ھەوڵ‌دەدەن خاسیەتەکانی ئاژەڵە لەناوچووەکان بەراورد بکەن بە لێکچووە زیندووەکانیان."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAnalog8506("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAnalog8506(
                                    // REPLACE: analogue /ˈænəlɔːɡ/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
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
                    // YoutubeEmbeddedfourteen(),
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
          EnglishMeaningConst(
            text: """
- Adjective: analog 
1. (electronics) Of a circuit or device in which the value of a data item is represented by a continuously variable physical quantity rather than digitally (= analogue [Brit], linear)
"analog device";

- Noun: analog (derived forms: analogs)
Usage: US (elsewhere: analogue)
1. Something having the property of being analogous to something else (= analogue, parallel)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "IgF3OX8nT0w";
  static String myVideoIdTwo = "GVsUOuSjvcg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 79, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 94, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesign(controller: _controller),
            YouTubeContainerDesign(controller: _controllertwo),
            // YouTubeContainerDesign(controller: _controllerthree),
          ],
        ),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "VYJtb2YXae8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 240, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "twAP3buj9Og";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1561, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "G2r_I1G_mfA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 22, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "4UE8snwPIVY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 205, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "-naamtpQ8lw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 585, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "a_wuykzfFzE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 482, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "4P8fKd0IVOs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1085, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "gXR9D9ZXllg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 129, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "TCxoZlFqzwA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1513, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "t93UCj1hzu8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 2043, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = "k_zz3239DA0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 121, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
  // morethan one video, only first autoplay

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           YouTubeContainerDesign(controller: _controller),
  //           YouTubeContainerDesign(controller: _controllertwo),
  //           YouTubeContainerDesign(controller: _controllerthree),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// end


// TODO Implement this library.