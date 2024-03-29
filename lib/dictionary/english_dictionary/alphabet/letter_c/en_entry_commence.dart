import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommence extends StatelessWidget {
// blank divider
EnglishEntrycommence({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommence(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("commence"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences1(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "The meeting is scheduled to commence at noon."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences2(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("I will be on leave during the week commencing 15 February."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences3(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("She commenced her medical career in 1956."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences4(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("The company commenced operations in April."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences5(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences6(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences7(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences8(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences9(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences10(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences11(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences12(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommences13(String languageCode) async {
  // DOPSUM: CHANGE speakcommence
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommences1300"); // DOPSUM: CHANGE TEXT
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
                          EntryTitle(word: "commence"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /kəˈmens/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommence("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /kəˈmens/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommence("en-US"),
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
کوردی: دەست پێکردن، دەستبەکار بوون
"""),
                        const DefinitionKurdish(
                            text: "١. (کردار) دەستکردن بە ڕوودان"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "The meeting is scheduled to commence at noon."),
                                  ExampleSentenceKurdish(
                                      text: "کۆبوونەوەکە ڕێکخراوە لە نیوەڕۆدا دەستپێ بکات."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commence", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommences1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommences1("en-US"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const DividerSentences(),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "I will be on leave during the week commencing 15 February."),
                        ExampleSentenceKurdish(
                        text: "لە مۆڵەتدا دەبم لە ماوەی ھەفتەکەدا لە ١٥ ـی شوباتەوە."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommences2("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommences2("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerSentences(),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "She commenced her medical career in 1956."),
                        ExampleSentenceKurdish(
                        text: "کاری تەندرووستی دەستپێکرد لە ساڵی ١٩٥٦."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommences3("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommences3("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerSentences(),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "The company commenced operations in April."),
                        ExampleSentenceKurdish(
                        text: "کۆمپانیاکە کاری لە نیساندا دەستپێکرد."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommences4("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommences4("en-US"),
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
- Verb: commence (derived forms: commenced, commencing, commences)
1. Take the first step or steps in carrying out an action (= get down, begin, get, start out, start, set about, set out)
 
2. Set in motion, cause to start (= begin, lead off, start)
"The Iraqis commenced hostilities";
 
2. Get off the ground (= start, start up, embark on)
"Who commenced this company?";
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
  videoId: '-L7o6HtX8Vg',
  startSeconds: 408,
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
  videoId: 'lGSOWwUvJiU',
  startSeconds: 272,
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
  videoId: 'pTysrwci0pU',
  startSeconds: 223,
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
  videoId: 'b1reY72ktEc',
  startSeconds: 837,
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
  videoId: 'iN8zmmCRqUA',
  startSeconds: 685,
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
  videoId: 'BRi-SL5VpyE',
  startSeconds: 270,
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
  videoId: 'MqyJZsGFZ3M',
  startSeconds: 1530,
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