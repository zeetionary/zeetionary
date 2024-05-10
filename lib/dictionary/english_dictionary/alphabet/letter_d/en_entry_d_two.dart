import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydtwo extends StatefulWidget {
const EnglishEntrydtwo({super.key});

@override
State<EnglishEntrydtwo> createState() => _EnglishEntrydtwoState();
}

class _EnglishEntrydtwoState extends State<EnglishEntrydtwo> {
@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 220.0,
              flexibleSpace: FlexibleSpaceBar(
                background: EntryAndIPA(),
              ),
              automaticallyImplyLeading: false,
              bottom: TabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  // VideoIconForTab(),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            const EnglishMeaning(),
            KurdishMeaning(),
            // const YoutubeVideos(),
          ],
        ),
      ),
    ),
  );
}
}

class EntryAndIPA extends StatelessWidget {
const EntryAndIPA({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const SingleChildScrollView(
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TitleOfEntry(),
              ],
            ),
            // TitleOfEntryAlso(),
            // IpaUK(),
            // IpaUS(),
          ],
        ),
      ],
    ),
  );
}
}

class TitleOfEntry extends StatelessWidget {
const TitleOfEntry({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const EntryTitle(word: "d.");
}
}

class TitleOfEntryAlso extends StatelessWidget {
const TitleOfEntryAlso({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const AlsoEnglish(word: "also: d.");
}
}

class IpaUK extends StatelessWidget {
const IpaUK({
  super.key,
});

@override
Widget build(BuildContext context) {
  return Row(
    children: [
      TTSUK(),
      const IpaUKtext(),
    ],
  );
}
}

class IpaUKtext extends StatelessWidget {
const IpaUKtext({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const IPAofEnglish(text: "IpaUK: haʊʊʊʊʊʊʊ4");
}
}

class TTSUK extends StatelessWidget {
TTSUK({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdtwo(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("d."); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonBritish(
    onPressed: () => speakdtwo("en-GB"),
  );
}
}

class IpaUS extends StatelessWidget {
const IpaUS({
  super.key,
});

@override
Widget build(BuildContext context) {
  return Row(
    children: [
      TTSUS(),
      const IpaUStext(),
    ],
  );
}
}

class IpaUStext extends StatelessWidget {
const IpaUStext({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const IPAofEnglish(text: "IpaUS: haʊʊʊʊʊʊʊ4");
}
}

class TTSUS extends StatelessWidget {
TTSUS({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdtwo(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("d."); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonAmerican(
    onPressed: () => speakdtwo("en-US"),
  );
}
}

class KurdishMeaning extends StatelessWidget {
KurdishMeaning({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdtwos1(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "Emily Clifton, d. 1865"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos2(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos3(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos4(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos5(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos6(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos7(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos8(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos9(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos10(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos11(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos12(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdtwos13(String languageCode) async {
  // DOPSUM: CHANGE speakdtwo
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdtwos1300"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    // DOPSUM: KURDISH MEANING
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const DividerDefinition(),
//         const KurdishVocabulary(text: """
// کوردی: 
// """),
        const DefinitionKurdish(text: "١. (کورتکراوە) لە زمانی نووسیندا بەکاردێت بۆ کورتکراوە"),
        Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  ExampleSentenceEnglish(
                      text:
                          "Emily Clifton, d. 1865"),
                  ExampleSentenceKurdish(text: "ئێمیلی کلیفتن، کۆچکردووی ١٨٦٥."),
                ],
              ),
            ),
            const CustomSizedBoxForTTS(), // With short examples define "d.", please follow LX instructions
            Column(
              children: [
                CustomIconButtonBritish(
                  onPressed: () => speakdtwos1("en-GB"),
                ),
                CustomIconButtonAmerican(
                  onPressed: () => speakdtwos1("en-US"),
                ),
              ],
            ),
          ],
        ),
      ],
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
- d.
1. written abbreviation for died: used when giving the dates of someone's birth and death
"John Winston Lennon (b. 9 October 1940, Liverpool, d. 8 December 1980, New York).";
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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
  videoId: 'PUT_VID',
  startSeconds: 222222222222222,
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

class YoutubeVideos extends StatelessWidget {
const YoutubeVideos({
  super.key,
});

@override
Widget build(BuildContext context) {
  return YouTubeScroller(
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
  );
}
}

// end WORD_WEB