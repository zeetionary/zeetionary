import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconclusion extends StatelessWidget {
// blank divider
  EnglishEntryconclusion({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconclusion(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("conclusion"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions1(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He arrived at a different conclusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions2(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is abundant evidence to support this conclusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions3(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Other studies have yielded the same conclusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions4(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The conclusion of the book was disappointing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions5(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After his death, his assistant completed chapters nine and ten and wrote the conclusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions6(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Negotiations led to the successful conclusion of a trade treaty between the two nations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions7(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions8(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions9(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions10(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions11(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions12(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconclusions13(String languageCode) async {
    // DOPSUM: CHANGE speakconclusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconclusions1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "conclusion"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈkluːʒn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconclusion("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈkluːʒn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconclusion("en-US"),
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
کوردی: کۆتایی، دوایی، ئاخر، دووماهی، دەرئەنجام،	ئەنجام، ئاکام، ئەنجام‌گیری، بۆدەرکەوتن،	بڕیار (دوایی)،	بەستن، گرێ‌دان، بڕینەوە، گرێبەست
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بڕیارێک کە داوتە لە دوای بیرکردنەوە لە هەموو ئەو زانیارییانەی کە پەیوەندیدارن بە دۆخەکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He arrived at a different conclusion."),
                                    ExampleSentenceKurdish(
                                        text: "گەشتە دەرەنجامێکی جیاواز."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "conclusion", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions1("en-US"),
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
                                            "There is abundant evidence to support this conclusion."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەڵگەی زۆر هەیە بۆ پشتگیری ئەم دەرەنجامە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions2("en-US"),
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
                                            "Other studies have yielded the same conclusion."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێکۆڵینەوەکانی دیکە گەشتوون بە هەمان دەرەنجام."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کۆتایی شتێک وەک وتارێک یان پارچە نووسراوێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The conclusion of the book was disappointing."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرەنجامی کتێبەکە نائوومێدکەر بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions4("en-US"),
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
                                            "After his death, his assistant completed chapters nine and ten and wrote the conclusion."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای مردنی، سکرتێرەکەی چاپتەر نۆ و دەی تەواوکرد و دەرەنجامەکەی نووسی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ڕێککەوتنی فەرمی و کۆتایی شتێکی فەرمی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Negotiations led to the successful conclusion of a trade treaty between the two nations."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دانوستانەکان گەشتن بە کۆتایی پێهێنانی سەرکەوتووانەی ڕێککەوتنێکی بازرگانی لە نێوان دوو وڵاتەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconclusions6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconclusions6("en-US"),
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
- Noun: conclusion (Derived forms: conclusions)
1. A position, opinion or judgment reached after consideration (= decision, determination)
"his conclusion took the evidence into account";
 
2. An intuitive assumption
"jump to a conclusion"
 
3. The temporal end; the concluding time (= stopping point, finale, finis, finish, last, close)
"the conclusion of each round was signaled by a bell";
 
4. Event whose occurrence ends something (= ending, finish)
"his death marked the conclusion of an era";
 
5. The proposition arrived at by logical reasoning (such as the proposition that must follow from the major and minor premises of a syllogism) (= ratiocination)
 
6. The act of ending something (= termination, ending)
"the conclusion of the agreement";
 
7. A final settlement
"the conclusion of a business deal"; "the conclusion of the peace treaty"
 
8. The last section of a communication (= end, close, closing, ending)
"in conclusion I want to say...";
 
9. The act of making up your mind about something (= decision, determination)
"he drew his conclusions quickly";
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
    videoId: 'https://youtu.be/tsxmyL7TUJg?t=',
    startSeconds: 1630,
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
    videoId: 'https://youtu.be/lGSOWwUvJiU?t=',
    startSeconds: 1900,
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
    videoId: 'https://youtu.be/SrDEtSlqJC4?t=',
    startSeconds: 224,
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
    videoId: 'https://youtu.be/dskWEryAAHo?t=',
    startSeconds: 148,
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
    videoId: 'https://youtu.be/7LFkN7QGp2c?t=',
    startSeconds: 92,
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
    videoId: 'https://youtu.be/U1KGRnWjllg?t=',
    startSeconds: 525,
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
    videoId: 'https://youtu.be/9nvcb7Nydyg?t=',
    startSeconds: 195,
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