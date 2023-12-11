import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bankrupt" and provide five example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bankrupt - replace EnglishEntrybankrupt

// replace speakBankrupt - /ˈbæŋkrʌpt/

enum TtsState { playing }

class EnglishEntrybankrupt extends StatelessWidget {
// blank divider
  EnglishEntrybankrupt({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBankrupt(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bankrupt"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts1(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She lost the house after she was made bankrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts2(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the war, Britain was weary and bankrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts3(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He believes that modern society is morally bankrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts4(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He later became Britain’s biggest bankrupt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts5(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They feared that the loss would bankrupt them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts6(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBankrupts66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBankrupts7(String languageCode) async {
    // DOPSUM: CHANGE speakBankrupt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBankrupts77"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                                word: "bankrupt"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈbæŋkrʌpt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakBankrupt(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈbæŋkrʌpt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBankrupt(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 15
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
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
                          const DefinitionKurdish(text: """
کوردی: نابووت(بوو)، مایەبۆش، مایەپووچ، سۆخت، لەدارایی‌کەوتوو

١. (ھاوەڵناو) بەبێ پارەی پێویست بۆ دانەوەی ئەوەی قەرزاری"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She lost the house after she was made bankrupt."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خانووەکەی لەدەستدا لە دوای ئەوەی مایەپووچ بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBankrupts1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakBankrupts1(// REPLACE: bankrupt
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "After the war, Britain was weary and bankrupt."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە دوای جەنگەکە بەریتانیا شەکەت و مایەپووچ بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBankrupts2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakBankrupts2(// REPLACE: bankrupt
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) نەبوونی ھیچ خاسیەتێکی باش"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He believes that modern society is morally bankrupt."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باوەڕی وایە کۆمەڵگەی ئێستا لەلایەنی ئەخلاقییەوە مایەپووچە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBankrupts3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakBankrupts3(// REPLACE: bankrupt
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) کەسێک کە دادگا بڕیاری داوە توانای نییە قەرزەکانی بداتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He later became Britain’s biggest bankrupt."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دواتر بوو بە گەورەترین مایەپووچی بەریتانیا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBankrupts4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakBankrupts4(// REPLACE: bankrupt
                                        "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) مایەپووچکردنی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They feared that the loss would bankrupt them."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ترسان زیانەکە مایەپووچیان بکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakBankrupts5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakBankrupts5(// REPLACE: bankrupt
                                        "en-US"),
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
                    YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddedfourteen(),
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
          EnglishMeaningConst(
            text: """
- Adjective: bankrupt
1. Financially ruined (= belly-up [informal], bust [informal])
"a bankrupt company";
 
2. Without a good quality
"Can a morally bankrupt government credibly take a moral stand on anything?"

- Noun: bankrupt (derived forms: bankrupts)
1. Someone who has insufficient assets to cover their debts (= insolvent)

- Verb: bankrupt (derived forms: bankrupting, bankrupted, bankrupts)
1. Reduce to bankruptcy (= ruin, break, smash)
"My daughter's fancy wedding is going to bankrupt me!";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "ewLpXw6uN28";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1499, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "yRFPjBuRRCg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1133, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "_h95pZQiKwI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 957, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "tZktTdGHaJY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 498, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "yhviJ9vB7Zg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1907, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "-wpHszfnJns";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 408, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "12f0ligwS5s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 719, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "Fys9qzUZkRA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 152, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "kAbHuxMiFsc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 668, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "RJQPthD9rx8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1189, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "mviTS_cIWXg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 261, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "Tomj5Ej2THQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 175, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  static String myVideoId = "GriR73kSvPY";

  YoutubeEmbeddedthirteen({super.key});

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1817, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdTwo = "YjmZRmSj_Ew";

  final YoutubePlayerController _controllertwo = YoutubePlayerController(
    initialVideoId: myVideoIdTwo,
    flags: const YoutubePlayerFlags(
      startAt: 124, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdThree = "8MELKXZqMQo";

  final YoutubePlayerController _controllerthree = YoutubePlayerController(
    initialVideoId: myVideoIdThree,
    flags: const YoutubePlayerFlags(
      startAt: 92, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFour = "ggS6LBhH7Fo";

  final YoutubePlayerController _controllerfour = YoutubePlayerController(
    initialVideoId: myVideoIdFour,
    flags: const YoutubePlayerFlags(
      startAt: 297, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  static String myVideoIdFive = "1C3iFrC-dRw";

  final YoutubePlayerController _controllerfive = YoutubePlayerController(
    initialVideoId: myVideoIdFive,
    flags: const YoutubePlayerFlags(
      // startAt: 582, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: false,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            YouTubeContainerDesign(controller: _controller),
            YouTubeContainerDesign(controller: _controllertwo),
            YouTubeContainerDesign(controller: _controllerthree),
            YouTubeContainerDesign(controller: _controllerfour),
            YouTubeContainerDesign(controller: _controllerfive),
          ],
        ),
      ),
    );
  }
}

// end bankrupt// TODO Implement this library.