import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: EnglishEntryabsorb - speakAbsorb - absorb - /əbˈzɔːb/

enum TtsState { playing }

class EnglishEntryabsorb extends StatelessWidget {
  EnglishEntryabsorb({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbsorb(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("absorb"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3959(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His work absorbed him completely."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2768(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It took me several days to absorb the fact of her death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA6731(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This tennis racket absorbs shock on impact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA6981(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Black walls absorb a lot of heat during the day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2136(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Let the rice cook until it has absorbed all the water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3257(String languageCode) async {
    // DOPSUM: CHANGE speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Plants absorb carbon dioxide from the air."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
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
                                word: "absorb"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əbˈzɔːb/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAbsorb(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əbˈzɔːrb/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbsorb(
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
کوردی: مژین، ھەڵمژین، ئاوگرتن، شێگرتن، ئاوکێشان

١. (کردار) ھەڵمژینی مادەی شل، گاس، یان تەنی دیکە لە ھەوادا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Plants absorb carbon dioxide from the air."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووەکەکان دووانە ئۆکسیدی کاربۆن لە سرووشتەوە وەردەگرن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA3257("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA3257("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Let the rice cook until it has absorbed all the water."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بھێڵە برنجەکە بکوڵێت ھەتا تەواوی ئاوەکە ھەڵدەمژێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2136("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2136("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. ھەڵمژینی گەرمی، ڕۆشنایی، وزە، و دەنگ لە جیاتی دانەوەیان """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Black walls absorb a lot of heat during the day."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دیواری ڕەش لە ڕۆژدا ڕێژەیەکی زۆر گەرمی دەمژێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA6981("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA6981("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) کەمکردنەوەی کاریگەریی بەرکەوتن لەلایەن تەنێکی فیزیاییەوە   """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This tennis racket absorbs shock on impact."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەسکە تێنسەکە لەگەل بەرکەوتندا تەزوو دەمژێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA6731("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA6731("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) وەرگرتنی زانیاری و تێگەشتن لێی   """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It took me several days to absorb the fact of her death."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چەند ڕۆژێکی پێچوو بۆم تا بە مردنەکەی ڕابێم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2768("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2768("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وا لە کەسێک بکەیت بە تەواوی ھەموو بیرکردنەوەیت پێ بدات   """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "His work absorbed him completely."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارەکەی بەتەواوی ھەموو ھۆش و بیری بردبوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA3959("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA3959("en-US"),
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
                    YoutubeEmbeddedsix(),
                    YoutubeEmbeddedseven(),
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
- Verb: absorb (derived forms: absorbed, absorbing, absorbs)
1. Take in, also metaphorically (= suck, imbibe, soak up, sop up, suck up, draw, take in, take up)
"The sponge absorbs water well";
 
2. (chemistry) become imbued
"The liquids, light, and gases absorb"
 
3. Take up mentally (= assimilate, ingest, take in)
"he absorbed the knowledge or beliefs of his tribe";
 
4. Take up, as of debts or payments (= take over)
"absorb the costs for something";
 
5. Cause to become one with
"The sales tax is absorbed into the state income tax"
 
6. Suck or take up or in (= take in)
"A black star absorbs all matter";
 
7. Devote (oneself) fully to (= steep, immerse, engulf, plunge, engross, soak up, ingulf [archaic])
 
8. Assimilate or take in
"The immigrants were quickly absorbed into society"
 
9. Consume all of one's attention or time (= engross, engage, occupy)
"Her interest in butterflies absorbs her completely";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'DTvS9lvRxZ8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 916, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'GcdB5bFwio4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 405, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'ZAxhEUfpSss';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 885, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'lex6USTugUU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 597, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-cPdImejxEQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 196, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'GYk4ymtQ1WM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1296, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'X3TAROotFfM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 655, // DOPSUM: CHANGE IT
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

// end
