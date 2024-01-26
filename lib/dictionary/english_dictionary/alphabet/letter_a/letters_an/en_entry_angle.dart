import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryangle - replace speakAngle - replace angle - /ˈæŋɡl/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryangle extends StatelessWidget {
  EnglishEntryangle({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAngle(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("angle"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle11480(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The interior angles of a square are right angles or angles of 90 degrees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle46055(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's a modern building, all brick and glass and sharp angles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle45906(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She adjusted the angle of the legs to make the table stand more firmly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle440(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Venus and the Earth orbit the Sun at a slight angle to each other."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle450(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The painting changes slightly when seen from different angles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle905(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can look at the issue from many different angles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle225870(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He angled his chair so that he could sit and watch her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle5401(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The programme is angled towards younger viewers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAngle5580(String languageCode) async {
    // DOPSUM: CHANGE speakAngle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On weekends, they often go angling by the lake."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAngle(String languageCode) async {
  //   // DOPSUM: CHANGE speakAngle
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("angle"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "angle"), // Find /ˈæŋɡl/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈæŋɡl/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAngle("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈæŋɡl/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAngle("en-US"),
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
                  VideoIconForTab(), // 06 --- REPLACE: 14,
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
کوردی: گۆشە، سووچ، کونجیک، موور، قولینچک، گوونیا، بۆچوون، ڕوانگە، دید و بۆچوون، نێرین، دیتن

١. (ناو) گۆشە؛ بۆشایی نێوان دوو ھێڵ لەو خاڵەی بە یەکدی دەگەن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The interior angles of a square are right angles or angles of 90 degrees."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گۆشەکانی ناوەوەی چوارگۆشەیەک تەواون یان گۆشەی ٩٠ پلەیین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle11480("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAngle11480(
                                        // REPLACE: angle /ˈæŋɡl/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) سووچەکانی ناوەوە یان دەرەوەی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It's a modern building, all brick and glass and sharp angles."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بینایەکی سەردەمیانەیە، ھەموو خشت و شووشە و گۆشەی تیژە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle46055("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAngle46055(
                                        // REPLACE: angle /ˈæŋɡl/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئاراستەی شتێک کە نە بەرەو سەرەوە یان خوارەوە، نە بەرەو ڕاست یان چەپە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She adjusted the angle of the legs to make the table stand more firmly."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاراستەی لاقەکانی ڕێکخست بۆ ئەوەی مێزەکە قایمتر بوەستێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle45906("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAngle45906(
                                        // REPLACE: angle /ˈæŋɡl/
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
                                      "Venus and the Earth orbit the Sun at a slight angle to each other."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زووھرە و زەوی بەدەوری خۆردا دەسووڕێنەوە بە ئاراستەیەک کەمێک بەلای یەکتردا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle440("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAngle440(// REPLACE: angle /ˈæŋɡl/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) گۆشەنیگا؛ شوێنی سەیرکردنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The painting changes slightly when seen from different angles."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تابلۆکە کەمێک دەگۆڕێت کە لە گۆشەنیگای دیکەوە سەیردەکرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle450("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAngle450(// REPLACE: angle /ˈæŋɡl/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) گۆشەنیگا؛ شێوازی ڕوانین یان بیرکردنەوە لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You can look at the issue from many different angles."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بابەتەکە دەتوانرێت لە زۆر گۆشەنیگای جیاوازەوە سەیربکرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle905("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAngle905(// REPLACE: angle /ˈæŋɡl/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) دانانی شتێک بەشێوەیەک کە ڕاستەوخۆ ڕووی لە شتێک نییە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He angled his chair so that he could sit and watch her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کورسییەکەی بەلاداخست بۆ ئەوەی دابنیشێت و سەیری بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle225870("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAngle225870(
                                        // REPLACE: angle /ˈæŋɡl/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) پێشکەشکردنی زانیاری یان ڕاپۆرتێک بە شێوازێک یان بۆ کەسانێکی دیاریکراو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The programme is angled towards younger viewers."),
                              const ExampleSentenceKurdish(
                                  text: "پڕۆگرامەکە بۆ بیسەرانی گەنجە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle5401("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAngle5401(// REPLACE: angle /ˈæŋɡl/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) ماسیگرتن بە قولاب"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "On weekends, they often go angling by the lake."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە ڕۆژانی کۆتایی ھەفتە دەچن بۆ ماسیگرتن لە دەریاچەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAngle5580("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAngle5580(// REPLACE: angle /ˈæŋɡl/
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
Noun: angle (derived forms: angles)
1. The space between two lines or planes that intersect; the inclination of one line to another; measured in degrees or radians
 
2. A biased way of looking at or presenting something (= slant)

- Verb: angle (derived forms: angling, angles, angled)
1. Move or proceed at an angle
"he angled his way into the room"
 
2. To incline or bend from a vertical position (= lean, tilt, tip, slant)
 
3. Seek indirectly (= fish)
"angle for compliments";
 
4. Fish with a hook
 
5. Present with a bias (= slant, weight)
 
6. Place (something) at an angle
"angle the mirror to see better"

- Noun: Angle (derived forms: Angles)
1. A member of a Germanic people who conquered England and merged with the Saxons and Jutes to become Anglo-Saxons
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
  static String myVideoId = "s6Mo7YNAmcs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 285, // DOPSUM: CHANGE IT
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
  static String myVideoId = "lFlu60qs7_4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1534, // DOPSUM: CHANGE IT
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
  static String myVideoId = "HaHLqQawrqQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 4323, // DOPSUM: CHANGE IT
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
  static String myVideoId = "ojjzXyQCzso";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 197, // DOPSUM: CHANGE IT
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
  static String myVideoId = "krtf-v19TJg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 757, // DOPSUM: CHANGE IT
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
  static String myVideoId = "bAdlDU0urMc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 62, // DOPSUM: CHANGE IT
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
  static String myVideoId = "HSn57YVDvHg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 12, // DOPSUM: CHANGE IT
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
  static String myVideoId = "YtTGZzGsLpI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 4, // DOPSUM: CHANGE IT
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
  static String myVideoId = "FHJ3CMWnVxY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 30, // DOPSUM: CHANGE IT
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
  static String myVideoId = "dJOz8SYbN28";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 135, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "7j5ul4XBjAI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 189, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "lex6USTugUU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 140, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}



// end