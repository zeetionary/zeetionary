import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydawdle extends StatefulWidget {
const EnglishEntrydawdle({super.key});

@override
State<EnglishEntrydawdle> createState() => _EnglishEntrydawdleState();
}

class _EnglishEntrydawdleState extends State<EnglishEntrydawdle> {
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
                  VideoIconForTab(),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            const EnglishMeaning(),
            KurdishMeaning(),
            const YoutubeVideos(),
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
            IpaUK(),
            IpaUS(),
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
  return const EntryTitle(word: "dawdle");
}
}

class TitleOfEntryAlso extends StatelessWidget {
const TitleOfEntryAlso({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const AlsoEnglish(word: "also: dawdle");
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
  return const IPAofEnglish(text: "IpaUK: /ˈdɔːdl/");
}
}

class TTSUK extends StatelessWidget {
TTSUK({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdawdle(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("dawdle"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonBritish(
    onPressed: () => speakdawdle("en-GB"),
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
  return const IPAofEnglish(text: "IpaUS: /ˈdɔːdl/");
}
}

class TTSUS extends StatelessWidget {
TTSUS({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdawdle(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("dawdle"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonAmerican(
    onPressed: () => speakdawdle("en-US"),
  );
}
}

class KurdishMeaning extends StatelessWidget {
KurdishMeaning({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdawdles1(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "Stop dawdling! We're going to be late!"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles2(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles3(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles4(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles5(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles6(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles7(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles8(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles9(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles10(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles11(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles12(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdawdles13(String languageCode) async {
  // DOPSUM: CHANGE speakdawdle
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdawdles1300"); // DOPSUM: CHANGE TEXT
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
        const DefinitionKurdish(text: "١. (کردار) خاوەخاوکردن لە کردنی شتێک یان چونە شوێنێک"),
        Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  ExampleSentenceEnglish(
                      text:
                          "Stop dawdling! We're going to be late!"),
                  ExampleSentenceKurdish(text: "بوەستە لە خاوەخاوکردن! درەنگ دەکەوین!"),
                ],
              ),
            ),
            const CustomSizedBoxForTTS(), // With short examples define "dawdle", please follow LX instructions
            Column(
              children: [
                CustomIconButtonBritish(
                  onPressed: () => speakdawdles1("en-GB"),
                ),
                CustomIconButtonAmerican(
                  onPressed: () => speakdawdles1("en-US"),
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
- Verb: dawdle (Derived forms: dawdling, dawdles, dawdled)
1. Take one's time; proceed slowly (= linger)
 
2. Waste time (= dally)
"Get busy--don't dawdle!";
 
3. Hang (back) or fall (behind) in movement, progress, development, etc. (= lag, fall back, fall behind)
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
  videoId: 'https://youtu.be/Vv2blkYgjwM',
  // startSeconds: 222222222222222,
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
  videoId: 'https://youtu.be/GDclMXpjvj8?t=',
  startSeconds: 288,
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
  videoId: 'https://youtu.be/QBLbaJ9oItk?t=',
  startSeconds: 141,
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
  videoId: 'https://youtu.be/jFkAeQI7UuQ?t=',
  startSeconds: 144,
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
  videoId: 'https://youtu.be/Xpw7Xj5V8V0?t=',
  startSeconds: 720,
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
  videoId: 'https://youtu.be/9qShCfqZJIo?t=',
  startSeconds: 339,
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
  videoId: 'https://youtu.be/DWpDh12rcCU?t=',
  startSeconds: 61,
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