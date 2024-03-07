import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommend extends StatelessWidget {
// blank divider
EnglishEntrycommend({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommend(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("commend"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends1(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "She was commended on her handling of the situation."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends2(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("His book was highly commended."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends3(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("She is an excellent worker and I commend her to you without reservation."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends4(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("The movie has little to commend it."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends5(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("She said she would commend the proposal to the Board."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends6(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("His outspoken behaviour did not commend itself to his colleagues."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends7(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("We commend her soul to God."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends8(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends800"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends9(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends900"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends10(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends1000"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends11(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends1100"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends12(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommends13(String languageCode) async {
  // DOPSUM: CHANGE speakcommend
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommends1300"); // DOPSUM: CHANGE TEXT
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
                          EntryTitle(word: "commend"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /kəˈmend/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommend("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /kəˈmend/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommend("en-US"),
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
کوردی: ستایش کردن، تاریف کردن، پێهەڵگوتن
"""),
                        const DefinitionKurdish(
                            text: "١. (کردار) ستایشکردنی کەسێک/شتێک، بە تایبەتی بە گشتی"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "She was commended on her handling of the situation."),
                                  ExampleSentenceKurdish(
                                      text: "ستایشکرا بۆ مامەڵەی لەگەڵ دۆخەکە."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "commend", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommends1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommends1("en-US"),
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
                        "His book was highly commended."),
                        ExampleSentenceKurdish(
                        text: "کتێبەکەی بە بەرزی نمایش کرا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends2("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends2("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerDefinition(),
                        const DefinitionKurdish(text: "٢. (کردار) پێشنیازکردنی کەسێک/شتێک بۆ کەسێک"),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "She is an excellent worker and I commend her to you without reservation."),
                        ExampleSentenceKurdish(
                        text: "کرێکارێکی باشە و بەبێ گومانی پێشنیازی دەکەم بۆت."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends3("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends3("en-US"),
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
                        "The movie has little to commend it (= it has few good qualities)."),
                        ExampleSentenceKurdish(
                        text: "فیلمەکە پیاهەڵدانی کەمی دەوێت."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends4("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends4("en-US"),
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
                        "She said she would commend the proposal to the Board."),
                        ExampleSentenceKurdish(
                        text: "وتی پێشنیازەکە دەخەمە پێش دەستەکە."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends5("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends5("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerDefinition(),
                        const DefinitionKurdish(text: "٣. (کردار) شتێک کە پەسەندکراوە"),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "His outspoken behaviour did not commend itself to his colleagues."),
                        ExampleSentenceKurdish(
                        text: "هەڵسوکەوتی ڕاشکاوانەی پەسەند نەبوو لای هاوکارەکانی."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends6("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends6("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerDefinition(),
                        const DefinitionKurdish(text: "٤. (کردار) ڕاسپاردنی کەسێک/شتێک بە کەسێک"),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "We commend her soul to God."),
                        ExampleSentenceKurdish(
                        text: "ڕۆحی بە خودا دەسپێرین."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommends7("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommends7("en-US"),
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
- Verb: commend (Derived forms: commending, commends, commended)
1. Express approbation of
 
2. Present as worthy of regard, kindness, or confidence
"His paintings commend him to the artistic world"
 
3. (formal) entrust or commit to the care of someone else
"I commend my children to you"
 
4. Express a good opinion of (= recommend)
 
5. Mention as by way of greeting or to indicate friendship (= remember)
"commend me to your wife";
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
  videoId: 'KmCiQmmPDbY',
  startSeconds: 722,
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
  videoId: '5rEuWmCUmYQ',
  startSeconds: 1479,
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
  videoId: 'XSkH-djDU-k',
  startSeconds: 38,
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
  videoId: 'Bc8Yj9J8MQs',
  startSeconds: 1022,
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
  videoId: 'VzHtsoBwBqI',
  startSeconds: 182,
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
  videoId: 'zQZAIhP0H2A',
  startSeconds: 538,
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
  videoId: 'EPYy_g8NzmI',
  startSeconds: 481,
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