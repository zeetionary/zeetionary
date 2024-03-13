import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconscious extends StatelessWidget {
// blank divider
  EnglishEntryconscious({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconscious(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("conscious"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss1(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's very conscious of the problems involved."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss2(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I am conscious of the fact that there's a limit to what we can achieve here."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss3(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He became acutely conscious of having failed his parents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss4(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A patient who is not fully conscious should never be left alone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss5(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She remained conscious throughout the operation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss6(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Try to keep the patient conscious."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss7(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I made a conscious effort to get there on time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss8(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She made a conscious decision to spend more time with her family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss9(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have become increasingly health-conscious."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss10(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's never been politically conscious."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss11(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsciouss1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss12(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsciouss1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconsciouss13(String languageCode) async {
    // DOPSUM: CHANGE speakconscious
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconsciouss1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "conscious"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnʃəs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconscious("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnʃəs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconscious("en-US"),
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
کوردی: هۆشیار، ئاگادار، خەبەردار، بەسەرنج، وریا، بەئاگا، خۆئاگا، وریا،	بەمەبەست، ئەنقەست، خۆکردوو،	بیریار، هزرمەند،	هەستیار،	شەرمێون، پەشۆکاو، تاساو
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) بائاگا لە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's very conscious of the problems involved."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر بەئاگایە لەو کێشانەی لە ڕێگان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "conscious", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss1("en-US"),
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
                                            "I am conscious of the fact that there's a limit to what we can achieve here."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ئاگام لەو ڕاستییەی کە سنوورێک هەیە بۆ ئەوەی لێرە دەتوانین بەدەستی بهێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss2("en-US"),
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
                                            "He became acutely conscious of having failed his parents."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواو بەئاگا بوو لەوەی کە دایک و باوکی نائومێد کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) هەبوونی توانای بەکارهێنانی هەستەکانت و هێزی مێشکت بۆ زانینی ئەوەی چی ڕوودەدات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A patient who is not fully conscious should never be left alone."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەخۆشێک کە تەواو بەئاگا نییە نابێت بە تەنها جێبهێڵدرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss4("en-US"),
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
                                            "She remained conscious throughout the operation."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ماوەی تەواوی نەشتەرگەرییەکە بە ئاگا هێڵدرایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss5("en-US"),
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
                                            "Try to keep the patient conscious."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەوڵ بدە نەخۆشەکە بە بەئاگایی بهێڵەرەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بە ئەنقەست؛ شتێک کە بە ئاگاییەوە دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I made a conscious effort to get there on time."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەوڵێکی بەمەبەستم دا لەکاتی خۆیدا بگەمە ئەوێ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss7("en-US"),
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
                                            "She made a conscious decision to spend more time with her family."),
                                    ExampleSentenceKurdish(
                                      text:
                                          "بڕیارێکی بەمەبەستی دا کاتی زیاتر لەگەڵ خێزانەکەی بەسەر ببات.",
                                      note:
                                          "واتە خۆی بڕیارەکەی دا نەک ئەوەی بارودۆخی ژیان و کارەکەی وای خواستبێت",
                                    ),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) حەزکردن لە شتێک بە تایبەتی یان ئەوەی کە گرنگە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They have become increasingly health-conscious."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زیاتر و زیاتر هۆگربوونە بە تەندرووستی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss9("en-US"),
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
                                            "He's never been politically conscious."),
                                    ExampleSentenceKurdish(
                                        text: "هەرگیز هۆگر بە سیاسەت نەبووە ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconsciouss10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconsciouss10("en-US"),
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
- Adjective: conscious 
1. Intentionally conceived (= witting)
"a conscious policy";
 
2. Knowing and perceiving; having awareness of surroundings and sensations and thoughts
"remained conscious during the operation"; "conscious of his faults"; "became conscious that he was being followed"
 
3. (followed by 'of') showing realization or recognition of something
"few voters seem conscious of the issue's importance"; "conscious of having succeeded"; "the careful tread of one conscious of his alcoholic load"
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
    videoId: 'https://youtu.be/_wNsZEqpKUA?t=',
    startSeconds: 771,
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
    videoId: 'https://youtu.be/9finqZJJNA8?t=',
    startSeconds: 316,
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
    videoId: 'https://youtu.be/-Il7Er91P4U?t=',
    startSeconds: 42,
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
    videoId: 'https://youtu.be/X5U9fei1uBU?t=',
    startSeconds: 227,
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
    videoId: 'https://youtu.be/LgPvp-FWtK8?t=',
    startSeconds: 203,
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
    videoId: 'https://youtu.be/pYf1WIHhL98?t=',
    startSeconds: 93,
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
    videoId: 'https://youtu.be/dQegiS9RbIg?t=',
    startSeconds: 75,
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