import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bore" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bore - /bɔː(r)/

enum TtsState { playing }

class EnglishEntrybore extends StatelessWidget {
// blank divider
  EnglishEntrybore({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbore(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bore"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores1(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm not boring you, am I?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores2(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I won't bore you with too many details."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores3(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The drill is strong enough to bore through solid rock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores4(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His blue eyes seemed to bore into her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores5(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had to sit next to Michael at dinner - he's such a bore."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores6(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbores66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbores7(String languageCode) async {
    // DOPSUM: CHANGE speakbore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbores77"); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(word: "bore"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔː(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbore("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔːr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbore("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: قوڵکە، چاڵ، کون، مێمڵ، ڕیوڵ، ژیرەژاو، مرۆی وەڕەس‌کەر یان گەوج‌کەر، وشترە، وشتراو، قەڵبەزە

١. (ناو) بێزارکردنی کەسێک، بەتایبەی بە قسەی زۆر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I'm not boring you, am I?"),
                              const ExampleSentenceKurdish(
                                  text: "بێزارت ناکەم، وایە؟."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbores1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbores1("en-US"),
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
                                      "I won't bore you with too many details."),
                              const ExampleSentenceKurdish(
                                  text: "سەرت نایەشێنم بە وردەکاری زۆر."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbores2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbores2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) درووستکردنی چاڵێکی قووڵ بە ئامێرێک یان بە ھەڵکەندن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The drill is strong enough to bore through solid rock."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "درێلەکە ھندە بەھێزە کە بە بەردی سەختدا بکەنێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbores3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbores3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ڕوانین بەشێوەیەک کە کەسێک ناڕەحەت دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His blue eyes seemed to bore into her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چاوە شینەکانی وادیار بوون لێی زەقبووبن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbores4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbores4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) ڕابردووی bear"),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کەسێک کە زۆر بێزارکەرە، زۆرجار بەھۆی ئەوەی قسە زۆر دەکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I had to sit next to Michael at dinner - he's such a bore."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە خواردنی نیوەڕۆ دەبوو لە تەنیشت مایکڵ دابنیشم، زۆر کەسێکی ڕیوڵە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbores5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbores5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
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
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
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
- Verb: bore 
1. Be dull and cause to lose interest (= tire)
"the long presentation bored her";
 
2. Make a hole, especially with a pointed power or hand tool (= drill)
"carpenter bees are boring holes into the wall";

- Noun: bore
1. A person who evokes boredom (= dullard, meatball [N. Amer, informal])
 
2. A high wave (often dangerous) caused by tidal flow (as by colliding tidal currents or in a narrow estuary) (= tidal bore, eagre [UK, dialect], aegir [non-standard], eager [UK, dialect])
 
3. Diameter of a tube or gun barrel (= gauge, caliber [US], calibre [Brit, Cdn])
 
4. (mining) a hole or passage made by a drill; usually made for exploratory purposes (= bore-hole, drill hole)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 201, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "QiKZYt9070U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 388, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "KQWGHE7NTUA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 546, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "y4BQSPveKyE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 216, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "Xzv84ZdtlE0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 115, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "4H5--Qy3h9Q";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 488, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "UvjSXBqQe4A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 389, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "3oIakJekCZU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 195, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "p3TPPGb1X8A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 510, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "-ySwuQhruBo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 274, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end bore
