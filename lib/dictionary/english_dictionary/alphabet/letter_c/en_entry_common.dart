import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommon extends StatelessWidget {
// blank divider
EnglishEntrycommon({super.key});
// blank divider
final FlutterTts flutterTts = FlutterTts();

Future<void> speakcommon(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("common"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons1(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak(
      "Breast cancer is the most common form of cancer among women in this country."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons2(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Jackson is a common English name."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons3(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Heart disease was the most common cause of death in those aged over 85."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons4(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("The disease is very common in young horses."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons5(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Allergies to milk are quite common in childhood."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons6(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Stomach pain is very common in children."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons7(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("They share a common interest in photography."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons8(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("We are working together for a common purpose."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons9(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("This decision was taken for the common good."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons10(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("This attitude is common to most young men in the armed services."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons11(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("Shakespeare's work was popular among the common people in his day."); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons12(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommons1200"); // DOPSUM: CHANGE TEXT
}

Future<void> speakcommons13(String languageCode) async {
  // DOPSUM: CHANGE speakcommon
  await flutterTts.setLanguage(languageCode);
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.speak("speakcommons1300"); // DOPSUM: CHANGE TEXT
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
                          EntryTitle(word: "common"),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUK: /ˈkɒmən/"),
                          CustomIconButtonBritish(
                            onPressed: () => speakcommon("en-GB"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const IPAofEnglish(text: "IpaUS: /ˈkɑːmən/"),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcommon("en-US"),
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
کوردی: هاوبەش، هەڤپار، هەڤپشک، خەڵکی ڕەمەکی، گشتی، گەلەمپەری، هەموو، گشت، تێکڕا، پێکەوەیی،	ئاسایی، بێ‌پلەوپایە، عەدەتی،	باو، بەبڕەو، داب،	زۆر، فرە، گەلێ،	سادە، ناتایبەتی،	ڕەمەکی، بازاڕی،	سووک، هیچەکە،	بێ‌ڕەوشت
"""),
                        const DefinitionKurdish(
                            text: "١. (ھاوەڵناو) شتێک کە باوە و زۆر ڕوودەدات"),
                        Row(
                          children: [
                            const Expanded(
                              child: Column(
                                children: [
                                  ExampleSentenceEnglish(
                                      text:
                                          "Breast cancer is the most common form of cancer among women in this country."),
                                  ExampleSentenceKurdish(
                                      text: "شێرپەنجەی مەمک یەکێکە لە باوترین جۆرەکانی شێرپەنجە لە ناو ژناندا لەم وڵاتە."),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(), // With short examples define "common", please follow LX instructions
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakcommons1("en-GB"),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakcommons1("en-US"),
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
                        "Jackson is a common English name."),
                        ExampleSentenceKurdish(
                        text: "جاکسن ناوێکی ئینگلیزی باوە."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons2("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons2("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        Column(
                        children: [
                        MyExpansionTile(
                        children: [
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "Heart disease was the most common cause of death in those aged over 85."),
                        ExampleSentenceKurdish(
                        text: "نەخۆشی دڵ باوترین هۆکاری مردن بوو لە کەسانی تەمەن سەروو ٨٥ ساڵدا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons3("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons3("en-US"),
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
                        "The disease is very common in young horses."),
                        ExampleSentenceKurdish(
                        text: "ئەم نەخۆشییە زۆر باوە لەناو بەچکە ئەسپدا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons4("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons4("en-US"),
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
                        "Allergies to milk are quite common in childhood."),
                        ExampleSentenceKurdish(
                        text: "هەستیاری بە شیر زۆر باوە لە منداڵیدا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons5("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons5("en-US"),
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
                        "Stomach pain is very common in children."),
                        ExampleSentenceKurdish(
                        text: "ئازاری گەدە زۆر باوە لە منداڵاندا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons6("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons6("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerDefinition(),
                        const DefinitionKurdish(text: "٢. (ناو) شتێک کە بوونی هەیە لە دوو کەس یان زیاتردا، یان لە ژمارەیەک کەسدا"),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "They share a common interest in photography."),
                        ExampleSentenceKurdish(
                        text: "خولیایەکی هاوبەشیان هەیە بۆ وێنەگرتن."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons7("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons7("en-US"),
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
                        "We are working together for a common purpose."),
                        ExampleSentenceKurdish(
                        text: "بۆ ئامانجێکی هاوبەش کار دەکەین."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons8("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons8("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        Column(
                        children: [
                        MyExpansionTile(
                        children: [
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "This decision was taken for the common good (= the advantage of everyone)."),
                        ExampleSentenceKurdish(
                        text: "ئەم بڕیارە بۆ چاکەی هەموان درا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons9("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons9("en-US"),
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
                        "This attitude is common to most young men in the armed services."),
                        ExampleSentenceKurdish(
                        text: "ئەم هەڵسوکەوتە گشتییە لەناو زۆرینەی پیاوانی گەنجی سوپادا."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons10("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons10("en-US"),
                        ),
                        ],
                        ),
                        ],
                        ),
                        ],
                        ),
                        ],
                        ),
                        const DividerDefinition(),
                        const DefinitionKurdish(text: "٣. (ھاوەڵناو) شتێک کە ئاساییە؛ تایبەت نییە"),
                        Row(
                        children: [
                        const Expanded(
                        child: Column(
                        children: [
                        ExampleSentenceEnglish(
                        text:
                        "Shakespeare's work was popular among the common people in his day."),
                        ExampleSentenceKurdish(
                        text: "کارەکانی شکسپیر ."),
                        ],
                        ),
                        ),
                        const CustomSizedBoxForTTS(),
                        Column(
                        children: [
                        CustomIconButtonBritish(
                        onPressed: () => speakcommons11("en-GB"),
                        ),
                        CustomIconButtonAmerican(
                        onPressed: () => speakcommons11("en-US"),
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
- Adjective: common (Derived forms: commonest, commoner) 
1. Shared by or having the same connection with two or more parties (= mutual)
"a common friend";
 
2. Found in large numbers or in a large quantity (= usual)
"a common complaint";
 
3. Belonging to or participated in by a community as a whole; public
"for the common good"; "common lands are set aside for use by all members of a community"
 
4. Having no special distinction or quality; widely known or commonly encountered; average or ordinary or usual
"the common man"; "a common sailor"; "the common cold"; "a common nuisance"; "followed common procedure"; "it is common knowledge that she lives alone"; "the common housefly"; "a common brand of soap"
 
5. Being or characteristic of or appropriate to everyday language (= vernacular, vulgar)
"common parlance";
 
6. (disparaging) of or associated with ordinary, common people (= plebeian, vulgar, unwashed)
"the common people in those days suffered greatly"; "behaviour that branded him as common";
 
7. Of low or inferior quality or value (= coarse)
"produced...the common cloths used by the poorer population";
 
8. Lacking refinement, cultivation or taste (= coarse, rough-cut, uncouth, vulgar)
"behaviour that branded him as common";
 
9. To be expected; standard
"common decency"

- Noun: common (Derived forms: commons)
1. A piece of open land for recreational use in an urban area (= park, commons, green)
"they went for a walk in the common";
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
  videoId: 'https://youtu.be/ToNGJhWPz1o?t=',
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
  videoId: 'https://youtu.be/Vx8NyHbh88s?t=',
  startSeconds: 11,
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
  videoId: 'https://youtu.be/AAIYR1bs-vQ?t=',
  startSeconds: 3,
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
  videoId: 'https://youtu.be/tXjHb5QmDV0?t=',
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

class YoutubeEmbeddedfour extends StatelessWidget {
YoutubeEmbeddedfour({super.key});

final _controller = YoutubePlayerController.fromVideoId(
  videoId: 'https://youtu.be/bXCOI_LQ_0o?t=',
  startSeconds: 9,
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
  videoId: 'https://youtu.be/8T7lEvtwETA?t=',
  startSeconds: 193,
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
  videoId: 'https://youtu.be/iKv4oc2zbeA?t=',
  startSeconds: 210,
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