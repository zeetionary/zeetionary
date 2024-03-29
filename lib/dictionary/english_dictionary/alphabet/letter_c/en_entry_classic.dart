import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclassic extends StatelessWidget {
  // blank divider
  EnglishEntryclassic({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclassic(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("classic"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics1(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This classic novel was first published in 1938."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics2(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I grew up watching classic movies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics3(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This was a classic case of what not to do."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics4(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She displayed the classic symptoms of depression."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics5(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was wearing a classic little black dress."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics6(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's not going to help? Oh, that's classic!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics7(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Then she fell over backwards into the flowerbed - it was absolutely classic!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics8(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The song became an instant classic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics9(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The novel may become a modern classic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics10(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The second goal was an absolute classic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics11(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The professor's reply was a classic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics12(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Classics don't lose their style."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclassics13(String languageCode) async {
    // DOPSUM: CHANGE speakclassic
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclassics1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "classic"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈklæsɪk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclassic("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈklæsɪk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclassic("en-US"),
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
کوردی: کلاسیک،	زۆرباش، پەسندکراو، ھەرەچاک،	بەرز، دیار، بەرجەستە، نموونە،	ناسراو، ناودار،	کۆن، لەمێژینە، کەونار، قەدیمی،	نەریتی، ڕەسەن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) دانراو وەک یەکێک لە باشترین جۆرەکانی ھاوشێوەی خۆی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This classic novel was first published in 1938."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ڕۆمانە مێژووییە یەکەم جار لە ١٩٣٨ بڵاوکرایەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "classic", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics1("en-US"),
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
                                            "I grew up watching classic movies."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەورەبووم بە تەماشاکردنی فیلمە کلاسیکەکانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بە ھەموو ئەو خاسیەتانەی کە لێی چاوەڕێ دەکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This was a classic case of what not to do."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە کەیسێکی نموونەیی بوو ئەوەی کە نابێت بیکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics3("en-US"),
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
                                            "She displayed the classic symptoms of depression."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیشانە ھەمیشەییەکانی بێزاری تێدابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) جوان بەڵام سادە، بەشێوەیەک کە کاریگەر نەبوو بە گۆڕانکارییەکانی سەردەم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She was wearing a classic little black dress."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جلێکی بچووکی ڕەشی کلاسیکی پۆشیبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بە شتێک دەوترێت کە پێکەنیناوییە، بێزارکەرە، یان خراپە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She's not going to help? Oh, that's classic!"),
                                    ExampleSentenceKurdish(
                                        text: "یارمەتی نادا؟ ئۆھ، خراپە!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics6("en-US"),
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
                                            "Then she fell over backwards into the flowerbed - it was absolutely classic!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دواتر بە پشتدا کەوتە ناو باخچەکەدا، تەواو پێکەنیناوی بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) فیلمێک، گۆرانییەک، یان ڕۆمانێک کە زۆر باش ناسراوە و بە یەکێک لە باشترینەکان دادەنرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The song became an instant classic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گۆرانییەکە ڕاستەوخۆ بوو بە کلاسیکێک."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics8("en-US"),
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
                                            "The novel may become a modern classic."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕۆمانەکە ڕەنگە ببێت بە کلاسیکێکی سەردەمییانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شتێک کە نموونەیەکی باڵای ھاوشێوەی خۆیەتی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The second goal was an absolute classic."),
                                    ExampleSentenceKurdish(
                                        text: "گۆڵی دووەم نایاب بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics10("en-US"),
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
                                            "The professor's reply was a classic."),
                                    ExampleSentenceKurdish(
                                        text: "وەڵامی پڕۆفیسۆرەکە ناوازە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شتێک، بۆ نموونە جلوبەرگ یان ئۆتۆمبێل، کە جوانە و کاریگەری گۆڕانکاری سەردەمی پێوە دیار نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Classics don't lose their style."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کلاسیکەکان ستایلی خۆیان ون ناکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclassics12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclassics12("en-US"),
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
- Adjective: classic 
1. Considered of the highest quality and lasting significance or worth
"a classic car"; "'War and Peace' is a classic novel"
 
2. Of a well-known type; remarkably typical
"the classic struggle between good and evil"; "I woke up with all the classic symptoms of the flu"; "she made the classic mistake of choosing style over substance"
 
3. Well-known and long-established in form or style (= classical)
"classic double-breasted suit"; "the classic struggle between good and evil";
 
4. Of or relating to the first significant period of a civilization, culture, area of study, etc. (= classical)
"classic Chinese pottery";

- Noun: classic (derived forms: classics)
1. A creation of the highest excellence
 
2. An artist who has created classic works
 
3. A major, long-standing sporting event
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
    videoId: '7HMzq6Mi-Is',
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
    videoId: 'cVLpdzhcU0g',
    startSeconds: 700,
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
    videoId: 'RrV9nC0EYUQ',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'pwYUEQT0OkM',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PW8Rt6JFSiY',
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
    videoId: 'A_8sj7Yb9ZQ',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Se3RKA9HrzI',
    startSeconds: 17,
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
    videoId: 'VwPGtn9qJZ4',
    startSeconds: 109,
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