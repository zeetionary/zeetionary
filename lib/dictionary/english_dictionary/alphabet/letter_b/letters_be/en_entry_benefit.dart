import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alright.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "benefit" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace benefit - replace EnglishEntrybenefit

// replace speakBenefit - /ˈbenɪfɪt/

enum TtsState { playing }

class EnglishEntrybenefit extends StatelessWidget {
// blank divider
  EnglishEntrybenefit({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBenefit(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("benefit"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits1(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Freedom of information brings great benefits."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits2(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've had the benefit of a good education."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits3(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was good to see her finally reaping the benefits of all her hard work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits4(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You may be eligible to receive benefits."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits5(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In addition to my salary, I get a pension and medical benefits from my job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits6(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The insurance plan will provide substantial cash benefits to your family in case of your death."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits7(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The proceeds from the benefit will go directly to the refugee camps."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits8(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We should spend the money on something that will benefit everyone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits9(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The new tax laws will clearly benefit those on low wages."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits10(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We all benefit when our young people realize their potential."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits11(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who exactly stands to benefit from these changes?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits12(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most crime victims benefit greatly by talking about their experiences."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits13(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits14(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits15(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits16(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits17(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits18(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits19(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits20(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits21(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBenefits22(String languageCode) async {
    // DOPSUM: CHANGE speakBenefit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBenefits2222"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 21, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "benefit"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbenɪfɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBenefit("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbenɪfɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBenefit("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: const [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 21
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
                  VideoIconForTab(), // 15
                  VideoIconForTab(), // 16
                  VideoIconForTab(), // 17
                  VideoIconForTab(), // 18
                  VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
                ],
                indicator: BoxDecoration(
                  color: Pallete.tabsbackgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4.0),
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
کوردی: قازانج، بەرژەوەندی، مەفا، کەڵک، بەهرە، سوود، بارە، بارەچە، باشی، بڕاوە، کردەوەی خێرخوازانە، کاری چاکە، پیتاک، یارمەتی، باربۆ، ئاهەنگی خێرخوازی

١. (ناو) شتێک کە بەسوودە و کاریگەری ئەرێنی هەیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Freedom of information brings great benefits."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئازادیی ڕۆژنامەوانی سوودی گرنگی هەیە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits1("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I've had the benefit of a good education."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەرفەتی ئەوەم هەبووە خوێدنێکی باشم هەبێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits2("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It was good to see her finally reaping the benefits (= enjoying the results) of all her hard work."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باش بوو لە کۆتاییدا بینرا کە بەرهەمی هەموو کارە سەختەکانی چنییەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits3("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) پارەیەک کە حکومەت بە خەڵکی دەدات بەهۆی ئەوەی کاریان نییە یان نەخۆشن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You may be eligible to receive benefits."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕەنگە شایستە بیت بۆ وەرگرتنی برە پارەیەکی بڕاوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شتێک کە کۆمپانیایەک پێت دەدات بەسەر مووچەکەی خۆتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "In addition to my salary, I get a pension and medical benefits from my job."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرەڕای مووچەکەم، خانەنشینی و تێچووی تەندرووستی وەردەگرم لە کارەکەم."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits5("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پارەی کۆمپانیای بیمە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The insurance plan will provide substantial cash benefits to your family in case of your death."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێککەوتنی بیمەکە پارەیەکی زۆری کاش لەخۆدەگرێت بۆ خێزانەکەت لە حاڵەتی مردنت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits6("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ئاهەنگێک وەک نمایشێک یان ژەمە خواردنێک کە ئامانج لێی کۆکردنەوەی هاوکارییە بۆ کەسێک یان ڕێکخراوێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The proceeds from the benefit will go directly to the refugee camps."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پارەی کۆکراوەی ئاهەنگەکە ڕاستەوخۆ دەچێت بۆ کەمپی پەنابەران."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits7("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) سوومەند بوو بۆ کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We should spend the money on something that will benefit everyone."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت پارەکە لە شتێک خەرج بکەین کە سوود بە هەمووان بگەیەنێت."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits8("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The new tax laws will clearly benefit those on low wages."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "یاسا تازەکانی باج بەئاشکرایی سوود بەوانە دەگەیەنێت کە مووچەیان کەمە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) بوون لە دۆخێکی باشتر بەهۆی شتێکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We all benefit when our young people realize their potential."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەمووان سوودمەند دەبین کە گەنجەکانمان بە تواناکانیان دەزانن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits10("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Who exactly stands to benefit from these changes?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەدرووستی کێ سوودمەند دەبێت لەم گۆڕانکارییانە دەبێت؟"),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits11("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Most crime victims benefit greatly by talking about their experiences."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆرێک لە قوربانییانی تاوانەکان دۆخیان باشتر دەبێت ئەگەر باسی بەسەرهاتەکانیان بکەن."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBenefits12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBenefits12("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
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
                    YoutubeEmbeddedthirteen(),
                    YoutubeEmbeddedfourteen(),
                    YoutubeEmbeddedfifteen(),
                    YoutubeEmbeddedsixteen(),
                    YoutubeEmbeddedseventeen(),
                    YoutubeEmbeddedeighteen(),
                    YoutubeEmbeddednineteen(),
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
          EnglishMeaningConst(
            text: """
- Noun: benefit (Derived forms: benefits)
1. Financial assistance in time of need
 
2. Something that aids or promotes well-being (= welfare)
"for the benefit of all";
 
3. A performance to raise money for a charitable cause

- Verb: benefit (Derived forms: benefited, benefiting, benefitted, benefits, benefitting)
1. Derive a benefit from (= profit, gain)
"She benefitted from his vast experience";
 
2. Be beneficial for (= do good)
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

  static String myVideoId = "https://youtu.be/qWAagS_MANg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 289, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/h4CyhQqAPpk?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 285, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/D0x2dgpBDzc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 38, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/lGSOWwUvJiU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 98, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/SrDEtSlqJC4?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 457, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/-cPdImejxEQ?t=";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "https://youtu.be/Js2UoMSumx4?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 461, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/W8uXhQnWgj4?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 80, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/Fr-qagv7ig0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 334, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/nsnyl8llfH4?t=";

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
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "https://youtu.be/nGrB-5ieeMU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 377, // DOPSUM: CHANGE IT
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

  static String myVideoId = "https://youtu.be/OXW_1i1pA0w?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 84, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "https://youtu.be/diAxiWkwlC0?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 325, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfourteen extends StatelessWidget {
  YoutubeEmbeddedfourteen({super.key});

  static String myVideoId = "https://youtu.be/dSKALhlsuE8?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 472, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  static String myVideoId = "https://youtu.be/H3jJ29oE8Zg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 27, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedsixteen extends StatelessWidget {
  YoutubeEmbeddedsixteen({super.key});

  static String myVideoId = "https://youtu.be/yDp3cB5fHXQ?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 6933, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedseventeen extends StatelessWidget {
  YoutubeEmbeddedseventeen({super.key});

  static String myVideoId = "https://youtu.be/jw_CWHs2YDU?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 525, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedeighteen extends StatelessWidget {
  YoutubeEmbeddedeighteen({super.key});

  static String myVideoId = "https://youtu.be/0twDETh6QaI?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 6617, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddednineteen extends StatelessWidget {
  YoutubeEmbeddednineteen({super.key});

  static String myVideoId = "https://youtu.be/Wehsz38P74g?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 784, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

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

// morethan one video, only first autoplay

// end benefit// TODO Implement this library.
