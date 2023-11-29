import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "ballast" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace ballast - replace EnglishEntryballast

// replace speakBallast - /ˈbæləst/

enum TtsState { playing }

class EnglishEntryballast extends StatelessWidget {
// blank divider
EnglishEntryballast({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakBallast(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("ballast"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts1(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("The submarine took in water as ballast to submerge itself fully beneath the surface."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts2(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("The workers laid a layer of ballast before paving the road with asphalt."); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts3(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBallasts33"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts4(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBallasts44"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts5(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBallasts55"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts6(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBallasts66"); // DOPSUM: CHANGE TEXT
}

Future<void> speakBallasts7(String languageCode) async {
  // DOPSUM: CHANGE speakBallast
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakBallasts77"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 11, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                              "ballast", // DOPSUM: CHANGE WORD ENTRY
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
                              "IpaUK: /ˈbæləst/", // DOPSUM: WRITE IPA IN BRITISH ENGLISH
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
                                speakBallast(// DOPSUM: CHANGE THE WORD ABOVE
                                    "en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            constraints: const BoxConstraints(maxWidth: 300),
                            child: const Text(
                              "IpaUS: /ˈbæləst/", // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          IconButton(
                            iconSize: 16,
                            icon: const Icon(
                              Icons.record_voice_over,
                              color: Colors.red,
                            ),
                            onPressed: () => speakBallast(
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
                VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 11
                VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                VideoIconForTab(), // 08
                VideoIconForTab(), // 09
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
کوردی: پارسەنگ، ڕاگیرە، سەنگ یان قورسەی هاوکێشی، هاوسەنگێنە, ورکەبەرد، زیخ

١. (ناو) مادەی قورس کە دەخرێتە کەشتی بۆ ئەوەی بە جێگیری بیهێڵێتەوە""",
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
                                  "The submarine took in water as ballast to submerge itself fully beneath the surface.",
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
                                  "ژێردەریاکە ئاوی هێنایە ژوورەوە بۆ بەکارهێنانی وەک هاوسەنگێنە بۆ ئەوەی بەتەواوی خۆی داپۆشێت لەژێر ڕووی دەریاکە.",
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
                              onPressed: () => speakBallasts1("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBallasts1(// REPLACE: ballast
                                  "en-US"),
                            ),
                          ],
                        ),
                        // const DividerSentences(),
                        const DividerDefinition(),
                        const Text(
                          // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                          """
٢. (ناو) چینێک لە زیخ کە لە سەرەوەی ڕێگا درووست دەکرێت""",
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
                                  "The workers laid a layer of ballast before paving the road with asphalt.",
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
                                  "کرێکارەکان چینێک لە چەوڕێژیان دانا پێش ئەوەی ڕێگاکە قیرتاو بکەن.",
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
                              onPressed: () => speakBallasts2("en-GB"),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakBallasts2(// REPLACE: ballast
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
        Text("""
- Noun: ballast (Derived forms: ballasts)
1. Any heavy material used to stabilize a ship or airship
 
2. Coarse gravel laid to form a bed for streets and railroads
 
3. An attribute that tends to give stability in character and morals; something that steadies the mind or feelings
 
4. A resistor inserted into a circuit to compensate for changes (as those arising from temperature fluctuations) (= ballast resistor, barretter)
 
5. An electrical device for starting and regulating fluorescent and discharge lamps (= light ballast)

- Verb: ballast (Derived forms: ballasting, ballasts, ballasted)
1. Make steady with a ballast
"""),
      ],
    ),
  );
}
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
static String myVideoId = "https://youtu.be/RXXMJAU6vY8?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 516, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/Oij-BdIkPgQ?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 629, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/4Nr1AgIfajI?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 138, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/XFJnWp1tAdU?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 135, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/Ty-m4pm8oog?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 617, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/Xv9aaTJVIxA?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 320, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/fsIFxyOLJXM?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 270, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/ZjBgEkbnX2I?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 899, // DOPSUM: CHANGE IT
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
static String myVideoId = "https://youtu.be/V6_9YnTDR-s?t=";

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: myVideoId,
  flags: const YoutubePlayerFlags(
    startAt: 506, // DOPSUM: CHANGE IT
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

YoutubeEmbeddedten({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: YouTubeContainerDesign(controller: _controller),
  );
}
}

class YoutubeEmbeddedeleven extends StatelessWidget {
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

YoutubeEmbeddedeleven({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: YouTubeContainerDesign(controller: _controller),
  );
}
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
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

// end ballast // TODO Implement this library.