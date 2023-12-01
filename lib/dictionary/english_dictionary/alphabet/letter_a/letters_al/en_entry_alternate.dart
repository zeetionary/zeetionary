import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: replace EnglishEntryalternate - replace speakAlternate - replace alternate - /ɔːlˈtɜːnət/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalternate extends StatelessWidget {
  EnglishEntryalternate({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAlternate(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("alternate"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlternate4599(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stretch up 30 times with alternate arms as a warm-up exercise."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlternate492(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He and I clean our room on alternate days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlternate4588(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She alternated between cheerfulness and deep despair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlternate385(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ambulance crews alternate between emergency and routine work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlternate5266(String languageCode) async {
    // DOPSUM: CHANGE speakAlternate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "David was too sick to attend, so Janet served as his alternate."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAlternate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlternate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alternate"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlternate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlternate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alternate"); // DOPSUM: CHANGE TEXT
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
                              "alternate", // DOPSUM: CHANGE WORD ENTRY - Find /ɔːlˈtɜːnət/
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
                              "IpaUK: /ɔːlˈtɜːnət/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () => speakAlternate(
                                  // DOPSUM: CHANGE THE WORD ABOVE
                                  "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "IpaUS: /ɔːlˈtɜːnət/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAlternate(
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
کوردی: یەک‌بەدوای‌یەک، بەشوێن‌یەکا، یەک‌نایەک، جارەناجار، بە نۆرە، یەک بە یەک، ئاڵ‌وگۆڕ، ئالتێرنێیت (بیرکاری)، ئەویدی، دی

١. (ھاوەڵناو) کردنی شتێک سەرەتا بە یەکەم شت، دواتر بە شتێکی تر، و ئینجا دووبارە بە یەکەم شت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Stretch up 30 times with alternate arms as a warm-up exercise."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وەک خۆگەرمکردنەوەیەک ٣٠ جار سترێچ بکە، ھەرجارە و بە دەستێک."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAlternate4599("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAlternate4599(
                                    // REPLACE: alternate /ɔːlˈtɜːnət/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ڕۆژ نا ڕۆژ، جار نا جار، ساڵ نا ساڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He and I clean our room on alternate days."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "من و ئەو ژوورەکەمان ڕۆژ نا ڕۆژێک پاکدەکەینەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAlternate492("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAlternate492(
                                    // REPLACE: alternate /ɔːlˈtɜːnət/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ڕوودان بەدوای یەکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She alternated between cheerfulness and deep despair."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەردەوام لە نێوان دڵخۆشی و نائومێدی قووڵ بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAlternate4588("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAlternate4588(
                                    // REPLACE: alternate /ɔːlˈtɜːnət/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ڕوودان بە بەردەوامی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Ambulance crews alternate between emergency and routine work."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تیمەکانی فریاگوزاری بەردەوام لەنێوان کاری ئاسایی ڕۆژانەیان و حاڵەتی نەخوازراون."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAlternate385("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAlternate385(
                                    // REPLACE: alternate /ɔːlˈtɜːnət/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) کەسێکی جێگرەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "David was too sick to attend, so Janet served as his alternate."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەیڤد زۆر نەخۆش بوو کە بتوانێت بەژداربێت، بۆیە جانێت وەک جێگرەوەی کاری کرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAlternate5266("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAlternate5266(
                                    // REPLACE: alternate /ɔːlˈtɜːnət/
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
- Adjective: alternate
1. (botany) of leaves and branches etc; first on one side and then on the other in two ranks along an axis; not paired
"stems with alternate leaves"
 
2. Every second one of a series
"the cleaning lady comes on alternate Wednesdays"
 
3. Serving or used in place of another (= alternative, substitute)
"an alternate plan";
 
4. Occurring by turns; first one and then the other (= alternating)
"alternate feelings of love and hate";

- Verb: alternate (derived forms: alternating, alternates, alternated)
1. Go back and forth; swing back and forth between two states or conditions (= jump)
 
2. Exchange people temporarily to fulfil certain jobs and functions
 
3. Be an understudy or alternate for a role (= understudy)
 
4. Reverse (a direction, attitude, or course of action) (= interchange, tack, switch, flip, flip-flop)
 
5. Do something in turns (= take turns)
"We alternate on the night shift";

- Noun: alternate (derived forms: alternating, alternates, alternated) 
1. Someone who takes the place of another person (= surrogate, replacement)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'Fon7og7w4Yw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 41, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PRL5EumA9xc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 10, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QxYA721dI7g';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PGk3qLxwmDQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 173, // DOPSUM: CHANGE IT
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
  static String myVideoId = '544DTGHIBM0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 382, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'iuOYz8zt9J4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Mx8JkGHaGUI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 477, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'S-4rhjO6xYg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 146, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'EM4SJlhsXSE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 269, // DOPSUM: CHANGE IT
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
  static String myVideoId = '6QgR6Tjle7g';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 80, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DMRMWLwvAGA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 700, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'T4gRYEjiyzQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 763, // DOPSUM: CHANGE IT
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


