import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryactually - replace speakActually - replace actually - /ˈæktʃuəli/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryactually extends StatelessWidget {
  EnglishEntryactually({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakActually(String languageCode) async {
    // DOPSUM: CHANGE speakActually
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("actually"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActual7618(String languageCode) async {
    // DOPSUM: CHANGE speakActually
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are lots of people there who can actually help you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActua9487(String languageCode) async {
    // DOPSUM: CHANGE speakActually
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The book was never actually published."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActu35269(String languageCode) async {
    // DOPSUM: CHANGE speakActually
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The food was not actually all that expensive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakActu4562(String languageCode) async {
    // DOPSUM: CHANGE speakActually
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We're not American, actually. We're Canadian."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakActually(String languageCode) async {
  //   // DOPSUM: CHANGE speakActually
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("actually"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakActually(String languageCode) async {
  //   // DOPSUM: CHANGE speakActually
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("actually"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "actually"), // Find /ˈæktʃuəli/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈæktʃuəli/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakActually("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈæktʃuəli/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakActually("en-US"),
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
کوردی: بەکردەوە، لەراستی‌دا

١. (ھاوەڵکار) بەکاردێت بۆ پیشاندانی ئەوەی شتێک ڕاستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are lots of people there who can actually help you."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژمارەیەکی زۆر خەڵک ھەن لەوێ کە بەڕاستی دەتوانن یارمەتیت بدەن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakActual7618("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakActual7618(
                                    // REPLACE: actually /ˈæktʃuəli/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The book was never actually published."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کتێبەکە لەڕاستیدا ھەرگیز بڵاونەکراوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakActua9487("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakActua9487(
                                    // REPLACE: actually /ˈæktʃuəli/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بەکاردێت بۆ وتنی ڕاستی بابەتێک و بەراوردکردنی لەگەڵ باوەڕی کەسێک لەسەری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The food was not actually all that expensive."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەڕاستیدا خواردنەکە ئەوەنەش گران نەبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakActu35269("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakActu35269(
                                    // REPLACE: actually /ˈæktʃuəli/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بەکاردێت بۆ بە ڕێزەوە ڕاستکردنەوەی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We're not American, actually. We're Canadian."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئێمە ئەمریکی نین لەڕاستیدا. ئێمە کەنەدین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakActu4562("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakActu4562(
                                    // REPLACE: actually /ˈæktʃuəli/
                                    "en-US"),
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
- Adverb: actually
1. In actual fact (= really)
"no one actually saw the shark"; "large meteorites actually come from the asteroid belt"; "to be nominally but not actually independent";
 
2. Used to imply that one would expect the fact to be the opposite of that stated; surprisingly (= in reality)
"you may actually be doing the right thing by walking out"; "she actually spoke Latin";
 
3. At present
"the transmission screen shows the picture that is actually on the air"
 
4. Used as a sentence modifier to add slight emphasis
"actually, we all help clear up after a meal"; "actually, I haven't seen the film"; "I'm not all that surprised actually"; "she hasn't proved to be too satisfactory, actually"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '9WH0KPjTdAg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 40, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'J8ZOttyAs9Y';

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

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = 'yWhU40m-6uU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 5, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'S3ksC_8jGuc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 560, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'oI_X2cMHNe0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 25, // DOPSUM: CHANGE IT
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

// end
