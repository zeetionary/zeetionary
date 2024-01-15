import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryaction - replace speakAction - replace action - /ˈækʃn/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryaction extends StatelessWidget {
  EnglishEntryaction({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAction(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction9652(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Each of us must take responsibility for our own actions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct25473(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Firefighters took action immediately to stop the blaze spreading."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction241(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government is taking strong action on tax fraud."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction53874(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Workers voted in favour of strike action."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction42567(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A libel action is being brought against the magazine that published the article."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction4387(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I never saw action during the war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction8691(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The action takes place in France."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAction35971(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I like films with plenty of action."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "action"), // Find /ˈækʃn/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈækʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈækʃn/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAction("en-US"),
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: کار، کردەوە، کردە، ھەنگاو، ئیش، چالاکی، بزووتن، بزاوت، جوولە، کاریگەری، شوێن‌دانان، باندۆر، کردار (شەڕ)، ھێرش، ڕەوت، پێکادان، شەڕ، پارچە جووڵۆکەکان، شێوەی کار، میکانیزم، پڕۆسە یان ڕەوتی قانوونی، شکات، سکاڵا، داواکاری، ڕووداوەکان، گیروگرفت (سەرەکی، لە کتێب، شانۆ وھتد)

١. (ناو) پڕۆسەی کردنی شتێک نۆ بەدیھێنانی شتێک یان مامەڵە لەگەڵ بارودۆخێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Firefighters took action immediately to stop the blaze spreading."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاگرکوژێنەوەکان بەپەلە ھەنگاویان نا بۆ وەستاندنی بڵوبوونەوەی ئاگرەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAct25473("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAct25473(
                                        "en-US"), // REPLACE action /ˈækʃn/
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
                                      "The government is taking strong action on tax fraud."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەت لێپێچینەوەی توند دەگرێتە بەر بۆ ڕێگری لە خۆدزینەوە لە باج"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction241("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction241(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شتێک کە کەسێک دەیکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Each of us must take responsibility for our own actions."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تاک بە تاکمان دەبێت بەرپرسیاریەتی ھەڵبگرێت بۆ کردارەکانی خۆمان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction9652("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction9652(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئەو ھەنگاوانەی کە کرێکاران دەینێن بۆ دەربڕینی ناڕەزایی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Workers voted in favour of strike action."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کرێکاران دەنگیان دا لە بەرژەوەندی مانگرتن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction53874("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction53874(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کەیسێکی یاسایی دژ بە کۆمپانیایەک یان دامەزراوەیەک بۆ وەستاندنی لە کردنی شتێکدا، یان ناچارکردنی بە پارەدان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A libel action is being brought against the magazine that published the article."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سکاڵایەکی ناوزڕاندن تۆمار دەکرێت دژ بە ئەو گۆڤارەی وتارەکەی بڵاوکردەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction42567("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction42567(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ڕووبەڕووبوونەوە لە شەڕێک یان جەنگێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I never saw action during the war."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەرگیز ڕووبەڕووبوونەوەم نەبینی لە کاتی جەنگەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction4387("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction4387(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو ڕووداوانەی لە چیرۆکێک یان شانۆیەک ڕوودەدەن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The action takes place in France."),
                              const ExampleSentenceKurdish(
                                  text: "ڕووداوەکان لە فەرەنسا ڕوودەدن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction8691("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction8691(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) ڕووداوی خورۆشێنەر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I like films with plenty of action."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حەزم لەو فیلمانەیە کە زۆر ڕووداوی خورۆشێنەریان تێدایە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction35971("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction35971(
                                        "en-US"), // REPLACE action /ˈækʃn/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) دڵنیاییکردنەوە لەوەی شتێک مامەڵەی لەگەڵ دەکرێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Your request will be actioned."),
                              const ExampleSentenceKurdish(
                                  text: "داواکەت مامەڵەی لەگەڵ دەکرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAction35971("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAction35971(
                                        "en-US"), // REPLACE action /ˈækʃn/
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
                    YoutubeEmbeddedeleven(),
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
- Noun: action (derived forms: actions)
1. Something done (usually as opposed to something said)
"there were stories of murders and other unnatural actions"
 
2. The state of being active (= activity, activeness)
"he is out of action";
 
3. (military) a military engagement (= military action)
"he saw action in Korea";
 
4. A process existing in or produced by nature (rather than by the intent of human beings) (= natural process, natural action, activity)
"the action of natural forces"; "the natural action of natural forces";
 
5. The series of events that form a plot
"his novels always have a lot of action"
 
6. The trait of being active and energetic and forceful
"a man of action"
 
7. The operating part that transmits power to a mechanism (= action mechanism)
"the piano had a very stiff action";
 
8. (law) a judicial proceeding brought by one party against another; one party prosecutes another for a wrong done or for protection of a right or for prevention of a wrong (= legal action, action at law)
 
9. An act by a government body or supranational organization
"recent federal action undermined the segregationist position"; "the United Nations must have the power to propose and organize action without being hobbled by irrelevant issues"; "the Union action of emancipating Southern slaves"
 
10. The most important or interesting work or activity in a specific area or field
"the action is no longer in technology stocks but in municipal bonds"; "gawkers always try to get as close to the action as possible"
 
11. In firearms terminology, the mechanism that handles the ammunition (loads, locks, fires, and extracts the cartridges).
"Actions can be categorized in several ways, including single action versus double action, break action versus bolt action, and others."

- Verb: action (derived forms: actioned, actioning, actions)
1. Institute legal proceedings against; file a suit against (= sue, litigate, process)
"She actioned the company for discrimination";
 
2. Cause to happen; complete successfully (= carry through, accomplish, execute, carry out, fulfill [N. Amer], fulfil [Brit, Cdn])
"He actioned the operation";
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
  static String myVideoId = '5G0j_Huv2Fg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 782, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'DroTM9SqcWI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 18, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = '1Y0F7zZ_Ws0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 286, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = 'KAJsdgTPJpU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 8, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = 'LMUgLbrmJYc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 30, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = 'Q_xtMu6bqv8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = '6QLo92FHYRQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 10, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = '5GZVzvyZ07o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'qEPs8AVmjdg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = '1Hyx4a0Se7U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 16, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = 'hd2qtQuGDts';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 16, // DOPSUM: CHANGE IT
      endAt: 90, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end
