import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/home/screens/home_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

enum TtsState { playing }

class EnglishEntryA extends StatelessWidget {
  EnglishEntryA({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakA(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("a"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak142574(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can only carry two at a time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak48652(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a visitor for you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak45287(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a Buddhist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak197524(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A lion is a dangerous animal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak475968(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("a good knowledge of French"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const ZeetionaryAppbar(),
        ),
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
                              'a', // DOPSUM: CHANGE WORD ENTRY
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
                              'IpaUK: /ə/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
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
                              'IpaUS: /ə/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                ],
                indicator: BoxDecoration(
                  color: const Color.fromARGB(110, 162, 239, 20),
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
                                      'I can only carry two at a time.',
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '''
                      لە یەک کاتدا دەتوانم تەنھا دووان ھەڵبگرم٠
                                      ''',
                                      textAlign: TextAlign
                                          .right, // Right-to-left direction
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
                            Row(
                              children: [
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "There's a visitor for you.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "میوانێکت ھەیە",
                                      textAlign: TextAlign
                                          .right, // Right-to-left direction
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
                                      "She's a Buddhist.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "ئەو بوودییە",
                                      textAlign: TextAlign
                                          .right, // Right-to-left direction
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
                                      "A lion is a dangerous animal.",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '''
شێر ئاژەڵێکی دڕندەیە٠
                                      ''',
                                      textAlign: TextAlign
                                          .right, // Right-to-left direction
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
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٤. (ئامراز) پێش ناوی نەژمێردراو بەکاردێت کاتێک هاوەڵناوێک لە پێشیان یان دەستەواژەیەک لە دوایان دێت',
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
                                      "a good knowledge of French",
                                      textDirection: TextDirection
                                          .ltr, // Right-to-left direction
                                    ),
                                  ),
                                ),
                                // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '''
زانیارییەکی باش لە زمانی فەڕەنسی٠
                                      ''',
                                      textAlign: TextAlign
                                          .right, // Right-to-left direction
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
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٥. (ئامراز) لە پێش ئەو ناوانە بەکاردێت کە پێکەوە ناودەهێندرێن ',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                            const Text(
                              // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                              '٦. لە جیاتی ژمارە یەک بەکاردێت',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign
                                  .right, // Set text alignment to right
                            ),
                          ],
                        ),
                      ),
                    ),
                    YoutubeEmbeddedOne(), // DOPSUM: FROM YOUTUBE BELOW
                    YoutubeEmbeddedTwo(),
                    // YoutubeEmbeddedThree(),
                    // YoutubeEmbeddedFour(),
                    // YoutubeEmbeddedFive(),
                    // YoutubeEmbeddedSix()
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

Noun: a
1. The 1st letter of the Roman alphabet

Noun: A 
1. A metric unit of length equal to one ten billionth of a meter (or 0.0001 micron); used to specify wavelengths of electromagnetic radiation

2. The basic unit of electric current adopted under the Système International d'Unités
"a typical household circuit carries 15 to 50 amps";

3. One of the four nucleotides used in building DNA, also known as deoxyadenylate, or dAMP; all four nucleotides have a common phosphate group and a sugar (ribose)

4. Any of several fat-soluble vitamins essential for normal vision; prevents night blindness, inflammation or dryness of the eyes

5. (biochemistry) purine base found in DNA and RNA; pairs with thymine in DNA and with uracil in RNA

6. The blood group whose red cells carry the A antigen
'''),
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedOne extends StatelessWidget {
  static String myVideoId = 'Ovzx0F9es';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 580, // DOPSUM: CHANGE IT
      // endAt: 595, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.amber,
      ),
    );
  }
}

class YoutubeEmbeddedTwo extends StatelessWidget {
  static String myVideoId = 'Kuy4cEXpXEE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 259, // DOPSUM: CHANGE IT
      // endAt: 275, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.amber,
      ),
    );
  }
}

// ICONS KURD - UK - VIDEO

class VideoIconForTab extends StatelessWidget {
  const VideoIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/video_one.png',
        width: 24,
        height: 24,
      ),
    );
  }
}

class KurdIconForTab extends StatelessWidget {
  const KurdIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/kurd_one.png',
        width: 24,
        height: 24,
      ),
    );
  }
}

class UkIconForTab extends StatelessWidget {
  const UkIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/uk_one.png',
        width: 24,
        height: 24,
      ),
    );
  }
}
