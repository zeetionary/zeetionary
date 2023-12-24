import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bomb" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bomb - /bɒm/

enum TtsState { playing }

class EnglishEntrybomb extends StatelessWidget {
// blank divider
  EnglishEntrybomb({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbomb(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bomb"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs1(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Hundreds of bombs were dropped on the city."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs2(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A terrorist bomb ripped through the town's packed shopping centre."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs3(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police suspect terrorists planted the bomb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs4(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The US was the first country to have the bomb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs5(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That dress must have cost a bomb!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs6(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The play was a real bomb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs7(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have deliberately bombed civilians."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs8(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Warplanes bombed targets around the capital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs9(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were bombing down the road at about 80 miles an hour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs10(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exam was very hard! I definitely bombed it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs11(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His latest movie bombed and lost millions of dollars."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs12(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("India started to build a nuclear bomb."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs13(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eighty people died when bombs rained down on the city's crowded streets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs14(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs15(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs16(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs17(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs18(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs19(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs20(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs21(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombs22(String languageCode) async {
    // DOPSUM: CHANGE speakbomb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombs2222"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "bomb"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbomb("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbomb("en-US"),
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
١. (ناو) چەکێک کە دیزاین کراوە لە کاتێکی دیاریکراودا بتەقێتەوە یان کاتێک کە بەردەدرێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Hundreds of bombs were dropped on the city."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەدان بۆمب بەسەر شارەکەدا بەردرانەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A terrorist bomb ripped through the town's packed shopping centre."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆمبێکی تیرۆریستی سەنتەری بازاڕکردنی قەرەباڵغی شارەکەی ھەژاند."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs2("en-US"),
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
                                              "Police suspect terrorists planted the bomb."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "پۆلیس گومان دەکەن تیرۆریستان بۆمبەکەیان چاندبێت."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbombs3("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbombs3("en-US"),
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "India started to build a nuclear bomb."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ھندستان دەستیکرد بە بنیادنانی چەکی ئەتۆمی."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbombs12("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbombs12("en-US"),
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Eighty people died when bombs rained down on the city's crowded streets."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ھەشتا کەس گیانیان لە دەستدا کە بۆمبەکان دەستیان بە بارین کرد بەسەر شەقامە قەرەباڵغەکانی شارەکەدا."),
                                      const CustomSizedBoxForTTS(),
                                      CustomIconButtonBritish(
                                        onPressed: () => speakbombs13("en-GB"),
                                      ),
                                      CustomIconButtonAmerican(
                                        onPressed: () => speakbombs13("en-US"),
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
                                  "٢. (ناو) چەکی ناوەکی (ئەتۆمی یان ھایدرۆجینی)"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The US was the first country to have the bomb."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەمریکا یەکەم وڵات بوو چەکی ناوەکی ھەبێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs4("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ژمارەیەکی زۆر پارە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "That dress must have cost a bomb!"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو جلە دەبێت پارەیەکی زۆری تێچووبێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs5("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) شکستێکی تەواو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The play was a real bomb."),
                              const ExampleSentenceKurdish(
                                  text: "شانۆکە شکستێکی یەکجارەکی بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs6("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھێرشکردنە سەر شوێنێک بە چاندنی بۆمبێک یان بەردانەوەی لە فڕۆکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They have deliberately bombed civilians."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ئەنقەست ھاوڵاتی مەدەنییان بۆمباران کردووە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs7("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Warplanes bombed targets around the capital."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فڕۆکە جەنگییەکان ئامانجیان لە دەورووبەری نەخۆشخانەکە بۆمباران کرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs8("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) جوڵان زۆر بە خێرایی بەتایبەتی لە ئامرازێکی گواستنەوەدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They were bombing down the road at about 80 miles an hour."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ڕێگاکەدا بەنزیکەیی خێرایی ٨٠ میل لەکاتژمێرێکدا بەخێرایی دەچوون."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs9("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) شکستھێنان لە تاقیکردنەوەیەک زۆر بە خراپی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The exam was very hard! I definitely bombed it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تاقیکردنەوەکە زۆر سەخت بوو! بەدڵنیاییەوە دەکەوم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs10("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) شانۆیەک یان نمایشێک کە زۆر خراپ دەبێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His latest movie bombed and lost millions of dollars."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆتا فیلمی شکستێک بوو و ملیۆنان دۆلاری لەدەستدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbombs11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbombs11("en-US"),
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
- Noun: bomb (derived forms: bombs)
1. An explosive device fused to explode under specific conditions
 
2. Strong sealed vessel for measuring heat of combustion (= bomb calorimeter)
 
3. An event that fails badly or is totally ineffectual (= turkey [informal], dud, flop [informal], clunker [N. Amer, informal])
"the first experiment was a real bomb";

4. [Brit, informal] A large sum of money (especially as pay or profit) (= pile [informal], bundle [informal], big bucks [informal], megabucks [informal], big money [informal])
"she made a bomb selling real estate";

- Verb: bomb (derived forms: bombed, bombing, bombs)
1. Throw bombs at or attack with bombs (= bombard)
"The Americans bombed Dresden";

2. Be unsuccessful in a test, get lower than the passing grade (= fail, flunk [N. Amer, informal], flush it)
"She studied hard but bombed nevertheless";

3. [Brit, informal] Move quickly and violently (= tear [informal], shoot, shoot down, charge, buck, scream [informal])
"The car bombed down the street";

4. [informal] Fail badly (= tank [N. Amer, informal], crash and burn [informal])
"How many contracting businesses will bomb this year?";
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 18, // DOPSUM: CHANGE IT
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

  static String myVideoId = "lGSOWwUvJiU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 164, // DOPSUM: CHANGE IT
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

  static String myVideoId = "E7uGvsT_nnM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 9, // DOPSUM: CHANGE IT
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

  static String myVideoId = "63tQ7yGmsmI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 67, // DOPSUM: CHANGE IT
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

  static String myVideoId = "5yxtXRKSfXg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 379, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VAa8cVw09mE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 389, // DOPSUM: CHANGE IT
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

  static String myVideoId = "QlVmo_jvBQE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 35, // DOPSUM: CHANGE IT
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

  static String myVideoId = "R6TU1UVB83E";

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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "fwaQvHAWzkQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 8, // DOPSUM: CHANGE IT
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

  static String myVideoId = "UXUkameA0r8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 106, // DOPSUM: CHANGE IT
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

  static String myVideoId = "iaKkZJAoqCA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 675, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zhnNIhV4EsU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 444, // DOPSUM: CHANGE IT
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

// end bomb
