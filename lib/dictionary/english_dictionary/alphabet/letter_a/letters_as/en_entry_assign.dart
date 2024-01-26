import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// More sentences is NOT done

// Define the word "assign" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace EnglishEntryassign - replace speakAssign

// replace assign - /əˈsaɪn/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryassign extends StatelessWidget {
  // blank divider
  EnglishEntryassign({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAssign(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("assign"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign659(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two large classrooms have been assigned to us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign700(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The teacher assigned each of the children a different task."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign703(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They've assigned their best man to the job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign706(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All the team were assigned to Poland."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign709(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The painting cannot be assigned an exact date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAssign711(String languageCode) async {
    // DOPSUM: CHANGE speakAssign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The agreement assigns copyright to the publisher."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAssign(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssign
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assign"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAssign(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssign
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("assign"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "assign"), // Find /əˈsaɪn/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈsaɪn/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAssign("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈsaɪn/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAssign("en-US"),
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
کوردی: پێدان، دانان، وەپاڵ دان، پێوەنان

١. (کردار) پێدانی شتێک بە کەسێک بۆ بەکارھێنان، یان پێدانی کار یان بەرپرسیاریەتی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The two large classrooms have been assigned to us."),
                              const ExampleSentenceKurdish(
                                  text: "دوو پۆلی گەورەمان پێدراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign659("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign659(
                                        // REPLACE: assign /əˈsaɪn/
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
                                      "The teacher assigned each of the children a different task."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "مامۆستاکە ئەرکی جیاوازی دا بە ھەر قوتابییەک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign700("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign700(
                                        // REPLACE: assign /əˈsaɪn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ڕاسپاردنی کەسێک بۆ کارێک یان بەرپرسیاریەتییەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They've assigned their best man to the job."),
                              const ExampleSentenceKurdish(
                                  text: "باشترین کەسیان بۆ کارەکە ڕاسپاردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign700("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign700(
                                        // REPLACE: assign /əˈsaɪn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ناردنی کەسێک بۆ کارکردن لەژێر سەرپەرشتی کەسێک، گرووپێک، یان شوێنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All the team were assigned to Poland."),
                              const ExampleSentenceKurdish(
                                  text: "تەواوی تیمەکە بۆ پۆڵەندا نێردران."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign706("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign706(
                                        // REPLACE: assign /əˈsaɪn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) دیاریکردنی نرخ، بەرپرسیاریەتی، کات، یان شوێنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The painting cannot be assigned an exact date."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تابلۆکە ناتوانرێت مێژوویەکی تەواوی بۆ دیاری‌بکرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign709("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign709(
                                        // REPLACE: assign /əˈsaɪn/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وتنی ئەوەی مافەکانت لە ئێستادا بۆ کەسێکی تر دەگەڕێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The agreement assigns copyright to the publisher."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێککەوتنەکە مافی کۆپیڕایت دەدات بە دەزگای بڵاوکار."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAssign711("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAssign711(
                                        // REPLACE: assign /əˈsaɪn/
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
- Verb: assign (derived forms: assigned, assigning, assigns)
1. Allocate a task to a person (= delegate, designate, depute)
 
2. Give out (= allot, portion)
"We were assigned new uniforms";
 
3. Associate ownership or authorship with (= impute, ascribe, attribute)
"People assign great cleverness to cats";
 
4. Select something or someone for a specific purpose (= specify, set apart)
"The teacher assigned him to lead his classmates in the exercise";
 
5. Attribute or give (= put)
 
6. Make undue claims to having (= arrogate)
 
7. Transfer one's right to
 
8. Decide as to where something belongs in a scheme (= attribute)
"The biologist assigned the mushroom to the proper class";

- Noun: assign (derived forms: assigns)
1. (law) the party to whom something is assigned (e.g., someone to whom a right or property is legally transferred) (= assignee)
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
    videoId: 'CaaJyRvvaq8',
    startSeconds: 457,
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
    videoId: 'Js2UoMSumx4',
    startSeconds: 652,
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
    videoId: '0ST4_hmop9Y',
    startSeconds: 1189,
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
    videoId: 'PmlRbfSavbI',
    startSeconds: 112,
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
    videoId: '9GR3XSuInYE',
    startSeconds: 400,
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
    videoId: 'RXXMJAU6vY8',
    startSeconds: 873,
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
    videoId: 'R1XDuS8680M',
    startSeconds: 300,
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
    videoId: 'fU-8Rg4CgeI',
    startSeconds: 624,
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
    videoId: 'XeSu9fBJ2sI',
    startSeconds: 181,
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
    videoId: 'w3XS900kg1U',
    startSeconds: 677,
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
    videoId: 'ih8ex84QoH4',
    startSeconds: 771,
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
    videoId: 'LQdjmGimh04',
    startSeconds: 72,
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

// end // TODO Implement this library.