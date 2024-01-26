import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// More sentences is NOT done

// Define the word "austerity" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace austerity - replace EnglishEntryausterity

// replace speakAusterity - /ɒˈsterəti/,  /ɔːˈsterəti/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryausterity extends StatelessWidget {
  // blank divider
  EnglishEntryausterity({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAusterity(String languageCode) async {
    // DOPSUM: CHANGE speakAusterity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("austerity"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAusterity518(String languageCode) async {
    // DOPSUM: CHANGE speakAusterity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "War was followed by many years of austerity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAusterity523(String languageCode) async {
    // DOPSUM: CHANGE speakAusterity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The house was decorated in an austere style, with white walls and minimal furniture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAusterity524(String languageCode) async {
    // DOPSUM: CHANGE speakAusterity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was noted for his austerity and authoritarianism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAusterity527(String languageCode) async {
    // DOPSUM: CHANGE speakAusterity
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The monks lived a life of austerity, with few possessions and simple meals."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAusterity(String languageCode) async {
  //   // DOPSUM: CHANGE speakAusterity
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("austerity"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAusterity(String languageCode) async {
  //   // DOPSUM: CHANGE speakAusterity
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("austerity"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAusterity(String languageCode) async {
  //   // DOPSUM: CHANGE speakAusterity
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("austerity"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAusterity(String languageCode) async {
  //   // DOPSUM: CHANGE speakAusterity
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("austerity"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(
                                word: "austerity"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ɒˈsterəti/,  /ɔːˈsterəti/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAusterity("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ɔːˈsterəti/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAusterity("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 9
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  // VideoIconForTab(), // 08
                  // VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
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
کوردی: لەخواترسی، پارێزگاری، سەختی، دژواری، چەتوونی، سەخت‌گیری، توندگری، توندگرتن، ڕووگرژی، ڕووتاڵی، سادەیی، نەڕازاوی، بێ‌زێڕوزیوی

١. (ناو) دۆخی ئابووری خراپ بەھۆی سیاسەتی حکومەتەوە لە کاتی جەنگدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "War was followed by many years of austerity."),
                              const ExampleSentenceKurdish(
                                  text: "جەنگ چەندین ساڵی نەبوونی بەدواداھات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAusterity518("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAusterity518(// REPLACE: austerity
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) سادە و ساکار لە دەرکەوتندا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The house was decorated in an austere style, with white walls and minimal furniture."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خانووەکە ستایلێکی بە ساکاری دیکۆرات کرابوو، بە دیواری سپی و کەمترین شتومەک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAusterity523("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAusterity523(// REPLACE: austerity
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) دەرکەوتن بەشێوەی توند و دژوار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was noted for his austerity and authoritarianism."),
                              const ExampleSentenceKurdish(
                                  text: "دەناسرا بۆ دژواری و سەرکوتکەری."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAusterity524("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAusterity524(// REPLACE: austerity
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) خۆگرتنەوە لە خۆشی و چێژی ژیان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The monks lived a life of austerity, with few possessions and simple meals."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕەبەنەکان ژیانێکی لەخواترسی دەژیان بە کەلوپەلی کەم و خواردنی سادە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAusterity527("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAusterity527(// REPLACE: austerity
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
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
- Noun: austerity (derived forms: austerities)
1. The trait of great self-denial (especially refraining from worldly pleasures) (= asceticism, nonindulgence)
"a new budget of unaccustomed austerity";
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
    videoId: 'S5vOKKMipSA',
    startSeconds: 2079,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'omcUaD8pxaY',
    startSeconds: 514,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'UZhW1k_m7OY',
    startSeconds: 3026,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'RKgyOOU8moc',
    startSeconds: 904,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '8EOxtY3M6Co',
    startSeconds: 172,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: '7oY5WNAgb90',
    startSeconds: 147,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'EJEi-pP9Rjs',
    startSeconds: 2550,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

