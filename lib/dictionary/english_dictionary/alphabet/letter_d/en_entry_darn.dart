import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydarn extends StatefulWidget {
const EnglishEntrydarn({super.key});

@override
State<EnglishEntrydarn> createState() => _EnglishEntrydarnState();
}

class _EnglishEntrydarnState extends State<EnglishEntrydarn> {
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
  return const EntryTitle(word: "darn");
}
}

class TitleOfEntryAlso extends StatelessWidget {
const TitleOfEntryAlso({
  super.key,
});

@override
Widget build(BuildContext context) {
  return const AlsoEnglish(word: "also: darn");
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
  return const IPAofEnglish(text: "IpaUK: /dɑːn/");
}
}

class TTSUK extends StatelessWidget {
TTSUK({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdarn(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("darn"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonBritish(
    onPressed: () => speakdarn("en-GB"),
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
  return const IPAofEnglish(text: "IpaUS: /dɑːrn/");
}
}

class TTSUS extends StatelessWidget {
TTSUS({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdarn(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("darn"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return CustomIconButtonAmerican(
    onPressed: () => speakdarn("en-US"),
  );
}
}

class KurdishMeaning extends StatelessWidget {
KurdishMeaning({
  super.key,
});

final FlutterTts flutterTts = FlutterTts();

Future<void> speakdarns1(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "// speakdarns111111111111111111111111111111111"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns2(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns3(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns300"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns4(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns400"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns5(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns500"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns6(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns600"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns7(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns700"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns8(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns9(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns10(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns11(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns12(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakdarns13(String languageCode) async {
  // DOPSUM: CHANGE speakdarn
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakdarns1300"); // DOPSUM: CHANGE TEXT
}

@override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    // DOPSUM: KURDISH MEANING
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const DividerDefinition(),
        const KurdishVocabulary(text: """
کوردی: 
"""),
        const DefinitionKurdish(text: "١. (ھاوەڵناو) پێنناسە"),
        Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  ExampleSentenceEnglish(
                      text:
                          "// speakdarns111111111111111111111111111111111"),
                  ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                ],
              ),
            ),
            const CustomSizedBoxForTTS(), // With short examples define "darn", please follow LX instructions
            Column(
              children: [
                CustomIconButtonBritish(
                  onPressed: () => speakdarns1("en-GB"),
                ),
                CustomIconButtonAmerican(
                  onPressed: () => speakdarns1("en-US"),
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
- Noun: darn (Derived forms: darns)
1. Something of little value (= damn, hoot, red cent [N. Amer], shucks, tinker's damn [US, informal], tinker's dam [US, informal])
"his promise is not worth a darn";
 
2. Sewing that repairs a worn or torn hole (especially in a garment) (= mend, patch)
"her stockings had several darns";

- Verb: darn (Derived forms: darning, darned, darns)
1. Repair by sewing
"darn socks"

 -Interjection: darn 
Usage: informal
1. Exclamation of annoyance (= blast, bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damn, damnation, dammit [informal], damn it [informal], dash [Brit, informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
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
// speakdarns111111111111111111111111111111111

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