import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryage - replace speakAge - replace age - /eɪdʒ/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryage extends StatelessWidget {
  EnglishEntryage({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAge(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("age"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge938665(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When I was your age I was already married."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge28225(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children range in age from 5 to 10."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge45562(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I waited for ages."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge41663(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She dreaded old age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge955887(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He lived during the Elizabethan age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge471114(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As he aged, his memory got worse."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAge25221(String languageCode) async {
    // DOPSUM: CHANGE speakAge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My mother has really aged since she became ill."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAge(String languageCode) async {
  //   // DOPSUM: CHANGE speakAge
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("age"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAge(String languageCode) async {
  //   // DOPSUM: CHANGE speakAge
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("age"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAge(String languageCode) async {
  //   // DOPSUM: CHANGE speakAge
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("age"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAge(String languageCode) async {
  //   // DOPSUM: CHANGE speakAge
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("age"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "age"), // Find /eɪdʒ/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /eɪdʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAge("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /eɪdʒ/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAge("en-US"),
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
کوردی: تەمەن، عومر، سن، سێرە، ڕستی ساڵ، ساڵ، کۆنی، کەڤناتی، پیری، کۆنەساڵی، بەساڵاچوویی، قۆناخ، چەرخ، چاخ، ڕۆژگار، زەمانە، سەردەم

١. (ناو) ژمارەی ئەو ساڵانەی کەسێک ژیاوە یان شتێک بوونی ھەبووە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When I was your age I was already married."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە لە تەمەنی تۆ بووم ماوەیەک بوو ھاوسەرگیریم کردبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge938665("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge938665(// REPLACE: age /eɪdʒ/
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
                                      "The children range in age from 5 to 10."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکان تەمەنیان لە نێوان ٥ بۆ ١٠ ساڵانە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge28225("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge28225(// REPLACE: age /eɪdʒ/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆ ماوەیەکی زۆر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I waited for ages."),
                              const ExampleSentenceKurdish(
                                  text: "بۆ ماوەیەکی زۆر چاوەڕێ بووم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge45562("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge45562(// REPLACE: age /eɪdʒ/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) کاتێکی دیاریکراو لە تەمەنی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She dreaded old age."),
                              const ExampleSentenceKurdish(
                                  text: "لە پیرێتی دەترسا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge41663("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge41663(// REPLACE: age /eɪdʒ/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) سەردەمێکی دیاریکراو لە مێژوودا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He lived during the Elizabethan age."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە سەردەمی دەسەڵاتداریی ئیلیزابێس ژیا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge955887("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge955887(// REPLACE: age /eɪdʒ/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) تەمەنکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "As he aged, his memory got worse."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە تەمەنی دەکرد بیر و ھۆشی خراپتر دەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge471114("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge471114(// REPLACE: age /eɪdʒ/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) پیر دەرکەوتن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "My mother has really aged since she became ill."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دایکم ڕەنگی پیربووە لەوەتەی نەخۆش کەوتووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAge25221("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAge25221(// REPLACE: age /eɪdʒ/
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
- Noun: age (derived forms: ages)
1. How long something has existed
"it was replaced because of its age"
 
2. An era of history having some distinctive feature (= historic period)
"we live in a litigious age";
 
3. A time of life (usually defined in years) at which some particular qualification or power arises (= eld)
"she was now of school age";
 
4. A prolonged period of time (= long time, years, yonks [Brit, informal], lifetime, donkey's years [Brit, informal])
"we've known each other for ages";
 
5. A late time of life (= old age, years, eld, geezerhood)
"old age is not for sissies"; "age hasn't slowed him down at all";

- Verb: age (derived forms: ages, ageing, aging, aged)
1. Begin to seem older; get older
"The death of his wife caused him to age fast"
 
2. Grow old or older (= senesce, get on, mature, maturate)
"She aged gracefully"; "we age every day--what a depressing thought!";
 
3. Make older
"The death of his child aged him tremendously"
 
4. Cause to ripen or develop fully (= ripen, mature)
"Age matures a good wine";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'VVh6EkYwIGU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 24, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'kOd19ljsklQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 9, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'gsrakIxmHEY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 141, // DOPSUM: CHANGE IT
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
  static String myVideoId = '3YrmQfvUNfg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 26, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Uivy6vnP2B0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 155, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'yKBgsQiF380';

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
  static String myVideoId = 'dKbissUX-TE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 610, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'KhSbEsFtvFs';

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

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'UaQ8CNLE1bk';

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
  static String myVideoId = '7cf33DCzuqk';

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

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end
