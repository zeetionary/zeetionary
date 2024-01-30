import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryburn extends StatelessWidget {
// blank divider
  EnglishEntryburn({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakburn(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("burn"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns1(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Fires were burning all over the city."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns2(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A small candle burned brightly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns3(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The fire was still burning fiercely."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns4(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She burned his old love letters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns5(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By nightfall the whole city was burning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns6(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The girl ran from the burning building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns7(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They called us to tell us that my aunt's house was burning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns8(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The house burned to the ground."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns9(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ten people burned to death in the hotel fire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns10(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All his belongings were burnt in the fire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns11(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Several protesters burned American flags."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns12(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Which fuel burns most efficiently?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns13(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some people burn calories faster than others."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns14(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can smell something burning in the kitchen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns15(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sorry—I burnt the cake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns16(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My skin burns easily."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns17(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I burnt my tongue trying to eat a hot soup."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns18(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The soup's hot. Don't burn your mouth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns19(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His face had been horrifically burnt by acid."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns20(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your forehead's burning. Have you got a fever?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns21(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our eyes were burning from the chemicals in the air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns22(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their torches burned brightly in the dark."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns23(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She could sense the anger burning slowly inside him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns24(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car was burning down the road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns25(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("So you did it just to burn me?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns26(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The state has already burned through its cash reserves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns27(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She suffered serious burns but is expected to survive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns28(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is recovering from burns to his face and hands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns29(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburns2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakburns30(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburns3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "burn"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɜːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakburn("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɜːrn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakburn("en-US"),
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
کوردی: سووتان، چزان، برژانەوە، سووتانەوە، کووزیان، سفت‌وسۆ، سفت‌وسوێ، کزانەوە، چووزانەوە، تۆزانەوە

١. (کردار) درووستکردنی بڵێسە و گەرمی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Fires were burning all over the city."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاگر تاوی سەندبوو لە تەواوی شارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "burn", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A small candle burned brightly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مۆمێکی بچووک بە درەوشاوەیی دەسووتا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The fire was still burning fiercely."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئاگرەکە هێشتا بە تاوەوە دەگڕیا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "She burned his old love letters."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "نامە ئەویندارییە کۆنەکانی سوتاند."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) بوون لە ناو ئاگردا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "By nightfall the whole city was burning."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تا شەو تەواوی شارەکە لە ئاگردابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The girl ran from the burning building."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کچەکە ڕایکرد لە ماڵە گڕگرتووەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "They called us to tell us that my aunt's house was burning."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پەیوەندییان پێوە کردین تا بڵێن ماڵی پوورم ئاگری گرتووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns7("en-US"),
                                          ),
                                        ],
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
                                  "٣. (کردار) لەناوبردن، زیان گەیاندن، بریندارکردن، یان کوشتن بە ئاگر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The house burned to the ground."),
                                    ExampleSentenceKurdish(
                                        text: "خانووەکە بە تەواوی سووتا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Ten people burned to death in the hotel fire."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دە کەس مردن لە ئاگری هوتێلەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "All his belongings were burnt in the fire."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواوی کەلوپەلەکانی لە ئاگرەکەدا سووتان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns10("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Several protesters burned American flags."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژمارەیەک خۆپیشاندەر ئاڵای ئەمریکایان سووتاند."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns11("en-US"),
                                          ),
                                        ],
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
                                  "٤. (کردار) سووتاندنی سووتەمەنی بە مەبەستی درووستکردنی گەرمی، ڕۆشنایی، یان وزە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Which fuel burns most efficiently?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چی سووتەمەنییەک بە کاریگەری دەسووتێت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Some people burn calories (= use food to produce energy) faster than others."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "(بەکارهێنانی خوازراوی) هەندێک کەس کالۆری زیاتر لە کەسانی دیکە دەسووتێنن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) سووتاندنی خۆراک بەهۆی زۆر گەرمکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can smell something burning in the kitchen."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆنی شتێک دەکەم لە چێشتخانەکە دەسووتێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Sorry—I burnt the cake."),
                                    ExampleSentenceKurdish(
                                        text: "ببوورە، کێکەکەم سووتاند."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بریندار بوون یان زیان پێگەشتن بە خۆر، گەرمی، ئەسید، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "My skin burns easily (= in the sun).."),
                                    ExampleSentenceKurdish(
                                        text: "پێستم بە ئاسانی دەسووتێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I burnt my tongue trying to eat a hot soup."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زمانمم سووتاند بە خواردنی شۆربایەکی گەرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The soup's hot. Don't burn your mouth."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شۆرباکە گەرمە. دەمت مەسووتێنە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns18("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "His face had been horrifically burnt by acid."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕووخساری بە خراپی سوتێندرابوو بە ئەسید."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakburns19("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakburns19("en-US"),
                                          ),
                                        ],
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
                                  "٧. (کردار) گەرمبوون یان بەئازاربوونی بەشێکی جەستە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Your forehead's burning. Have you got a fever?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناوچاوانت گڕی گرتووە. تات هەیە؟."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Our eyes were burning from the chemicals in the air."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چاوەکانمان بە ئازار بوون بەهۆی مادە کیمیاییەکانی ناو هەوا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) درووستکردنی ڕۆشنایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Their torches burned brightly in the dark."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لایتەکان بە درەوشاوەیی هەڵکردبوو لە تاریکییەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) هەستکردن بە هەست و ئارەزوویەکی بەهێز"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She could sense the anger burning slowly inside him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەستی بە تووڕەییەکەی دەکرد کە تاوی سەندبوو لە ناخیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns23("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) ڕۆشتن زۆر بە خێرایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car was burning down the road."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکەی گڤەی دەهات بە ڕێگاکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) تووڕەکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "So you did it just to burn me?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەوەت کرد بەس بۆ ئەوەی تووڕەم بکەیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) پارە خەرجکردن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The state has already burned through its cash reserves."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ویلایەتەکە دەمێک دەبێت هەموو پارەی کاشی یەدەگی بەکارهێناوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns26("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) برین یان نیشانە بە ئاگر، ئەسید، یان گەرمی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She suffered serious burns but is expected to survive."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تووشی سووتانی خراپ بووە بەڵام چاوەڕێ دەکرێت ڕزگاری ببێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He is recovering from burns to his face and hands."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خەریکە چاکدەبێتەوە لە سووتاوی لە ڕووخسار و دەستیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakburns28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakburns28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
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
- Verb: burn (Derived forms: burned, burns, burning)
1. Undergo combustion (= combust)
"Maple wood burns well";
 
2. Destroy by fire (= fire, burn down)
"They burned the house and his diaries";
 
3. Shine intensely, as if with heat (= glow)
"The candles were burning";
 
4. Cause to burn or combust (= combust)
"The sun burned off the fog";
 
5. Feel strong emotion, especially anger or passion
"She was burning with anger"; "He was burning to try out his new skis"
 
6. Cause to undergo combustion (= incinerate)
"The car burns only Diesel oil"; "burn garbage";
 
7. Execute by tying to a stake and setting alight
"Witches were burned in Salem"
 
8. Spend (significant amounts of money)
"He has money to burn"
 
9. Feel hot or painful
"My eyes are burning"
 
10. Burn, sear, or freeze (tissue) using a hot iron or electric current or a caustic agent (= cauterize, cauterise [Brit])
"The surgeon burned the wart";
 
11. Get a sunburn by overexposure to the sun (= sunburn)
 
12. Create by duplicating data (= cut)
"burn a CD";

13. Use up (energy) (= burn off, burn up)
"burn off calories through vigorous exercise"; "burn up calories through vigorous exercise";
 
14. Damage by burning with heat, fire, or radiation
 
15. [informal] Strongly criticize (= slate [Brit, informal], tear to shreds [informal], slam [informal], roast [informal])
 
16. Cause a sharp or stinging pain or discomfort (= bite, sting)
"The sun burned his face";

- Noun: burn (Derived forms: burns)
1. An injury caused by exposure to heat, chemicals or radiation
 
2. Pain that feels hot as if it were on fire (= burning)
 
3. A place or area that has been burned (especially on a person's body) (= burn mark)
 
4. [informal] A remark capable of wounding mentally (= stinger, cut)
 
5. Damage inflicted by fire
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
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '6MIGnee5PPU',
    startSeconds: 71,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'sbUqZYbk_7Y',
    startSeconds: 50,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'TNjOaAIz_ZY',
    startSeconds: 16,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_1wlqupaifM',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'rN9NzgryhMY',
    startSeconds: 1044,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'qyn3Sy8m1QA',
    startSeconds: 112,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'b5FNTCWPwps',
    startSeconds: 126,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hW69OIdAey0',
    startSeconds: 172,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DLzA9kcjuGg',
    startSeconds: 119,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'g1eE-wNDJrE',
    startSeconds: 141,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB
