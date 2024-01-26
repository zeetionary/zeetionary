import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// More sentences is NOT done

// articulate

// replace EnglishEntryarticulate - replace speakArticulate

// replace articulate - /ɑːˈtɪkjuleɪt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryarticulate extends StatelessWidget {
  // blank divider
  EnglishEntryarticulate({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakArticulate(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("articulate"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate716(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was unusually articulate for a ten-year-old."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate718(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All we could hear were loud sobs, but no articulate words."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate720(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She struggled to articulate her thoughts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate722(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cannot articulate her feelings very well."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate723(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She spoke slowly, articulating each word clearly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate726(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These courses are designed to articulate with university degrees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakArticulate736(String languageCode) async {
    // DOPSUM: CHANGE speakArticulate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was too drunk to articulate properly."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakArticulate(String languageCode) async {
  //   // DOPSUM: CHANGE speakArticulate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("articulate"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                                word: "articulate"), // Find /ɑːˈtɪkjuleɪt/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ɑːˈtɪkjuleɪt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakArticulate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ɑːrˈtɪkjuleɪt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakArticulate("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14,
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
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
کوردی: زمان‌ڕەوان، بەزمان، بەدەم‌وپل، زمان‌پاراو، باش‌دەربڕ، دەنکەدەنکە، ڕەوان، ڕوون، ڕۆشن، بە ڕوونی وتراو، ئاشکرا، دیار، (گیانەوەرناسی) جومگەدار، جومگەوەر

١. (ھاوەڵناو) کەسێک کە توانای ئەوەی ھەیە بۆچوونەکانی بە ڕوونی دەرببڕێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was unusually articulate for a ten-year-old."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەشێوەیەکی سەیر زمان‌ڕەوان بوو بۆ منداڵێکی ١٠ ساڵان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate716("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate716(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) قسەیەکی ڕوون"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All we could hear were loud sobs, but no articulate words."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو ئەوەی گوێمان لێ‌بوو نوزەنوزە بوو، بەبێ ھیچ قسەیەکی ڕوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate718("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate718(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) دەربڕینی بۆچوونەکانت بەڕوونی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She struggled to articulate her thoughts."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کێشەی ھەبوو لە دەربڕینی بیرۆکەکانی بەڕوونی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate720("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate720(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She cannot articulate her feelings very well."),
                              const ExampleSentenceKurdish(
                                  text: "ناتوانێت بەڕوونی ھەستەکانی دەرببڕێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate722("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate722(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) قسەکردن یان خوێندنەوە بە ڕوونی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was too drunk to articulate properly."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر سەرخۆش بوو تا بتوانێ بە ڕوونی قسەبکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate736("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate736(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بوون لە پەیوەندی لەگەڵ شتێکی تر بۆ ئەوەی پێکەوە یەک شت درووست بکەن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "These courses are designed to articulate with university degrees."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم کۆرسانە دیزاین کراون بۆ ئەوەی لەگەڵ بڕوانامەی زانکۆ ڕێکبکەون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakArticulate726("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakArticulate726(
                                        // REPLACE: articulate /ɑːrˈtɪkjuleɪt/
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
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
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
- Adjective: articulate
1. Having fluent speech characterized by clear expressive language
"articulate speech"; "an articulate orator"; "articulate beings"
 
2. Consisting of segments held together by joints (= articulated)

- Verb: articulate (derived forms: articulated, articulates, articulating)
1. Put into words or an expression (= give voice, formulate, word, phrase)
"He articulated his concerns to the board of trustees";
 
2. Say (a word, phrase or syllable) in a certain way (= pronounce, enounce, sound out, enunciate, say)
"She articulates French words in a funny way";
 
3. Unite by forming a joint or joints
"the ankle bone articulates with the leg bones to form the ankle bones"
 
4. Express or state clearly (= enunciate, vocalize, vocalise [Brit])
 
5. (carpentry) provide with a joint (= joint)
"the carpenter articulated two pieces of wood";
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
    videoId: 'w4jiLIzTAa0',
    startSeconds: 246,
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
    videoId: 'gWN5qvWGYQg',
    startSeconds: 44,
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
    videoId: 't6fIp7mMJ90',
    startSeconds: 191,
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
    videoId: 'kElsSj8hky4',
    startSeconds: 132,
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
    videoId: 'Pon4Zux5MaQ',
    startSeconds: 667,
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
    videoId: 'Unzc731iCUY',
    startSeconds: 3013,
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
    videoId: 'fTDF8n9quis',
    startSeconds: 438,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Sbp_EeBk-As',
    startSeconds: 1481,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'kBdfcR-8hEY',
    startSeconds: 1509,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hOUGNGWmN0k',
    startSeconds: 1382,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ba-HMvDn_vU',
    startSeconds: 1626,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'RJQPthD9rx8',
    startSeconds: 1094,
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



// end