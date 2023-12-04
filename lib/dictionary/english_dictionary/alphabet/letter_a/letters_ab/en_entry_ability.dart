import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: EnglishEntryability - speakAbility - ability - /əˈbɪləti/

enum TtsState { playing }

class EnglishEntryability extends StatelessWidget {
  EnglishEntryability({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbility(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("ability"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA678(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People with the disease may lose their ability to communicate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA325(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This program has the ability to adapt to its user."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA953(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has an uncanny ability to predict what consumers will want."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA458(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A woman of her ability will easily find a job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA634(String languageCode) async {
    // DOPSUM: CHANGE speakAbility
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's important to discover the natural abilities of each child."); // DOPSUM: CHANGE TEXT
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
                                word: "ability"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈbɪləti/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAbility(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈbɪləti/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbility(
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
کوردی: توانایی، تواناداری، خورتی، زۆخ، وزە، بنگە، بار، یارا، پەک، لێوەشاوەیی، شیاوێتی، بەکارھاتوویی، لێھاتوویی، جەوھەر، بەھرەمەندی، بەھرە

١. (ناو) توانای ئەنجامدانی کارێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "People with the disease may lose their ability to communicate."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خەڵکی بەم نەخۆشییەوە ڕەنگە توانای قسەکردن لەدەستبدەن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA678("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA678("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This program has the ability to adapt to its user."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم پڕۆگرامە توانای ئەوەی ھەیە لەگەڵ بەکارھێنەر خۆی بگونجێنێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA325("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA325("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She has an uncanny ability to predict what consumers will want."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "توانایەکی بێ وێنەی ھەیە لە پێشبینیکردنی ئەوەی کڕیاران چییان دەوێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA953("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA953("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ئاستی ھەبوونی شارەزاییەک یان زانیاری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A woman of her ability will easily find a job."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژنێک بەو توانایەی ئەوەوە بە ئاسانی کارێک دەدۆزێتەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA458("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA458("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It's important to discover the natural abilities of each child."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دۆزینەوەی توانای سرووشتی ھەر یەک لە منداڵەکان شتێکی گرنگە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA634("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA634("en-US"),
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
                    // YoutubeEmbeddedsix()
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
- Noun: ability (derived forms: abilities)
1. The quality of being able to perform; a quality that permits or facilitates achievement or accomplishment

2. Possession of the qualities (especially mental qualities) required to do something or get something done (=power)
"danger heightened his abilities of discrimination";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '91WBENcf6_o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 200, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-qc0JnXyBAk';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 345, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'MU1eoXYN2Rc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 135, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'gT7RT70xNXE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 961, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'D0x2dgpBDzc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 392, // DOPSUM: CHANGE IT
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
