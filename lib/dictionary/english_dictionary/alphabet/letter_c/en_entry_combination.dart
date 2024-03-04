import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycombination extends StatelessWidget {
  // blank divider
  EnglishEntrycombination({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcombination(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("combination"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations1(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The tragedy was due to a combination of factors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations2(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They recommend reducing expenditure, increasing taxes, or a combination of the two."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations3(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What an unusual combination of flavours!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations4(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The firm is working on a new product in combination with several overseas partners."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations5(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The materials can be used singly or in combination."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations6(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Combination of these methods allowed us to achieve highly consistent results."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations7(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can't remember the combination."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations8(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations9(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations10(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations11(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations12(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcombinations13(String languageCode) async {
    // DOPSUM: CHANGE speakcombination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcombinations1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "combination"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒmbɪˈneɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcombination("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkɑːmbɪˈneɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcombination("en-US"),
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
کوردی: لێکدان، پێکەوەبەستن، پێکەوەبەستراوی، یەک‌گرتوویی، هەڤدودانین، تێکەڵ‌کردن، یەک‌گرتن، پێکهێنان،	هاوبەندی،	تێکەڵە، ئاوێتە،	کۆمەڵە، گروپ، کۆمەڵ،	یەک‌خستن، تێک‌هەڵکێشان،	ڕەمز، قوفڵی ڕەمزی، قوفڵی ژمارەیی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دوو شت یان زیاتر کە پێکەوە بەند یان تێکەڵ کراون بۆ درووستکردنی یەک یەکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The tragedy was due to a combination of factors."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تراژیدیاکە بەهۆی ئاوێتەی کۆمەڵێک فاکتەرەوە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "combination", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations1("en-US"),
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
                                            "They recommend reducing expenditure, increasing taxes, or a combination of the two."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەمکردنەوەی خەرجی، زیادکردنی باج، یان تێکەڵ‌کردنێکی هەردووکیان پێشنیاز دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations2("en-US"),
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
                                            "What an unusual combination of flavours!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چی تێکەڵەیەکی دەگمەن لە تام و چێژ!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) یەکگرتن یان ئاوێتەبوون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The firm is working on a new product in combination with several overseas partners."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە لەسەر بەرهەمێکی تازە کار دەکات بە یەکگرتووی لەگەڵ هاوبەشە نێودەوڵەتییەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations4("en-US"),
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
                                            "The materials can be used singly or in combination."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مادەکان دەکرێت بە تەنهایی یان هاوبەشی بەکاربێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations5("en-US"),
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
                                            "Combination of these methods allowed us to achieve highly consistent results."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەکخستنی ئەم بیردۆزانە ڕێگەیان پێمان دا ئەنجامی تەواو جێگیر بەدەست بهێنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ژمارەیەک لە ژمارە و پیت کە بەکاردێت بۆ کردنەوەی قوفڵێکی ڕەمزی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can't remember the combination."),
                                    ExampleSentenceKurdish(
                                        text: "ڕەمزەکەم بیرنایەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcombinations7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcombinations7("en-US"),
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
- Noun: combination (Derived forms: combinations)
1. A collection of things that have been combined; an assemblage of separate parts or qualities
 
2. A coordinated sequence of chess moves
 
3. A sequence of numbers or letters that opens a combination lock
"he forgot the combination to the safe"
 
4. A group of people (often temporary) having a common purpose
"they were a winning combination"
 
5. An alliance of people or corporations or countries for a special purpose (formerly to achieve some antisocial end but now for general political or economic purposes)
 
6. The act of arranging elements into specified groups without regard to order
 
7. The act of combining things to form a new whole (= combining, compounding)
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
    videoId: 'https://youtu.be/2UvkcD0DxqY?t=',
    startSeconds: 77,
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
    videoId: 'https://youtu.be/MdvBwe1N-vg?t=',
    startSeconds: 31,
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
    videoId: 'https://youtu.be/79agcdtNsjY?t=',
    startSeconds: 29,
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
    videoId: 'https://youtu.be/rEdl2Uetpvo?t=',
    startSeconds: 102,
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
    videoId: 'https://youtu.be/nQ-Ua6NYago?t=',
    startSeconds: 579,
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
    videoId: 'https://youtu.be/vdBOcOtmWjw?t=',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/OgMFtn_iFZc?t=',
    startSeconds: 39,
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