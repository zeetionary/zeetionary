import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommencement extends StatelessWidget {
// blank divider
EnglishEntrycommencement({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommencement(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("commencement"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements1(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "Please turn off your mobile phones before the commencement of the flight."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements2(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements3(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements4(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements5(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements6(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements7(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements8(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements9(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements10(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements11(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements12(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommencements13(String languageCode) async {
  // DOPSUM: CHANGE speakcommencement
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommencements1300"); // DOPSUM: CHANGE TEXT
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
                          EntryTitle(word: "commencement"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /kəˈmensmənt/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommencement("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /kəˈmensmənt/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommencement("en-US"),
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
                        const KurdishVocabulary(text: """
کوردی: دەسپێک، سەرەتا، بەرایی،	ئاهەنگی دەرچوون، ڕێ‌وڕەسمی لە خوێندن‌بوونەوە
"""),
                        const DefinitionKurdish(
                            text: "١. (ناو) دەستپێکردن"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "Please turn off your mobile phones before the commencement of the flight."),
                                  ExampleSentenceKurdish(
                                      text: "تکایە موبایلەکانتان بکوژێننەوە پێش دەستپێکردنی گەشتەکە."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commencement", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommencements1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommencements1("en-US"),
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
- Noun: commencement (Derived forms: commencements)
1. The time when something begins (= beginning, first, outset, get-go [N. Amer], start, kickoff, starting time, showtime, offset)
 
2. An academic exercise in which diplomas are conferred (= commencement exercise, commencement ceremony, graduation, graduation exercise)
 
3. The act of starting something (= beginning, start)
"he was responsible for the commencement of negotiations";
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
  videoId: 'DPG2HXGInYY',
  startSeconds: 132,
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
  videoId: 'DNIAltjEILc',
  startSeconds: 242,
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
  videoId: '1UTjWy-vnOo',
  startSeconds: 5,
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
  videoId: 'pe83T9hISoY',
  startSeconds: 805,
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
  videoId: 'LQ8JOsc3-wU',
  startSeconds: 168,
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
  videoId: '112H-vY4Wdo',
  startSeconds: 203,
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
  videoId: 'BmYv8XGl-YU',
  startSeconds: 332,
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