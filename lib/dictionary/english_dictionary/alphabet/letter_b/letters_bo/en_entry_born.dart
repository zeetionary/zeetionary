import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "born" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace born - /bɔːn/

enum TtsState { playing }

class EnglishEntryborn extends StatelessWidget {
// blank divider
  EnglishEntryborn({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakborn(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("born"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns1(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was born in 1976."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns2(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was born in a small village in northern Spain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns3(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby was born by Caesarean section on Friday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns4(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These children were born into poverty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns5(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She acted with a courage born (out) of desperation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns6(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The part is played by an American-born actress."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns7(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was the firstborn of his family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns8(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I felt born to take care of animals."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns9(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I do not expect anything from him. He was a born loser."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns10(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns11(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns12(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns13(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns14(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns15(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns16(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborns17(String languageCode) async {
    // DOPSUM: CHANGE speakborn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborns1717"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "born"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakborn("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔːrn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakborn("en-US"),
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
کوردی: لەدایک‌بوون، ھاتنەدونیا، بەتوانا، توانا، بەھرەدار، بەبەھرە، لێھاتوو، شارەزا

١. (کردار) دەرچوون لە سکی دایک لە سەرەتای ژیاندا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was born in 1976."),
                              const ExampleSentenceKurdish(
                                  text: "لە ساڵی ١٩٧٦ لەدایکبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was born in a small village in northern Spain."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە گوندێکی بچووکی باکووری ئیسپانیا لەدایکبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns2("en-US"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The baby was born by Caesarean section on Friday."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "منداڵەکە لە ڕۆژی ھەینی بە نەشتەرگەری لەدایکبوو."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakborns3("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakborns3("en-US"),
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "These children were born into poverty."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئەم منداڵانە لە ھەژاریدا لەدایکبوون."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakborns4("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakborns4("en-US"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) دەستپێکردنی بیرۆکەیەک، جوڵانەوەیەک، دامەزراوەیەک، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She acted with a courage born (out) of desperation."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە بوێرییەکەوە ھەنگاوی نا لە دەستبەستراوی درووستبووبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns5("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) لەدایکبوو بەو شێوەیەی باسکراوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The part is played by an American-born actress."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕۆڵەکە لەلایەن خانمە ئەکتەرێکی لەدایکبووی ئەمریکاوە دەبینرێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns6("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was the firstborn of his family."),
                              const ExampleSentenceKurdish(
                                  text: "یەکەم منداڵی خێزانەکەی بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns7("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) ھەبوونی توانای سرووشتی بۆ چالاکییەک یان کارێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I felt born to take care of animals."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وام ھەستکرد لەدایکبووبم بۆ چاودێری ئاژەڵان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns8("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I do not expect anything from him. He was a born loser (= a person who always loses or is unsuccessful)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھیچی لێ چاوەڕێ ناکەم. دۆڕان لە خوێنیدایە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakborns9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakborns9("en-US"),
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Adjective: born
1. Being talented through inherited qualities (= natural, innate)
"a born musician";

- Verb: born
1. To come out of a mother's body, and start to exist
"she was born in 1950"; "he was a child born of adultery"

2. To start to exist

- Noun: Born
1. British nuclear physicist (born in Germany) honoured for his contributions to quantum mechanics (1882-1970) (= Max Born)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "tXjHb5QmDV0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1138, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "LAOoF2gyQaA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 707, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "_GFkHA5EZdE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 427, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "7TavVZMewpY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 10, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "F5pgG1M_h_U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 342, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "gdgPAetNY5U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "6mRbDEtDoyA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 75, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "qEV9qoup2mQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 652, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "6kVpRNlc-8w";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 92, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "XtNni2wLFR4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 340, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end born
