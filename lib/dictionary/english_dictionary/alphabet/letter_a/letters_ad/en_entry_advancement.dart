import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryadvancement - replace speakAdvancement - replace advancement - /ədˈvænsmənt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadvancement extends StatelessWidget {
  EnglishEntryadvancement({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdvancement(String languageCode) async {
    // DOPSUM: CHANGE speakAdvancement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("advancement"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdvanc3598(String languageCode) async {
    // DOPSUM: CHANGE speakAdvancement
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All she was interested in was the advancement of her own career."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAdvancement(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvancement
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advancement"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAdvancement(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvancement
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advancement"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                              "advancement", // DOPSUM: CHANGE WORD ENTRY - Find /ədˈvɑːnsmənt/
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
                              'IpaUK: /ədˈvɑːnsmənt/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () => speakAdvancement(
                                  // DOPSUM: CHANGE THE WORD ABOVE
                                  "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: /ədˈvænsmənt/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAdvancement(
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: پێشکەوتن، پێشکەوت، پێش‌وەچوون، چوونەپێش، چوونەسەرێ، بەرزبوونەوە

١. (ناو) پڕۆسەی بەرەوپێشچوون''',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "All she was interested in was the advancement of her own career.",
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
                                    "ھەموو ئەوەی گرنگ بوو بۆی بەرەوپێشچوونی کارەکەی بوو",
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
                                onPressed: () => speakAdvanc3598("en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () => speakAdvanc3598(
                                    // REPLACE: advancement /ədˈvænsmənt/
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
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
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
- Noun: advancement (Derived forms: advancements)
1. Encouragement of the progress, growth or acceptance of something (= promotion, furtherance)
 
2. The act of moving forward (as toward a goal) (= progress, progression, procession, advance, forward motion, onward motion)
 
3. Gradual improvement, growth or development (= progress)
"advancement of knowledge";
'''),
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 's_jomhgNZt4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 16, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PyT5dDkyFic';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 234, // DOPSUM: CHANGE IT
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
  static String myVideoId = '_CvHmToTk4Y';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 26, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'SwQhKFMxmDY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 7068, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'wQSxY7TR6mI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 596, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'UdgRUCVUts0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 398, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'j4kI2h3iotA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 3730, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = 'a8s7twiUBCg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 198, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeight({Key? key}) : super(key: key);

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

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'XnxbL1-kBpU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      loop: true,
      mute: false,
      startAt: 669, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddednine({Key? key}) : super(key: key);

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
