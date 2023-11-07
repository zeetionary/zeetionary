import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: replace EnglishEntryalong - replace speakAlong - replace along - /əˈlɒŋ/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalong extends StatelessWidget {
  EnglishEntryalong({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAlong(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("along"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlong457(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They walked slowly along the road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlong4451(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Houses had been built along both sides of the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlong451(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Somewhere along this road there's a garage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlong45169(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We were going along at about 50 miles an hour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlong4516(String languageCode) async {
    // DOPSUM: CHANGE speakAlong
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll be along in a few minutes."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAlong(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlong
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("along"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlong(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlong
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("along"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlong(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlong
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("along"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlong(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlong
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("along"); // DOPSUM: CHANGE TEXT
  // }

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
                            Text(
                              "along", // DOPSUM: CHANGE WORD ENTRY - Find /əˈlɒŋ/
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
                              "IpaUK: /əˈlɒŋ/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAlong(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "IpaUS: /əˈlɔːŋ/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAlong(
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
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
کوردی: پێشەوە، پێشێ، ڕوولەپێشێ، بەرەوپێشەوە، بەدرێژایی، بەدرێژی، لە سەرانسەری، لەگەڵ

١. (ئامراز) لەلایەکی شتێک بۆ لاکەی تری''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "They walked slowly along the road.",
                                    textDirection: TextDirection
                                        .ltr, // Right-to-left direction
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "بەھێواشی بەدرێژایی ڕێگاکە ڕێیان کرد.",
                                    textAlign: TextAlign
                                        .right, // Right-to-left direction
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () => speakAlong457("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAlong457(// REPLACE: along /əˈlɔːŋ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
٢. (ئامراز) لەسەر ھێڵێک بەدرێژایی شتێکی درێژ''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Houses had been built along both sides of the river.",
                                    textDirection: TextDirection
                                        .ltr, // Right-to-left direction
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "خانوو بەدرێژایی ھەردوو لای ڕووبارەکە بنیاتنراون.",
                                    textAlign: TextAlign
                                        .right, // Right-to-left direction
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () => speakAlong4451("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAlong4451(// REPLACE: along /əˈlɔːŋ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
٣. (ئامراز) لە شوێنێکی دیاریکراوی شوێنێکی درێژ، یان لە نزیکی''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Somewhere along this road there's a garage.",
                                    textDirection: TextDirection
                                        .ltr, // Right-to-left direction
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "لە شوێنێک بەدرێژایی ئەم شەقامە گەراجێک ھەیە.",
                                    textAlign: TextAlign
                                        .right, // Right-to-left direction
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () => speakAlong451("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAlong451(// REPLACE: along /əˈlɔːŋ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
٤. (ھاوەڵکار) بۆ پێشەوە''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "We were going along at about 50 miles an hour.",
                                    textDirection: TextDirection
                                        .ltr, // Right-to-left direction
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "بۆ پێشەوە دەچووین بەخێرایی نزاکەی ٥٠ میل لە کاتژمێرێکدا.",
                                    textAlign: TextAlign
                                        .right, // Right-to-left direction
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () => speakAlong45169("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAlong45169(// REPLACE: along /əˈlɔːŋ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
٥. (ھاوەڵکار) لەگەڵ کەسێک''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "I'll be along (= I'll join you) in a few minutes.",
                                    textDirection: TextDirection
                                        .ltr, // Right-to-left direction
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "لە چەند خولەکێکدا دەگەمە لاتان.",
                                    textAlign: TextAlign
                                        .right, // Right-to-left direction
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () => speakAlong4516("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakAlong4516(// REPLACE: along /əˈlɔːŋ/
                                        "en-US"),
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
          // DOPSUM: WRITE DEFINITION IN ENGLISH
          Text('''
- Adverb: along 
1. With a forward motion (= on)
"we drove along admiring the view"; "the horse trotted along at a steady pace"; "move along";
 
2. In accompaniment or as a companion
"his little sister came along to the movies"; "I brought my camera along"; "working along with his father"
 
3. To a more advanced state
"the work is moving along"; "well along in their research"; "hurrying their education along"; "getting along in years"
 
4. In addition (usually followed by 'with')
"we sent them food and some clothing went along in the package"; "along with the package came a bill"; "consider the advantages along with the disadvantages"
 
5. In line with a length or direction (often followed by 'by' or 'beside')
"pass the word along"; "ran along beside me"; "cottages along by the river"

- Preposition: along 
1. On, in traversing (= by)
"came along the path";
'''),
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'BMTZ9lhqsFg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 108, // DOPSUM: CHANGE IT
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
  static String myVideoId = '4L4GsJIHXg8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 691, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'TgXb_G9c9_o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 45, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'LpwaUU6sGFA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 55, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'fyfro2hgdcQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1665, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'L-xJCVaV5Hw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1372, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'drJ-D_uURIc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 37, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'gGOxvKoaGDw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 383, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'hRb8VFoQRss';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 636, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'J5eNXtVFYUE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 41, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'rv6UXrINqEk';

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

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = 'h30EaHV6Lz8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 50, // DOPSUM: CHANGE IT
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


