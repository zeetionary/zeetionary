import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: EnglishEntryabout - speakAbout - about - /əˈbaʊt/

enum TtsState { playing }

class EnglishEntryabout extends StatelessWidget {
  EnglishEntryabout({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbout(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("about"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2247(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her books were lying about on the floor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA34(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children were rushing about in the garden."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA994(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm just about ready."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA54(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They waited (for) about an hour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA557(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everywhere people were going about their daily business."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA25(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We wandered about the town for an hour or so."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA327(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Movies are all about making money these days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA5541(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's something about this business that is not quite right."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA337(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's she so angry about?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA225(String languageCode) async {
    // DOPSUM: CHANGE speakAbout
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tell me all about it."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
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
                                word: "about"), // DOPSUM: CHANGE WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈbaʊt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAbout("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈbaʊt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbout("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: نزیکەی، لە دەوروبەری، بە مەزندە، سەرلە، لەبارەی، لەمەڕ، دەوروبەر، دەوروپشت، دۆرمادۆر، بە ھەر لا، لێرە و لەوێ، خەریکی، سەرقاڵی، مژولی، خەریک، پێچەوانەی، بەرڤاژی، 

١. (ئامراز) دەربارەی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Tell me all about it."),
                              const ExampleSentenceKurdish(
                                  text: "ھەموو شتێکم پێ بڵێ لەسەری."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA225("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA225("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "What's she so angry about?"),
                              const ExampleSentenceKurdish(
                                  text: "لەسەر چییە وا تووڕەیە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA337("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA337("en-US"),
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
                                      "There's something about this business that is not quite right."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شتێک دەربارەی ئەم ئیشە لە جێگەی خۆی نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA5541("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA5541("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بەکاردێت بۆ باسکردنی ئامانجی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Movies are all about making money these days."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەم سەردەمەدا ئامانج لە ھەموو فیلمەکان قازانجە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA327("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA327("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) سەرقاڵبوون بە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Everywhere people were going about their daily business."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ھەموو شوێنێک خەڵکی سەرقاڵی ژیانی ڕۆزانەیانن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA557("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA557("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بە ژمارەیەک لادا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We wandered about the town for an hour or so."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بە ژمارەیەک لادا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We wandered about the town for an hour or so."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بەنزیکەیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They waited (for) about an hour."),
                              const ExampleSentenceKurdish(
                                  text: "بە نزیکەیی یەک کاتژمێر چاوەڕێ بوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA54("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA54("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زۆر نزیک لە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm just about ready."),
                              const ExampleSentenceKurdish(
                                  text: "یەک تۆزم ماوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA994("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA994("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە زۆر لادا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The children were rushing about in the garden."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکان بە باخجەکەدا ھاتوچۆیان بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA34("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA34("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە ھەڕەمەکی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her books were lying about on the floor."),
                              const ExampleSentenceKurdish(
                                  text: "کتێبەکانی لەسەر زەوییەکە کەوتبوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA2247("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA2247("en-US"),
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
                    YoutubeEmbeddedsix(),
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten()
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
- Adverb: about 
1. (of quantities) imprecise but fairly close to correct (= approximately, close to, just about, some, roughly, more or less, around, or so, loosely)
"in just about a minute"; "he's about 30 years old"; "I've had about all I can stand"; "we meet about once a month";

2. All around or on all sides (= around)
"dirty clothes lying about"; "let's look about for help";

3. In the area or vicinity (= around)
"a few spectators standing about";
 
4. Used of movement to or among many different places or in no particular direction (= around)
"wandering about with no place to go"; "people were rushing about"; "news gets about";
 
5. In or to a reversed position or direction (= around)
"about face";
 
6. In rotation or succession
"turn about is fair play"
 
7. (of actions or states) slightly short of or not quite accomplished; all but (= almost, most, nearly, near, nigh, virtually, well-nigh, all but)
"the job is (just) about done";

- Preposition: about  u'bawt
1. On the topic of (= on)
"a book about physics";
 
2. With regard or relation to; on the subject of (= regarding, concerning, respecting, re, apropos, as regards, with regard to, as for, as to, in connection with)
"I have a query about your previous reply"; "think about it";

- Adjective: about
1. On the move (= astir)
"up and about";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'jNQXAC9IVRw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DOMPU26i7Xw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 266, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'pvuN_WvF1to';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 52, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'tQwVKr8rCYw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 109, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'uXyxFMbqKYA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 138, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'jbBbRjs_niM';

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

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = 'vmsTcj3WuoE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 3732, // DOPSUM: CHANGE IT
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
  static String myVideoId = '4BvwpjaGZCQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 154, // DOPSUM: CHANGE IT
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
  static String myVideoId = '67JzSRnyXr4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 402, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Q1c6PmxZ2ZM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 224, // DOPSUM: CHANGE IT
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

// end
