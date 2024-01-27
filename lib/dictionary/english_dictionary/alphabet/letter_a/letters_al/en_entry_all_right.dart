import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryallright - replace speakAllright - replace all right - /ɔːl ˈraɪt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryallright extends StatelessWidget {
  EnglishEntryallright({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAllright(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("all right"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright124(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got to get up early, all right?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright123(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("‘Can you do it?’ ‘Oh, all right.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright235(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘I'm really sorry.’ ‘That's all right, don't worry.’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright23469(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All right class, turn to page 20."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright5241(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you getting along all right in your new job?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright3695(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I hope the children are all right."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright4577(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your work is all right but I'm sure you could do better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright87459(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got to get up early, all right?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllright1056(String languageCode) async {
    // DOPSUM: CHANGE speakAllright
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you sure it's all right for me to leave early?"); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllright(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllright
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all_right"); // DOPSUM: CHANGE TEXT
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
                                word:
                                    "all right (or alright)"), // Find /ɔːl ˈraɪt/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ɔːl ˈraɪt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAllright("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ɔːl ˈraɪt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAllright("en-US"),
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(), // 07
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
کوردی: قایلکەر، باش، چاک، ڕاست، دروست، بێ‌گومان، حەتمەن، تا ڕادەیێ باش، باشە، بەڵێ

١. (سەرسوڕمان) بۆ زانینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We've got to get up early, all right?"),
                              const ExampleSentenceKurdish(
                                  text: "دەبێت زوو لە خەو ھەستین، تێگەشتی؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright124("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright124(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (سەرسوڕمان) بۆ دەربڕینی ئەوەی کەسێک ڕازییە یان تێگەشتووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "‘Can you do it?’ ‘Oh, all right.’"),
                              const ExampleSentenceKurdish(
                                  text: "دەتوانی بیکەیت؟ ئاھ، بەڵێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright123("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright123(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (سەرسوڕمان) بۆ پەسەندکردنی سوپاس، یارمەتی، یان چاکە، یان کاتێک کەسێک داوای لێبووردن دەکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "‘I'm really sorry.’ ‘That's all right, don't worry.’"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "'زۆر داوای لێبووردن دەکەم'، 'کێشە نییە، نیگەران مەبە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright235("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright235(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (سەرسوڕمان) بۆ ڕاکێشانی سەرنج"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "All right class, turn to page 20."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆرباشە خوێندکاران، بیخەنە سەر پەڕەی ٢٠"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakAllright23469("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright23469(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) شتێک کە کێشەی نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Are you getting along all right in your new job?"),
                              const ExampleSentenceKurdish(
                                  text: "لە کارە تازەکەت بێ کێشە ھەڵدەکەیت؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright5241("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright5241(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) باش و سەلامەت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I hope the children are all right."),
                              const ExampleSentenceKurdish(
                                  text: "ھیوادارم منداڵەکان سەلامەت بن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright3695("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright3695(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) شتێک کە خراپ نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Your work is all right but I'm sure you could do better."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کارەکەت خراپ نییە بەڵام دڵنیام ئەتتوانی باشتر بیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright4577("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright4577(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵناو) شتێک کە ڕێگەپێدراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Are you sure it's all right for me to leave early?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دڵنیایت کە ئاسایی دەبێت زوو کار جێبھێڵم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAllright1056("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAllright1056(
                                        // REPLACE: all right /ɔːl ˈraɪt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
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
- Adverb: all right 
1. An expression of agreement normally occurring at the beginning of a sentence (= very well, fine, alright, OK, all righty [non-standard], righty-ho [Brit, informal])
 
2. Without doubt (used to reinforce an assertion) (= alright)
"it's expensive all right";
 
3. In a satisfactory or adequate manner (= okay, O.K., alright, OK)
"held up all right under pressure";

- Adjective: all right 
1. Being satisfactory or in satisfactory condition (= fine, o.k., OK, okay, hunky-dory [informal], cool [informal], alright, jake [N. Amer, Austral, NZ, informal])
"the passengers were shaken up but are all right"; "is everything all right?";
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
    videoId: '3YltYCrPZos',
    startSeconds: 59,
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
    videoId: 'rPe4yziWiOg',
    startSeconds: 129,
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
    videoId: 'a_TSR_v07m0',
    startSeconds: 605,
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
    videoId: '56POcqkKG1E',
    startSeconds: 34,
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
    videoId: 'ZE7TS2Rituo',
    startSeconds: 27,
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
    videoId: '9sRQQRiltrE',
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'e09xig209cQ',
    startSeconds: 356,
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
    videoId: 'QaZ93sibpk0',
    startSeconds: 306,
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
    videoId: 'HDntl7yzzVI',
    startSeconds: 295,
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
    videoId: '8HEfIJlcFbs',
    startSeconds: 435,
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
    videoId: '44HXLCsdIk8',
    startSeconds: 87,
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
    videoId: 'k3aAl92_VDE',
    startSeconds: 121,
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

// end


