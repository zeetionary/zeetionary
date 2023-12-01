import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: EnglishEntryabstract - speakAbstract - abstract - /ˈæbstrækt/

enum TtsState { playing }

class EnglishEntryabstract extends StatelessWidget {
  EnglishEntryabstract({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbstract(String languageCode) async {
    // DOPSUM: CHANGE speakAbstract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abstract"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA65897(String languageCode) async {
    // DOPSUM: CHANGE speakAbstract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their plan is to abstract 8 million gallons of water from the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA259874(String languageCode) async {
    // DOPSUM: CHANGE speakAbstract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "the work of American abstract artists like Mark Rothko"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA78946(String languageCode) async {
    // DOPSUM: CHANGE speakAbstract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We may talk of beautiful things but beauty itself is abstract."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA29867(String languageCode) async {
    // DOPSUM: CHANGE speakAbstract
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The research shows that pre-school children are capable of thinking in abstract terms."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14,
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
                              'abstract', // DOPSUM: CHANGE WORD ENTRY
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
                              'IpaUK: /ˈæbstrækt/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAbstract(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: /ˈæbstrækt/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAbstract(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: ڕووت، ھەڵماڵراو، ئابستراکت، مانایی، ئایدیاڵ، خەیاڵی، ئەندێشەیی، ناکرداری، ناکۆنکرێت، بیردۆزی، تیۆریک

١. (ھاوەڵناو) پشتبەستوو بە ئایدیا گشتییەکان، نەک کەسێک، شتێک، یان بارودۆخێکیی تایبەت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The research shows that pre-school children are capable of thinking in abstract terms."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "توێژینەوەکە دەریخستووە کە ئەو منداڵانەی لە قوتابخانە نین توانای بیرکردنەوەیان ھەیە بە بەکارھێنانی خەیاڵیان "),
                              CustomIconButtonBritish(
                                onPressed: () => speakA29867("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA29867("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە تەنھا وەک ئایدیا بوونی ھەیە، نەک بەشێوەی فیزیایی """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We may talk of beautiful things but beauty itself is abstract."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەتوانین باس لە شتە جوانەکان بکەین، بەڵام جوانی خۆی واتاییە "),
                              CustomIconButtonBritish(
                                onPressed: () => speakA78946("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA78946("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) جۆرێکی ھونەر کە شتەکان وەک خۆیان پیشان نادا، بەڵکو بەو جۆرەی ھونەرمەندەکە دەیانبینێت """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "the work of American abstract artists like Mark Rothko"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارەکانی ھونەرمەندە ئەبستراکتییە ئەمریکییەکانی وەک مارک رۆسکۆ "),
                              CustomIconButtonBritish(
                                onPressed: () => speakA259874("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA259874("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) سڕینەوەی شتێک لە شوێنێک """),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their plan is to abstract 8 million gallons of water from the river."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پلانەکەیان ئەوەبوو کە ھەشت ملیۆن گاڵۆن ئاو لە ڕووبارەکە دەربکەن "),
                              CustomIconButtonBritish(
                                onPressed: () => speakA65897("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA65897("en-US"),
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
- Adjective: abstract
1. Not representing or imitating external reality or the objects of nature (= abstractionist, nonfigurative, nonobjective)
"a large abstract painting";
 
2. Dealing with a subject in the abstract without practical purpose or intention
"abstract reasoning"; "abstract science"
 
3. Existing only in the mind; separated from embodiment
"abstract words like 'truth' and 'justice'"
 
4. (computing) of a class in object-oriented programming, being a partial basis for subclasses rather than being completely defined and directly usable

- Verb: abstract (derived forms: abstracted, abstracting, abstracts)
1. Consider a concept without thinking of a specific example; consider abstractly or theoretically
 
2. Consider apart from a particular case or instance
"Let's abstract away from this particular example"
 
3. Give an abstract (of)
 
4. Take by theft
- hook [informal], snitch [informal], thieve, cop [informal], knock off [informal], glom [N. Amer, informal], pilfer, cabbage [informal], purloin, pinch [Brit, informal], snarf [N. Amer, informal], swipe [informal], sneak [informal], filch [informal], nobble [Brit, informal], lift, whip [Brit, informal], nick [Brit, informal], snatch [informal], blag [Brit, informal]

- Noun: abstract (derived forms: abstracts)
1. A concept or idea not associated with any specific instance (= abstraction)
"he loved her only in the abstract--not in person";
 
2. A sketchy summary of the main points of an argument or theory (= outline, synopsis, précis, rundown)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '951Js2UoMSumx4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 238, // DOPSUM: CHANGE IT
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
  static String myVideoId = '1Gxrwh4zGPg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1136, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'J-K5OjAkiEA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 299, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QBoVj2qpVe0';

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

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = '3C9wZf88y4Q';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 739, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'lGdpsmZC1pg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 157, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'SwQhKFMxmDY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 3182, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'o2RGudbzHLw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 737, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'K0c94ghBS4A';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 563, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QcUey-DVYjk';

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

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = 'IwJzsE8CvzQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 421, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Y_lY_LWkpoo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 665, // DOPSUM: CHANGE IT
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
