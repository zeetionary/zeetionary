import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybush extends StatelessWidget {
// blank divider
  EnglishEntrybush({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbush(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bush"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs1(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was hiding in the bushes at the side of the lane."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs2(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby was born with a bush of black hair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs3(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They went out into the bush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs4(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Children are taught from an early age how to survive in the bush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs5(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs6(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs7(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs8(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs9(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs10(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs11(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs12(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbushs13(String languageCode) async {
    // DOPSUM: CHANGE speakbush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbushs1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bush"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bʊʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbush("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bʊʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbush("en-US"),
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
کوردی: پنچ، بنج، بنەگیا، چڵو، کان، دەڤی، دەوەن(د)، داریلە، دارۆکە، شخەڵ، شیخەڵ، تووکەبەری ژن، (مێژوویی) چەپکەلاولاوە (نیشانەی مەی‌فرۆشی)، (وەک ئاوەڵناو) سەرەتایی، بێ‌شارستانیەت، کێوی

١. (ناو) ڕووەکێک کە بە ئەستووری گەشە دەکات و چەند قەدێکی سەختی ھەیە کە لە ڕەگەکەیەوە دەردەچن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was hiding in the bushes at the side of the lane."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە قەراغ ڕێگاکەدا لەناو دەوەنەکەدا خۆی حەشاردابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "bush", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbushs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbushs1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕێژەیەکی زۆر لە موو، بەتایبەت مووی بەشی بەرگەدەی ژنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The baby was born with a bush of black hair."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکە لەدایکبوو بە قژێکی زۆری ڕەشەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbushs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbushs2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ناوچەیەک کە پاکنەکراوەتوە، بۆ نموونە لە دار"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They went out into the bush."),
                                    ExampleSentenceKurdish(
                                        text: "چوون بۆ دەشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbushs3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbushs3("en-US"),
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
                                            "Children are taught from an early age how to survive in the bush."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵان لە تەمەنێکی گەنجدا فێردەکرێن چۆن لە دەشتدا دەربازبن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbushs4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbushs4("en-US"),
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
                        YoutubeEmbeddedten(),
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
- Noun: bush (derived forms: bushes)
1. A low woody perennial plant usually having several major stems (= shrub)
 
2. A large wilderness area
 
3. Dense vegetation consisting of stunted trees or bushes (= scrub, chaparral [N. Amer])
 
4. [vulgar] Hair growing in the pubic area (= pubic hair, crotch hair)
 
5. [Cdn] An area planted with trees for timber or fuel (= woodlot [N. Amer], wood lot [N. Amer], plantation)

- Verb: bush (derived forms: bushed, bushes, bushing)
1. Provide with a bushing

- Adjective: bush 
1. Not of the highest quality or sophistication (= bush-league)

- Noun: Bush 
1. Vice president under Reagan and 41st President of the United States (born in 1924) (- George Bush, George H.W. Bush, George H. W. Bush, George Herbert Walker Bush, President Bush)
 
2. United States electrical engineer who designed an early analogue computer and who led the scientific program of the United States during World War II (1890-1974) (= Vannevar Bush)
 
3. 43rd President of the United States; son of George Herbert Walker Bush (born in 1946) (= George Bush, George W. Bush, George Walker Bush, President Bush, President George W. Bush, Dubyuh, Dubya)
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
    videoId: '47MNn4bsmSw',
    startSeconds: 6675,
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
    videoId: 'uY3fIry2tOE',
    startSeconds: 1317,
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
    videoId: 'xQ1X4N49lnI',
    startSeconds: 919,
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
    videoId: 'l3NS09izxYE',
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
    videoId: 'H6A-wlwEMow',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'uxIH0W4S6LY',
    startSeconds: 710,
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
    videoId: 'IvtJP1yhvdg',
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'L3Gd74OjIsY',
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '3MAxibJxmnU',
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'EuWXm5VN8mI',
    startSeconds: 14,
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
