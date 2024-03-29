import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycomplex extends StatelessWidget {
// blank divider
  EnglishEntrycomplex({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomplex(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("complex"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs1(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists need a better understanding of the complex interactions that cause hurricanes to intensify."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs2(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We live in an increasingly complex world."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs3(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the complex sentence, ‘I'd like to go to the beach, if it's warm enough’, ‘I'd like to go to the beach’ is the main clause, and ‘if it's warm enough’ is the subordinate clause."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs4(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They live in a large apartment complex."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs5(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is just one of a whole complex of issues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs6(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He suffers from a guilt complex."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs7(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has a complex about her big ears."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs8(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My parents never spoke about my height because they didn't want me to grow up with a complex."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs9(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplexs900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs10(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplexs1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs11(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplexs1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs12(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplexs1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcomplexs13(String languageCode) async {
    // DOPSUM: CHANGE speakcomplex
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcomplexs1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "complex"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmpleks/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomplex("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /kəmˈpleks/,  /ˈkɑːmpleks/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomplex("en-US"),
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
کوردی: ئاڵۆز، پێچەڵاوپێچ، سەخت، گرفت، دژوار، ئاریش، ئاسێ،	تێکەڵاو، لێکدراو (ڕستە، ڕێزمان)،	(بیرکاری) ئاوێتە، کۆخانوو، کۆمەڵەخانووی لێکچوو
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) ئاڵۆز، پێکھاتوو لە ژمارەیەک بەش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Scientists need a better understanding of the complex interactions that cause hurricanes to intensify."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زاناکان پێویستییان بە تێگەشتنی زیاتر ھەیە بۆ تێگەشتن لەو کارلێکە ئاڵۆزانەی کە دەبنە ھۆی بەھێزبوونی گەردەلوولەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "complex", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs1("en-US"),
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
                                            "We live in an increasingly complex world."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە جیھانێکی بەردەوام ئاڵۆزتربوودا دەژین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) ڕستەیەک یان وشەیەک کە لە بەشێکی سەرەکی و بەشێکی دیکە پێکدێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In the complex sentence, ‘I'd like to go to the beach, if it's warm enough’, ‘I'd like to go to the beach’ is the main clause, and ‘if it's warm enough’ is the subordinate clause."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ڕستەی 'I'd like to go to the beach, if it's warm enough'، بەشی 'I'd like to go to the beach' شاڕستەیە، و 'if it's warm enough' پاڕستەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کۆمەڵە بینایەکی ھاوشێوە لە ھەمان شوێندا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They live in a large apartment complex."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کۆخانوویەکی دەستەژووریدا دەژین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کۆمەڵە شتێک کە گرێدراون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This is just one of a whole complex of issues."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە تەنھا یەکێکە لە کۆمەڵە کێشەیەک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵە باوەڕ و ترسێک کە دەکرێت ببێتە ھۆکاری دڵتەنگی یان نەخۆشی دەروونی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He suffers from a guilt complex."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەدەست گرێیەکی تاوانەوە دەناڵێنێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ھەستی نیگەرانی یان شەرمەزاری سەبارەت بە شتێک کە گرنگ نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has a complex about her big ears."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیگەرانییەکی ھەیە سەبارەت بە گوێیە گەورەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs7("en-US"),
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
                                            "My parents never spoke about my height because they didn't want me to grow up with a complex."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دایک و باوکم ھەرگیز سەبارەت بە باڵام قسەیان نەدەکرد چونکە نەیان دەویست شەرمەزاربم پێی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcomplexs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcomplexs8("en-US"),
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
- Adjective: complex 
1. Complicated in structure; consisting of interconnected parts
"a complex set of variations based on a simple folk melody"; "a complex mass of diverse laws and customs"
 
2. Difficult to analyse or understand (= complicated)
"he's more complex than he seems on the surface";
 
3. (mathematics) having values of the form a + bi, where a and b are real numbers and i is the square root of -1; not purely real

- Noun: complex 
1. A conceptual whole made up of complicated and related parts (= composite)
"the complex of shopping malls, houses, and roads created a new town";
 
2. A compound described in terms of the central atom to which other atoms are bound or coordinated (= coordination compound)
 
3. (psychoanalysis) a combination of emotions and impulses that have been rejected from awareness but still influence a person's behaviour
 
4. A whole structure (as a building) made up of interconnected or related structures (= building complex)

- Verb: complex (derived forms: complexing, complexes, complexed)
1. (chemistry) form a complex with another substance
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
    videoId: '8HEfIJlcFbs',
    startSeconds: 89,
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
    videoId: '-L7o6HtX8Vg',
    startSeconds: 84,
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
    videoId: '0ST4_hmop9Y',
    startSeconds: 1109,
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
    videoId: 'Pl8AJAt3TDg',
    startSeconds: 298,
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
    videoId: 'b1reY72ktEc',
    startSeconds: 329,
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
    videoId: 'PmlRbfSavbI',
    startSeconds: 96,
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
    videoId: 'X3TAROotFfM',
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

// end WORD_WEB