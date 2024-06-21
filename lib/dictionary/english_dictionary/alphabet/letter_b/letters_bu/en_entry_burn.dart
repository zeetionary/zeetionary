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
    await flutterTts.speak("burn");
  }

  Future<void> speakburns1(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fires were burning all over the city.");
  }

  Future<void> speakburns2(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A small candle burned brightly.");
  }

  Future<void> speakburns3(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fire was still burning fiercely.");
  }

  Future<void> speakburns4(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She burned his old love letters.");
  }

  Future<void> speakburns5(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By nightfall the whole city was burning.");
  }

  Future<void> speakburns6(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The girl ran from the burning building.");
  }

  Future<void> speakburns7(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They called us to tell us that my aunt's house was burning.");
  }

  Future<void> speakburns8(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house burned to the ground.");
  }

  Future<void> speakburns9(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ten people burned to death in the hotel fire.");
  }

  Future<void> speakburns10(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All his belongings were burnt in the fire.");
  }

  Future<void> speakburns11(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Several protesters burned American flags.");
  }

  Future<void> speakburns12(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Which fuel burns most efficiently?");
  }

  Future<void> speakburns13(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Some people burn calories faster than others.");
  }

  Future<void> speakburns14(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can smell something burning in the kitchen.");
  }

  Future<void> speakburns15(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sorry—I burnt the cake.");
  }

  Future<void> speakburns16(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My skin burns easily.");
  }

  Future<void> speakburns17(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I burnt my tongue trying to eat a hot soup.");
  }

  Future<void> speakburns18(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The soup's hot. Don't burn your mouth.");
  }

  Future<void> speakburns19(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His face had been horrifically burnt by acid.");
  }

  Future<void> speakburns20(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your forehead's burning. Have you got a fever?");
  }

  Future<void> speakburns21(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our eyes were burning from the chemicals in the air.");
  }

  Future<void> speakburns22(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their torches burned brightly in the dark.");
  }

  Future<void> speakburns23(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She could sense the anger burning slowly inside him.");
  }

  Future<void> speakburns24(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car was burning down the road.");
  }

  Future<void> speakburns25(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("So you did it just to burn me?");
  }

  Future<void> speakburns26(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The state has already burned through its cash reserves.");
  }

  Future<void> speakburns27(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She suffered serious burns but is expected to survive.");
  }

  Future<void> speakburns28(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He is recovering from burns to his face and hands.");
  }

  Future<void> speakburns29(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburns2929");
  }

  Future<void> speakburns30(String languageCode) async {
    // DOPSUM: CHANGE speakburn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakburns3030");
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
                          const KurdishVocabulary(text: """
کوردی: سووتان، چزان، برژانەوە، سووتانەوە، کووزیان، سفت‌وسۆ، سفت‌وسوێ، کزانەوە، چووزانەوە، تۆزانەوە
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) درووستکردنی بڵێسە و گەرمی"),
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
                                                    "ئاگرەکە ھێشتا بە تاوەوە دەگڕیا."),
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
                                            "دە کەس مردن لە ئاگری ھوتێلەکەدا."),
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
                                            "(بەکارھێنانی خوازراوی) ھەندێک کەس کالۆری زیاتر لە کەسانی دیکە دەسووتێنن."),
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
                                  "٥. (کردار) سووتاندنی خۆراک بەھۆی زۆر گەرمکردن"),
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
                                  "٦. (کردار) بریندار بوون یان زیان پێگەشتن بە خۆر، گەرمی، ئەسید، ھتد"),
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
                                            "ناوچاوانت گڕی گرتووە. تات ھەیە؟"),
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
                                            "چاوەکانمان بە ئازار بوون بەھۆی مادە کیمیاییەکانی ناو ھەوا."),
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
                                            "لایتەکان بە درەوشاوەیی ھەڵکردبوو لە تاریکییەکەدا."),
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
                                  "٩. (کردار) ھەستکردن بە ھەست و ئارەزوویەکی بەھێز"),
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
                                            "ھەستی بە تووڕەییەکەی دەکرد کە تاوی سەندبوو لە ناخیدا."),
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
                                            "ئۆتۆمبێلەکەی گڤەی دەھات بە ڕێگاکەدا."),
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
                                            "ویلایەتەکە دەمێک دەبێت ھەموو پارەی کاشی یەدەگی بەکارھێناوە."),
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
                    const YouTubeScroller(
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
- Verb: burn (derived forms: burned, burns, burning)
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

- Noun: burn (derived forms: burns)
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

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = '6MIGnee5PPU';
  final double _startSeconds = 71;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'sbUqZYbk_7Y';
  final double _startSeconds = 50;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'TNjOaAIz_ZY';
  final double _startSeconds = 16;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = '_1wlqupaifM';
  final double _startSeconds = 0;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'rN9NzgryhMY';
  final double _startSeconds = 1044;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'qyn3Sy8m1QA';
  final double _startSeconds = 112;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatefulWidget {
  const YoutubeEmbeddedseven({super.key});

  @override
  State<YoutubeEmbeddedseven> createState() => _YoutubeEmbeddedsevenState();
}

class _YoutubeEmbeddedsevenState extends State<YoutubeEmbeddedseven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'b5FNTCWPwps';
  final double _startSeconds = 126;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatefulWidget {
  const YoutubeEmbeddedeight({super.key});

  @override
  State<YoutubeEmbeddedeight> createState() => _YoutubeEmbeddedeightState();
}

class _YoutubeEmbeddedeightState extends State<YoutubeEmbeddedeight> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hW69OIdAey0';
  final double _startSeconds = 172;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatefulWidget {
  const YoutubeEmbeddednine({super.key});

  @override
  State<YoutubeEmbeddednine> createState() => _YoutubeEmbeddednineState();
}

class _YoutubeEmbeddednineState extends State<YoutubeEmbeddednine> {
  late YoutubePlayerController _controller;
  final String _videoId = 'DLzA9kcjuGg';
  final double _startSeconds = 119;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatefulWidget {
  const YoutubeEmbeddedten({super.key});

  @override
  State<YoutubeEmbeddedten> createState() => _YoutubeEmbeddedtenState();
}

class _YoutubeEmbeddedtenState extends State<YoutubeEmbeddedten> {
  late YoutubePlayerController _controller;
  final String _videoId = 'g1eE-wNDJrE';
  final double _startSeconds = 141;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB
