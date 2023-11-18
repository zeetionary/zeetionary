import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

enum TtsState { playing }

class EnglishEntryan extends StatelessWidget {
  EnglishEntryan({super.key});
  // EnglishEntryan({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakA(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("an"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak142574(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I went there on an auspicious day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak48652(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There's an animal on the street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak45287(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's an atheist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak197524(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A lion is an animal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak475968(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("an excellent knowledge of French."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak63328(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have an apple."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
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
                              'an', // DOPSUM: CHANGE WORD ENTRY
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Text(
                            //   '(indefinite article)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUK: /ən/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakA(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: /ən/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakA(
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
                  // VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
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
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '١. (ئامراز) پێش ناوی ژمێردراو یان تاک بەکاردێت لە کاتی ئاماژە بۆ کەسانێک یان ئەو شتانەی کە پێشوەختە باس نەکراون',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'I went there on an auspicious day.',
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "لە ڕۆژێکی پیرۆزدا چوومە ئەوێ.",
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
                                  onPressed: () => speak142574("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak142574("en-US"),
                                ),
                              ],
                            ),
                            const DividerSentences(),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "There's an animal on the street.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "ئاژەڵێک لەسەر شەقامەکەیە.",
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
                                  onPressed: () => speak48652("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak48652("en-US"),
                                ),
                              ],
                            ),
                            const DividerDefinition(),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٢. (ئامراز) بەکاردێت بۆ ئەوەی نیشانی بدات کە کەسێک/شتێک ئەندامی گروپێک یان پیشەیەکە',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "She's an atheist.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "ئەو بێ‌دینە.",
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
                                  onPressed: () => speak45287("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak45287("en-US"),
                                ),
                              ],
                            ),
                            const DividerDefinition(),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٣. (ئامراز) بەکاردێت بۆ گشتگیرکردن',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "A lion is an animal.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "شێر ئاژەڵێکە.",
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
                                  onPressed: () => speak197524("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak197524("en-US"),
                                ),
                              ],
                            ),
                            const DividerDefinition(),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٤. (ئامراز) پێش ناوی نەژمێردراو بەکاردێت کاتێک ھاوەڵناوێک لە پێشیان یان دەستەواژەیەک لە دوایان دێت',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "an excellent knowledge of French",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "زانیارییەکی نایاب لە زمانی فەرەنسی.",
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
                                  onPressed: () => speak475968("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak475968("en-US"),
                                ),
                              ],
                            ),
                            const DividerDefinition(),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٥. (ئامراز) لە پێش ئەو ناوانە بەکاردێت کە پێکەوە ناودەھێندرێن ',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            const DividerDefinition(),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٦. لە جیاتی ژمارە یەک بەکاردێت',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "I have an apple.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "سێوێکم ھەیە.",
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
                                  onPressed: () => speak63328("en-GB"),
                                ),
                                IconButton(
                                  iconSize: 18,
                                  icon: const Icon(
                                    Icons.record_voice_over,
                                    color: Colors.red,
                                  ),
                                  onPressed: () => speak63328("en-US"),
                                ),
                              ],
                            ),
                          ],
                        ),
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
          // DOPSUM: WRITE DEFINITION IN ENGLISH
          Text('''
Article:
1. Indefinite article, "an" is used before a vowel sound, "a" otherwise

Noun: AN
1. An associate degree in nursing
- Associate in Nursing
'''),
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'Wm4R8d0d8kU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 22, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'rPe4yziWiOg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 44, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DOMPU26i7Xw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 271, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'hFZFjoX2cGg';

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

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = 'VrKW58MS12g';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 235, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'a_TSR_v07m0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 805, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DPZzrlFCD_I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 53, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'hS2x1zl4rn0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 481, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PUT_VIDEO_ID';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

// end
