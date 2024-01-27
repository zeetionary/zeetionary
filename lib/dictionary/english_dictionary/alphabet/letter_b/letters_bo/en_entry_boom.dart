import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "boom" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace boom - /buːm/

enum TtsState { playing }

class EnglishEntryboom extends StatelessWidget {
// blank divider
  EnglishEntryboom({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboom(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boom"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms1(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Living standards improved rapidly during the post-war boom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms2(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This year has seen a boom in book sales."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms3(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The only way to satisfy the golf boom was to build more courses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms4(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sailors adjusted the boom to catch the wind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms5(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The deafening boom of the explosion was heard up to 10 kilometres away."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms6(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A crash of thunder boomed so loudly that the floor shook."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms7(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A voice boomed out from the darkness."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms8(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By the 1980s, the computer industry was booming."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbooms9(String languageCode) async {
    // DOPSUM: CHANGE speakboom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbooms99"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "boom"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /buːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboom("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /buːm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboom("en-US"),
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
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 10
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  // VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: زۆربوونی کت‌وپڕ، بووژانەوە، تۆقینەوە، سەروبەند یان قۆناخی گەشە(کردن)، ھەڵدان، ئاوەدانی، گەشەونەشە، زرمە، زرم، گرمە، نەڕە، قۆڕە، قیڕە

١. (ناو) زیادبوونێکی لەناکاوی زیادبوونی چالاکیی بازرگانی و ئابووری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Living standards improved rapidly during the post-war boom."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ستانداردی ژیان گەشەیکرد لە دەمی بووژانەوەی دوای جەنگ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This year has seen a boom in book sales."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمساڵ فرۆشتنی کتێب گەشەی بەخۆوە دیوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ماوەیەک کە وەرزشێک یان جۆرە میوزیکێک زۆر بەناوبانگ دەبێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The only way to satisfy the golf boom was to build more courses."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەنھا ڕێگە بۆ تێرکردنی حەز بە گۆڵف درووستکردنی یاریگای تازەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ستوونێکی درێژ کە بەشی خوارەوەی چارۆکەیەکی پێوە بەستراوە و بەکاردێت بۆ جوڵاندنی شوێنی چارۆکەکە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Sailors adjusted the boom to catch the wind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەیاوانان کۆڵەکەسووڕاوەکەیان ڕێکخست بۆ ئەوەی بایەکە گلبداتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) دەنگێکی بەرز"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The deafening boom of the explosion was heard up to 10 kilometres away."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەنگی گوێ‌دڕی تەقینەوەکە بیسترا لە دووری ١٠ کیلۆمەترەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) درووستکردنی دەنگێکی بەرز"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A crash of thunder boomed so loudly that the floor shook."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لێدانی چەخماخە ھێندە دەنگی بەرز بوو زەوییەکە دەلەرزییەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) وتنی شتێک بە دەنگی بەرز"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A voice boomed out from the darkness."),
                              const ExampleSentenceKurdish(
                                  text: "دەنگێک لە تاریکییەکەوە ھات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) ھەبوونی بووژانەوە و گەشەی لەناکاو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "By the 1980s, the computer industry was booming."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە دەستپێکی ١٩٨٠ کانەوە پیشەسازی کۆمپیوتەر دەگەشایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbooms8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbooms8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
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
- Noun: boom (derived forms: booms, booming, boomed)
1. A deep prolonged loud noise (= roar, roaring, thunder)
 
2. A state of economic prosperity
 
3. A sudden happening that brings good fortune (as a sudden opportunity to make money) (= bonanza, gold rush, gravy [informal], godsend, manna from heaven, windfall, bunce [Brit, informal])
"the demand for testing has created a boom for those unregulated laboratories where boxes of specimen jars are processed like an assembly line";
 
4. A pole carrying an overhead microphone projected over a film or tv set (= microphone boom)
 
5. Any of various more-or-less horizontal spars or poles used to extend the foot of a sail or for handling cargo or in mooring
 
6. A floating barrier used to obstruct the entry of a harbour, contain oil spills, etc.

- Verb: boom (derived forms: booms, booming, boomed)
1. Make a resonant sound, like artillery (= din)
"His deep voice boomed through the hall";
 
2. Hit with great force (= smash, nail, blast)
"He boomed a 3-run homer";
 
3. Be the case that thunder is being heard (= thunder)
"Whenever it booms, my dog crawls under the bed";
 
4. Make a deep hollow sound (= boom out)
"Her voice booms out the words of the song";
 
5. Grow vigorously (= thrive, flourish, expand)
"business is booming";
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 57,
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
    videoId: '6SYT0upjNac',
    startSeconds: 1074,
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
    videoId: '8DNv8HEGLsQ',
    startSeconds: 3843,
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
    videoId: 'sjDRzahgrTI',
    startSeconds: 138,
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
    videoId: 'cYzVhtiRkcU',
    startSeconds: 664,
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
    videoId: 'RHj-PIyyaDY',
    startSeconds: 250,
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
    videoId: 'i--mhQWTwMs',
    startSeconds: 1277,
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
    videoId: 'cDhWr6s4Fb4',
    startSeconds: 357,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

// more than one video, only first autoplay

// end boom
