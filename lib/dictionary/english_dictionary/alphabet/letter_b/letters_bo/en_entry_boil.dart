import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "boil" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace boil - /bɔɪl/

enum TtsState { playing }

class EnglishEntryboil extends StatelessWidget {
// blank divider
  EnglishEntryboil({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboil(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boil"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils1(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Boil plenty of water, then add the spaghetti."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils2(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Water boils at 100°C."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils3(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The kettle's boiling."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils4(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll boil the kettle and make some tea."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils5(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She put some potatoes on to boil."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils6(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She can scarcely boil an egg."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils7(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was boiling with rage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils8(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bring the soup to the boil, then allow it to simmer for five minutes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils9(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The doctor lanced the boil."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils10(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils11(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils12(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils13(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils14(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils15(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils16(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils17(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils18(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils19(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils20(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils21(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils22(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboils23(String languageCode) async {
    // DOPSUM: CHANGE speakboil
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboils2323"); // DOPSUM: CHANGE TEXT
  }

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
                            EntryTitle(word: "boil"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɔɪl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboil("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɔɪl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboil("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
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
کوردی: کوڵ، کوڵان، خاڵی کوڵان، زیپکە، پیزۆکە، زیتکە، بزرک، کوڵک، کوان، دمەڵ، زیەم

١. (کردار) کوڵان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Boil plenty of water, then add the spaghetti."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێژەیەکی زۆر ئاو بکوڵێنە و دواتر سپاگێتییەکە زیاد بکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Water boils at 100°C."),
                              const ExampleSentenceKurdish(
                                  text: "ئاو لە ١٠٠ پلەی سیلیزی دەکوڵێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کوڵان یان کوڵاندنی کترییەک، مەنجەڵێک، ھتد تاوەکو ئاوەکەی ناوی دەکوڵێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The kettle's boiling."),
                              const ExampleSentenceKurdish(
                                  text: "کترییەکە دەکوڵێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils3("en-US"),
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
                                      "I'll boil the kettle and make some tea."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کترییەکە دەکوڵێنم و ھەندێک چا ئامادە دەکەم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) خواردن ئامادەکردن یان شۆردن لە ئاوی کوڵاو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She put some potatoes on to boil."),
                              const ExampleSentenceKurdish(
                                  text: "ھەندێک پەتاتەی کوڵاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She can scarcely boil an egg."),
                              const ExampleSentenceKurdish(
                                  text: "بە ئەستەم دەتوانێت ھێلکەش بکوڵێنێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) زۆر تووڕەبوون"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He was boiling with rage."),
                              const ExampleSentenceKurdish(
                                  text: "خەریک بوو دەتەقی لە داخدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) خاڵی کوڵان"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Bring the soup to the boil, then allow it to simmer for five minutes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شۆرباکە بھێنە کوڵان و دواتر بھێڵە مێروولەکوڵ بێت بۆ پێنج خولەک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ھەڵئاوسانێکی بەئازار"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The doctor lanced the boil."),
                              const ExampleSentenceKurdish(
                                  text: "دکتۆرەکە زیپکەکەی تەقاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboils9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboils9("en-US"),
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
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
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
- Verb: boil (derived forms: boiled, boiling, boils)
1. Come to the boiling point and change from a liquid to vapour
"Water boils at 100 degrees Celsius"
 
2. Immerse or be immersed in a boiling liquid, often for cooking purposes
"boil potatoes"; "boil wool"
 
3. Bring to, or maintain at, the boiling point
"boil this liquid until it evaporates"
 
4. Be agitated (= churn, moil [N. Amer], roil)
"the sea was boiling in the storm";
 
5. Be in an agitated emotional state (= seethe)
"The customer was boiling with anger";

- Noun: boil  
1. A painful sore with a hard core filled with pus (= furuncle)
 
2. The temperature at which a liquid boils at sea level (= boiling point)
"they brought the water to a boil";

3. The state, action or process of boiling
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

  static String myVideoId = "DPZzrlFCD_I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 42, // DOPSUM: CHANGE IT
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

  static String myVideoId = "fsQVfQt0HOk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 66, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zqUopiAYdRg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 15, // DOPSUM: CHANGE IT
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

  static String myVideoId = "rEdl2Uetpvo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 183, // DOPSUM: CHANGE IT
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

  static String myVideoId = "qWAagS_MANg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 255, // DOPSUM: CHANGE IT
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

  static String myVideoId = "3cxHwQl9pNM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 81, // DOPSUM: CHANGE IT
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

  static String myVideoId = "h0IPcqF2q9U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 213, // DOPSUM: CHANGE IT
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

  static String myVideoId = "X5oD_thIk3c";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 157, // DOPSUM: CHANGE IT
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

  static String myVideoId = "dXt1ftcdxNg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 368, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zDdAPHuRGN0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 87, // DOPSUM: CHANGE IT
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

  static String myVideoId = "veTo6eWJQrM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 121, // DOPSUM: CHANGE IT
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

  static String myVideoId = "jX1dYKV-a_c";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 127, // DOPSUM: CHANGE IT
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

// end boil
