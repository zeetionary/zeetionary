import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycyclist extends StatefulWidget {
const EnglishEntrycyclist({super.key});

@override
State<EnglishEntrycyclist> createState() => _EnglishEntrycyclistState();
}

class _EnglishEntrycyclistState extends State<EnglishEntrycyclist> {
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
  return const EntryTitle(word: "cyclist");
}
}

class TitleOfEntryAlso extends StatelessWidget {
const TitleOfEntryAlso({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const AlsoEnglish(word: "also: cyclist");
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
  return const IPAofEnglish(text: "IpaUK: /ˈsaɪklɪst/");
}
}

class TTSUK extends StatelessWidget {
TTSUK({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcyclist(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("cyclist"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonBritish(
    onPressed: () => speakcyclist("en-GB"),
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
  return const IPAofEnglish(text: "IpaUS: /ˈsaɪklɪst/");
}
}

class TTSUS extends StatelessWidget {
TTSUS({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcyclist(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("cyclist"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonAmerican(
    onPressed: () => speakcyclist("en-US"),
  );
}
}

class KurdishMeaning extends StatelessWidget {
KurdishMeaning({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcyclists1(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "They are both very keen cyclists."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists2(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists3(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists4(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists5(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists6(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists7(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists8(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists9(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists10(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists11(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists12(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcyclists13(String languageCode) async {
  // DOPSUM: CHANGE speakcyclist
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcyclists1300"); // DOPSUM: CHANGE TEXT
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
// کوردی: پاسکیلسوار، چەرخ‌سوار، مۆتۆڕسوار
// """),
        const DefinitionKurdish(text: "١. (ناو) پاسکیلسوار"),
        Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  ExampleSentenceEnglish(
                      text:
                          "They are both very keen cyclists."),
                  ExampleSentenceKurdish(text: "هەردووکیان پاسکیلسواری بەتامەزرۆ بوون."),
                ],
              ),
            ),
            const CustomSizedBoxForTTS(), // With short examples define "cyclist", please follow LX instructions
            Column(
              children: [
                CustomIconButtonBritish(
                  onPressed: () => speakcyclists1("en-GB"),
                ),
                CustomIconButtonAmerican(
                  onPressed: () => speakcyclists1("en-US"),
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
- Noun: cyclist (Derived forms: cyclists)
1. A person who rides a bicycle (= bicyclist, bicycler, wheeler, biker, cycler, pedal pusher [Brit, informal])
"The cyclist has eliminated all the competitors in the race";
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
  videoId: 'https://youtu.be/1PQCAOLpPTg?t=',
  startSeconds: 678,
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
  videoId: 'https://youtu.be/ZacOS8NBK6U?t=',
  startSeconds: 4,
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
  videoId: 'https://youtu.be/d9vDcfH03gs?t=',
  startSeconds: 375,
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
  videoId: 'https://youtu.be/H4BsZTsNMkQ?t=',
  startSeconds: 506,
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
  videoId: 'https://youtu.be/IBI67y7GWUc?t=',
  startSeconds: 790,
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
  videoId: 'https://youtu.be/cwFjhXC-qZ8?t=',
  startSeconds: 1296,
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
  videoId: 'https://youtu.be/EgMn2H4wXj4?t=',
  startSeconds: 69,
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