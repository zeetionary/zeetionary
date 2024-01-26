import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/constants_two.dart';

// replace these: replace EnglishEntryagree - replace speakAgree - replace agree - /əˈɡriː/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryagree extends StatelessWidget {
  EnglishEntryagree({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAgree(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("agree"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgree6778(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When he said that, I had to agree."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAg2256(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't agree with hitting children as a punishment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgree2344(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I asked for a pay rise and she agreed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgre3555(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We agreed to meet on Thursday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgree37859(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Next year's budget has been agreed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgr3544(String languageCode) async {
    // DOPSUM: CHANGE speakAgree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your account of the accident does not agree with hers."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAgree(String languageCode) async {
  //   // DOPSUM: CHANGE speakAgree
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("agree"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: YoutubeEmbeddedone
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
                            EntryTitle(word: "agree"), // Find /əˈɡriː/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈɡriː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAgree("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈɡriː/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAgree("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
١. (کردار) ھاوڕابوون لەگەڵ کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "When he said that, I had to agree."),
                              const ExampleSentenceKurdish(
                                  text: "کە ئەوەی گوت، ناچاربووم ھاوڕابم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgree6778("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAgree6778(
                                        // REPLACE: agree /əˈɡriː/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) پەسەندکردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I don't agree with hitting children as a punishment."),
                              const ExampleSentenceKurdish(
                                  text: "لێدانی مناڵ وەک سزادان پەسەند ناکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAg2256("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAg2256(// REPLACE: agree /əˈɡriː/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) کردن یان ڕێگەدان بە شتێک کە کەسێک دەیەوێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I asked for a pay rise and she agreed."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "داوای زیادکردنی مووچەکەمم کرد و ئەویش ڕازی بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgree2344("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAgree2344(
                                        // REPLACE: agree /əˈɡriː/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ڕێککەوتن لەگەڵ کەسێک بۆ کردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We agreed to meet on Thursday."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێککەوتین پێنجشەممە چاومان بە یەک بکەوێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgre3555("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAgre3555(// REPLACE: agree /əˈɡriː/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) پەسەندکردنی پلانێک یان داوایەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Next year's budget has been agreed."),
                              const ExampleSentenceKurdish(
                                  text: "بودجەی ساڵی داھاتوو پەسەندکراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgree37859("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAgree37859(
                                        // REPLACE: agree /əˈɡriː/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) دوو شت یەکبگرنەوە لەگەڵ یەک و ھەمان شت بن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Your account of the accident does not agree with hers."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گێڕانەوەت بۆ ڕووداوەکە یەکناگرێتەوە لەگەڵ گێڕانەوەی ئەو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgr3544("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAgr3544(// REPLACE: agree /əˈɡriː/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
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
- Verb: agree (derived forms: agrees, agreeing, agreed)
1. Be in accord; be in agreement (= hold, concur, concord)
"We agreed on the terms of the settlement"; "I can't agree with you!";
 
2. Consent or assent to a condition, or agree to do something
"She agreed to all my conditions"; "He agreed to leave her alone"
 
3. Be compatible, similar or consistent; coincide in their characteristics (= match, fit, correspond, check, jibe, gibe, tally, marry up, marry)
"The two stories don't agree in many details";
 
4. Go well together (= harmonize, harmonise [Brit], consort, accord, concord, fit in)
"The colours don't agree";
 
5. (grammar) show grammatical agreement
"Subjects and verbs must always agree in English"
 
6. Be agreeable or suitable
"White wine doesn't agree with me"
 
7. Achieve harmony of opinion, feeling, or purpose
"No two of my colleagues would agree on whom to elect chairman"
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
    videoId: 'E37swnRU2fs',
    startSeconds: 785,
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
    videoId: 'LnnDOMyZjbE',
    // startSeconds: 222222222222222,
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
    videoId: '_iQmmsGdaGo',
    startSeconds: 1197,
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
    videoId: 'BgPmPaO9Duk',
    startSeconds: 6,
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
    videoId: 'qNQsVH16jNw',
    startSeconds: 121,
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
    videoId: '4eov699jiaM',
    // startSeconds: 222222222222222,
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
    videoId: 'OHxtzgBkE_I',
    // startSeconds: 222222222222222,
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
    videoId: 'a5F5UMbcHvM',
    startSeconds: 114,
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
    videoId: 'KBPPpvihR4s',
    startSeconds: 144,
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
    videoId: 't093mNvl03c',
    startSeconds: 62,
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
