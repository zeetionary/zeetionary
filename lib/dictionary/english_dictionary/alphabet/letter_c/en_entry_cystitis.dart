import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycystitis extends StatefulWidget {
const EnglishEntrycystitis({super.key});

@override
State<EnglishEntrycystitis> createState() => _EnglishEntrycystitisState();
}

class _EnglishEntrycystitisState extends State<EnglishEntrycystitis> {
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
  return const EntryTitle(word: "cystitis");
}
}

class TitleOfEntryAlso extends StatelessWidget {
const TitleOfEntryAlso({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const AlsoEnglish(word: "also: cystitis");
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
  return const IPAofEnglish(text: "IpaUK: /sɪˈstaɪtɪs/");
}
}

class TTSUK extends StatelessWidget {
TTSUK({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcystitis(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("cystitis"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonBritish(
    onPressed: () => speakcystitis("en-GB"),
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
  return const IPAofEnglish(text: "IpaUS: /sɪˈstaɪtɪs/");
}
}

class TTSUS extends StatelessWidget {
TTSUS({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcystitis(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("cystitis"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonAmerican(
    onPressed: () => speakcystitis("en-US"),
  );
}
}

class KurdishMeaning extends StatelessWidget {
KurdishMeaning({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakcystitiss1(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "Drinking plenty of water can help prevent cystitis."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss2(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss3(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss4(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss5(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss6(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss7(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss8(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss9(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss10(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss11(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss12(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcystitiss13(String languageCode) async {
  // DOPSUM: CHANGE speakcystitis
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcystitiss1300"); // DOPSUM: CHANGE TEXT
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
// کوردی: میزەڵدان ئاوسان، ئاوسانی تیزانگ یان میزەڵدان، هەوکردنی میزەڵدان
// """),
        const DefinitionKurdish(text: "١. (ناو) هەوکردنی میزڵدان، بەتایبەتی لە ژناندا، کە ئازار درووست دەکات لەکاتی میزکردندا و زۆرجار ڕوودەدات"),
        Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  ExampleSentenceEnglish(
                      text:
                          "Drinking plenty of water can help prevent cystitis."),
                  ExampleSentenceKurdish(text: "خواردنی ئاوی زۆر دەکرێت ڕێگری لە هەوکردنی میزڵدان بکات."),
                ],
              ),
            ),
            const CustomSizedBoxForTTS(), // With short examples define "cystitis", please follow LX instructions
            Column(
              children: [
                CustomIconButtonBritish(
                  onPressed: () => speakcystitiss1("en-GB"),
                ),
                CustomIconButtonAmerican(
                  onPressed: () => speakcystitiss1("en-US"),
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
- Noun: cystitis 
1. Inflammation of the urinary bladder and ureters
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
  videoId: 'https://youtu.be/wiMqAbHc8I8?t=',
  startSeconds: 194,
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
  videoId: 'https://youtu.be/m8JzJWHLLSc?t=',
  startSeconds: 297,
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
  videoId: 'https://youtu.be/svpEXWo6rYM?t=',
  startSeconds: 103,
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
  videoId: 'https://youtu.be/3m30DF3_Kvs?t=',
  startSeconds: 49,
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
  videoId: 'https://youtu.be/EdBtmBum8Tg?t=',
  startSeconds: 862,
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
  videoId: 'https://youtu.be/Q6toBA7SRkY?t=',
  startSeconds: 47,
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
  videoId: 'https://youtu.be/WoXUGFvvfAA?t=',
  startSeconds: 252,
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