import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryburning extends StatelessWidget {
// blank divider
  EnglishEntryburning({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakburning(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("burning"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings1(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's always had a burning ambition to start his own business."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings2(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This has quickly become the burning issue of the day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings3(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She felt a burning sensation in her throat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings4(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People enjoy basking under the burning sun at the beach."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings5(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings6(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings7(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings8(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings9(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings10(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings11(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings12(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburnings13(String languageCode) async {
    // DOPSUM: CHANGE speakburning
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburnings1313"); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(word: "burning"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɜːnɪŋ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakburning("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɜːrnɪŋ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakburning("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: سووتێنەر، پڕووکێنەر، گەرم، پڕووزە، گڕگرتوو، کڵپەکردوو، ئاورگرتوو، سوورەوەبوو، هەڵبوو، تۆزێنەر، لەڕادەبەدەر، یەکجار، پێویست، گرنگ، توند، مەسەلەیەکی گرنگ و پێویست، ئاورگرتن، ئاورتێبەربوون، سووتمان، سووتان، شەوەتان

١. (ھاوەڵناو) ئێجگار زۆر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's always had a burning ambition to start his own business."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەمیشە خولیایەکی زۆری هەبوو کە بازرگانیی خۆی دەستپێ بکات."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "burning", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburnings1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburnings1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کێشەیەکی زۆر گرنگ"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This has quickly become the burning issue of the day."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمە بە زووی بووە بە مژاری گەرمی ڕۆژ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburnings2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburnings2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) ئازارێکی زۆر"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She felt a burning sensation in her throat."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەستی بە ئازارێکی زۆر دەکرد لە قوڕگیدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburnings3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburnings3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) زۆر گەرم"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "People enjoy basking under the burning sun at the beach."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خەڵکی حەزدەکەن بە ڕاکشان لە خۆرە گەرمەکەدا لە کەناراوەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburnings4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburnings4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
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
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
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
- Noun: burning (Derived forms: burnings)
1. A process in which a substance reacts with oxygen to give heat and light (= combustion)
 
2. The act of burning something (= combustion)
"the burning of leaves was prohibited by a town ordinance";
 
3. Pain that feels hot as if it were on fire (= burn)
 
4. Execution by electricity (= electrocution)
 
5. Execution by fire (= burning at the stake)
 
6. A form of torture in which cigarettes, cigars or other hot implements are used to burn the victim's skin

- Adjective: burning 
1. Flaming as it burns (= ablaze, afire [literary], aflame, aflare [rare], alight, on fire, in flames)
"forests set burning by lightning";
 
2. With strong feeling or passion
"a burning desire for revenge"
 
3. Of immediate import
"burning issues of the day"
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
  static String myVideoId = "c3hh1AYMo7o";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 204, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  static String myVideoId = "PXsZntwnArQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 396, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "737r0mRf0hY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 102, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  static String myVideoId = "yRmOWcWdQAo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 297, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  static String myVideoId = "zUbod5t_2oM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1029, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  static String myVideoId = "uQtw2_7oXV0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 464, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  static String myVideoId = "FgT3GCsJteA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1757, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "1y8AZehBe9A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1052, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  static String myVideoId = "z4ZrdEt6D_Q";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1545, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  static String myVideoId = "EHJivie-mSA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 143, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB