import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclap extends StatelessWidget {
  // blank divider
  EnglishEntryclap({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclap(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clap"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps1(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After she performed, Ariana stood up and clapped for her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps2(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone clapped us when we went up to get our prize."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps3(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Everyone clapped to the music."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps4(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She clapped her hands in delight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps5(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He clapped his daughter on the back and told her how proud of her he was."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps6(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the old days they would have clapped you in jail for that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps7(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She clapped her hand over her mouth to try to stop herself from laughing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps8(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "With a clap of his hands he ordered more food."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps9(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Let's give a big clap for our winning contestant!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps10(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a clap of thunder and then it started to pour with rain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps11(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaps1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps12(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaps1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaps13(String languageCode) async {
    // DOPSUM: CHANGE speakclap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaps1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "clap"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klæp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclap("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klæp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclap("en-US"),
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
کوردی: چەپڵە(لێدان)، چەپک(لێدان)،	شریخە، گرمە، گرم‌وهۆڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) چەپڵە لێدان بۆ دەربڕینی ئەوەی ڕازیت بە شتێک یان چێژت لە شتێک دیوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "After she performed, Ariana stood up and clapped for her."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەدوای ئەوەی نمایشەکەی پێشکەشکرد، ئاریانا هەستایە سەرپێ و چەپڵەی بۆ لێدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "clap", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps1("en-US"),
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
                                            "Everyone clapped us when we went up to get our prize."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەموان چەپڵەیان بؤ لێداین کە چووینە سەرەوە بۆ وەرگرتنی خەڵاتەکەمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) چەپڵە لێدان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Everyone clapped to the music."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەموان چەپڵەیان بۆ میوزیکەکە لێدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps3("en-US"),
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
                                            "She clapped her hands in delight."),
                                    ExampleSentenceKurdish(
                                        text: "لە خۆشیدا چەپڵەی لێدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) لێدان لە کەسێک بە دەستی کراوەت بە هێواشی و شێوەیەکی هاورێیانە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He clapped his daughter on the back and told her how proud of her he was."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دای بە پشتی کچەکەیدا و پێی گوت چەندە شانازی پێوە دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دانانی شتێک بە خێرایی و لەناکاو لە شوێنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "In the old days they would have clapped you in jail for that."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە سەردەمانی کۆندا فڕێیان دەدایتە زیندان بۆ ئەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps6("en-US"),
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
                                            "She clapped her hand over her mouth to try to stop herself from laughing."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەستی نا بە دەمییەوە بۆ ئەوەی هەوڵ بدات خۆی بوەستێنێت لە پێکەنین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) چەپڵەلێدان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "With a clap of his hands he ordered more food."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە چەپڵەلێدانێک داوای خواردنی زیاتری کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps8("en-US"),
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
                                            "Let's give a big clap for our winning contestant!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "با چەپڵەیەک لێبدەین بۆ ڕکابەرە براوەکەمان!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) دەنگێکی بەهێز و لەناکاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There was a clap of thunder and then it started to pour with rain."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەنگێکی هەورە چەخماخە بوو و دواتر باران خوڕەمی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaps10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaps10("en-US"),
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
- Noun: clap (Derived forms: claps)
1. A sudden very loud noise (= bang, eruption, blast, bam)
 
2. A common venereal disease caused by the bacterium Neisseria gonorrhoeae; symptoms are painful urination and pain around the urethra (= gonorrhea [N. Amer], gonorrhoea [Brit, Cdn])
 
3. A sharp abrupt noise as if two objects hit together; may be repeated (= clack)

- Verb: clap (Derived forms: claps, clapping, clapped)
1. Put quickly or forcibly
"The judge clapped him in jail"
 
2. Cause to strike the air in flight
"The big bird clapped its wings"
 
3. Clap one's hands or shout after performances to indicate approval (= applaud, spat, acclaim)
 
4. Clap one's hands together (= spat)
"The children were clapping to the music";
 
5. Strike the air in flight
"the wings of the birds clapped loudly"
 
6. Strike with the flat of the hand; usually in a friendly way, as in encouragement or greeting
 
7. Strike together so as to produce a sharp percussive noise
"clap two boards together"
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
    videoId: 'https://youtu.be/yDONdPpRmtQ?t=',
    startSeconds: 19,
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
    videoId: 'https://youtu.be/ko7oA65y3XE?t=',
    startSeconds: 10,
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
    videoId: 'https://youtu.be/Ak-kwWMKYsE?t=',
    startSeconds: 13,
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
    videoId: 'https://youtu.be/OrnpSe4OChM?t=',
    startSeconds: 86,
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
    videoId: 'https://youtu.be/hTqtGJwsJVE?t=',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/t4uOxnokGnQ?t=',
    startSeconds: 120,
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
    videoId: 'https://youtu.be/gDxBN1y5C8o?t=',
    startSeconds: 207,
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
    videoId: 'https://youtu.be/CtbcRFSzRrk?t=',
    startSeconds: 187,
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