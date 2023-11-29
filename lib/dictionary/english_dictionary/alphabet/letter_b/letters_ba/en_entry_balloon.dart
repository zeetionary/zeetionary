import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "balloon" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace balloon - replace EnglishEntryballoon

// replace speakBalloon - /bəˈluːn/

enum TtsState { playing }

class EnglishEntryballoon extends StatelessWidget {
// blank divider
EnglishEntryballoon({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakBalloon(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("balloon"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons1(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("My balloon has burst!"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons2(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("We went up in a balloon."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons3(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Her skirt ballooned out in the wind."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons4(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Unemployment ballooned to fourteen per cent."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons5(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("He planned to become the first person to balloon over the North Pole."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons6(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBalloons66"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBalloons7(String languageCode) async {
  // DOPSUM: CHANGE speakBalloon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBalloons77"); // DOPSUM: CHANGE TEXT
}

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
                          Expanded(
                            child: Text(
                              "balloon", // DOPSUM: CHANGE WORD ENTRY
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
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
                          Container(
                            constraints: const BoxConstraints(maxWidth: 300),
                            child: const Text(
                              "IpaUK: /bəˈluːn/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          IconButton(
                            iconSize: 16,
                            icon: const Icon(
                              Icons.record_voice_over,
                              color: Colors.blue,
                            ),
                            onPressed: () =>
                                speakBalloon(// DOPSUM: CHANGE THE WORD ABOVE
                                    "en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            constraints: const BoxConstraints(maxWidth: 300),
                            child: const Text(
                              "IpaUS: /bəˈluːn/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          IconButton(
                            iconSize: 16,
                            icon: const Icon(
                              Icons.record_voice_over,
                              color: Colors.red,
                            ),
                            onPressed: () => speakBalloon(
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
                VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
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
                          """
کوردی: باڵۆن، شاتۆپ، گاتۆپ، فوودانە، فودانکە، میزڵدان، شیشڵدان، فوکەرە، پزدان، شووشەیێکی گەورەی خر بۆ خواردنەوە (بەتایبەت براندی)، کەسێکی گەوج

١. (ھاوەڵناو) فودانکە""",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text( // DOPSUM_WRITE_A_SENTENCE
                                  "My balloon has burst!",
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
                                  "فودانکەکەم تەقی!",
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
                              onPressed: () => speakBalloons1("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBalloons1(// REPLACE: balloon
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        const DividerDefinition(),
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
٢. (ناو) باڵۆنێکی گەورە کە لە مادەی بەهێز پێکهاتووە کە پڕکراوە لە گاس یان هەوای گەرم بۆ ئەوەی بەرزبێتەوە""",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text( // DOPSUM_WRITE_A_SENTENCE
                                  "We went up in a balloon.",
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
                                  "سواری باڵۆنێک بووین.",
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
                              onPressed: () => speakBalloons2("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBalloons2(// REPLACE: balloon
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        const DividerDefinition(),
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
٣. (کردار) درووستکردنی شێوەیەکی خڕ""",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text( // DOPSUM_WRITE_A_SENTENCE
                                  "Her skirt ballooned out in the wind.",
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
                                  "تەنوورەکەی لە بایەکەدا خڕبوویەوە.",
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
                              onPressed: () => speakBalloons3("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBalloons3(// REPLACE: balloon
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        const DividerDefinition(),
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
٤. (کردار) بەرزبوونەوە بەخێرایی""",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text( // DOPSUM_WRITE_A_SENTENCE
                                  "Unemployment ballooned to fourteen per cent.",
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
                                  "بێکاری هەڵبەزی بۆ ١٤٪.",
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
                              onPressed: () => speakBalloons4("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBalloons4(// REPLACE: balloon
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        const DividerDefinition(),
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
٥. (کردار) گەشتکردن بە باڵۆن""",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text( // DOPSUM_WRITE_A_SENTENCE
                                  "He planned to become the first person to balloon over the North Pole.",
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
                                  "پلانی بوو بێت بە یەکەم کەس بەسەر خولگەی باکووری زەویدا بە باڵۆن گەشت بکات.",
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
                              onPressed: () => speakBalloons5("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBalloons5(// REPLACE: balloon
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        // const DividerDefinition(),
                      ],
                    ),
                  ),
                  YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
        Text("""
- Noun: balloon (Derived forms: balloons)
1. Large tough nonrigid bag filled with gas or heated air
 
2. Small thin inflatable rubber bag with narrow neck

- Verb: balloon (Derived forms: balloons, ballooned, ballooning)
1. Ride in a hot-air balloon
"He tried to balloon around the earth but storms forced him to land in China"
 
2. Become inflated (= inflate, billow)
"The sails ballooned";
"""),
      ],
    ),
  );
}
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
static String myVideoId = "https://youtu.be/GDMel6oO2fU?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 22, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/j_OyHUqIIOU?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 14, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/BAdRckzy9Ds?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 12, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/RIXcJzPUvw8?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 93, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/OXj0CfbT4g8?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 32, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/C7qL3J9JGxQ?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 4, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/e09xig209cQ?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 218, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/B5WUhJUog_M?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 229, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/wWBi4lHGMUQ?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 20, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/GgnDWx1CP6k?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 11, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/bNtwfVP0OHs?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 65, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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
static String myVideoId = "https://youtu.be/GaKPdOuj8wc?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 426, // DOPSUM: CHANGE IT
    // endAt: 253, // DOPSUM: CHANGE IT
    autoPlay: true,
    enableCaption: true,
    loop: true,
    mute: false,
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

// morethan one video, only first autoplay

// class YoutubeEmbeddedthirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
    // autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end balloon // TODO Implement this library.