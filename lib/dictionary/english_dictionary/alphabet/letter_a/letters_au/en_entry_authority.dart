import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// More sentences is NOT done

// Define the word "authority" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace authority - replace EnglishEntryauthority

// replace speakAuthority - /ɔːˈθɒrəti/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryauthority extends StatelessWidget {
  // blank divider
  EnglishEntryauthority({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAuthority(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority804(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She now has authority over the people who used to be her bosses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority805(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Central government has extensive authority over teachers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority808(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some experts think the agency may have exceeded its authority."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority809(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He took the car without authority."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority811(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have to report this to the authorities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority814(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He spoke with authority on the topic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAuthority816(String languageCode) async {
    // DOPSUM: CHANGE speakAuthority
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's an authority on criminal law."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAuthority(String languageCode) async {
  //   // DOPSUM: CHANGE speakAuthority
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("authority"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                                word: "authority"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ɔːˈθɒrəti/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAuthority("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈθɔːrəti/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAuthority("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 11
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
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
کوردی: دەسەڵات، حوکم، ڕایە، ھێز، توانایی، کەلێژ، دەس‌ڕۆیشتوویی، سەرپشکی، ڕێدان، ڕێ‌پێدان، دەستووردان، ماف، دەستوورنامە، خاوەن‌دەسەڵات، بەرپرس، بەرپرسایەتی، لێپرسراوێتی، ژێدەر، سەرچاوەی باوەڕپێکراو، کتێبی جێی‌باوەڕ، شارەزا، پسپۆڕ

١. (ناو) دەسەڵاتی بڕیاردان بەسەر خەڵکی تردا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She now has authority over the people who used to be her bosses."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئێستا دەسەڵاتی ھەیە بەسەر ئەو کەسانەی کە جاران گەورەی بوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority804("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority804(// REPLACE: authority
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
                                      "Central government has extensive authority over teachers."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەتی ناوەندی دەسەڵاتی فراوانی ھەیە بەسەر مامۆستایاندا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority805("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority805(// REPLACE: authority
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) دەسەڵات یان مافی کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Some experts think the agency may have exceeded its authority."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەندێک شارەزا باوەڕیان وایە کە دەزگاکە ئەگەری ھەیە دەسەڵاتی خۆی تێپەڕاندبێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority808("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority808(// REPLACE: authority
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مۆڵەت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He took the car without authority."),
                              const ExampleSentenceKurdish(
                                  text: "ئۆتۆمبێلەکەی بەبێ مۆڵەت برد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority809("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority809(// REPLACE: authority
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کۆمەڵە کەسێک یان ڕێکخراوێک کە مافی بڕیاردانیان ھەیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I have to report this to the authorities."),
                              const ExampleSentenceKurdish(
                                  text: "دەبێت ئەمە بە دەسەڵاتداران بڵێم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority811("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority811(// REPLACE: authority
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) دەسەڵاتی درووستکردنی کاریگەری بەھۆی ڕێزلێگیراوی بەھۆی زانیارییەکانت یان پێگەکەت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He spoke with authority on the topic."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە جێی‌باوەڕەوە قسەی لەسەر بابەتەکە دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority814("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority814(// REPLACE: authority
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) کەسێکی شارەزا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She's an authority on criminal law."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەسێکی شارەزایە لەسەر یاسای تاوانبارێتی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAuthority816("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAuthority816(// REPLACE: authority
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
- Noun: authority (derived forms: authorities)
1. The power or right to give orders or make decisions (= authorization, authorisation [Brit], potency, dominance, say-so)
"he has the authority to issue warrants";
 
2. (usually plural) persons who exercise (administrative) control over others
"the authorities have issued a curfew"
 
3. An expert whose views are taken as definitive
"he is an authority on corporate law"
 
4. Freedom from doubt; belief in yourself and your abilities (= assurance, self-assurance, confidence, self-confidence, sureness)
"she spoke with authority";
 
5. An administrative unit of government (= agency, federal agency, government agency, bureau, office)
"Tennessee Valley Authority";
 
6. Official permission or approval (= authorization, authorisation [Brit], sanction, clearance)
"authority for the program was renewed several times";
 
7. An authoritative written work
"this book is the final authority on the life of Milton"
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
    videoId: 'HB0CZ_5sPPw',
    startSeconds: 314,
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
    videoId: 'ewLpXw6uN28',
    startSeconds: 1570,
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
    videoId: 'Cqbleas1mmo',
    startSeconds: 226,
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
    videoId: 'TRGHIN2PGIA',
    startSeconds: 923,
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
    videoId: 'Cln0J87vulU',
    startSeconds: 73,
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
    videoId: 'yRmOWcWdQAo',
    startSeconds: 698,
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
    videoId: '4X2ES8HfLys',
    startSeconds: 791,
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
    videoId: 'hkO8qXCFYWA',
    startSeconds: 557,
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
    videoId: '-C3CjOkF-jY',
    startSeconds: 455,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

// end authority // TODO Implement this library.