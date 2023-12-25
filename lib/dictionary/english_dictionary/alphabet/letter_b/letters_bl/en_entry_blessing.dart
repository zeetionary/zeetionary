import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "blessing" and provide five simple and short example sentences for each meaning. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blessing - /ˈblesɪŋ/

enum TtsState { playing }

class EnglishEntryblessing extends StatelessWidget {
// blank divider
  EnglishEntryblessing({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblessing(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blessing"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings1(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The blessing was said in Hebrew."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings2(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He went with his parents' blessing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings3(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government gave its blessing to the new plans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings4(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Lack of traffic is one of the blessings of country life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings5(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's a blessing that nobody was in the house at the time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings6(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblessings66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblessings7(String languageCode) async {
    // DOPSUM: CHANGE speakblessing
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblessings77"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "blessing"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈblesɪŋ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblessing("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈblesɪŋ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblessing("en-US"),
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
کوردی: نزا، دۆعا، درود، ڕێژەن، نێعمەت، خوداداوە، بەھرە، پیت، بەەرکەت، پەسندکردن، پشتگیری، پشتیوانی، دۆعای بەر لە نان خواردن

١. (ناو) داواکردن لە خودا بۆ یارمەتی و پاراستن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The blessing was said in Hebrew."),
                              const ExampleSentenceKurdish(
                                  text: "نزاکە بە عیبری خوێندرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblessings1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblessings1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) مۆڵەت یان پشتگیری بۆ شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He went with his parents' blessing."),
                              const ExampleSentenceKurdish(
                                  text: "بە پشتگیری دایک و باوکییەوە ڕۆشت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblessings2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblessings2("en-US"),
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
                                      "The government gave its blessing to the new plans."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەت پشتگیری خۆیدا بە پلانە تازەکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblessings3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblessings3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) شتێکی باش یان بەسوود"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Lack of traffic is one of the blessings of country life."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەمی ترافیکی ھاتووچۆ یەکێکە لە بەرەکەتەکانی ژیان لە گونددا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblessings4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblessings4("en-US"),
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
                                      "It's a blessing that nobody was in the house at the time."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نیعمەتێک بوو کە ئەو کات کەس لە ماڵەکە نەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblessings5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblessings5("en-US"),
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
- Noun: blessing (derived forms: blessings)
1. The formal act of approving (= approval, approving)
"he gave the project his blessing";
 
2. A desirable state (= boon)
"enjoy the blessings of peace";
 
3. A short prayer of thanks before a meal (= grace, thanksgiving)
"their youngest son said blessing";

4. A ceremonial prayer invoking divine protection (= benediction)
 
5. The act of praying for divine protection (= benediction)
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

  static String myVideoId = "UuGpm01SPcA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 105, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Mx8JkGHaGUI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 177, // DOPSUM: CHANGE IT
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

  static String myVideoId = "PYS3UZFPJWI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 488, // DOPSUM: CHANGE IT
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

  static String myVideoId = "qjqh9UVfNNk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 486, // DOPSUM: CHANGE IT
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

  static String myVideoId = "raSeaAeryWE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 955, // DOPSUM: CHANGE IT
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

  static String myVideoId = "qjqh9UVfNNk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 487, // DOPSUM: CHANGE IT
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

  static String myVideoId = "XEZfGlyLQnA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 320, // DOPSUM: CHANGE IT
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

  static String myVideoId = "7h8j8J0zoJ0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 787, // DOPSUM: CHANGE IT
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

  static String myVideoId = "qrra18TChxY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1361, // DOPSUM: CHANGE IT
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

  static String myVideoId = "thOifuHs6eY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 445, // DOPSUM: CHANGE IT
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

// end blessing
