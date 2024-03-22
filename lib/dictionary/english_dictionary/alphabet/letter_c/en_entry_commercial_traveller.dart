import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommercialtraveller extends StatelessWidget {
// blank divider
EnglishEntrycommercialtraveller({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommercialtraveller(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("commercial traveller"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers1(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "She worked as a commercial traveler for a pharmaceutical company."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers2(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers3(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers4(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers5(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers6(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers7(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers8(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers9(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers10(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers11(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers12(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommercialtravellers13(String languageCode) async {
  // DOPSUM: CHANGE speakcommercialtraveller
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommercialtravellers1300"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                          EntryTitle(word: "commercial traveller"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /kəˌmɜːʃl ˈtrævələ(r)/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommercialtraveller("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /kəˌmɜːrʃl ˈtrævələr/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommercialtraveller("en-US"),
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
                VideoIconForTab(),
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
//                         const KurdishVocabulary(text: """
// کوردی: 
// """),
                        const DefinitionKurdish(
                            text: "١. (ناو) کەسێک کە بە ناوچەیەکدا دەگەڕێت و بەرھەمەکانی کۆمپانیایەک دەفرۆشێت"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "She worked as a commercial traveler for a pharmaceutical company."),
                                  ExampleSentenceKurdish(
                                      text: "وەک مەندووبێک بۆ کۆمپانیایەکی دەوا و دەرمان کاری دەکرد."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commercial traveller", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommercialtravellers1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommercialtravellers1("en-US"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  YouTubeScroller(
                    children: [
                      YoutubeEmbeddedone(),
                      YoutubeEmbeddedtwo(),
                      YoutubeEmbeddedthree(),
                      YoutubeEmbeddedfour(),
                      YoutubeEmbeddedfive(),
                      YoutubeEmbeddedsix(),
                      // YoutubeEmbeddedseven(),
                      // YoutubeEmbeddedeight(),
                      // YoutubeEmbeddednine(),
                      // YoutubeEmbeddedten(),
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
                      YoutubeEmbeddedend(),
                    ],
                  ),
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

class EnglishMeaning extends StatefulWidget {
const EnglishMeaning({super.key});

@override
State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
FlutterTts flutterTts = FlutterTts();
bool isSpeaking = false;

Future<void> startSpeaking(
    String languageCode, EnglishMeaningConst englishMeaningConst) async {
  // Extract text from EnglishMeaningConst and store it in textToSpeak
  String textToSpeak = """
${englishMeaningConst.text}
""";

  await flutterTts.setLanguage(languageCode);
  await flutterTts.speak(textToSpeak);

  // Update the state to reflect that TTS is in progress
  setState(() {
    isSpeaking = true;
  });
}

// Function to stop TTS
Future<void> stopSpeaking() async {
  await flutterTts.stop();

  // Update the state to reflect that TTS is stopped
  setState(() {
    isSpeaking = false;
  });
}

// Create an instance of EnglishMeaningConst with the desired text
final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
  text: """
- Noun: commercial traveller (derived forms: commercial travellers)
Usage: Brit, Cdn (US: commercial traveler) 
1. A salesman who travels to call on customers (= traveling salesman [US], travelling salesman [Brit, Cdn], commercial traveler [US], roadman, bagman, drummer [N. Amer, informal])
""",
);

@override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DividerDefinition(),
        // Using the EnglishButtonTTS class
        EnglishButtonTTS(
          onBritishPressed: (languageCode) =>
              startSpeaking(languageCode, englishMeaningConst),
          onAmericanPressed: (languageCode) =>
              startSpeaking(languageCode, englishMeaningConst),
          onStopPressed: stopSpeaking,
        ),
        // Speaker icon for American English
        englishMeaningConst,
      ],
    ),
  );
}
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
YoutubeEmbeddedend({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: '4v3G10xh4yQ',
  startSeconds: 2659,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignEnd(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedone extends StatelessWidget {
YoutubeEmbeddedone({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'P_qy_38vFCQ',
  startSeconds: 4207,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedtwo extends StatelessWidget {
YoutubeEmbeddedtwo({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: '06lO-_CieQQ',
  startSeconds: 663,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedthree extends StatelessWidget {
YoutubeEmbeddedthree({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'a_XE1FsaWBA',
  startSeconds: 697,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedfour extends StatelessWidget {
YoutubeEmbeddedfour({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'G049wsu-gpI',
  startSeconds: 12018,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedfive extends StatelessWidget {
YoutubeEmbeddedfive({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'RAv1O0g7lbM',
  startSeconds: 11562,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

class YoutubeEmbeddedsix extends StatelessWidget {
YoutubeEmbeddedsix({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'mpDtuFyYS8o',
  startSeconds: 562,
  autoPlay: true,
  params: const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showControls: false,
    strictRelatedVideos: true,
  ),
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: YouTubeContainerDesignNew(controller: _controller),
    ),
  );
}
}

// end WORD_WEB