import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryalert - replace speakAlert - replace alert - /əˈlɜːt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryalert extends StatelessWidget {
  EnglishEntryalert({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAlert(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("alert"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert3524(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "An anonymous letter alerted police to the possibility of a terrorist attack at the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert352(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Neighbours quickly alerted the emergency services."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert29637(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had been alerted to the possibility of further price rises."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert6277(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More than 5 000 troops have been placed on (full) alert."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert96526(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I get text alerts when I have used 80% of my mobile data."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert34655(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Two alert scientists spotted the mistake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAlert3566(String languageCode) async {
    // DOPSUM: CHANGE speakAlert
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We must be alert to the possibility of danger."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAlert(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlert
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alert"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAlert(String languageCode) async {
  //   // DOPSUM: CHANGE speakAlert
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("alert"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "alert"), // Find /əˈlɜːt/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈlɜːt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAlert("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈlɜːrt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAlert("en-US"),
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
کوردی: گوێ‌قوڵاخ، وریا، چاوکراوە، زیت، وازر، ھۆشیار، ئاگادار، بەئاگا، ھایدار، قوت، زیرەک، بیرا، ئامادەباش، ڕەوش یان بارودۆخی تەنگەتاوی، باری نائاسایی، ئاگادارکردنەوە لە مەترسی یان کێشەیێ

١. (کردار) وریاکردنەوەی کەسێک لەسەر بارودۆخێکی مەترسیدار، یان یەکێک کە پێویستە بەپەلە مامەڵەی لەگەڵ بکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "An anonymous letter alerted police to the possibility of a terrorist attack at the airport."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نامەیەکی نھێنی پۆلیسی ئاگادارکردەوە لە ئەگەری ھێرشێکی تیرۆریستی لە فڕۆکەخانەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert3524("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert3524(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
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
                                      "Neighbours quickly alerted the emergency services."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دراوسێیەکان بەپەلە تیمە فریاگوزارییەکانیان ئاگادارکردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert352("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert352(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ئاگادارکردنەوەی کەسێک لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They had been alerted to the possibility of further price rises."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاگادارکرابوونەوە لە ئەگەری زیادبوونی زیاتری نرخ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert29637("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert29637(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بارودۆخێک کە تێیدا خەڵکی ئاگادارکراون بۆ مەترسی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "More than 5 000 troops have been placed on (full) alert."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زیاتر لە ٥٠٠٠ سەرباز خراونەتە ئامادابەشیی تەواو"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert6277("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert6277(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ئاگادارکەرەوە بۆ شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I get text alerts when I have used 80% of my mobile data."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاگادارکەرەوەیەکی نووسراوم پێدەگات کە زیاتر لە ٨٠٪ ئینتەرنێتی موبایلەکەم بەکاربێنم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert96526("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert96526(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) ھەبوونی توانای بیرکردنەوە بەخێرایی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Two alert scientists spotted the mistake."),
                              const ExampleSentenceKurdish(
                                  text: "دوو زانای وریا تێبینی ھەڵەکەیان کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert34655("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert34655(
                                        // REPLACE: alert /əˈlɜːrt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵناو) ئاگاداربوون لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We must be alert to the possibility of danger."),
                              const ExampleSentenceKurdish(
                                  text: "پێویستە چاوکراوە بین بۆ مەترسی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAlert3566("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAlert3566(
                                        // REPLACE: alert /əˈlɜːrt/
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
- Verb: alert (derived forms: alerts, alerting, alerted)
1. Warn or arouse to a sense of danger or call to a state of preparedness (= alarm)
"We alerted the new neighbours to the high rate of burglaries";


- Adjective: alert (derived forms: alerter, alertest)
1. Engaged in or accustomed to close observation (= watchful)
"alert enough to spot the opportunity when it came"; "constantly alert and vigilant, like a sentinel on duty"; "caught by a couple of alert cops";
 
2. Quick and energetic (= brisk, lively, merry, rattling, snappy [informal], spanking [informal], zippy [informal])
 
3. Mentally perceptive and responsive (= alive, awake, on the ball)
"an alert mind"; "alert to the problems";

- Noun: alert (derived forms: alerts)
1. Condition of heightened watchfulness or preparation for action (= qui vive)
"bombers were put on alert during the crisis";
 
2. A warning serves to make you more alert to danger (= alerting)
 
3. An automatic signal (usually a sound) warning of danger (= alarm, warning signal, alarum [archaic])
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
  static String myVideoId = 'Br9bUTdKu0U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 117, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'T8LlB3psUtM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 257, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = '-5n7QMaGxgg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 40, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = 'bEb-0GzX0RY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 91, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = 'SVEoC-gkbOU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 427, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = '1HC3jZEnJNM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 57, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = '4Ww6CwfyZVE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = 'eZnIUMAJtBo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 2758, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'VrKW58MS12g';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1138, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = 'PmlRbfSavbI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 190, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end
