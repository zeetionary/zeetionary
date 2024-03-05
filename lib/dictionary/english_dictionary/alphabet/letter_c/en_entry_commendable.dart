import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommendable extends StatelessWidget {
// blank divider
EnglishEntrycommendable({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommendable(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("commendable"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables1(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "They always conduct their affairs with commendable honesty."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables2(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("He wasn't always successful, but he made a commendable effort."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables3(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables4(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables5(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables6(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables7(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables8(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables9(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables10(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables11(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables12(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommendables13(String languageCode) async {
  // DOPSUM: CHANGE speakcommendable
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommendables1300"); // DOPSUM: CHANGE TEXT
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
                          EntryTitle(word: "commendable"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /kəˈmendəbl/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommendable("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /kəˈmendəbl/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommendable("en-US"),
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
کوردی: لەپەسن‌هاتوو، شیاو یان شایانی پیاهەڵدان یان پەسندکردن، جێی ستایشت، جێی‌پەسن
"""),
                        const DefinitionKurdish(
                            text: "١. (ھاوەڵناو) شتێک کە شایەنی ستایشە"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "They always conduct their affairs with commendable honesty."),
                                  ExampleSentenceKurdish(
                                      text: "هەمیشە کارەکانیان بە ڕاستگۆیی جێی‌پەسن ئەنجام دەدەن."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commendable", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommendables1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommendables1("en-US"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "He wasn't always successful, but he made a commendable effort."),
                                  ExampleSentenceKurdish(
                                      text: "هەموو کات سەرکەوتوو نەدەبوو، بەڵام هەوڵی لەپەسن‌هاتووی دەدا."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commendable", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommendables2("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommendables2("en-US"),
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
- Adjective: commendable 
1. Worthy of high praise (= applaudable, laudable, praiseworthy)
"a commendable sense of purpose";

- Adverb: commendable (= admirably, laudably, praiseworthily)
1. In an admirable manner
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
  videoId: 'https://youtu.be/HI1V5WJDey0?t=',
  startSeconds: 396,
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
  videoId: 'https://youtu.be/7iuzi21AI4M?t=',
  startSeconds: 1965,
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
  videoId: 'https://youtu.be/63tQ7yGmsmI?t=',
  startSeconds: 1661,
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
  videoId: 'https://youtu.be/3lVdAZCpmQI?t=',
  startSeconds: 484,
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
  videoId: 'https://youtu.be/lNlKKB_p-4s?t=',
  startSeconds: 164,
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
  videoId: 'https://youtu.be/hCxFUWlgb_M?t=',
  startSeconds: 176,
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
  videoId: 'https://youtu.be/Y4wrxLVs3eU?t=',
  startSeconds: 314,
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