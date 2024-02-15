import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychain extends StatelessWidget {
  // blank divider
  EnglishEntrychain({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchain(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chain"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains1(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She wore a gold chain around her neck."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains2(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The prisoners were kept in chains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains3(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let the dog off its chain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains4(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Volunteers formed a human chain to rescue precious items from the burning house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains5(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's important to make sure the chain of communication is not broken."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains6(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This hotel is part of a large chain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains7(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At last the country has freed itself from the chains of the authoritarian regime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains8(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doors were always locked and chained."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains9(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was beaten in his cell while in handcuffs and with his legs chained."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains10(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She chained her bicycle to the gate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains11(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchains1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains12(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchains1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchains13(String languageCode) async {
    // DOPSUM: CHANGE speakchain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchains1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "chain"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: chain/tʃeɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchain("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: chain/tʃeɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchain("en-US"),
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
                          const DefinitionKurdish(text: """
کوردی: زنجیر، زریزە، کۆت‌وبەند، کۆت‌وزنجیر، کۆت‌وپێوەند، زنجیرە، لیزگە، بەندەڵەبەند، ڕەچە، ڕست، ڕیزە، پاوەن، پێوەن، پێبەن، زنجیری ڕووپێوی
"""),
                          const DefinitionKurdish(text: "١. (ناو) زنجیر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She wore a gold chain around her neck."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زنجیرێکی ئاڵتوونی لە ملی بەستبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "chain", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains1("en-US"),
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
                                            "The prisoners were kept in chains (= with chains around their arms and legs, to prevent them from escaping)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زیندانییەکان بە زنجیر کۆتکرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains2("en-US"),
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
                                        text: "Let the dog off its chain."),
                                    ExampleSentenceKurdish(
                                        text: "زنجیرەکە لە سەگەکە بکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ژمارەیەک شت یان کەس کە پێکەوە بەندن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Volunteers formed a human chain (= line of people) to rescue precious items from the burning house."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆبەخشان ڕیزێک لە مرۆڤیان درووستکردبوو بۆ ڕزگارکردنی کەرەستەی بەھادار لە ماڵە سووتاوەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains4("en-US"),
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
                                            "It's important to make sure the chain of communication is not broken."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گرنگە دڵنیایی بکرێتەوە کە ھێڵی پەیوەندی ناپچڕێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ژمارەیەک شت، بۆ نموونە سوپەرمارکێت یان ھوتێل، کە لەلایەن یەک کۆمپانیاوە خاوەنداری دەکرێن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This hotel is part of a large chain."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ھوتێلە بەشێکە لە زنجیرەیەکی گەورە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شتێک کە ئازادی کەسێک سنووردار دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "At last the country has freed itself from the chains of the authoritarian regime."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کۆتاییدا وڵاتەکە خۆی ڕزگارکرد لە کۆتوبەندی ڕژێمە سەرکوتکەرەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) بەستنەوەی شتێک/کەسێک بە زنجیر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The doors were always locked and chained."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرگاکان ھەموو کات قفڵ و زنجیر کرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains8("en-US"),
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
                                            "He was beaten in his cell while in handcuffs and with his legs chained."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە بەندیخانەکەیدا لێیدرا لەکاتێکدا دەستبەستراو و لاقەکانی زنجیرکرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains9("en-US"),
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
                                            "She chained her bicycle to the gate."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پاسکیلەکەیی بەست بە دەروازەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchains10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchains10("en-US"),
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
                        YoutubeEmbeddedeight(), //
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
- Noun: chain (derived forms: chains)
1. A series of things depending on each other as if linked together (= concatenation)
"the chain of command";

2. (chemistry) a series of linked atoms (generally in an organic molecule) (= chemical chain)
 
3. A series of (usually metal) rings or links fitted into one another to make a flexible ligament
 
4. (business) a number of similar establishments (stores, restaurants, banks, hotels or theatres) under one ownership
 
5. Anything that acts as a restraint
 
6. A unit of length
 
7. A series of hills or mountains (= range, mountain range, range of mountains, mountain chain, chain of mountains)
"the valley was between two chains of hills";
 
8. A linked or connected series of objects
"a chain of daisies"
 
9. A necklace made by stringing objects together (= string, strand)
"a chain of beads";

- Verb: chain (derived forms: chained, chaining, chains)
1. Connect or arrange into a chain by linking
 
2. Fasten or secure with chains
"Chain the chairs together"

- Noun: Chain 
1. British biochemist (born in Germany) who isolated and purified penicillin, which had been discovered in 1928 by Sir Alexander Fleming (1906-1979) (= Ernst Boris Chain, Sir Ernst Boris Chain)
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
    videoId: 'uhdu_vMe9Pg',
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
    videoId: '9pT04M5iGH8',
    startSeconds: 60,
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
    videoId: '3mf6qRY0Syo',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '88tDcVvS7mU',
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'nGvfeoJJnVE',
    startSeconds: 16,
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 438,
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
    videoId: 'pFEB0chiuJA',
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'W0zW71lW62E',
    startSeconds: 293,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'P4tDxQby99A',
    startSeconds: 328,
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
