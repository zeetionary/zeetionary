import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycapacity extends StatelessWidget {
  // blank divider
  EnglishEntrycapacity({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcapacity(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("capacity"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys1(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The theatre has a seating capacity of 2 000."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys2(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The hall was filled to capacity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys3(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has an enormous capacity for hard work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys4(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Limited resources are restricting our capacity for developing new products."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys5(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The mountain walk is well within the capacity of most fit people."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys6(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His capacity for learning languages astonished me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys7(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These questions are beyond the capacity of most students."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys8(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was acting in her capacity as manager."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys9(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In my capacity as president, I would like to thank Jack for his hard work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys10(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The factory is working at (full) capacity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys11(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The larger cars have bigger capacity engines."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys12(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapacitys1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcapacitys13(String languageCode) async {
    // DOPSUM: CHANGE speakcapacity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcapacitys1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "capacity"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈpæsəti/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcapacity("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈpæsəti/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcapacity("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: جێ‌بوونەوە، گرتن، ھەڵگرتن، بردن، گونجایشت، جێگا، جێ، فراوانی، ھێز، وزە، توانایی، توانین، توانست، خورتی، لێوەشاوەیی، لێھاتوویی، شیان، تواناداری، پۆست، پلەوپایە، تێگەیشتن

١. (ناو) ئەو ڕێژەیەی کە جێیدەبێتەوە لە شوێنێک یان لە ناو شتێکدا"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The theatre has a seating capacity of 2 000."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھۆڵی شانۆکە شوێنی دانیشتنی ٢٠٠٠ کەسی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "capacity", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys1("en-US"),
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
                                            "The hall was filled to capacity (= was completely full)."),
                                    ExampleSentenceKurdish(
                                        text: "ھۆڵەکە بە تەواوی پڕ بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) توانای تێگەشتن یان کردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has an enormous capacity for hard work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "توانایەکی زۆری بۆ کاری قورس ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys3("en-US"),
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
                                            "Limited resources are restricting our capacity for developing new products."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرچاوەی سنووردار توانامانی سنووردار کردووە لە گەشەپێدانی بەرھەمەکانمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys4("en-US"),
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
                                                    "The mountain walk is well within the capacity of most fit people."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕێگای گەشتن بە زۆرباش لە توانای زۆر کەسی تەندرووست دایە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcapacitys5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcapacitys5("en-US"),
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
                                                    "His capacity for learning languages astonished me."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "توانای لە فێربوونی زمانەکانی دیکەدا سەرسامی کردم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcapacitys6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcapacitys6("en-US"),
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
                                                    "These questions are beyond the capacity of most students."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم پرسیارانە لە دەرەوەی توانای زۆرینەی خوێندکارانن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcapacitys7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcapacitys7("en-US"),
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
                          const DefinitionKurdish(
                              text: "٣. (ناو) پێگە یان ئەرکی فەرمیی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was acting in her capacity as manager."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ئەرکەکەیدا وەک سەرپەرشتیار کاری دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys8("en-US"),
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
                                            "In my capacity as president, I would like to thank Jack for his hard work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە پێگەم وەک سەرۆک، دەمەوێت سوپاسی جاک بکەم بۆ کاری قورسی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو بڕەی کە کارگەیەک، ئامێرێک، ھتد بەرھەمی دێنێت، یان ھێز و توانای بزوێنەرێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The factory is working at (full) capacity."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کارگەکە بەوپەڕی توانای کاردەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys10("en-US"),
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
                                            "The larger cars have bigger capacity engines (= the engines are bigger and more powerful)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلە گەورەکان بزوێنەری توانا گەورەتریان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcapacitys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcapacitys11("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
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
- Noun: capacity (derived forms: capacities)
1. Capability to perform or produce
"among his gifts is his capacity for true altruism"; "limited runway capacity"; "a great capacity for growth"
 
2. The susceptibility of something to a particular treatment (= capability)
"the capacity of a metal to be fused";

3. The amount that can be contained (= content)
"the gas tank has a capacity of 12 gallons";
 
4. The maximum production possible
"the plant is working at 80 per cent capacity"
 
5. A specified function
"he was employed in the capacity of director"; "he should be retained in his present capacity at a higher salary"
 
6. (computing) the amount of information (in bytes) that can be stored on a disk drive
"the capacity of a hard disk drive is usually expressed in megabytes"
 
7. An electrical phenomenon whereby an electric charge is stored (= capacitance, electrical capacity)
 
8. The power to learn or retain knowledge; in law, the ability to understand the facts and significance of your behaviour (= mental ability)
 
9. Tolerance for alcohol
"he had drunk beyond his capacity"
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'TM49x1qFugA',
    startSeconds: 7,
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
    videoId: '5Rhw18MK5v4',
    startSeconds: 7,
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
    videoId: 'r5bb_9eZHPE',
    startSeconds: 69,
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
    videoId: 'g7ehYduP4KU',
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
    videoId: '3cKOYnTtzB0',
    startSeconds: 52,
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
    videoId: 'hGkGIKiFv5o',
    startSeconds: 330,
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
    videoId: 'iF3B80BZwcQ',
    startSeconds: 6,
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
    videoId: 'iD0oTrXtpgs',
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'jOxXu5el9xE',
    startSeconds: 143,
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'j-cLiO0AFDc',
    startSeconds: 68,
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

// end WORD_WEB
