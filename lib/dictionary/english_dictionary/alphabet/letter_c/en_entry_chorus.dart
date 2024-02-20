import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychorus extends StatelessWidget {
  // blank divider
  EnglishEntrychorus({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchorus(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chorus"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss1(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll sing the verses and I'd like you all to join in the chorus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss2(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The choir will be performing the Hallelujah Chorus at the concert."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss3(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He sings with the Bath Festival Chorus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss4(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("‘Hello, Paul,’ they chorused."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss5(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss6(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss7(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss8(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss9(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss10(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss11(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss12(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchoruss13(String languageCode) async {
    // DOPSUM: CHANGE speakchorus
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchoruss1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "chorus"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɔːrəs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchorus("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɔːrəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchorus("en-US"),
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
//                           const KurdishVocabulary(text: """
// کوردی: کۆرس، هاوچڕە، دەستەی گۆرانی، پێکەوەبێژان، کۆڕبێژان،	موسیقای کۆڕ،	گۆرانی پێکەوە یان بەکۆمەڵ، کۆڕبێژی، دەستەی سەماکەر و گۆرانی‌بێژان (شۆی موزیکاڵ)،	سەربەند،	هاوار (پێکەوە، بۆ دەربڕینی پێخۆش‌بوون یا پێخۆش‌نەبوون)،	بێژەر، گێڕەوە، داستان‌بێژ، چیرۆک‌بێژ
// """),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بەشێکی گۆرانییەک کە دووبارە و دووبارە لە دوای هەر کۆپلەیەک دەوترێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'll sing the verses and I'd like you all to join in the chorus."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "من کۆپلەکان دەخوێنم و حەزدەکەم ئێوەش هەمووتان لە کۆرسەکە بەژدار بن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "chorus", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoruss1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoruss1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پارچە میوزیکێک کۆ بۆ دەستەیەک لۆ گۆرانیبێژ دەنووسرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The choir will be performing the Hallelujah Chorus at the concert."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆچڕەکە کۆڕە میویزیکی هاللویا دەخوێنن لە کۆنسێرتەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoruss2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoruss2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) گرووپێک کە پێکەوە گۆرانی دەڵێن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He sings with the Bath Festival Chorus."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەگەڵ کۆچڕی فیستیڤاڵی باس گۆرانی دەڵێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoruss3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoruss3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گۆرانی گوتن یان قسەکردن بە کۆمەڵ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "‘Hello, Paul,’ they chorused."),
                                    ExampleSentenceKurdish(
                                        text: "پێکەوە گوتیان 'چۆنی، پاوڵ'."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchoruss4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchoruss4("en-US"),
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
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
- Noun: chorus (Derived forms: choruses)
1. Any utterance produced simultaneously by a group
"a chorus of boos"
 
2. A group of people assembled to sing together
 
3. The part of a song where a soloist is joined by a group of singers (= refrain)
 
4. A body of dancers or singers who perform together (= chorus line)
 
5. (singing) a company of actors who comment (by speaking or singing in unison) on the action in a classical Greek play (= Greek chorus)

- Verb: chorus (Derived forms: choruses, chorusing, chorused)
1. Utter in unison
"'yes,' the children chorused"
 
2. (music) sing in a choir (= choir)
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
    videoId: 'https://youtu.be/y7Zd4aMCj4k?t=',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/5C0o5HckaC4?t=',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/Ueh8oy27B8U?t=',
    startSeconds: 12,
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
    videoId: 'https://youtu.be/TecEmbKEWho?t=',
    startSeconds: 15,
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
    videoId: 'https://youtu.be/Ayj6lxswxeg',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/qJl1p0W5-y4?t=',
    startSeconds: 331,
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
    videoId: 'https://youtu.be/8PJGIEz5YJ4?t=',
    startSeconds: 238,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/BBPk0Cdv8gQ?t=',
    startSeconds: 1662,
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
