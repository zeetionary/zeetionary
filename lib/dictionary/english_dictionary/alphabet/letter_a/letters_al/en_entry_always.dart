import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryalways - replace speakAlways - replace always - /ˈɔːlweɪz/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalways extends StatelessWidget {
  EnglishEntryalways({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAlways(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("always"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways5699(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Always lock your car."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways48999(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children always seem to be hungry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways4631(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is the way we've always done it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways3477(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll always love you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways47111(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That phone's always ringing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAhead99(String languageCode) async {
    // DOPSUM: CHANGE speakAheadof
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was always well ahead of the rest of the class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlways48666(String languageCode) async {
    // DOPSUM: CHANGE speakAlways
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If he can't help, there's always John."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv966(String languageCode) async {
    // DOPSUM: CHANGE speakAdvertise
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The best jobs are not always advertised in newspapers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcc568424(String languageCode) async {
    // DOPSUM: CHANGE speakAccessible
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her poetry is always very accessible."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAf699(String languageCode) async {
    // DOPSUM: CHANGE speakAffair
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's always interfering in other people's affairs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActo6852(String languageCode) async {
    // DOPSUM: CHANGE speakActor
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't know if he really meant the things he said—he was always a good actor."); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "always"), // Find /ˈɔːlweɪz/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈɔːlweɪz/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAlways("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈɔːlweɪz/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAlways("en-US"),
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
کوردی: ھەمیشە، ھەمووکاتێ، بە بەردەوامی، بێ‌وچان، دایمەودەرەم (یان دەرھەم)، بێ‌پسانەوە، بۆ ماوەیەکی درێژ، بۆ ھەمیشە، تاسەر، ھەتاھەتا

١. (ھاوەڵکار) ھەمیشە؛ ھەمووکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Always lock your car."),
                              const ExampleSentenceKurdish(
                                  text: "ھەمیشە ئۆتۆمبێلەکەت دابخە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways5699("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways5699(
                                        // REPLACE: always /ˈɔːlweɪz/
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
                                      "The children always seem to be hungry."),
                              const ExampleSentenceKurdish(
                                  text: "منداڵەکان ھەمیشە برسی دەردەکەون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways48999("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways48999(
                                        // REPLACE: always /ˈɔːlweɪz/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بۆ ماوەیەکی دوور و درێژ؛ لەوەتەی لەبیرت دێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This is the way we've always done it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمە ئەو ڕێگایە کە ھەمیشە بەکارمان ھێناوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways4631("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways4631(
                                        // REPLACE: always /ˈɔːlweɪz/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بۆ ھەمیشە لە داھاتوودا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'll always love you."),
                              const ExampleSentenceKurdish(
                                  text: "ھەمیشە خۆشمدەوێیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways3477("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways3477(
                                        // REPLACE: always /ˈɔːlweɪz/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵکار) ھێندە زۆر کە بێزارکەرە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "That phone's always ringing."),
                              const ExampleSentenceKurdish(
                                  text: "ئەو موبایلە ھەمیشە زەنگ لێدەدات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways47111("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways47111(
                                        // REPLACE: always /ˈɔːlweɪz/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بۆ پێشنیارکردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "If he can't help, there's always John."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەگەر بۆی ناکرێت، جۆن ھەردەم ئامادەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlways48666("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlways48666(
                                        // REPLACE: always /ˈɔːlweɪz/
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
- Adverb: always 
1. At all times; all the time and on every occasion (= ever, e'er)
"I will always be there to help you"; "always arrives on time"; "there is always some pollution in the air";
 
2. Without variation or change, in every case (= constantly, invariably)
"he always arrives on time";
 
3. Invariably (= constantly, forever, perpetually, incessantly, unremittingly)
"the world is always changing";
 
4. At any time or in any event
"you can always resign if you don't like it"; "you could always take a day off"
 
5. Forever; throughout all time
"we will always be friends"; "I shall treasure it always"; "I will always love you"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'dJOz8SYbN28';

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

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'SrDEtSlqJC4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 43, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Ttd5xik44DE';

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
  static String myVideoId = '_fnhy5xO9vQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 342, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'j4kI2h3iotA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 111, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'zMlO9B3q3Aw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 6, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'mrg1Ogi9ep0';

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

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = 'QWvUaKgQojE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 84, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Nqr5wBXydkQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 57, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'wAI1NRQeR14';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 16, // DOPSUM: CHANGE IT
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
  static String myVideoId = '6xSgeC4u7Io';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 246, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'bdNgEbLij5M';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 38, // DOPSUM: CHANGE IT
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

// TODO Implement this library.