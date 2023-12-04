import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: EnglishEntryaccessible - speakAccessible - accessible - /əkˈsesəbl/

enum TtsState { playing }

class EnglishEntryaccessible extends StatelessWidget {
  EnglishEntryaccessible({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAccessible(String languageCode) async {
    // DOPSUM: CHANGE speakAccessible
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("accessible"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2114(String languageCode) async {
    // DOPSUM: CHANGE speakAccessible
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The beach should be accessible to everyone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcc21587(String languageCode) async {
    // DOPSUM: CHANGE speakAccessible
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her poetry is always very accessible."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA21598(String languageCode) async {
    // DOPSUM: CHANGE speakAccessible
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The remote desert area is accessible only by helicopter."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
                                word:
                                    "accessible"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əkˈsesəbl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAccessible(
                                  // DOPSUM: CHANGE THE WORD ABOVE
                                  "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əkˈsesəbl/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAccessible(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: دەس‌پێ‌ڕاگەیشتوو، لە گەیشتن‌ھاتوو، لە تێگەیشتن‌ھاتوو، ئاسان، دەس دەکەوێ، لە دەسکەوتن‌ھاتوو

١. (ھاوەڵناو) شتێک کە بەردەستە و بە ئاسانی دەتوانرێت بەکاربھێندرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The remote desert area is accessible only by helicopter."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناوچە بیابانە دوورەدەستەکە تەنھا لە ڕێگەی ھەلیکۆپتەرەوە دەتوانرێت سەردانی بکرێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA21598("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA21598("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە دەکرێت بەکاربھێبدرێت یان بەردەست بێت بۆ کەسێک کە کێشەی لە ڕێکردن ھەیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The beach should be accessible to everyone."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەنار دەریاکە دەبێت بۆ ھەمووکەسێک بەردەست بێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2114("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2114("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ئاسان بۆ تێگەیشتن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her poetry is always very accessible."),
                              const ExampleSentenceKurdish(
                                  text: "شیعرەکانی بۆ گەورە و بچووکن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcc21587("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcc21587("en-US"),
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
                    // YoutubeEmbeddedsix(),
                    // YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
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
- Adjective: accessible
1. Capable of being read with comprehension (= approachable)
"readily accessible to the nonprofessional reader";
 
2. Easily obtained
"most students now have computers accessible"; "accessible money"
 
3. Easy to get along with or talk to; friendly
"an accessible and genial man"
 
4. Capable of being reached
"a town accessible by rail"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '-HyHZsa79LU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 633, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'GjMmsEwIcl0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 69, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'SrDEtSlqJC4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1165, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PqpCeiYycVM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 420, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'ImoP-Apzrsg';

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

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end
