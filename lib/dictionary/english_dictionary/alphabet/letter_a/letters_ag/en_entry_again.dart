import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: replace EnglishEntryagain - replace speakAgain - replace again - /əˈɡen/,  /əˈɡeɪn/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryagain extends StatelessWidget {
  EnglishEntryagain({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAgain(String languageCode) async {
    // DOPSUM: CHANGE speakAgain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("again"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgain493(String languageCode) async {
    // DOPSUM: CHANGE speakAgain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This must never happen again."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgai1822(String languageCode) async {
    // DOPSUM: CHANGE speakAgain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If he does it again I'll have to tell him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgain156(String languageCode) async {
    // DOPSUM: CHANGE speakAgain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was glad to be home again."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAga256(String languageCode) async {
    // DOPSUM: CHANGE speakAgain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cost is about half as much again as it was two years ago."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAgain(String languageCode) async {
  //   // DOPSUM: CHANGE speakAgain
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("again"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAgain(String languageCode) async {
  //   // DOPSUM: CHANGE speakAgain
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("again"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAgain(String languageCode) async {
  //   // DOPSUM: CHANGE speakAgain
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("again"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 2 + VIDEOS FIND: YoutubeEmbeddedone
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
                                    "again"), // DOPSUM: CHANGE WORD ENTRY - Find /əˈɡen/,  /əˈɡeɪn/
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK:/əˈɡen/,  /əˈɡeɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAgain(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈɡen/,  /əˈɡeɪn/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAgain(
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
                  // VideoIconForTab(), // FIND: 2,
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
کوردی: دیسان، جارێکی تر، دووبارە، ھەمیسان، سەرلەنوێ، لە سەرەتاوە، سەرەڕای ئەوەش، لەگەڵ ئەوەش، تر، دی، دیسانیش

١. (ھاوەڵکار) جارێکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "This must never happen again."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ئەمە ئەبێت ھەرگیز ڕوونەداتەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAgain493("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAgain493(
                                    // REPLACE: again /əˈɡen/,  /əˈɡeɪn/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "If he does it again I'll have to tell him."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەگەر دووبارەی بکاتەوە دەبێت پێی بڵێم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAgai1822("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAgai1822(
                                    // REPLACE: again /əˈɡen/,  /əˈɡeɪn/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵکار) پیشاندانی ئەوەی کەسێک لە ھەمان شوێن یان بارودۆخ دەبێت کە پێشووتر لێی بووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was glad to be home again."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "خۆشحاڵبوو کە دووبارە لە ماڵەوە بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAgain156("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAgain156(
                                    // REPLACE: again /əˈɡen/,  /əˈɡeɪn/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) زیادبوون بۆ سەر ژمارەیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The cost is about half as much again as it was two years ago."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نرخەکەی نیوەی نرخی دوو ساڵ پێش ئێستای خۆی چووەتە سەر."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAga256("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAga256(
                                    // REPLACE: again /əˈɡen/,  /əˈɡeɪn/
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
- Adverb: again
1. Another time, repeating (= once again, once more, over again)
"she tried again"; "they rehearsed the scene again"; "she tried once again";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'd0ZJvU2ciBM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 134, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'MBXpB4bDp_o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 11, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'AOcczgzRvH0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 151, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'x1d4tCLbT04';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 19, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'vjxDZzA2wUc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 7, // DOPSUM: CHANGE IT
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
