import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryand - replace speakAnd - replace and - /ənd/,  /ən/,  /n/, strong form  /ænd/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryand extends StatelessWidget {
  EnglishEntryand({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAnd(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("and"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd15005(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sue and I left early."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd5044(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She came in and took her coat off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd2205(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Go and get me a pen please."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd0258(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘We talked for hours.’ ‘And what did you decide?’"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd8854(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Miss another class and you'll fail."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd5560(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's 47 and 16?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd22410(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The pain got worse and worse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnd5570(String languageCode) async {
    // DOPSUM: CHANGE speakAnd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I like city life but there are cities and cities."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAnd(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnd(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnd(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnd
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("and"); // DOPSUM: CHANGE TEXT
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
                                    "and"), // Find /ənd/,  /ən/,  /n/, strong form  /ænd/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ənd/,  /ən/,  /n/, strong form  /ænd/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAnd("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ənd/,  /ən/,  /n/, strong form  /ænd/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAnd("en-US"),
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
کوردی: و، وە، لەگەڵ، تا، ھەتا، کە، ھەروەھا

١. (لێکدەر) و"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Sue and I left early."),
                              const ExampleSentenceKurdish(
                                  text: "من و سوو زوو ڕۆشتین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd15005("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd15005(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (لێکدەر) دواتر، لە دوای شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She came in and took her coat off."),
                              const ExampleSentenceKurdish(
                                  text: "ھاتە ژوورەوە و پاڵتاوەکەی داکەند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd5044("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd5044(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (لێکدەر) لە دوای ھەندێک کردار بەکاردێت بەمەبەستی پیشاندانی ھۆکاری ئەنجام‌دانی کردارەکە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Go and get me a pen please."),
                              const ExampleSentenceKurdish(
                                  text: "تکایە بچۆ و پێنووسێکم بۆ بێنە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd2205("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd2205(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (لێکدەر) بەکاردێت بۆ ناساندنی لێدوانێک یان پرسیارێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "‘We talked for hours.’ ‘And what did you decide?’"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "«بۆ چەندین کاتژمێر گفتوگۆمان کرد.» «ئەی چی بڕیارێکتان دا؟»"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd0258("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd0258(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (لێکدەر) بۆ پیشاندانی ئەنجام"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Miss another class and you'll fail."),
                              const ExampleSentenceKurdish(
                                  text: "یەک وانەی تر نەیەی دەرناچیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd8854("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd8854(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (لێکدەر) کۆ؛ لە کۆکردنەوەدا بو وتنی ژمارەیەک زیادبکرێت بۆ ژمارەیەکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "What's 47 and 16?"),
                              const ExampleSentenceKurdish(
                                  text: "٤٧ کۆی ١٦ چەند دەکات؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd5560("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd5560(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت بۆ پیشاندانی دووبارەبوونەوە و بەردەوامی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The pain got worse and worse."),
                              const ExampleSentenceKurdish(
                                  text: "ئازارەکە خراپتر و خراپتر بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd22410("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd22410(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (لێکدەر) لەگەڵ وشەی دووبارەدا بەکاردێت وتنی ئەوەی دوو شت دەکرێت یەک خاسیەتیان ھەبێت بەڵام زۆر جیاواز بن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I like city life but there are cities and cities."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حەزم لە ژیانی شارە، بەڵام شار ھەیە و شاری تریش ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnd5570("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnd5570(
                                        // REPLACE: and /ənd/,  /ən/,  /n/, strong form  /ænd/
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

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Conjunction: and 
1. Used to connect words, clauses or sentences; used to indicate that the following thing is also included, or add an additional point
"eggs, chips and bacon"
 
2. In order to; used instead of "to", especially after try, come, go
"I'll try and do that before tomorrow"
 
3. Used to indicate causation or something that follows
"do that and I'll scream"

- Preposition: and 
1. With the addition of; increased by (= plus)
"one and one is two";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Speaker icon for British English
          Row(
            children: [
              CustomIconButtonBritish(
                onPressed: () => startSpeaking("en-GB", englishMeaningConst),
              ),
              CustomIconButtonAmerican(
                onPressed: () => startSpeaking("en-US", englishMeaningConst),
              ),
              // Conditional rendering of pause button
              if (isSpeaking)
                IconButton(
                  icon: const Icon(Icons.pause, size: 30),
                  onPressed: () {
                    stopSpeaking();
                  },
                ),
            ],
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }

  // Function to start TTS
  Future<void> startSpeaking(String languageCode, EnglishMeaningConst englishMeaningConst) async {
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
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "ML8IL77gQ3k";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 50, // DOPSUM: CHANGE IT
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
  static String myVideoId = "njn6krU3tQ8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 13, // DOPSUM: CHANGE IT
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
  static String myVideoId = "LDP08F3op80";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 6, // DOPSUM: CHANGE IT
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
  static String myVideoId = "Btu0O47u3rY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
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
  static String myVideoId = "2ihOXaU0I8o";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 12, // DOPSUM: CHANGE IT
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
  static String myVideoId = "z7JU0BoX0nQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 22, // DOPSUM: CHANGE IT
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
  static String myVideoId = "sSdMX8AWurI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 7, // DOPSUM: CHANGE IT
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
  static String myVideoId = "kNw8V_Fkw28";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 87, // DOPSUM: CHANGE IT
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
  static String myVideoId = "_spuxXnul0U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 29, // DOPSUM: CHANGE IT
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
  static String myVideoId = "wmiIUN-7qhE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 25, // DOPSUM: CHANGE IT
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
  static String myVideoId = "4J0xFUyz1nw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 183, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "Zi4LMpSDccc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
      startAt: 69, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddethirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID";
//   static String myVideoIdTwo = "PUT_VIDEO_ID";
//   static String myVideoIdThree = "PUT_VIDEO_ID";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddethirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end // TODO Implement this library.