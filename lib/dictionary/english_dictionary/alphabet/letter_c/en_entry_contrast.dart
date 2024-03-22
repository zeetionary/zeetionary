import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycontrast extends StatelessWidget {
// blank divider
  EnglishEntrycontrast({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontrast(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contrast"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts1(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two cities make an interesting contrast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts2(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is an obvious contrast between the cultures of East and West."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts3(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In contrast, the south suffered very little hurricane damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts4(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The situation when we arrived was in marked contrast to the news reports."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts5(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The work you did today is quite a contrast to what you did last week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts6(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This busy social life was a complete contrast to his old quiet life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts7(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The artist's use of contrast is masterly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts8(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Use this button to adjust the contrast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts9(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The poem contrasts youth and age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts10(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If you contrast some of her early writing with her later work, you can see just how much she improved."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts11(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her actions contrasted sharply with her promises."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts12(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontrasts1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontrasts13(String languageCode) async {
    // DOPSUM: CHANGE speakcontrast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontrasts1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "contrast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntrɑːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontrast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntræst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontrast("en-US"),
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
کوردی: ھەڵسەنگاندن، پێک‌گرتن، بەراوردکردن،	دژایەتی، پۆزبەری، لێک‌نەھاتن، یەک‌نەگرتنەوە، جیاوازی، ناکۆکی،	پێچەوانە، ئاوەژوو،	شتێکی جیاواز
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) جیاوازی نێوان دوو یان زیاتر لە کەس یان شت کە دەتوانیت بە ڕوونی بیبینیت کاتێک بەراورد دەکرێن یان لەگەڵ یەکدی دادەنرێن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The two cities make an interesting contrast."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوو شارەکە بەراوردکردنێکی سەرنجڕاکێش درووست دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "contrast", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts1("en-US"),
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
                                            "There is an obvious contrast between the cultures of East and West."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جیاوازییەکی ئاشکرا ھەیە لە نێوان کەلتووری ڕۆژھەڵات و ڕۆژئاوادا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts2("en-US"),
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
                                            "In contrast, the south suffered very little hurricane damage."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە بەرامبەردا، بەشی باشوور زیانێکی زۆر کەمی بەھۆی زریانەکانەوە بەرکەوت.."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts3("en-US"),
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
                                            "The situation when we arrived was in marked contrast to the news reports."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە گەشتین دۆخەکە لە جیاوازییەکی زەقدا بوو لەگەڵ ئەوەی لە ھەواڵدا ڕەگەیەندرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەسێک یان شتێک کە تەواو جیاوازە لە یەکێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The work you did today is quite a contrast to (= very much better/worse than) what you did last week."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو کارەی ئەمڕۆ کردت تەواو جیاوازە لەوەی ھەفتەی ڕابردوو کردت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts5("en-US"),
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
                                            "This busy social life was a complete contrast to his old quiet life."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ژیانە کۆمەڵایەتییە جەنجاڵە ڕێک پێچەوانەی ژیانە ئارامە کۆنەکەیەتی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) جیاوازی ڕەنگی تاریک و ڕۆشن کە لە وێنە و تابلۆدا بەکاردێت بۆ درووستکردنی کاریگەری تایبەت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The artist's use of contrast is masterly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەکارھێنانی کۆنتراستی ھونەرمەندەکە شارەزایانەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕێژەی جیاوازی ڕەنگی تاریک و ڕۆشن لە وێنەیەکدا یان شاشەی تەلەفیزیۆنێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Use this button to adjust the contrast."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم دووگمەیە بەکاربھێنە بۆ چاککردنی کۆنتراستەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بەراوردکردنی دوو شت بۆ پیشاندانی جیاوازی نێوانیان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The poem contrasts youth and age."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھۆنراوەکە جیاوازی نێوان گەنجی و پیری دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts9("en-US"),
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
                                            "If you contrast some of her early writing with her later work, you can see just how much she improved."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەر ھەندێک لە نووسینەکانی سەرەتای بەراورد بکەیت لەگەڵ کارەکانی دواتریدا، دەتوانیت ببینیت چەندە باشتربووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دەرخستنی جیاوازی کە بەراوردکاری دەکرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                      text:
                                          "Her actions contrasted sharply with her promises.",
                                      note:
                                          "also: Her actions and her promises contrasted sharply.",
                                    ),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کردارەکانی تەواو پێچەوانەی بەڵێنەکانین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontrasts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontrasts11("en-US"),
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
- Noun: contrast (derived forms: contrasts)
1. The opposition or dissimilarity of things that are compared (= direct contrast)
"by contrast"; "in contrast to";
 
2. The act of distinguishing by comparing differences
 
3. A conceptual separation or distinction (= line, dividing line, demarcation)
"there is a narrow contrast between sanity and insanity";
 
4. The perceptual effect of the juxtaposition of very different colours
 
5. (photography) the range of optical density and tone on a photographic negative or print (or the extent to which adjacent areas on a television screen differ in brightness)

- Verb: contrast (derived forms: contrasts, contrasting, contrasted)
1. Put in opposition to show or emphasize differences
"The middle school teacher contrasted her best student's work with that of her weakest student"
 
2. To show differences when compared; be different (= counterpoint)
"the students contrast considerably in their artistic abilities";
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
    videoId: 'r5cqa9V0mUo',
    startSeconds: 1603,
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
    videoId: 'iKv4oc2zbeA',
    startSeconds: 853,
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
    videoId: 'rN9NzgryhMY',
    startSeconds: 1002,
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
    videoId: 'UnY4i59Dp0s',
    startSeconds: 108,
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
    videoId: 'jgfAimljT70',
    startSeconds: 455,
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
    videoId: 'IjWQqNKYa6A',
    startSeconds: 407,
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
    videoId: 'Dl4dSVf7kgY',
    startSeconds: 294,
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