import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryalive - replace speakAlive - replace alive - /əˈlaɪv/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalive extends StatelessWidget {
  EnglishEntryalive({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAlive(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("alive"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive65666(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had to steal food just to stay alive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive69142(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We don't know whether he's alive or dead."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive3599(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Ed was alive with happiness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive75236(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The old customs are still very much alive in this region."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive378514(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The pool was alive with goldfish."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlive35961(String languageCode) async {
    // DOPSUM: CHANGE speakAlive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They are alive to the fact that the opposing team has not lost a game this season."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAlive(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alive"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlive(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alive"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlive(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alive"); // DOPSUM: CHANGE TEXT
  // }

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
                            EntryTitle(word: "alive"), // Find /əˈlaɪv/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈlaɪv/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAlive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈlaɪv/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAlive("en-US"),
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(), // 07
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
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
کوردی: زیندوو، لەژیان‌دا، نەمردوو، بەکەیف، بەگوڕ، بەدەماخ، بەجم‌وجوڵ، ھەڵسووڕ، چالاک، بزۆر، ئاگادار، بەخەبەر، ھەڵبوو، داگیرساو، کڵپەکردوو، پڕ (لە)

١. (ھاوەڵناو) زیندوو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She had to steal food just to stay alive."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێویست بوو خواردن بدزێت بۆ ئەوەی بە زیندوویی بمێنێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive65666("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive65666(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
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
                                      "We don't know whether he's alive or dead."),
                              const ExampleSentenceKurdish(
                                  text: "نازانین زیندووە یان مردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive69142("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive69142(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پڕ لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Ed was alive with happiness."),
                              const ExampleSentenceKurdish(
                                  text: "ئێد پڕ بوو لە خۆشی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive3599("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive3599(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) بەردەوام"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The old customs are still very much alive in this region."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نەریتە کۆنەکان ھێشتا زیندوون لەم ھەرێمە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive75236("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive75236(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) پڕ لە زیندەوەر یان شتی جووڵاو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The pool was alive with goldfish."),
                              const ExampleSentenceKurdish(
                                  text: "حەوزەکە پڕ لە زەردەماسی بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive378514("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive378514(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) ئاگادار لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They are alive to the fact that the opposing team has not lost a game this season."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باش ئاگاداری ئەو ڕاستییەن کە تیمی بەرامبەر ئەم وەرزە ھیچ یارییەکی نەدۆڕاندووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlive35961("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlive35961(
                                        // REPLACE: alive /əˈlaɪv/
                                        "en-US"),
                                  ),
                                ],
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
- Adjective: alive 
1. Possessing life (= live)
"the happiest person alive"; "the nerve is alive"; "doctors are working hard to keep him alive"; "burned alive";
 
2. Having life, vigour or spirit (= animated)
"an alive and expressive face";
 
3. (often followed by 'with') full of life and spirit
"she was wonderfully alive for her age"; "a face alive with mischief"
 
4. (followed by 'to' or 'of') aware of
"is alive to the moods of others"
 
5. In operation (= active)
"keep hope alive"; "the tradition was still alive";
 
6. Mentally perceptive and responsive (= alert, awake, on the ball)
"alive to what is going on";
 
7. Capable of erupting (= live)
"the volcano is very much alive";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'VWWEUChKo6s';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 30, // DOPSUM: CHANGE IT
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
  static String myVideoId = '8jNs5G88TiI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 62, // DOPSUM: CHANGE IT
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
  static String myVideoId = 's3YTfhJmh1I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 28, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'oHLMla-75QA';

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

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = '9plfckcV3pw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 36, // DOPSUM: CHANGE IT
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
  static String myVideoId = '8eraNZHM1to';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 47, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'ifhY_AHbSRA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 132, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Ze9jxpur47M';

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

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'EsMz4WLtk78';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 113, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Uz6wUQ6yGYk';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 77, // DOPSUM: CHANGE IT
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
