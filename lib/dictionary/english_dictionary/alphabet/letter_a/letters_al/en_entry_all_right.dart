import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: replace EnglishEntryallright - replace speakAllright - replace all right - /ɔːl ˈraɪt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryallright extends StatelessWidget {
  EnglishEntryallright({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAllright(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("all right"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright124(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got to get up early, all right?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright123(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("‘Can you do it?’ ‘Oh, all right.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright235(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘I'm really sorry.’ ‘That's all right, don't worry.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright23469(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All right class, turn to page 20."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright5241(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you getting along all right in your new job?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright3695(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I hope the children are all right."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright4577(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your work is all right but I'm sure you could do better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright87459(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got to get up early, all right?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright1056(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you sure it's all right for me to leave early?"); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
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
                            Text(
                              "all right (or alright)", // DOPSUM: CHANGE WORD ENTRY - Find /ɔːl ˈraɪt/
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                            const Text(
                              "IpaUK: /ɔːl ˈraɪt/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAllright(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "IpaUS: /ɔːl ˈraɪt/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAllright(
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
کوردی: قایلکەر، باش، چاک، ڕاست، دروست، بێ‌گومان، حەتمەن، تا ڕادەیێ باش، باشە، بەڵێ

١. (سەرسوڕمان) بۆ زانینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We've got to get up early, all right?"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەبێت زوو لە خەو ھەستین، تێگەشتی؟"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright124("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright124(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (سەرسوڕمان) بۆ دەربڕینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "‘Can you do it?’ ‘Oh, all right.’"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەتوانی بیکەیت؟ ئاھ، بەڵێ."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright123("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright123(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (سەرسوڕمان) بۆ پەسەندکردنی سوپاس، یارمەتی، یان چاکە، یان کاتێک کەسێک داوای لێبووردن دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "‘I'm really sorry.’ ‘That's all right, don't worry.’"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "'زۆر داوای لێبووردن دەکەم'، 'کێشە نییە، نیگەران مەبە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright235("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright235(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (سەرسوڕمان) بۆ ڕاکێشانی سەرنج"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "All right class, turn to page 20."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆرباشە خوێندکاران، بیخەنە سەر پەڕەی ٢٠"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright23469("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright23469(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە کێشەی نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Are you getting along all right in your new job?"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "لە کارە تازەکەت بێ کێشە ھەڵدەکەیت؟"),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright5241("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright5241(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) باش و سەلامەت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I hope the children are all right."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ھیوادارم منداڵەکان سەلامەت بن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright3695("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright3695(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) شتێک کە خراپ نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Your work is all right but I'm sure you could do better."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارەکەت خراپ نییە بەڵام دڵنیام ئەتتوانی باشتر بیت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright4577("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright4577(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) شتێک کە ڕێگەپێدراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Are you sure it's all right for me to leave early?"),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دڵنیایت کە ئاسایی دەبێت زوو کار جێبھێڵم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllright1056("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAllright1056(
                                    // REPLACE: all right /ɔːl ˈraɪt/
                                    "en-US"),
                              ),
                            ],
                          ),
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
- Adverb: all right 
1. An expression of agreement normally occurring at the beginning of a sentence (= very well, fine, alright, OK, all righty [non-standard], righty-ho [Brit, informal])
 
2. Without doubt (used to reinforce an assertion) (= alright)
"it's expensive all right";
 
3. In a satisfactory or adequate manner (= okay, O.K., alright, OK)
"held up all right under pressure";

- Adjective: all right 
1. Being satisfactory or in satisfactory condition (= fine, o.k., OK, okay, hunky-dory [informal], cool [informal], alright, jake [N. Amer, Austral, NZ, informal])
"the passengers were shaken up but are all right"; "is everything all right?";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '3YltYCrPZos';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 59, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'rPe4yziWiOg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 129, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'a_TSR_v07m0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 605, // DOPSUM: CHANGE IT
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
  static String myVideoId = '56POcqkKG1E';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 34, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'ZE7TS2Rituo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 27, // DOPSUM: CHANGE IT
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
  static String myVideoId = '9sRQQRiltrE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 13, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'e09xig209cQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 356, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QaZ93sibpk0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 306, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'HDntl7yzzVI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 295, // DOPSUM: CHANGE IT
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
  static String myVideoId = '8HEfIJlcFbs';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 435, // DOPSUM: CHANGE IT
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
  static String myVideoId = '44HXLCsdIk8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 87, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'k3aAl92_VDE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
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
}

// end


