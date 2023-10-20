import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: EnglishEntryaccord - speakAccord - accord - /əˈkɔːd/

enum TtsState { playing }

class EnglishEntryaccord extends StatelessWidget {
  EnglishEntryaccord({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAccord(String languageCode) async {
    // DOPSUM: CHANGE speakAccord
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("accord"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA15874(String languageCode) async {
    // DOPSUM: CHANGE speakAccord
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our society accords great importance to the family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc48962(String languageCode) async {
    // DOPSUM: CHANGE speakAccord
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two sides signed a peace accord last July."); // DOPSUM: CHANGE TEXT
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
                            Text(
                              'accord', // DOPSUM: CHANGE WORD ENTRY
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
                              'IpaUK: /əˈkɔːd/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAccord(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: /əˈkɔːrd/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAccord(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
کوردی: ڕێک‌کەوتن یان پێک‌ھاتنی فەرمی (حکومی یان ڕێکخراوەیی)، پەیمان، بڕیار، سازان، پێک‌ھاتن، کۆکی، ڕێک‌کەوتن، گونجان، مەیل، ویست

١. (ناو) ڕێککەوتنێکی فەرمی نێوان دوو وڵات/دامەزراوە''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "The two sides signed a peace accord last July.",
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
                                    "ھەردوو لا ڕێککەوتنێکی ئاشتییان واژۆکرد لە تەممووزی ڕابردوو",
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
                                onPressed: () => speakAc48962("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () => speakAc48962("en-US"),
                              ),
                            ],
                          ),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '''
٢. (کردار) پێدانی گرنگی تایبەت بە شتێک''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Our society accords great importance to the family.",
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
                                    "کۆمەڵگاکەمان گرنگی تایبەت دەدات بە خێزان",
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
                                onPressed: () => speakA15874("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () => speakA15874("en-US"),
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
          // DOPSUM: WRITE DEFINITION IN ENGLISH
          Text('''
- Verb: accord (Derived forms: accords)
1. Go well together (= harmonize, harmonise [Brit], consort, concord, fit in, agree)
"The colours don't accord";
 
2. Let have; give the right to; give the opportunity or permission to (= allow, grant, allot)
"Mandela was accorded few visitors in prison";

- Noun: accord (Derived forms: accorded, according, accords)
1. Harmony of people's opinions, actions or characters (= agreement, concert)
"the two parties were in accord";
 
2. Concurrence of opinion (= conformity, accordance)
"we are in accord with your proposal";
 
3. A formal agreement between two or more states (= treaty, pact)
"they signed a nonaggression accord";
 
4. Sympathetic compatibility
 
5. (law) an agreement between parties
'''),
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'E991yX1WiEI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 372, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedone({Key? key}) : super(key: key);

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

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'gghRXOXY820';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 1265, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwo({Key? key}) : super(key: key);

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

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = 'wRNYoWFjmEc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 803, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedthree({Key? key}) : super(key: key);

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

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = 'dOkFXPblLpU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 240, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfour({Key? key}) : super(key: key);

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

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = 'dOkFXPblLpU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 240, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfive({Key? key}) : super(key: key);

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

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = 'monhjZzx4nw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      // startAt: 240, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedsix({Key? key}) : super(key: key);

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

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = 'Solb9uA-tgQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 4375, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedseven({Key? key}) : super(key: key);

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
