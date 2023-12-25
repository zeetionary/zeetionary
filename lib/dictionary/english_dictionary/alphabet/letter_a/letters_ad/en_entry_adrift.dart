import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryadrift - replace speakAdrift - replace adrift - /əˈdrɪft/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadrift extends StatelessWidget {
  EnglishEntryadrift({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdrift(String languageCode) async {
    // DOPSUM: CHANGE speakAdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("adrift"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdri458692(String languageCode) async {
    // DOPSUM: CHANGE speakAdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He spent three days adrift on his yacht."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdri52369(String languageCode) async {
    // DOPSUM: CHANGE speakAdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Without language, human beings are cast adrift."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdrif52317(String languageCode) async {
    // DOPSUM: CHANGE speakAdrift
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Something seems to have gone adrift in our calculations."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "adrift"), // Find /əˈdrɪft/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈdrɪft/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAdrift("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈdrɪft/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAdrift("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(), // FIND: 2,
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: سواراو، سەراوکەوتە، ئازاد، بەڕەڵا، وێڵ، لەسەرئاو، نەبەسراو، بێ‌ئامانج، بێ‌مەبەست، وەک تەختەی سەرئاو، بەدەم شەپۆلەوە، سەرلێ‌شێواو، کۆنتڕۆڵ‌نەکراو، بێ‌مەھار

١. (ھاوەڵناو) کەسێک یان بەلەمێکی بێ کۆنترۆڵ لەناو دەریا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He spent three days adrift on his yacht."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سێ ڕۆژی لەناو شەپۆلەکان بەسەربرد لەسەر یەختەکەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdri458692("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdri458692(
                                        // REPLACE: adrift /əˈdrɪft/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) کەسێکی تەنھا و سەرلێشێواو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Without language, human beings are cast adrift."),
                              const ExampleSentenceKurdish(
                                  text: "بەبێ زمان مرۆڤەکان سەرلێشێواون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdri52369("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdri52369(
                                        // REPLACE: adrift /əˈdrɪft/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) شتێک کە بەو شێوەیە بەڕێوەناچێت کە مەبەستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Something seems to have gone adrift in our calculations."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وادیارە شتێک لە خەمڵاندنەکانمان ناڕێکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdrif52317("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdrif52317(
                                        // REPLACE: adrift /əˈdrɪft/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    // YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
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
- Adjective: adrift
1. Without a clear purpose or direction (= afloat, aimless, directionless, planless, rudderless, undirected)
"Russia is adrift and chaotic";
 
2. Afloat on the surface of a body of water
"after the storm the boats were adrift"

- Adverb: adrift  u'drift
1. Floating freely; not anchored
"the boat was set adrift"
 
2. Off course, wandering aimlessly
"there was a search for beauty that had somehow gone adrift"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'QZ3rylyhoyU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 159, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'HdabusAinHo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 205, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'SY86xyG-hDY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 756, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'S5LrQv496Iw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 355, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'shT9UvXDRZ8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 74, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-BNDub3h2_I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 2685, // DOPSUM: CHANGE IT
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

// end
